Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE14996180
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C7F10E677;
	Wed,  9 Oct 2024 07:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KVwNbRsc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9967010E66E;
 Wed,  9 Oct 2024 07:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728460441; x=1759996441;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gJ7ndhfsU9vGJnPwWnU5diOW1shCbrJXOcEF+5Qrqck=;
 b=KVwNbRsctm8pN2k1BatYw6uxHxbZSNbuYoTQS9dlVV4kN8IFBoAJtpMJ
 C0FF9u358ie88Xq19H7Sp66LQHqb2u5gsVgPZD1X3sUaj4oAAAdTxU30w
 rZevrNknMZKvNclcon88HP30jzRy+EOi7BD2wkTD3XbKtW13gZzjzlHGO
 EDIQqrqQRQPiF4/gLJiSlhkLb+xtSMUPKXLfgeC+wdXc89ZDFFKvhOJIp
 K/gTcCC4OzahFPoWyVJhEL6r0KkJZ3qXuQ1a2Kr91nakIX4xRiqiVeNvH
 zdYJKNZ43EjFlHGm7Il31nRQorJGn8RdMErltJo7w6RM8b+/wquNK3kkC g==;
X-CSE-ConnectionGUID: MF8s5O98R0yo0SbfUCMsag==
X-CSE-MsgGUID: F/8SC1c5Shiy6HEqD4l//Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27222125"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27222125"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:54:01 -0700
X-CSE-ConnectionGUID: 6ZL7gnzjSSyITBfrNXm9VA==
X-CSE-MsgGUID: BoEnes+nS+GJQWEu55mMHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76128598"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:53:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
In-Reply-To: <20241008223741.82790-10-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-10-matthew.s.atwood@intel.com>
Date: Wed, 09 Oct 2024 10:53:56 +0300
Message-ID: <87jzehbtkb.fsf@intel.com>
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

On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Read PICA register to see if edp over type C is possible and then
> add the appropriate tables for it.

There's clearly more to be done for the feature than this.

>
> Bspec: 68846
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 ++
>  .../gpu/drm/i915/display/intel_display_types.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
>  4 files changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 0d6f75ae35f5..1c8c2a2b05e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2261,6 +2261,8 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
>  			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
>  				return xe2hpd_c20_edp_tables;
> +			if (DISPLAY_VER(i915) >= 30 && encoder->typec_supp)
> +				return xe3lpd_c20_dp_edp_tables;
>  		}
>  
>  		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..e9dc7707fbcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -158,6 +158,7 @@ struct intel_encoder {
>  	enum port port;
>  	u16 cloneable;
>  	u8 pipe_mask;
> +	bool typec_supp;

The register is global, why do we store this per encoder?

Side not, please let's not abbreviate stuff like _supp for the sake of
abbreviating stuff.

>  
>  	/* Check and recover a bad link state. */
>  	struct delayed_work link_check_work;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fbb096be02ad..917a503cc43b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5570,6 +5570,20 @@ intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
>  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
>  }
>  
> +static void
> +intel_dp_check_edp_typec_supp(struct intel_encoder *encoder)

It's not about checking anything, it's about reading, right?

> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	bool is_tc_port = intel_encoder_is_tc(encoder);
> +	u32 ret = 0;
> +
> +	if (encoder->type != INTEL_OUTPUT_EDP || !is_tc_port)

Currently we warn at connector init for eDP type-C combo.

> +		return;
> +
> +	ret = intel_de_read(i915, PICA_PHY_CONFIG_CONTROL);
> +	encoder->typec_supp = ret & EDP_ON_TYPEC;
> +}
> +
>  static int
>  intel_dp_detect(struct drm_connector *connector,
>  		struct drm_modeset_acquire_ctx *ctx,
> @@ -5595,6 +5609,8 @@ intel_dp_detect(struct drm_connector *connector,
>  	if (!intel_display_driver_check_access(dev_priv))
>  		return connector->status;
>  
> +	intel_dp_check_edp_typec_supp(encoder);
> +

Isn't this something that should be determined at intel_ddi_init() time?

BR,
Jani.


>  	/* Can't disconnect eDP */
>  	if (intel_dp_is_edp(intel_dp))
>  		status = edp_detect(intel_dp);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index da65500cd0c8..5f5a6ade5f8c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4583,4 +4583,7 @@ enum skl_power_gate {
>  
>  #define MTL_MEDIA_GSI_BASE		0x380000
>  
> +#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
> +#define   EDP_ON_TYPEC			REG_BIT(31)
> +
>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel
