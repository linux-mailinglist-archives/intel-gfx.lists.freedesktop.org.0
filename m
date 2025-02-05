Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963AA28A7C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:42:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6965F10E792;
	Wed,  5 Feb 2025 12:42:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dA2QY+4N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6364F10E792;
 Wed,  5 Feb 2025 12:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738759338; x=1770295338;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=13KEmjU/hM2OQksNGtl/5ITJGpBIvP5VFAUUuf5X2dU=;
 b=dA2QY+4NhKl6wL15RpfwnIzfcARghvCgkso1Qy7Fj3xA3V+VSLc3wG3m
 asbV0dQWZE0+xUi3ROmtbB09CNCDsEUp2aPp9dfI6b8qn6OYRnmAEdd3W
 +o/J7Aq3LAIQFmMj7ncTva+Z6v120/TbauP++kap/S50NnkpGlWYe/vZg
 Ow5AFu1Ft2atjirhnrZ1622N2r0C2xbp08XCS/Of3z22MC02uTt27i99K
 JcCmyNUQDOscxaLUAH9Aii0lq+Qj3jVb2+TmXAUH4UPNSdctn8wyBaRoy
 av/L0lns04lGGhSNhzp2QgWlSj5jMcVd/sGcNq0u1gG0R6kxNYkoCuHbn g==;
X-CSE-ConnectionGUID: u8tME5eBQLKoHl7jy+yVDA==
X-CSE-MsgGUID: MHn6svaDRRWxw1lSj6ulMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43074502"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="43074502"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:42:17 -0800
X-CSE-ConnectionGUID: SD2E+7RBSvC9igL5rgpC+g==
X-CSE-MsgGUID: 66xyxMqTQcCPzR7dm/2qYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141790915"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:42:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/17] drm/i915/ddi: Move platform checks within
 mtl_ddi_enable/disable_d2d_link()
In-Reply-To: <20250129200221.2508101-9-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-9-imre.deak@intel.com>
Date: Wed, 05 Feb 2025 14:42:12 +0200
Message-ID: <87lduk4l7f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> The prefix of the mtl_ddi_enable_d2d() / mtl_ddi_disable_d2d_link()
> names show already what are the relevant platforms, so the corresponding
> platform check is a detail that can be hidden in the functions, do so.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

But unrelated bafflement below.

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d040558b5d029..07188606a0177 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2545,6 +2545,9 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  	i915_reg_t reg;
>  	u32 set_bits, wait_bits;
>  
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		return;
> +
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		reg = DDI_BUF_CTL(port);

Unrelated to this patch, this seems weird. DDI_BUF_CTL for display
version 20+? While XELPDP_PORT_BUF_CTL1() also has a check for >= 20.

>  		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> @@ -3035,6 +3038,9 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>  	i915_reg_t reg;
>  	u32 clr_bits, wait_bits;
>  
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		return;
> +
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		reg = DDI_BUF_CTL(port);
>  		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> @@ -3411,8 +3417,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
>  		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
>  
>  	/* e. Enable D2D Link for C10/C20 Phy */
> -	if (DISPLAY_VER(dev_priv) >= 14)
> -		mtl_ddi_enable_d2d(encoder);
> +	mtl_ddi_enable_d2d(encoder);

Why do we have mtl_ddi_enable_d2d() and mtl_ddi_disable_d2d_link(). It
just boggles my mind that the names mismatch.


>  
>  	encoder->set_signal_levels(encoder, crtc_state);

-- 
Jani Nikula, Intel
