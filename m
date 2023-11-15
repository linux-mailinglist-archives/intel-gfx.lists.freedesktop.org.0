Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E122C7EBECA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 09:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D6510E264;
	Wed, 15 Nov 2023 08:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F92B10E264
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 08:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700038066; x=1731574066;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=m+3lUdZHFl7tIpQXbQDubd+JBJf2p4D1r664JR9wTDc=;
 b=evFOgRPaKtM4E1CX5Jafu8EvstCjeDXBXlfMUjqSycpqdqpEZJeugxq3
 YsXULiQJfwiEF4/yyrtn7j0EwQt8YKAF3NuqRIL7Wg1O3x0TffOE8pS+P
 FusqCF36sqeT+dg3bvdscFAYJ2UTgxeg1whISQeU7kr/dsDkEOQ8jjJn6
 sviK0lyHz1UkFmxbFjdyML0WJ34QoincWb81UcI34Cgzz9SqPeyWsmmHY
 Ipq6ScnNLKwqO/d6mR4fAuCjUhPGXOKNCWzyNLlN32iNYlX0/4xTV1faZ
 gbVzXIZw3DzX4VOqpDSob/HzZENDJkkMj0beafNi49BB+u27/4fAo5QPX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="381233829"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="381233829"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:47:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; 
   d="scan'208";a="6091324"
Received: from aklett-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.38.156])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:47:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231115063054.3754600-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115063054.3754600-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 15 Nov 2023 10:47:26 +0200
Message-ID: <87pm0bqu75.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 1/3] drm/i915: Define and compute Transcoder
 CMRR registers
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Nov 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add register definitions for Transcoder Fixed Average
> Vtotal mode/CMRR function, with the necessary bitfields.
> Compute these registers when CMRR is enabled, extending
> Adaptive refresh rate capabilities.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  6 +++++
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 25 ++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h               | 14 +++++++++++
>  4 files changed, 66 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 125903007a29..f99d2de840bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -921,6 +921,13 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>  		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
>  }
>  
> +static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
> +				const struct intel_crtc_state *new_crtc_state)
> +{
> +	return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
> +		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
> +}
> +
>  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>  			 const struct intel_crtc_state *new_crtc_state)
>  {
> @@ -5067,6 +5074,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	} \
>  } while (0)
>  
> +#define PIPE_CONF_CHECK_LLI(name) do { \
> +	if (current_config->name != pipe_config->name) { \
> +		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +				     "(expected %lli, found %lli)", \
> +				     current_config->name, \
> +				     pipe_config->name); \
> +		ret = false; \
> +	} \
> +} while (0)
> +
>  #define PIPE_CONF_CHECK_BOOL(name) do { \
>  	if (current_config->name != pipe_config->name) { \
>  		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
> @@ -5447,10 +5464,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.flipline);
>  		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>  		PIPE_CONF_CHECK_I(vrr.guardband);
> +		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> +		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>  	}
>  
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
> +#undef PIPE_CONF_CHECK_LLI
>  #undef PIPE_CONF_CHECK_BOOL
>  #undef PIPE_CONF_CHECK_BOOL_INCOMPLETE
>  #undef PIPE_CONF_CHECK_P
> @@ -6790,7 +6810,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
>  		    intel_crtc_needs_fastset(new_crtc_state))
>  			icl_set_pipe_chicken(new_crtc_state);
>  
> -		if (vrr_params_changed(old_crtc_state, new_crtc_state))
> +		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
> +		    cmrr_params_changed(old_crtc_state, new_crtc_state))
>  			intel_vrr_set_transcoder_timings(new_crtc_state);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9a44350ba05d..e42a0807227b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1406,6 +1406,12 @@ struct intel_crtc_state {
>  		u16 flipline, vmin, vmax, guardband;
>  	} vrr;
>  
> +	/* Content Match Refresh Rate state */
> +	struct {
> +		bool enable;
> +		u64 cmrr_n, cmrr_m;
> +	} cmrr;
> +
>  	/* Stream Splitter for eDP MSO */
>  	struct {
>  		bool enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5d905f932cb4..4aeccbbf1d2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -199,6 +199,19 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  		return;
>  	}
>  
> +	if (crtc_state->cmrr.enable) {
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +			       VRR_CTL_CMRR_ENABLE | trans_vrr_ctl(crtc_state));
> +		intel_de_write(dev_priv, TRANS_CMRR_M_HI(cpu_transcoder),
> +			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> +		intel_de_write(dev_priv, TRANS_CMRR_M_LO(cpu_transcoder),
> +			       lower_32_bits(crtc_state->cmrr.cmrr_m));
> +		intel_de_write(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder),
> +			       upper_32_bits(crtc_state->cmrr.cmrr_n));
> +		intel_de_write(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder),
> +			       lower_32_bits(crtc_state->cmrr.cmrr_n));
> +	}
> +
>  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
> @@ -263,12 +276,22 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	u32 trans_vrr_ctl;
> +	u32 trans_vrr_ctl, cmrr_m_hi, cmrr_m_lo, cmrr_n_hi, cmrr_n_lo;
>  
>  	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
>  
>  	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>  
> +	if (crtc_state->cmrr.enable) {
> +		cmrr_n_hi = intel_de_read(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder));
> +		cmrr_n_lo = intel_de_read(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder));
> +		cmrr_m_hi = intel_de_read(dev_priv, TRANS_CMRR_M_HI(cpu_transcoder));
> +		cmrr_m_lo = intel_de_read(dev_priv, TRANS_CMRR_M_LO(cpu_transcoder));
> +
> +		crtc_state->cmrr.cmrr_n = ((u64)cmrr_n_hi << 32) | (u64)cmrr_n_lo;
> +		crtc_state->cmrr.cmrr_m = ((u64)cmrr_m_hi << 32) | (u64)cmrr_m_lo;

See intel_de_read64_2x32().

> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 13)
>  		crtc_state->vrr.guardband =
>  			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 135e8d8dbdf0..8554083ebf98 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2013,6 +2013,7 @@
>  #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
>  #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>  #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>  #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> @@ -2089,6 +2090,19 @@
>  #define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(trans, _TRANS_VRR_STATUS2_A)
>  #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
>  
> +#define _TRANS_CMRR_M_HI_A		0x604F4
> +#define TRANS_CMRR_M_HI(trans)		_MMIO_TRANS2(trans, \
> +					_TRANS_CMRR_M_HI_A)
> +#define	_TRANS_CMRR_N_HI_A		0x604FC
> +#define TRANS_CMRR_N_HI(trans)		_MMIO_TRANS2(trans, \
> +					_TRANS_CMRR_N_HI_A)
> +#define	_TRANS_CMRR_M_LO_A		0x604F0
> +#define TRANS_CMRR_M_LO(trans)		_MMIO_TRANS2(trans, \
> +					_TRANS_CMRR_M_LO_A)
> +#define	_TRANS_CMRR_N_LO_A		0x604F8
> +#define TRANS_CMRR_N_LO(trans)		_MMIO_TRANS2(trans, \
> +					_TRANS_CMRR_N_LO_A)

Please fix indent, and order based on register offset. That'll also
group by M/N not by HI/LO.

> +
>  #define _TRANS_PUSH_A			0x60A70
>  #define _TRANS_PUSH_B			0x61A70
>  #define _TRANS_PUSH_C			0x62A70

-- 
Jani Nikula, Intel
