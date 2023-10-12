Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7527C6DC0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF4810E4BC;
	Thu, 12 Oct 2023 12:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFABF10E4BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697112926; x=1728648926;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+2LYea/ld7FeCcOaCn9Wi2FiUc561ai1ZwAoGZN5BX8=;
 b=nBsb52zyxbeliHGHVXmTYigbtlkZts1s4+hO9Ljwyi1/guYLcLZkiBS+
 ZuS2UGA+6zrUJeODi9dXzz+Wjjg3Llhh/4eSS2K7nGzvqt0vqVL1rAGpo
 E/se47Ps8uHMgvwJ6n/OzpgkjggpYfUxn5QK5vXhqVuOodOf5R79aAgUN
 ohWIe+kctRVoP7KzK+Anh9j+/w0Xru4PipjLXYzgEC5sIJ0Z2xkLkzcE0
 EDMzfRs4X63JOxTew4RwZWwrQkplfCzJtviL0G4sgvXox9KHezmJD7+Jo
 kQXjRw/XDLIWg5aQjM+0DCwgoajjTW5bNcZHGGr6ClQVSNy2MSnq98pM+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="451390303"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="451390303"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754225606"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="754225606"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.58.232])
 ([10.252.58.232])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:15:25 -0700
Message-ID: <7f2aafda-4006-6ab9-a75a-5b4b3b11295c@linux.intel.com>
Date: Thu, 12 Oct 2023 14:15:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231011201533.1081368-1-jani.nikula@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231011201533.1081368-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/aux: add separate register
 macros and functions for VLV/CHV
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


On 10/11/2023 10:15 PM, Jani Nikula wrote:
> Add separate macros for VLV/CHV registers without the implicit dev_priv,
> and with the display MMIO base baked in.
>
> A number of implicitly used dev_priv local variables can be removed.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux.c   | 43 +++++++++++++++----
>   .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 14 +++---
>   drivers/gpu/drm/i915/gvt/handlers.c           |  1 -
>   3 files changed, 43 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 4431b6290c4c..c106598a78c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -531,9 +531,40 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
>   	return ret;
>   }
>   
> +static i915_reg_t vlv_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch = dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +		return VLV_DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return VLV_DP_AUX_CH_CTL(AUX_CH_B);
> +	}
> +}
> +
> +static i915_reg_t vlv_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch = dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_B:
> +	case AUX_CH_C:
> +	case AUX_CH_D:
> +		return VLV_DP_AUX_CH_DATA(aux_ch, index);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return VLV_DP_AUX_CH_DATA(AUX_CH_B, index);
> +	}
> +}
> +
>   static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -550,7 +581,6 @@ static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
>   
>   static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -567,7 +597,6 @@ static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
>   
>   static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -586,7 +615,6 @@ static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
>   
>   static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -605,7 +633,6 @@ static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
>   
>   static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -625,7 +652,6 @@ static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
>   
>   static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -645,7 +671,6 @@ static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
>   
>   static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -668,7 +693,6 @@ static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
>   
>   static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
>   {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	enum aux_ch aux_ch = dig_port->aux_ch;
>   
> @@ -757,6 +781,9 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>   	} else if (HAS_PCH_SPLIT(dev_priv)) {
>   		intel_dp->aux_ch_ctl_reg = ilk_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = ilk_aux_data_reg;
> +	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +		intel_dp->aux_ch_ctl_reg = vlv_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg = vlv_aux_data_reg;
>   	} else {
>   		intel_dp->aux_ch_ctl_reg = g4x_aux_ctl_reg;
>   		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 34f6e0a48ed2..e642445364d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -21,13 +21,14 @@
>   #define __xe2lpd_aux_ch_idx(aux_ch)						\
>   	(aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + (aux_ch) - AUX_CH_A)
>   
> -/* TODO: Remove implicit dev_priv */
> -#define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
> -#define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
> +#define _DPA_AUX_CH_CTL			0x64010
> +#define _DPB_AUX_CH_CTL			0x64110
>   #define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
>   #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
>   #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
>   						   _DPB_AUX_CH_CTL)
> +#define VLV_DP_AUX_CH_CTL(aux_ch)	_MMIO(VLV_DISPLAY_BASE + \
> +					      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
>   #define _XELPDP_DP_AUX_CH_CTL(aux_ch)						\
>   		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
>   					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
> @@ -69,13 +70,14 @@
>   #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>   #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>   
> -/* TODO: Remove implicit dev_priv */
> -#define _DPA_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
> -#define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
> +#define _DPA_AUX_CH_DATA1		0x64014
> +#define _DPB_AUX_CH_DATA1		0x64114
>   #define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
>   #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
>   #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
>   						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> +#define VLV_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(VLV_DISPLAY_BASE + _PORT(aux_ch, _DPA_AUX_CH_DATA1, \
> +								       _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>   #define _XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
>   		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
>   					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index a9f7fa9b90bd..72addd8d380f 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -2576,7 +2576,6 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
>   
>   static int init_skl_mmio_info(struct intel_gvt *gvt)
>   {
> -	struct drm_i915_private *dev_priv = gvt->gt->i915;
>   	int ret;
>   
>   	MMIO_DH(FORCEWAKE_RENDER_GEN9, D_SKL_PLUS, NULL, mul_force_wake_write);
