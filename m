Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1604B8FE46B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 12:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A749210E8BD;
	Thu,  6 Jun 2024 10:37:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R1L+3NHt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC2B10E132;
 Thu,  6 Jun 2024 10:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717670256; x=1749206256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=SbBOCXiMnmzh5FTaqavRy6VI5IyVI8qQZnfs0255WT4=;
 b=R1L+3NHtvdQ0zn0kcAr/h7kAYKwucg57u5ddwlDZ3ZgsYQfUtUmrwSkU
 OL+eK2zXyrnqxQ6IgK8NJy1m4j2xPqaVDedE9p8hSCxZD8SZSy+k52y9U
 nFV6QczAVvDIHqQ2LHE+0GK9SBpY8L/nB9q0vrTmwkjgd7llxCKPZWHVE
 m+hRtSivjBGt3S66ICc++++eXkpUBIy65BC4PZ7vkxif17HvW3T1YjzSB
 cOaConeZ8ZVV0PhJdDbQAb+qOBsN6D2VqxibYR74tNrERVIQbQKc31H/D
 4UetlFFFtRVX7LIHucHJo0Z8BwC9KYiHv9cOpHAR572klDKQvhSzg8dg6 w==;
X-CSE-ConnectionGUID: 9Ly53njPRP+gvVBNgh54GQ==
X-CSE-MsgGUID: W5B0d1nORTSePdTkc9ZaCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14167719"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14167719"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 03:37:35 -0700
X-CSE-ConnectionGUID: f1Exis/kQcS58hgo/j34LQ==
X-CSE-MsgGUID: FEnvJ3xjSoK+wulvDMdhVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38372518"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 03:37:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915: extend the fsb_freq initialization to
 more platforms
In-Reply-To: <ZmA84kK3SgPSbMOB@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716906179.git.jani.nikula@intel.com>
 <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
 <ZmA84kK3SgPSbMOB@intel.com>
Date: Thu, 06 Jun 2024 13:37:32 +0300
Message-ID: <87bk4ebbmb.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 28, 2024 at 05:24:56PM +0300, Jani Nikula wrote:
>> Initialize fsb frequency for more platforms to be able to use it for GT
>> clock and rawclk frequency initialization.
>>=20
>> Note: There's a discrepancy between existing pnv_fsb_freq() and
>> i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
>> mobile.
>>=20
>> FIXME: What should the default or failure mode be when the value is
>> unknown?
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/soc/intel_dram.c | 54 ++++++++++++++++++++-------
>>  1 file changed, 40 insertions(+), 14 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i91=
5/soc/intel_dram.c
>> index ace9372244a4..74b5b70e91f9 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -142,24 +142,50 @@ static void detect_mem_freq(struct drm_i915_privat=
e *i915)
>>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>>  }
>>=20=20
>> -static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
>> +static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>>  {
>>  	u32 fsb;
>>=20=20
>>  	fsb =3D intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
>>=20=20
>> -	switch (fsb) {
>> -	case CLKCFG_FSB_400:
>> -		return 400000;
>> -	case CLKCFG_FSB_533:
>> -		return 533333;
>> -	case CLKCFG_FSB_667:
>> -		return 666667;
>> -	case CLKCFG_FSB_800:
>> -		return 800000;
>> +	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
>> +		switch (fsb) {
>> +		case CLKCFG_FSB_400:
>> +			return 400000;
>> +		case CLKCFG_FSB_533:
>> +			return 533333;
>> +		case CLKCFG_FSB_667:
>> +			return 666667;
>> +		case CLKCFG_FSB_800:
>> +			return 800000;
>> +		case CLKCFG_FSB_1067:
>> +			return 1066667;
>> +		case CLKCFG_FSB_1333:
>> +			return 1333333;
>> +		default:
>> +			MISSING_CASE(fsb);
>> +			return 1333333;
>> +		}
>> +	} else {
>> +		switch (fsb) {
>> +		case CLKCFG_FSB_400_ALT:
>> +			return 400000;
>> +		case CLKCFG_FSB_533:
>> +			return 533333;
>> +		case CLKCFG_FSB_667:
>> +			return 666667;
>> +		case CLKCFG_FSB_800:
>> +			return 800000;
>> +		case CLKCFG_FSB_1067_ALT:
>> +			return 1066667;
>> +		case CLKCFG_FSB_1333_ALT:
>> +			return 1333333;
>> +		case CLKCFG_FSB_1600_ALT:
>> +			return 1600000;
>> +		default:
>
> No MISSING_CASE() here?

Whoops.

>
>> +			return 533333;
>
> Why a different default value vs. the other branch?

No idea. :/

>
>> +		}
>>  	}
>> -
>> -	return 0;
>>  }
>>=20=20
>>  static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
>> @@ -193,8 +219,8 @@ static void detect_fsb_freq(struct drm_i915_private =
*i915)
>>  {
>>  	if (GRAPHICS_VER(i915) =3D=3D 5)
>>  		i915->fsb_freq =3D ilk_fsb_freq(i915);
>> -	else if (IS_PINEVIEW(i915))
>> -		i915->fsb_freq =3D pnv_fsb_freq(i915);
>> +	else if (GRAPHICS_VER(i915) =3D=3D 3 || GRAPHICS_VER(i915) =3D=3D 4)
>> +		i915->fsb_freq =3D i9xx_fsb_freq(i915);
>>=20=20
>>  	if (i915->fsb_freq)
>>  		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
