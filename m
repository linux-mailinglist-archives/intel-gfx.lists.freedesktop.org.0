Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CCE5B328B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 11:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5694F10E5FB;
	Fri,  9 Sep 2022 09:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DFD210E5FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 09:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662714096; x=1694250096;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UM6Ca77vPR3UCsEzzHyxFwzhxaifn5PtqxMJ1AKbVug=;
 b=A8L2Sdz95RnBs2r0v57UvGgdGqv2Fw42noRVlNR+nO8ejG1zzAiqHZgZ
 DODOXQDYz6wSBilGrPUvCW8V+nuDUK+OBcfNhbFu+PQhdSzIqskH40+6f
 BXFyFgc6JflfHicXycUkzDVQWrPE1PRuFokCjn9rKp0y6BDBLtMWioTkf
 PQBDgZf/qPjigkMeJuutpdv2QosKeUQzhqNPZApLDtFzEWJvT2uHLqKRA
 917PjQF1H4gF2FSaHlUb+i5vZtJ0kWe257GuzR4sHZ5PN6MPwHpfgZLvB
 l5O/UCnM9a7shDZ5YDyDFDLGQQVeVx/jKQZVWFwytvZRnnqc/Y1qELPRL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="284451394"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="284451394"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 02:01:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677084716"
Received: from abaruah-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.45.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 02:01:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177686D56259B3554812B48BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220822081642.159908-1-suraj.kandpal@intel.com>
 <20220822081642.159908-2-suraj.kandpal@intel.com>
 <DM6PR11MB3177686D56259B3554812B48BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 09 Sep 2022 12:01:13 +0300
Message-ID: <87h71g7wh2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Define WD trancoder for
 i915
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

