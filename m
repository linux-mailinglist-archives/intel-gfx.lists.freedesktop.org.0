Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFF2B1C728
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AAA10E3E1;
	Wed,  6 Aug 2025 13:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvHttZ5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7AD610E0DA;
 Wed,  6 Aug 2025 13:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754488678; x=1786024678;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vH4xOOkpeUxn2Q1GT2FC/TdNCuIvOcr9h3sypVYFBc8=;
 b=EvHttZ5uji5TiYEws2fFgphddGvhc+SUFcuORlH97ERPj3IZB4dSCcfr
 nNWs55G4LthkoE/Ih/K2upSCvkV9lYdu8PIkbzr6eH+sGi9SZLFH2fnxv
 mZ3HEXMNVqYW04ErbpGCVbRviYn3+6yxvwltwLrEf6rErreRMAqUi49BT
 MWCB/UYc4Nd6ukqL1gZSqlvzULNfUS/8+G+8xCCc9rqzngtZ1KlwE3Cnz
 aPAgtEYBy+BkAgub0P3mi3LdOt9EnpyhbvnyUzj1jkWCO1qP04/j7uvf6
 ridamRnKxOPBBhco7m7AYyEZW/PJPqX2dciVVu18dRj3N6ImM1iu1JtL/ w==;
X-CSE-ConnectionGUID: sayvNDbjSimfZib1E7h12A==
X-CSE-MsgGUID: X0RcCdl4SsS7/nbBX2n8Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60645263"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60645263"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:57:58 -0700
X-CSE-ConnectionGUID: b8PsvuKcTqeLwtcK+qPCKg==
X-CSE-MsgGUID: JPEbkaPZRG+ng7ULqEsilg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164304358"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:57:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/dram: move fsb_freq and mem_freq to dram info
In-Reply-To: <aJKFcINrXQvsM9ZQ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1753971617.git.jani.nikula@intel.com>
 <e8301cbddf14c52cd7c58bd2d7fb1c6d498b69c0.1753971617.git.jani.nikula@intel.com>
 <aJKFcINrXQvsM9ZQ@intel.com>
Date: Wed, 06 Aug 2025 16:57:53 +0300
Message-ID: <61895ad35a6d50a3028ff84d1eeabdf3e0eca4ef@intel.com>
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

