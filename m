Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4812C3398
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 22:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973CB6E22C;
	Tue, 24 Nov 2020 21:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E038C89FD4
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 21:58:54 +0000 (UTC)
IronPort-SDR: VOorI1wJPT0e9hEhzy5a4qYzSx9qQEjttbd2xLerPula9Y6v+lfPosLUl4EoIxglnjplFn4C7F
 P6WM9H7mXduA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="169461909"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="169461909"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 13:58:54 -0800
IronPort-SDR: zGtiG5sC6xyKG7myy1BAR+BbgFi5eXj0OTpBc4Wk5VgUDukbjML5rpQ7iO7zEBKXi5yVHlMwbm
 a1FZxcYVS3sg==
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="535027894"
Received: from tphelan-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.20.12])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 13:58:52 -0800
Date: Tue, 24 Nov 2020 23:58:49 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201124215849.GC6936@intel.intel>
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

Hi Chris,

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
> +	}

looks OK to me, makes sense:

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
