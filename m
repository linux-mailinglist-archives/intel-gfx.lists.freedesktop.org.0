Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9C1818417
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 10:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F8A10E415;
	Tue, 19 Dec 2023 09:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F65710E415
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 09:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702976764; x=1734512764;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Mx0omNBYkAAcmCpDHMuNupSIzDyrzkqNHaw8dXBmNeE=;
 b=FyrB5r8NmJHatJRpF2vFrYnnl+NPURFDm+SXXzZQxPPbhwXgQNs3UdOA
 T4ANCJTJEg/DwFnlMrVOmBA4giZZSxLgnQ6Nrm4hHR6BHD/0AvMq5wkhT
 +FJRSRdPHtxg88DogkZ6WypVkWyeT0aselzgkpX9UoAwkElmwZtZKjoIj
 fui2FVWpuDPEia+xoVBdKCeQgLt8BsCALmWNOMjdwikXtIhty9UjkdkfJ
 BVcn5E/IfFFV6RA4xfOxXvhUx9wrd7x+tJ4w6ozXoCkyaRQkMZplxEKQC
 N1h1fMqGgSzyaoz6tRGZ14BpIVHF33s/TxbMQtSg378xrzAFE4mBmEKWU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2858425"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2858425"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 01:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="24119567"
Received: from alexeyze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.118])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 01:06:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/alpm: Add ALPM register definitions
In-Reply-To: <20231219063221.505982-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231219063221.505982-1-jouni.hogander@intel.com>
 <20231219063221.505982-2-jouni.hogander@intel.com>
Date: Tue, 19 Dec 2023 11:06:00 +0200
Message-ID: <874jgev9xj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 19 Dec 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:

Commit message goes here.

> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/=
drm/i915/display/intel_psr_regs.h
> index efe4306b37e0..9410a43e901b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -290,4 +290,107 @@
>  						  _SEL_FETCH_PLANE_OFFSET_1_A - \
>  						  _SEL_FETCH_PLANE_BASE_1_A)
>=20=20
> +#define _ALPM_CTL_A	0x60950
> +#define ALPM_CTL(tran)	_MMIO_TRANS2(tran, _ALPM_CTL_A)
> +#define  ALPM_CTL_ALPM_ENABLE				BIT(31)
> +#define  ALPM_CTL_ALPM_AUX_LESS_ENABLE			BIT(30)
> +#define  ALPM_CTL_LOBF_ENABLE				BIT(29)
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE		BIT(28)
> +#define  ALPM_CTL_KEEP_FEC_ENABLE_FOR_AUX_WAKE_SLEEP	BIT(27)
> +#define  ALPM_CTL_RESTORE_OCCURED			BIT(26)
> +#define  ALPM_CTL_RESTORE_TO_SLEEP			BIT(25)
> +#define  ALPM_CTL_RESTORE_TO_DEEP_SLEEP			BIT(24)

Please use REG_BIT() throughout.

> +#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(23, 21)
> +#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS	REG_FIELD_PREP(ALP=
M_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 0)
> +#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_128_SYMBOLS	REG_FIELD_PREP(AL=
PM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 1)
> +#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_256_SYMBOLS	REG_FIELD_PREP(AL=
PM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 2)
> +#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_512_SYMBOLS	REG_FIELD_PREP(AL=
PM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 3)
> +#define  ALPM_CTL_AUX_WAKE_SLEEP_HOLD_ENABLE		BIT(20)
> +#define  ALPM_CTL_ALPM_ENTRY_CHECK_MASK			REG_GENMASK(19, 16)
> +#define  ALPM_CTL_ALPM_ENTRY_CHECK(val)			REG_FIELD_PREP(ALPM_CTL_ALPM_E=
NTRY_CHECK_MASK, val)
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK		REG_GENMASK(13, 8)
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL=
_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LI=
NES)
> +#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
> +#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_L=
ESS_WAKE_TIME_MASK, val)
> +
> +#define _ALPM_CTL2_A	0x60950
> +#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
> +#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
> +#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CT=
L2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
> +#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
> +#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALP=
M_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
> +#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
> +#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMB=
ER_OF_LTTPR_MASK, val)
> +#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, =
8)
> +#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(A=
LPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
> +#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		BIT(4)
> +#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMA=
SK(2, 0)
> +#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD=
_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
> +
> +#define _PORT_ALPM_CTL_A			0x16fa2c
> +#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
> +#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	BIT(31)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM=
_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
> +#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_=
CTL_MAX_PHY_SWING_HOLD_MASK, val)
> +#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
> +#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_=
SILENCE_PERIOD_MASK, val)
> +
> +#define _PORT_ALPM_LFPS_CTL_A					0x16fa30
> +#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_C=
TL_A)
> +#define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			BIT(31)
> +#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL=
_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LI=
NES)
> +#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
> +#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_L=
ESS_WAKE_TIME_MASK, val)
> +
> +#define _ALPM_CTL2_A	0x60950
> +#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
> +#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
> +#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CT=
L2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
> +#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
> +#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALP=
M_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
> +#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
> +#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMB=
ER_OF_LTTPR_MASK, val)
> +#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, =
8)
> +#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(A=
LPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
> +#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		BIT(4)
> +#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMA=
SK(2, 0)
> +#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD=
_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
> +
> +#define _PORT_ALPM_CTL_A			0x16fa2c
> +#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
> +#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL=
_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LI=
NES)
> +#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
> +#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_L=
ESS_WAKE_TIME_MASK, val)
> +
> +#define _ALPM_CTL2_A	0x60950
> +#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
> +#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
> +#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CT=
L2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
> +#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
> +#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALP=
M_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
> +#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
> +#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMB=
ER_OF_LTTPR_MASK, val)
> +#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, =
8)
> +#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(A=
LPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
> +#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		BIT(4)
> +#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMA=
SK(2, 0)
> +#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD=
_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
> +
> +#define _PORT_ALPM_CTL_A			0x16fa2c
> +#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
> +#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
> +#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_A=
LPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_C=
OUNT_MIN)
> +#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(20=
, 16)
> +#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP=
(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
> +#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENM=
ASK(12, 8)
> +#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIEL=
D_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
> +#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMA=
SK(4, 0)
> +#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD=
_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
> +
>  #endif /* __INTEL_PSR_REGS_H__ */

--=20
Jani Nikula, Intel
