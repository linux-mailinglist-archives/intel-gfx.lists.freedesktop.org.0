Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B7A18765D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 00:49:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9486E550;
	Mon, 16 Mar 2020 23:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCA86E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 23:49:54 +0000 (UTC)
IronPort-SDR: gKKxBYXpDHerTfktmBlFG0tqunq1fPTMoP2SC+7xQbQjJXWNglaP8bVib7jRl+R00l9BpOvK29
 iEvm8wSdLuAQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 16:49:54 -0700
IronPort-SDR: /WzaCyHlMAgrI2SpfBJ5EZGvtQ6eoet0c9YloOt+WK3SyqU1b62SpWOHtIBnbW6eWSUp8equrH
 Jryz/cNgA7Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,562,1574150400"; d="scan'208";a="262854433"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga002.jf.intel.com with ESMTP; 16 Mar 2020 16:49:52 -0700
Date: Mon, 16 Mar 2020 16:51:23 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200316235123.GB24231@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
 <20200316113744.31203-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316113744.31203-4-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v1 3/3] drm/i915: Remove unneeded hack now
 for CDCLK
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 16, 2020 at 01:37:44PM +0200, Stanislav Lisovskiy wrote:
> No need to bump up CDCLK now, as it is now correctly
> calculated, accounting for DBuf BW as BSpec says.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Logic looks good,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f0dcea4d6357..45469f6833b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2055,18 +2055,6 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  
> -	/*
> -	 * HACK. Currently for TGL platforms we calculate
> -	 * min_cdclk initially based on pixel_rate divided
> -	 * by 2, accounting for also plane requirements,
> -	 * however in some cases the lowest possible CDCLK
> -	 * doesn't work and causing the underruns.
> -	 * Explicitly stating here that this seems to be currently
> -	 * rather a Hack, than final solution.
> -	 */
> -	if (IS_TIGERLAKE(dev_priv))
> -		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> -
>  	/*
>  	 * Similar story as with skl_write_plane_wm and intel_enable_sagv
>  	 * - in some certain driver parts, we don't have any guarantee that
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
