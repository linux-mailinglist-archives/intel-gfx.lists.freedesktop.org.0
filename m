Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE38999EEB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 10:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 825A110EA71;
	Fri, 11 Oct 2024 08:23:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6mLdmPs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3024710EA71;
 Fri, 11 Oct 2024 08:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728634987; x=1760170987;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Wwc80u7JDQK+oTUrhsESzjoMLBID8efIF7V/JIIeoes=;
 b=c6mLdmPsAslJvvBDZ34JnTEI6k6wf6N1pqaTzFL4b/YBGWWbRHgPER3C
 yVkTxCr+LUId4s5JkMdPcVsGDdVqu6JYRkIflCFZy+9w2SheaMG/Q422Z
 JONV4eTm6UumqyXg6B0S2HM7p8s3F8vLC+oGwIRDcFHmd4GWXidnBVpdO
 c+d2szsmSuAz/NUK+yRVpy3JFsZ+c38DC/Ef9DxlYyn56WZRDnN8XP+Y/
 eccHt2lbf2svHblf+gluYT60mJjsqOFEBHTWCqkDMsuSap3SovfuqY2zN
 m8J6czX+B8E0X3izwsOnYaD9kDDtewPaEzwsRt1nkIC3BT3jrguQj6WQj g==;
X-CSE-ConnectionGUID: bF6ltjm2QUyZPD5atC0MHA==
X-CSE-MsgGUID: bshHp7rcTN+r+LLzTw2MMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="45501737"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="45501737"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:23:06 -0700
X-CSE-ConnectionGUID: VHP2PoN7RrKQT61IAh1UeQ==
X-CSE-MsgGUID: whXTjNrxR1qzNogIK7bp9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77154061"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:23:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH v2 09/10] drm/i915/xe3lpd: Add check to see if edp over
 type c is allowed
In-Reply-To: <20241010224311.50133-10-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-10-matthew.s.atwood@intel.com>
Date: Fri, 11 Oct 2024 11:22:57 +0300
Message-ID: <87ed4n6obi.fsf@intel.com>
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

On Thu, 10 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Read PICA register to see if edp over type C is possible and then
> add the appropriate tables for it.
>
> Bspec: 68846
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

This patch was already rejected. Please don't send it again.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 ++
>  .../gpu/drm/i915/display/intel_display_types.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
>  4 files changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f1aea5ead41b..342cd508d6f6 100644
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
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	bool is_tc_port = intel_encoder_is_tc(encoder);
> +	u32 ret = 0;
> +
> +	if (encoder->type != INTEL_OUTPUT_EDP || !is_tc_port)
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
>  	/* Can't disconnect eDP */
>  	if (intel_dp_is_edp(intel_dp))
>  		status = edp_detect(intel_dp);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index fc30e0056b07..387ab40e3dd0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4584,4 +4584,7 @@ enum skl_power_gate {
>  
>  #define MTL_MEDIA_GSI_BASE		0x380000
>  
> +#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
> +#define   EDP_ON_TYPEC			REG_BIT(31)
> +
>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel
