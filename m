Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691C945C80C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 15:53:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393326E836;
	Wed, 24 Nov 2021 14:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD45B6E832
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 14:53:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="222164440"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="222164440"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 06:53:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509482203"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 24 Nov 2021 06:53:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 16:53:04 +0200
Date: Wed, 24 Nov 2021 16:53:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <YZ5R0JmEmkL04Phm@intel.com>
References: <20211123193649.3153258-1-uma.shankar@intel.com>
 <20211123193649.3153258-3-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211123193649.3153258-3-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/xelpd: Enable Pipe Degamma
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
Cc: intel-gfx@lists.freedesktop.org, =ville.syrjala@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 24, 2021 at 01:06:48AM +0530, Uma Shankar wrote:
> Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
> to incorparate the extended lut size for XE_LPD.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index e529dbeee525..81046d5ab509 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -815,6 +815,12 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
>  	enum pipe pipe = crtc->pipe;
>  	int i, lut_size = INTEL_INFO(dev_priv)->color.degamma_lut_size;
>  	const struct drm_color_lut *lut = crtc_state->hw.degamma_lut->data;
> +	u32 extended_lut_size;
> +
> +	if (DISPLAY_VER(dev_priv) >= 13)
> +		extended_lut_size = 131;
> +	else
> +		extended_lut_size = 35;

Can you extract that into a small helper? IIRC I did that for the
internal version already.

>  
>  	/*
>  	 * When setting the auto-increment bit, the hardware seems to
> @@ -827,8 +833,8 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
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
> @@ -844,7 +850,7 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state)
>  	}
>  
>  	/* Clamp values > 1.0. */
> -	while (i++ < 35)
> +	while (i++ < extended_lut_size)
>  		intel_de_write_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe), 1 << 16);
>  
>  	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
