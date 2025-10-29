Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C245C1D942
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 23:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8498410E861;
	Wed, 29 Oct 2025 22:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J0DGP86f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCBB10E85F;
 Wed, 29 Oct 2025 22:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761776529; x=1793312529;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vsreyANHNY9aJmJZmAcBUxwKLRAuRTyjsMqkYLnCk7A=;
 b=J0DGP86fmQ9eGs9EEtE7DXhmsQpeI4yZq6Fd+PLVPeGcqUQKnWfB2n1R
 42woKzavmJVUYG5f75FdMl1Fh3dPSL0ksrrPlLSOUo5YyDrlJ3+XXg5N/
 jKHLoYB0ObhfjKvCd2VGOLb0eaoLEXWtIQFMvQ+mrizaAfCYSzBfsLcON
 gSMWRxPuAylQAKYE8oNXvQDbnbi1bG6y5bByr8YhYtG7OwuLRGeF9Q6o0
 Jsfjz+3b+P3EUnKKJR8jTNbJn+ouM5iAvtbT2g0srzT3ycrkVxie6P46h
 DAuXJFC2VVrqFScRwbauxUo1WerWmUVo9JCyQzRzYlV5mWWqC4FW6td7l g==;
X-CSE-ConnectionGUID: 7Fx9K2moRb2LfRrYHuKrZQ==
X-CSE-MsgGUID: fUWZSgLyR0OnqZMv01peZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63821098"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63821098"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:22:08 -0700
X-CSE-ConnectionGUID: 7hie7cv/Q+eOaS5fRutNaQ==
X-CSE-MsgGUID: wuR0FkbBQ+qWZqS2ojzrXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="184981768"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.136])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:22:04 -0700
Date: Thu, 30 Oct 2025 00:22:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2 14/32] drm/i915/wm: Reorder adjust_wm_latency() for
 Xe3_LPD
Message-ID: <aQKTXsWok4HaRCdv@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 21, 2025 at 09:28:39PM -0300, Gustavo Sousa wrote:
> In an upcoming change related to Xe3p_LPD, we will need to (i) update
> wm[0] in adjust_wm_latency() and (ii) do the same increase_wm_latency()
> that is currently done when (wm[0] == 0).
> 
> Because make_wm_latency_monotonic() depends on wm[0], part (i) needs to
> be done before it gets called.  In order to keep (i) and (ii) as a
> contiguous logical sequence, let's reorder adjust_wm_latency(), making
> make_wm_latency_monotonic() the last thing to be done.
> 
> Also take this opportunity to simplify the code by doing the call to
> increase_wm_latency() only once.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index c141d575009f..57260a2a765a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3213,14 +3213,13 @@ static void
>  adjust_wm_latency(struct intel_display *display)
>  {
>  	u16 *wm = display->wm.skl_latency;
> +	int inc = 0;
>  
>  	if (display->platform.dg2)
>  		multiply_wm_latency(display, 2);
>  
>  	sanitize_wm_latency(display);
>  
> -	make_wm_latency_monotonic(display);
> -

I was thinking that by doing this early we avoid potentially papering
over our own bugs in the later adjustments. But Windows does appear to
do this after the read latency adjustment.

And it looks like Windows actually stopped doing this for xe3 and now
it rejects non-monotonic values. And it also does that after the read
latency adjustment.

So I guess what we want to do is move this later, only call it for 
pre-xe3, and add another step after it to validate that the latencies
are indeed monotonic.

>  	/*
>  	 * WaWmMemoryReadLatency
>  	 *
> @@ -3229,7 +3228,7 @@ adjust_wm_latency(struct intel_display *display)
>  	 * from the punit when level 0 response data is 0us.
>  	 */
>  	if (wm[0] == 0)
> -		increase_wm_latency(display, wm_read_latency(display));
> +		inc += wm_read_latency(display);
>  
>  	/*
>  	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
> @@ -3238,7 +3237,12 @@ adjust_wm_latency(struct intel_display *display)
>  	 * to avoid any underrun.
>  	 */
>  	if (need_16gb_dimm_wa(display))
> -		increase_wm_latency(display, 1);
> +		inc += 1;
> +
> +	if (inc)
> +		increase_wm_latency(display, inc);

I don't see that variable being helpful in any real way.
Just makes the function more complicated for no good reason.
It also has nothing to do with the rest of this patch.

> +
> +	make_wm_latency_monotonic(display);
>  }
>  
>  static void mtl_read_wm_latency(struct intel_display *display)
> 
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
