Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4055638DAA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 16:48:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5631810E0C4;
	Fri, 25 Nov 2022 15:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F77C10E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 15:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669391327; x=1700927327;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=DFUp3rf8kbuLQqD4xvHn5V8zLl37xC1pDHx2u9URAic=;
 b=bhznf0hpwWuJc3EeeBOv4e42KjKklujDGQBpqImVzOHzLRw/Uh55R4wI
 +Wq/vSrbqI2HVzSx0nxJ9nkTYHkH3lyujXfEKOvJbqHNm33yV3mKsKtTU
 E+LtK997Vds7/vOwwVZAl/6GEIHD0sizMGfJWyNPsKkbseDF11CdvMbhT
 mETbcA8eHrE3lPxtQA+ElLfzGhF8ofD0hkoqZwzFgNhHTFUK4pOURhU2X
 gUJgPDe6SYkMXYGbXdGLPfICvyR6Gsqa/OWAEXyDCSPMuAWx4GDTGQDkO
 8RMTdlzS8FKCuJX1FLnerbIwY8vyGjWdTUTSSI3WdyZyEQTPB6lk17j0T w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="302074960"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="302074960"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 07:48:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="748626878"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="748626878"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 07:48:45 -0800
Date: Fri, 25 Nov 2022 17:48:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <Y4Dj2Iul0BHXPo9C@ideak-desk.fi.intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
 include sw delay
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 24, 2022 at 12:39:25PM +0530, Arun R Murthy wrote:
> AUX HW timeout is being set to max(4000ms), consider AUX SW timeout to
                                     ^ 4ms
> be 200ms more to avoid AUX boundary read//write.

The HSD mentions a 200us extension.

> HSDES: 1409498780
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 664bebdecea7..6c1c9602518b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -293,14 +293,13 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  					   DP_AUX_CH_CTL_RECEIVE_ERROR);
>  
>  			/*
> -			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
> -			 *   400us delay required for errors and timeouts
> -			 *   Timeout errors from the HW already meet this
> -			 *   requirement so skip to next iteration

I think keeping the above still makes sense to explain why the 400us
explicit delay described in the CTS is not needed.

> +			 * Once the hw timeouts, before next try
> +			 * need to add a sw timeout of 200usec(HSD: 1409498780).

The HSD is for ICL, I can't see the bspec entry for it at bspec/33450.
WAs should have a "Wa_<lineage>:<platform(s)>" tag.

>  			 */
> -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> +			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
> +				usleep_range(200, 300);

The HSD ticket implies that the WA is to increase the timeout when
polling for the BUSY flag to clear from 600us to 800us for the non-LTTPR
case and from 4ms to 4.2ms in the LTTPR case (regardless of why the BUSY
flag is cleared). This seems to match what the Windows driver does now.
i915 waits for the same condition for 10ms, so to me it looks like the
waiting here already complies with the change described by the HSD.

One difference I see is that Windows just polls for the BUSY flag
without enabling the interrupt-on-done for this, not sure if this could
cause a problem.

>  				continue;
> -
> +			}
>  			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
>  				usleep_range(400, 500);
>  				continue;
> -- 
> 2.25.1
> 