On Tue, 05 Aug 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jul 31, 2025 at 05:21:25PM +0300, Jani Nikula wrote:
>> Store fsb_freq and mem_freq in dram info the same way we do for other
>> memory info on later platforms for a slightly more unified approach.
>>=20
>> This allows us to remove fsb_freq, mem_freq and is_ddr3 members from
>> struct drm_i915_private and struct xe_device.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c | 13 +++++----
>>  drivers/gpu/drm/i915/i915_drv.h        |  2 --
>>  drivers/gpu/drm/i915/soc/intel_dram.c  | 38 +++++++++++---------------
>>  drivers/gpu/drm/i915/soc/intel_dram.h  |  2 ++
>>  drivers/gpu/drm/xe/xe_device_types.h   |  1 -
>>  5 files changed, 26 insertions(+), 30 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i9=
15/display/i9xx_wm.c
>> index 1f9db5118777..591acce2a4b1 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -3,6 +3,8 @@
>>   * Copyright =C2=A9 2023 Intel Corporation
>>   */
>>=20=20
>> +#include "soc/intel_dram.h"
>> +
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>>  #include "i9xx_wm.h"
>> @@ -85,7 +87,8 @@ static const struct cxsr_latency cxsr_latency_table[] =
=3D {
>>=20=20
>>  static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_dis=
play *display)
>>  {
>> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +	const struct dram_info *dram_info =3D intel_dram_info(display->drm);
>> +	bool is_ddr3 =3D dram_info->type =3D=3D INTEL_DRAM_DDR3;
>
> does this deserves a separate patch? I'm not sure if I followed here...

The current check in the loop below is

	i915->is_ddr3 =3D=3D latency->is_ddr3

and with i915->is_ddr3 being replaced by dram_info->type, I thought it's
simpler to have that variable.

The alternative is to convert the cxsr_latency_table to use enum
intel_dram_type and INTEL_DRAM_DDR3, but I felt that's a bit much.

>
>>  	int i;
>>=20=20
>>  	for (i =3D 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
>> @@ -93,15 +96,15 @@ static const struct cxsr_latency *pnv_get_cxsr_laten=
cy(struct intel_display *dis
>>  		bool is_desktop =3D !display->platform.mobile;
>>=20=20
>>  		if (is_desktop =3D=3D latency->is_desktop &&
>> -		    i915->is_ddr3 =3D=3D latency->is_ddr3 &&
>> -		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) =3D=3D latency->fsb_freq =
&&
>> -		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) =3D=3D latency->mem_freq)
>> +		    is_ddr3 =3D=3D latency->is_ddr3 &&
>> +		    DIV_ROUND_CLOSEST(dram_info->fsb_freq, 1000) =3D=3D latency->fsb_=
freq &&
>> +		    DIV_ROUND_CLOSEST(dram_info->mem_freq, 1000) =3D=3D latency->mem_=
freq)
>>  			return latency;
>>  	}
>>=20=20
>>  	drm_dbg_kms(display->drm,
>>  		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
>> -		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
>> +		    is_ddr3 ? "3" : "2", dram_info->fsb_freq, dram_info->mem_freq);
>>=20=20
>>  	return NULL;
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 4e4e89746aa6..2f3965feada1 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -237,8 +237,6 @@ struct drm_i915_private {
>>=20=20
>>  	bool preserve_bios_swizzle;
>>=20=20
>> -	unsigned int fsb_freq, mem_freq, is_ddr3;
>> -
>>  	unsigned int hpll_freq;
>>  	unsigned int czclk_freq;
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i91=
5/soc/intel_dram.c
>> index d896fb67270f..6405a3d0b930 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -149,17 +149,6 @@ unsigned int intel_mem_freq(struct drm_i915_private=
 *i915)
>>  		return 0;
>>  }
>>=20=20
>> -static void detect_mem_freq(struct drm_i915_private *i915)
>> -{
>> -	i915->mem_freq =3D intel_mem_freq(i915);
>> -
>> -	if (IS_PINEVIEW(i915))
>> -		i915->is_ddr3 =3D pnv_is_ddr3(i915);
>> -
>> -	if (i915->mem_freq)
>> -		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>> -}
>> -
>>  static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>>  {
>>  	u32 fsb;
>> @@ -252,11 +241,20 @@ unsigned int intel_fsb_freq(struct drm_i915_privat=
e *i915)
>>  		return 0;
>>  }
>>=20=20
>> -static void detect_fsb_freq(struct drm_i915_private *i915)
>> +static int i915_get_dram_info(struct drm_i915_private *i915, struct dra=
m_info *dram_info)
>>  {
>> -	i915->fsb_freq =3D intel_fsb_freq(i915);
>> -	if (i915->fsb_freq)
>> -		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>> +	dram_info->fsb_freq =3D intel_fsb_freq(i915);
>> +	if (dram_info->fsb_freq)
>> +		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", dram_info->fsb_freq);
>> +
>> +	dram_info->mem_freq =3D intel_mem_freq(i915);
>> +	if (dram_info->mem_freq)
>> +		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
>> +
>> +	if (IS_PINEVIEW(i915) && pnv_is_ddr3(i915))
>> +		dram_info->type =3D INTEL_DRAM_DDR3;
>> +
>> +	return 0;
>>  }
>>=20=20
>>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
>> @@ -728,12 +726,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
>>  	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
>>  		return 0;
>>=20=20
>> -	detect_fsb_freq(i915);
>> -	detect_mem_freq(i915);
>> -
>> -	if (GRAPHICS_VER(i915) < 9)
>> -		return 0;
>
> oh! this responds my last question in the previous patch...

Yeah, I could've referred to later changes there!

>
>> -
>>  	dram_info =3D drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
>>  	if (!dram_info)
>>  		return -ENOMEM;
>> @@ -754,8 +746,10 @@ int intel_dram_detect(struct drm_i915_private *i915)
>>  		ret =3D gen11_get_dram_info(i915, dram_info);
>>  	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
>>  		ret =3D bxt_get_dram_info(i915, dram_info);
>> -	else
>> +	else if (GRAPHICS_VER(i915) >=3D 9)
>>  		ret =3D skl_get_dram_info(i915, dram_info);
>> +	else
>> +		ret =3D i915_get_dram_info(i915, dram_info);
>>=20=20
>>  	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
>>  		    intel_dram_type_str(dram_info->type));
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i91=
5/soc/intel_dram.h
>> index 5ba75e279e84..97d21894abdc 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
>> @@ -29,6 +29,8 @@ struct dram_info {
>>  	} type;
>>  	u8 num_qgv_points;
>>  	u8 num_psf_gv_points;
>> +	unsigned int fsb_freq;
>> +	unsigned int mem_freq;
>>  };
>>=20=20
>>  void intel_dram_edram_detect(struct drm_i915_private *i915);
>> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/x=
e_device_types.h
>> index 38c8329b4d2c..e2206e867b33 100644
>> --- a/drivers/gpu/drm/xe/xe_device_types.h
>> +++ b/drivers/gpu/drm/xe/xe_device_types.h
>> @@ -609,7 +609,6 @@ struct xe_device {
>>  	struct {
>>  		unsigned int hpll_freq;
>>  		unsigned int czclk_freq;
>> -		unsigned int fsb_freq, mem_freq, is_ddr3;
>>  	};
>>  #endif
>>  };
>> --=20
>> 2.39.5
>>=20

--=20
Jani Nikula, Intel
