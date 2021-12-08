Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C2A46D0CB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 11:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437306F4E2;
	Wed,  8 Dec 2021 10:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 919046F4E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 10:17:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="261877778"
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="261877778"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 02:17:19 -0800
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="502998062"
Received: from cahanley-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.1])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 02:17:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YakpXfVID+sxfbr1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211202144456.2541305-1-jani.nikula@intel.com>
 <YakpXfVID+sxfbr1@intel.com>
Date: Wed, 08 Dec 2021 12:17:11 +0200
Message-ID: <87sfv34d08.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/snps: use div32 version of MPLLB
 word clock for UHBR
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 02 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Dec 02, 2021 at 04:44:56PM +0200, Jani Nikula wrote:
>> The mode set sequence for 128b/132b requires setting the div32 version
>> of MPLLB clock.
>>=20
>> Bspec: 53880, 54128
>
> Weird place for that information when all the other bits are listed
> in the clock programming section :/
>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 ++
>>  drivers/gpu/drm/i915/i915_reg.h               | 1 +
>>  2 files changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu=
/drm/i915/display/intel_snps_phy.c
>> index c2251218a39e..09f405e4d363 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -186,6 +186,7 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_=
100 =3D {
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL, 1) |
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
>>  	.mpllb_div2 =3D
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 2) |
>> @@ -369,6 +370,7 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_=
38_4 =3D {
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL, 1) |
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
>>  	.mpllb_div2 =3D
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 3450818802c2..1fad1d593e13 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2265,6 +2265,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>>  #define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
>>  #define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
>>  #define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
>> +#define   SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL	REG_BIT(0)
>>=20=20
>>  #define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
>>  #define   SNPS_PHY_MPLLB_FRACN_EN		REG_BIT(31)
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
