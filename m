Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA957D2EB6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 11:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1ED10E1CA;
	Mon, 23 Oct 2023 09:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9FFD10E1AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 09:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698054194; x=1729590194;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=16IrZjrTETqGhw479EgJBe1NNMnkyHexvpypzXMNOuA=;
 b=l/i8zaroTELrUsgYuyohtlH1oY3eHV95CrG/K90LKAY53JsveAnNqjMA
 gj49qrOEMnXARyiTlzOkgSfgepcOL039QELHepUmwkaB8HQ+tlRAMAEW4
 HLEoY6KW+jfOk2Kaq9pRU9GPkyhP0uYTKQIaHoJ1sSdv4AREGX/xToPr4
 THysmxv8mxNq8KMj4fxZJ9886nJPCV9sgxVp23Kj7PE2IUxGG0xWfed7+
 4l1rjbKj6wX5Ac13Ofao/i4PtOIVhHo4Jiz3GJVxm8EteFRpEVUNKDh/4
 TxOElWKHHdyXJagqLcoqHyCjS3IsDIFz6QNA1d+Bw7ENtybkrsHCBZ21J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="366152852"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="366152852"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="734614368"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="734614368"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:43:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <7f2aafda-4006-6ab9-a75a-5b4b3b11295c@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231011201533.1081368-1-jani.nikula@intel.com>
 <7f2aafda-4006-6ab9-a75a-5b4b3b11295c@linux.intel.com>
Date: Mon, 23 Oct 2023 12:43:10 +0300
Message-ID: <877cndd68h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 12 Oct 2023, Nirmoy Das <nirmoy.das@linux.intel.com> wrote:
> On 10/11/2023 10:15 PM, Jani Nikula wrote:
>> Add separate macros for VLV/CHV registers without the implicit dev_priv,
>> and with the display MMIO base baked in.
>>
>> A number of implicitly used dev_priv local variables can be removed.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks, both pushed to din.

>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp_aux.c   | 43 +++++++++++++++----
>>   .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 14 +++---
>>   drivers/gpu/drm/i915/gvt/handlers.c           |  1 -
>>   3 files changed, 43 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index 4431b6290c4c..c106598a78c5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -531,9 +531,40 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
>>   	return ret;
>>   }
>>   
>> +static i915_reg_t vlv_aux_ctl_reg(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum aux_ch aux_ch = dig_port->aux_ch;
>> +
>> +	switch (aux_ch) {
>> +	case AUX_CH_B:
>> +	case AUX_CH_C:
>> +	case AUX_CH_D:
>> +		return VLV_DP_AUX_CH_CTL(aux_ch);
>> +	default:
>> +		MISSING_CASE(aux_ch);
>> +		return VLV_DP_AUX_CH_CTL(AUX_CH_B);
>> +	}
>> +}
>> +
>> +static i915_reg_t vlv_aux_data_reg(struct intel_dp *intel_dp, int index)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum aux_ch aux_ch = dig_port->aux_ch;
>> +
>> +	switch (aux_ch) {
>> +	case AUX_CH_B:
>> +	case AUX_CH_C:
>> +	case AUX_CH_D:
>> +		return VLV_DP_AUX_CH_DATA(aux_ch, index);
>> +	default:
>> +		MISSING_CASE(aux_ch);
>> +		return VLV_DP_AUX_CH_DATA(AUX_CH_B, index);
>> +	}
>> +}
>> +
>>   static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -550,7 +581,6 @@ static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
>>   
>>   static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -567,7 +597,6 @@ static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   
>>   static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -586,7 +615,6 @@ static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
>>   
>>   static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -605,7 +633,6 @@ static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   
>>   static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -625,7 +652,6 @@ static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
>>   
>>   static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -645,7 +671,6 @@ static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   
>>   static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -668,7 +693,6 @@ static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
>>   
>>   static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
>>   {
>> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	enum aux_ch aux_ch = dig_port->aux_ch;
>>   
>> @@ -757,6 +781,9 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>>   	} else if (HAS_PCH_SPLIT(dev_priv)) {
>>   		intel_dp->aux_ch_ctl_reg = ilk_aux_ctl_reg;
>>   		intel_dp->aux_ch_data_reg = ilk_aux_data_reg;
>> +	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>> +		intel_dp->aux_ch_ctl_reg = vlv_aux_ctl_reg;
>> +		intel_dp->aux_ch_data_reg = vlv_aux_data_reg;
>>   	} else {
>>   		intel_dp->aux_ch_ctl_reg = g4x_aux_ctl_reg;
>>   		intel_dp->aux_ch_data_reg = g4x_aux_data_reg;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> index 34f6e0a48ed2..e642445364d2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
>> @@ -21,13 +21,14 @@
>>   #define __xe2lpd_aux_ch_idx(aux_ch)						\
>>   	(aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + (aux_ch) - AUX_CH_A)
>>   
>> -/* TODO: Remove implicit dev_priv */
>> -#define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
>> -#define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
>> +#define _DPA_AUX_CH_CTL			0x64010
>> +#define _DPB_AUX_CH_CTL			0x64110
>>   #define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
>>   #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
>>   #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
>>   						   _DPB_AUX_CH_CTL)
>> +#define VLV_DP_AUX_CH_CTL(aux_ch)	_MMIO(VLV_DISPLAY_BASE + \
>> +					      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
>>   #define _XELPDP_DP_AUX_CH_CTL(aux_ch)						\
>>   		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
>>   					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
>> @@ -69,13 +70,14 @@
>>   #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>>   #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>>   
>> -/* TODO: Remove implicit dev_priv */
>> -#define _DPA_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
>> -#define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
>> +#define _DPA_AUX_CH_DATA1		0x64014
>> +#define _DPB_AUX_CH_DATA1		0x64114
>>   #define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
>>   #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
>>   #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
>>   						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>> +#define VLV_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(VLV_DISPLAY_BASE + _PORT(aux_ch, _DPA_AUX_CH_DATA1, \
>> +								       _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>>   #define _XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
>>   		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
>>   					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
>> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
>> index a9f7fa9b90bd..72addd8d380f 100644
>> --- a/drivers/gpu/drm/i915/gvt/handlers.c
>> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
>> @@ -2576,7 +2576,6 @@ static int init_bdw_mmio_info(struct intel_gvt *gvt)
>>   
>>   static int init_skl_mmio_info(struct intel_gvt *gvt)
>>   {
>> -	struct drm_i915_private *dev_priv = gvt->gt->i915;
>>   	int ret;
>>   
>>   	MMIO_DH(FORCEWAKE_RENDER_GEN9, D_SKL_PLUS, NULL, mul_force_wake_write);

-- 
Jani Nikula, Intel