On Fri, 09 Sep 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> From: Suraj Kandpal <suraj.kandpal@intel.com>
>> 
>> Adding WD Types, WD transcoder to enum list and WD Transcoder offsets.
>> Adding i915 register definitions related to WD transcoder
>> 
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.h  |   6 +
>>  .../drm/i915/display/intel_display_types.h    |   1 +
>>  drivers/gpu/drm/i915/i915_reg.h               | 139 ++++++++++++++++++
>>  3 files changed, 146 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> b/drivers/gpu/drm/i915/display/intel_display.h
>> index fa5371036239..4e9f22954a41 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -120,6 +120,8 @@ enum transcoder {
>>  	TRANSCODER_DSI_1,
>>  	TRANSCODER_DSI_A = TRANSCODER_DSI_0,	/* legacy DSI */
>>  	TRANSCODER_DSI_C = TRANSCODER_DSI_1,	/* legacy DSI */
>> +	TRANSCODER_WD_0,
>> +	TRANSCODER_WD_1,
>> 
>>  	I915_MAX_TRANSCODERS
>>  };
>> @@ -141,6 +143,10 @@ static inline const char *transcoder_name(enum
>> transcoder transcoder)
>>  		return "DSI A";
>>  	case TRANSCODER_DSI_C:
>>  		return "DSI C";
>> +	case TRANSCODER_WD_0:
>> +		return "WD 0";
>> +	case TRANSCODER_WD_1:
>> +		return "WD 1";
>>  	default:
>>  		return "<invalid>";
>>  	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 0da9b208d56e..0e94bd430bcb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -79,6 +79,7 @@ enum intel_output_type {
>>  	INTEL_OUTPUT_DSI = 9,
>>  	INTEL_OUTPUT_DDI = 10,
>>  	INTEL_OUTPUT_DP_MST = 11,
>> +	INTEL_OUTPUT_WD = 12,
>>  };
>> 
>>  enum hdmi_force_audio {
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> b/drivers/gpu/drm/i915/i915_reg.h index bf5c39d9f953..e3fced4b9980
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2059,6 +2059,8 @@
>>  #define TRANSCODER_EDP_OFFSET 0x6f000
>>  #define TRANSCODER_DSI0_OFFSET	0x6b000
>>  #define TRANSCODER_DSI1_OFFSET	0x6b800
>> +#define TRANSCODER_WD0_OFFSET	0x6e000
>> +#define TRANSCODER_WD1_OFFSET	0x6e800
>> 
>>  #define HTOTAL(trans)		_MMIO_TRANS2(trans, _HTOTAL_A)
>>  #define HBLANK(trans)		_MMIO_TRANS2(trans, _HBLANK_A)
>> @@ -3831,6 +3833,11 @@
>>  #define PIPE_DSI0_OFFSET	0x7b000
>>  #define PIPE_DSI1_OFFSET	0x7b800
>> 
>> +/* WD 0 and 1 */
> Can this be changed to 
> /* WD offset */

Nah, the comments should be removed altogether, they add zero
value. That's literally what the macro name says already.

BR,
Jani.

>
>> +#define PIPE_WD0_OFFSET		0x7e000
>> +#define PIPE_WD1_OFFSET		0x7d000
>> +
>> +
>>  #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
>>  #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
>>  #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe,
>> _PIPEAFRAMEHIGH)
>> @@ -4495,6 +4502,10 @@
>>  #define _PIPEDSI0CONF		0x7b008
>>  #define _PIPEDSI1CONF		0x7b808
>> 
>> +/* WD 0 and 1 */
> Can this be changed to 
> /* WD config regs */
>
>> +#define _PIPEWD0CONF		0x7e008
>> +#define _PIPEWD1CONF		0x7d008
>> +
>>  /* Sprite A control */
>>  #define _DVSACNTR		0x72180
>>  #define   DVS_ENABLE			REG_BIT(31)
>> @@ -5720,6 +5731,7 @@
>>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>>  #define  GEN8_DE_MISC_GSE		(1 << 27)
>>  #define  GEN8_DE_EDP_PSR		(1 << 19)
>> +#define  GEN8_DE_MISC_WD0		(1 << 23)
>> 
>>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>>  #define GEN8_PCU_IMR _MMIO(0x444e4)
>> @@ -8714,6 +8726,133 @@ enum skl_power_gate {
>>  #define   DSB_ENABLE			(1 << 31)
>>  #define   DSB_STATUS			(1 << 0)
>> 
>> +#define TGL_ROOT_DEVICE_ID		0x9A00
>> +#define TGL_ROOT_DEVICE_MASK		0xFF00
>> +#define TGL_ROOT_DEVICE_SKU_MASK	0xF
>> +#define TGL_ROOT_DEVICE_SKU_ULX		0x2
>> +#define TGL_ROOT_DEVICE_SKU_ULT		0x4
>> +
>> +/* Gen12 WD */
>> +#define _MMIO_WD(tc, wd0, wd1)		_MMIO_TRANS((tc) -
>> TRANSCODER_WD_0, \
>> +							wd0, wd1)
>> +
>> +#define WD_TRANS_ENABLE			(1 << 31)
>> +#define WD_TRANS_DISABLE		0
>> +#define WD_TRANS_ACTIVE			(1 << 30)
>> +
>> +/* WD transcoder control */
>> +#define _WD_TRANS_FUNC_CTL_0		0x6e400
>> +#define _WD_TRANS_FUNC_CTL_1		0x6ec00
>> +#define WD_TRANS_FUNC_CTL(tc)		_MMIO_WD(tc,\
>> +					_WD_TRANS_FUNC_CTL_0,\
>> +					_WD_TRANS_FUNC_CTL_1)
>> +
>> +#define TRANS_WD_FUNC_ENABLE		(1 << 31)
>> +#define WD_TRIGGERED_CAP_MODE_ENABLE	(1 << 30)
>> +#define START_TRIGGER_FRAME		(1 << 29)
>> +#define STOP_TRIGGER_FRAME		(1 << 28)
>> +#define WD_CTL_POINTER_ETEH		(0 << 18)
>> +#define WD_CTL_POINTER_ETDH		(1 << 18)
>> +#define WD_CTL_POINTER_DTDH		(2 << 18)
>> +#define WD_INPUT_SELECT_MASK		(7 << 12)
>> +#define WD_INPUT_PIPE_A			(0 << 12)
>> +#define WD_INPUT_PIPE_B			(5 << 12)
>> +#define WD_INPUT_PIPE_C			(6 << 12)
>> +#define WD_INPUT_PIPE_D			(7 << 12)
>> +
>> +#define WD_PIX_FMT_MASK			(0x3 << 20)
>> +#define WD_PIX_FMT_YUYV			(0x1 << 20)
>> +#define WD_PIX_FMT_XYUV8888		(0x2 << 20)
>> +#define WD_PIX_FMT_XBGR8888		(0x3 << 20)
>> +#define WD_PIX_FMT_Y410			(0x4 << 20)
>> +#define WD_PIX_FMT_YUV422		(0x5 << 20)
>> +#define WD_PIX_FMT_XBGR2101010		(0x6 << 20)
>> +#define WD_PIX_FMT_RGB565		(0x7 << 20)
>> +
>> +#define WD_FRAME_NUMBER_MASK		15
>> +
>> +#define _WD_STRIDE_0			0x6e510
>> +#define _WD_STRIDE_1			0x6ed10
>> +#define WD_STRIDE(tc)			_MMIO_WD(tc,\
>> +					_WD_STRIDE_0,\
>> +					_WD_STRIDE_1)
>> +#define WD_STRIDE_SHIFT			6
>> +#define WD_STRIDE_MASK			(0x3ff << WD_STRIDE_SHIFT)
>> +
>> +#define _WD_STREAMCAP_CTL0		0x6e590
>> +#define _WD_STREAMCAP_CTL1		0x6ed90
>> +#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
>> +					_WD_STREAMCAP_CTL0,\
>> +					_WD_STREAMCAP_CTL1)
>> +
>> +#define WD_STREAM_CAP_MODE_EN		(1 << 31)
>> +#define WD_STRAT_MASK			(3 << 24)
>> +#define WD_SLICING_STRAT_1_1		(0 << 24)
>> +#define WD_SLICING_STRAT_2_1		(1 << 24)
>> +#define WD_SLICING_STRAT_4_1		(2 << 24)
>> +#define WD_SLICING_STRAT_8_1		(3 << 24)
>> +#define WD_STREAM_OVERRUN_STATUS	1
>> +
>> +#define _WD_SURF_0			0x6e514
>> +#define _WD_SURF_1			0x6ed14
>> +#define WD_SURF(tc)			_MMIO_WD(tc,\
>> +					_WD_SURF_0,\
>> +					_WD_SURF_1)
>> +
>> +#define _WD_IMR_0			0x6e560
>> +#define _WD_IMR_1			0x6ed60
>> +#define WD_IMR(tc)			_MMIO_WD(tc,\
>> +					_WD_IMR_0,\
>> +					_WD_IMR_1)
>> +#define WD_FRAME_COMPLETE_INT		(1 << 7)
>> +#define WD_GTT_FAULT_INT		(1 << 6)
>> +#define WD_VBLANK_INT			(1 << 5)
>> +#define WD_OVERRUN_INT			(1 << 4)
>> +#define WD_CAPTURING_INT		(1 << 3)
>> +#define WD_WRITE_COMPLETE_INT		(1 << 2)
>> +
>> +#define _WD_IIR_0			0x6e564
>> +#define _WD_IIR_1			0x6ed64
>> +#define WD_IIR(tc)			_MMIO_WD(tc,\
>> +					_WD_IIR_0,\
>> +					_WD_IIR_1)
>> +
>> +#define _WD_FRAME_STATUS_0		0x6e56b
>> +#define _WD_FRAME_STATUS_1		0x6ed6b
>> +#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
>> +					_WD_FRAME_STATUS_0,\
>> +					_WD_FRAME_STATUS_1)
>> +
>> +#define WD_FRAME_COMPLETE		(1 << 31)
>> +#define WD_STATE_IDLE			(0 << 24)
>> +#define WD_STATE_CAPSTART		(1 << 24)
>> +#define WD_STATE_FRAME_START		(2 << 24)
>> +#define WD_STATE_CAPACITIVE		(3 << 24)
>> +#define WD_STATE_TG_DONE		(4 << 24)
>> +#define WD_STATE_WDX_DONE		(5 << 24)
>> +#define WD_STATE_QUICK_CAP		(6 << 24)
>> +
>> +#define _WD_27_M_0			0x6e524
>> +#define _WD_27_M_1			0x6ed24
>> +#define WD_27_M(tc)			_MMIO_WD(tc,\
>> +					_WD_27_M_0,\
>> +					_WD_27_M_1)
>> +
>> +#define _WD_27_N_0			0x6e528
>> +
>> +//Address looks wrong in bspec:
>> +#define _WD_27_N_1			0x6ec28
>> +#define WD_27_N(tc)			_MMIO_WD(tc,\
>> +					_WD_27_N_0,\
>> +					_WD_27_N_1)
>> +
>> +#define _WD_TAIL_CFG_0			0x6e520
>> +#define _WD_TAIL_CFG_1			0x6ed20
>> +
>> +#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
>> +					_WD_TAIL_CFG_0,\
>> +					_WD_TAIL_CFG_1)
>> +
>>  #define CLKREQ_POLICY			_MMIO(0x101038)
>>  #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
>> 
> With the above said changes
> Reviewed-by: Arun R Murthy <arun.r.murthy>
>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>

-- 
Jani Nikula, Intel Open Source Graphics Center
