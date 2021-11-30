Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2476463099
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 11:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E144C6E52D;
	Tue, 30 Nov 2021 10:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 563AD6E529
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 10:04:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="216200211"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="216200211"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 02:04:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="499706425"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 30 Nov 2021 02:04:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Nov 2021 12:04:23 +0200
Date: Tue, 30 Nov 2021 12:04:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YaX3J63nYC6hZ+F9@intel.com>
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-3-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211125202750.3263848-3-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/xelpd: Enable Pipe Degamma
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

On Fri, Nov 26, 2021 at 01:57:49AM +0530, Uma Shankar wrote:
> Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
> to incorparate the extended lut size for XE_LPD.
> 
> v2: Added a helper for degamma lut size (Ville)
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 42fe549ef6fe..de3ded1e327a 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -808,6 +808,14 @@ static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> +static int glk_degamma_lut_size(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >= 13)
> +		return 131;
> +	else
> +		return 35;
> +}
> +
>  static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -827,8 +835,8 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
>  
>  	for (i = 0; i < lut_size; i++) {
>  		/*
> -		 * First 33 entries represent range from 0 to 1.0
> -		 * 34th and 35th entry will represent extended range
> +		 * First lut_size entries represent range from 0 to 1.0
> +		 * 3 additional lut entries will represent extended range
>  		 * inputs 3.0 and 7.0 respectively, currently clamped
>  		 * at 1.0. Since the precision is 16bit, the user
>  		 * value can be directly filled to register.
> @@ -844,7 +852,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
>  	}
>  
>  	/* Clamp values > 1.0. */
> -	while (i++ < 35)
> +	while (i++ < glk_degamma_lut_size(dev_priv))
>  		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
>  
>  	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
