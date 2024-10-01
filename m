Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6F498BD00
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4662D10E043;
	Tue,  1 Oct 2024 13:02:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XEAmOd7P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212D110E043
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727787732; x=1759323732;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=tOCJgXsYLL6eAODjUWpUILj5Knk086JcNp2bX8sl4yo=;
 b=XEAmOd7PD0vRIQBqdUOaYNu/W0MazIVvh8p++hlGA3qrJna6yRW/R87e
 jgR1UYprudUs/SdFjBIaNbcFWpcobTxGoD1/ZHGFko20bD8A6JSbpIRob
 EokThuNLQuw0ybmUZGhsr7m9ejHTus3qqB0OeETv+7cOgsIO5PY5eabrB
 x7DWqMQr2OOalMmeK5Bp11Ba5fblAyDjI/jBbPrh3eLfwrMWVN6eiubvT
 wANwWqFUD/dHOApA3W+O+aoXhtax+TvDTpw4YR/qIkY9+aKUpRU1vTRyo
 eWGuhiRfjKrb0C4aX1ljjy4id31XgyV4eVjFoj/KAhKy7l+63kOFmleYO A==;
X-CSE-ConnectionGUID: 8L5A/N89QtCt2WdhpuyHhw==
X-CSE-MsgGUID: 3EMPnabkSN+w4kbkIbQSPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="49442923"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="49442923"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:02:12 -0700
X-CSE-ConnectionGUID: fST+LgH9RHGd5x7ATOobWw==
X-CSE-MsgGUID: G8XJt+l3Qri3rzBBylwIpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73276197"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:02:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 2/3] drm/i915/dp: Track source OUI validity explicitly
In-Reply-To: <20241001123259.616486-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241001123259.616486-1-imre.deak@intel.com>
 <20241001123259.616486-2-imre.deak@intel.com>
Date: Tue, 01 Oct 2024 16:01:55 +0300
Message-ID: <87h69wugcc.fsf@intel.com>
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

On Tue, 01 Oct 2024, Imre Deak <imre.deak@intel.com> wrote:
> While updating the source OUI on the sink the driver should avoid
> writing the OUI if it's already up-to-date to prevent the sink from
> resetting itself in response to the update. On eDP - the only output
> type where the OUI was updated so far - the driver ensured this by
> comparing the current source OUI DPCD register values with the expected
> Intel OUI value, skipping the update in case of a match. On some non-eDP
> sinks - at least on Synaptics branch devices - this method doesn't work,
> since the source OUI DPCD registers read back as all 0, even after
> updating the registers.
>
> Handle the above kind of sinks by tracking when the OUI was updated and
> so should be valid, regardless of what the DPCD registers contain.
>
> This is required by the next patch updating the source OUI on non-eDP
> sink types as well.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 25 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  5 files changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 440fb3002f286..596e926ef0894 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1251,6 +1251,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
>  	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
>  
>  	intel_dp->reset_link_params = true;
> +	intel_dp_invalidate_source_oui(intel_dp);
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		vlv_pps_pipe_reset(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fe1ded6707f90..465f245a53c48 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4392,6 +4392,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
>  	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
>  
>  	intel_dp->reset_link_params = true;
> +	intel_dp_invalidate_source_oui(intel_dp);
>  
>  	intel_pps_encoder_reset(intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7ff97e5b83dd5..ad84ffa31c97f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1757,6 +1757,7 @@ struct intel_dp {
>  
>  	/* When we last wrote the OUI for eDP */
>  	unsigned long last_oui_write;
> +	bool oui_valid;
>  
>  	bool colorimetry_support;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b7661529f1927..2d6ffbeae07a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3335,31 +3335,43 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
>  }
>  
>  static void
> -intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
> +intel_dp_init_source_oui(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u8 oui[] = { 0x00, 0xaa, 0x01 };
>  	u8 buf[3] = {};
>  
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
>  	/*
>  	 * During driver init, we want to be careful and avoid changing the source OUI if it's
>  	 * already set to what we want, so as to avoid clearing any state by accident
>  	 */
> -	if (careful) {
> +	if (!intel_dp->oui_valid) {
>  		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
>  			drm_err(&i915->drm, "Failed to read source OUI\n");
>  
>  		if (memcmp(oui, buf, sizeof(oui)) == 0) {
>  			/* Assume the OUI was written now. */
>  			intel_dp->last_oui_write = jiffies;
> -			return;
> +			intel_dp->oui_valid = true;
>  		}
>  	}
>  
> +	if (intel_dp->oui_valid)
> +		return;
> +
>  	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
>  		drm_err(&i915->drm, "Failed to write source OUI\n");
>  
>  	intel_dp->last_oui_write = jiffies;
> +	intel_dp->oui_valid = true;

Looking at patches 1 and 2, I'm thinking we don't need two members for
this.

Just make intel_dp->last_oui_write == 0 mean "invalid".

BR,
Jani.


> +}
> +
> +void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp)
> +{
> +	intel_dp->oui_valid = false;
>  }
>  
>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
> @@ -3390,6 +3402,8 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  		if (downstream_hpd_needs_d0(intel_dp))
>  			return;
>  
> +		intel_dp_invalidate_source_oui(intel_dp);
> +
>  		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
>  	} else {
>  		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
> @@ -3397,8 +3411,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  		lspcon_resume(dp_to_dig_port(intel_dp));
>  
>  		/* Write the source OUI as early as possible */
> -		if (intel_dp_is_edp(intel_dp))
> -			intel_edp_init_source_oui(intel_dp, false);
> +		intel_dp_init_source_oui(intel_dp);
>  
>  		/*
>  		 * When turning on, we need to retry for 1ms to give the sink
> @@ -4115,7 +4128,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	 * If needed, program our source OUI so we can make various Intel-specific AUX services
>  	 * available (such as HDR backlight controls)
>  	 */
> -	intel_edp_init_source_oui(intel_dp, true);
> +	intel_dp_init_source_oui(intel_dp);
>  
>  	return true;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 3b869429e5756..0449d1d3f175d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -189,6 +189,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp);
>  void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
>  				 const struct intel_crtc_state *crtc_state);
>  
> +void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
>  int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);

-- 
Jani Nikula, Intel
