Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E61CC461BB5
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 17:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDEF6E8AD;
	Mon, 29 Nov 2021 16:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909CD6E8AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Nov 2021 16:21:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="236233012"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="236233012"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 08:20:03 -0800
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; d="scan'208";a="476744012"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.11.182])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 08:20:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211125202750.3263848-3-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-3-uma.shankar@intel.com>
Date: Mon, 29 Nov 2021 18:19:52 +0200
Message-ID: <87ee6zj5nb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 26 Nov 2021, Uma Shankar <uma.shankar@intel.com> wrote:
> Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
> to incorparate the extended lut size for XE_LPD.
>
> v2: Added a helper for degamma lut size (Ville)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
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

Why do we have both a function with hardcoded values and device info
members for this?

BR,
Jani.

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

-- 
Jani Nikula, Intel Open Source Graphics Center
