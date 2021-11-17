Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB27A454A49
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 16:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B481898BC;
	Wed, 17 Nov 2021 15:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6245D898BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 15:48:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="257739987"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="257739987"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 07:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="506972766"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 17 Nov 2021 07:48:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Nov 2021 17:48:06 +0200
Date: Wed, 17 Nov 2021 17:48:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YZUkNrAnTlRIFRA/@intel.com>
References: <20211117134341.9889-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211117134341.9889-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Implement WM0 cursor WA for
 DG2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 17, 2021 at 03:43:41PM +0200, Stanislav Lisovskiy wrote:
> Bug in the register unit which results in WM1 register
> used when only WM0 is enabled on cursor.
> Software workaround is when only WM0 enabled on cursor,
> copy contents of CUR_WM_0[30:0] (exclude the enable bit)
> into CUR_WM_1[30:0].
> 
> HSDES: 14012656716
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 89dc7f69baf3..4bc90196d0fb 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5095,6 +5095,18 @@ skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
>  	}
>  }
>  
> +static bool icl_need_wm1_wa(struct drm_i915_private *dev_priv,

s/dev_priv/i915/

> +			    enum plane_id plane_id)
> +{
> +	/*
> +	 * Wa_1408961008:icl, ehl
> +	 * Wa_14012656716:tgl, adl
> +	 * Underruns with WM1+ disabled
> +	 */
> +	return (DISPLAY_VER(dev_priv) == 11) ||
> +	       (IS_DISPLAY_VER(dev_priv, 12, 13) && (plane_id == PLANE_CURSOR));

Unnecessary parens in a few places there. With those removed this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +}
> +
>  static int
>  skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
> @@ -5265,11 +5277,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			skl_check_nv12_wm_level(&wm->wm[level], &wm->uv_wm[level],
>  						total[plane_id], uv_total[plane_id]);
>  
> -			/*
> -			 * Wa_1408961008:icl, ehl
> -			 * Underruns with WM1+ disabled
> -			 */
> -			if (DISPLAY_VER(dev_priv) == 11 &&
> +			if (icl_need_wm1_wa(dev_priv, plane_id) &&
>  			    level == 1 && wm->wm[0].enable) {
>  				wm->wm[level].blocks = wm->wm[0].blocks;
>  				wm->wm[level].lines = wm->wm[0].lines;
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
