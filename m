Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C752C3128
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBCD56E554;
	Tue, 24 Nov 2020 19:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D56A6E554
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:46:31 +0000 (UTC)
IronPort-SDR: dnvv5fhOT9ubvCPPK8amrWs+qr1O4tZO6Sopzsu7SwWY2+7beeXKoIX7/YQAVt9Xg7+TdAc99y
 QPLpOrdxIBkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="236144850"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="236144850"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:46:30 -0800
IronPort-SDR: 98u2aPAVv3SOxEf7T4UlmYt8bdGdtEBjs0RXubMnlKd51YmN1bwMUuHEpRcmb+lq2FZX6Xdb4/
 HNBCkBwvrsIg==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="313358360"
Received: from partheeb-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.251.20.252])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:46:30 -0800
Date: Tue, 24 Nov 2020 11:46:29 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201124194629.GA719740@intel.com>
References: <20201124183521.28623-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201124183521.28623-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Limit frequency drop to RPe on
 parking
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 24, 2020 at 06:35:21PM +0000, Chris Wilson wrote:
> We treat idling the GT (intel_rps_park) as a downclock event, and reduce
> the frequency we intend to restart the GT with. Since the two workloads
> are likely related (e.g. a compositor rendering every 16ms), we want to
> carry the frequency and load information from across the idling.
> However, we do also need to update the frequencies so that workloads
> that run for less than 1ms are autotuned by RPS (otherwise we leave
> compositors running at max clocks, draining excess power). Conversely,
> if we try to run too slowly, the next workload has to run longer. Since
> there is a hysteresis in the power graph, below a certain frequency
> running a short workload for longer consumes more energy than running it
> slightly higher for less time. The exact balance point is unknown
> beforehand, but measurements with 30fps media playback indicate that RPe
> is a better choice.
> 
> Reported-by: Edward Baker <edward.baker@intel.com>
> Fixes: 043cd2d14ede ("drm/i915/gt: Leave rps->cur_freq on unpark")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Edward Baker <edward.baker@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: <stable@vger.kernel.org> # v5.8+
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index b13e7845d483..f74d5e09e176 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -907,6 +907,10 @@ void intel_rps_park(struct intel_rps *rps)
>  		adj = -2;
>  	rps->last_adj = adj;
>  	rps->cur_freq = max_t(int, rps->cur_freq + adj, rps->min_freq);
> +	if (rps->cur_freq < rps->efficient_freq) {
> +		rps->cur_freq = rps->efficient_freq;
> +		rps->last_adj = 0;

this is indeed the smallest fix we can propagate:


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

but I wonder now if we couldn't simply kill the last_adj now and always go
with the rpe on park/unpark

> +	}
>  
>  	GT_TRACE(rps_to_gt(rps), "park:%x\n", rps->cur_freq);
>  }
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
