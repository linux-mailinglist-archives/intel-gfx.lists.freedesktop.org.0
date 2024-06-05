Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D905D8FCD6B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 14:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1752710E156;
	Wed,  5 Jun 2024 12:42:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQItQ0Cj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652CD10E7B1;
 Wed,  5 Jun 2024 12:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717591351; x=1749127351;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BjU6uH9trp6XIfD+DMUAQRqt9yOmki6qo0MnEhmvCT0=;
 b=XQItQ0Cja43/Prd+38qTW+thqKEOH3U9c6cip2ZsGNs1jsA77D+Bh+xc
 xvBwStqE4M/uzXg9b3El9x4Qr+BsxJuKaNhPfXqHYm+lgOhQN2quZt1QA
 QLtalMf+/0vJ/cxyamoEP9v4YszH39qggxQ9B5Cm7Pmwx4mvwIbrDmF7y
 gS5XAt2vM8TwMXxE/9ALWQsjGBrK8OfwOy92fGCbiEfNcP8+BAPItUaBg
 7DXeWfcHx1MWw+HT3qvdqJZ669HylEPe9dkRdCKouNozQAuQElcZHuhjv
 RCJgQf+ipRMEU1aD5fdiJNoq7mDwAUewGcVEIf3E97Mxj8F6xv9j3kN5g Q==;
X-CSE-ConnectionGUID: o6NsrR3/SIeEiWju4ZxQfw==
X-CSE-MsgGUID: bbfug4WSR8yPJ6Xpy6rxlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14377909"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14377909"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 05:42:30 -0700
X-CSE-ConnectionGUID: gCvnpMyaTWSsgJF6RJcJJQ==
X-CSE-MsgGUID: jEggHu0zQGugniZIchF9jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37569875"
Received: from sbutnari-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 05:42:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/12] drm/i915: convert fsb_freq and mem_freq to kHz
In-Reply-To: <ZmA6AeEoSLMDuk31@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716906179.git.jani.nikula@intel.com>
 <1e4f2fe8c22c5a4fd8f137385f9a884e31986075.1716906179.git.jani.nikula@intel.com>
 <ZmA6AeEoSLMDuk31@intel.com>
Date: Wed, 05 Jun 2024 15:42:24 +0300
Message-ID: <87jzj3blxr.fsf@intel.com>
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
> On Tue, May 28, 2024 at 05:24:55PM +0300, Jani Nikula wrote:
>> We'll want to use fsb frequency for deriving GT clock and rawclk
>> frequencies in the future. Increase the accuracy by converting to
>> kHz. Do the same for mem freq to be aligned.
>
> mem_freq is used in:
> - gen5_rps_init() -> needs to be adjusted, with care taken for rounding
> - intel_gt_pm_frequency_dump() -> should probably be nuked from here

Good catches. Sloppy on my part.

Thanks,
Jani.

>
>>=20
>> Round the frequencies ending in 666 to 667.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c |  6 ++--
>>  drivers/gpu/drm/i915/gt/intel_rps.c    |  4 +--
>>  drivers/gpu/drm/i915/soc/intel_dram.c  | 50 +++++++++++++-------------
>>  3 files changed, 30 insertions(+), 30 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i9=
15/display/i9xx_wm.c
>> index 8b8a0f305c3a..08c5d122af8f 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -83,14 +83,14 @@ static const struct cxsr_latency *pnv_get_cxsr_laten=
cy(struct drm_i915_private *
>>=20=20
>>  		if (is_desktop =3D=3D latency->is_desktop &&
>>  		    i915->is_ddr3 =3D=3D latency->is_ddr3 &&
>> -		    i915->fsb_freq =3D=3D latency->fsb_freq &&
>> -		    i915->mem_freq =3D=3D latency->mem_freq)
>> +		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) =3D=3D latency->fsb_freq =
&&
>> +		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) =3D=3D latency->mem_freq)
>>  			return latency;
>>  	}
>>=20=20
>>  err:
>>  	drm_dbg_kms(&i915->drm,
>> -		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
>> +		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
>>  		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
>>=20=20
>>  	return NULL;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index c9cb2a391942..5d3de1cddcf6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -280,9 +280,9 @@ static void gen5_rps_init(struct intel_rps *rps)
>>  	u32 rgvmodectl;
>>  	int c_m, i;
>>=20=20
>> -	if (i915->fsb_freq <=3D 3200)
>> +	if (i915->fsb_freq <=3D 3200000)
>>  		c_m =3D 0;
>> -	else if (i915->fsb_freq <=3D 4800)
>> +	else if (i915->fsb_freq <=3D 4800000)
>>  		c_m =3D 1;
>>  	else
>>  		c_m =3D 2;
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i91=
5/soc/intel_dram.c
>> index 266ed6cfa485..ace9372244a4 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -56,11 +56,11 @@ static unsigned int pnv_mem_freq(struct drm_i915_pri=
vate *dev_priv)
>>=20=20
>>  	switch (tmp & CLKCFG_MEM_MASK) {
>>  	case CLKCFG_MEM_533:
>> -		return 533;
>> +		return 533333;
>>  	case CLKCFG_MEM_667:
>> -		return 667;
>> +		return 666667;
>>  	case CLKCFG_MEM_800:
>> -		return 800;
>> +		return 800000;
>>  	}
>>=20=20
>>  	return 0;
>> @@ -73,13 +73,13 @@ static unsigned int ilk_mem_freq(struct drm_i915_pri=
vate *dev_priv)
>>  	ddrpll =3D intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>>  	switch (ddrpll & 0xff) {
>>  	case 0xc:
>> -		return 800;
>> +		return 800000;
>>  	case 0x10:
>> -		return 1066;
>> +		return 1066667;
>>  	case 0x14:
>> -		return 1333;
>> +		return 1333333;
>>  	case 0x18:
>> -		return 1600;
>> +		return 1600000;
>>  	default:
>>  		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
>>  			ddrpll & 0xff);
>> @@ -97,9 +97,9 @@ static unsigned int chv_mem_freq(struct drm_i915_priva=
te *i915)
>>=20=20
>>  	switch ((val >> 2) & 0x7) {
>>  	case 3:
>> -		return 2000;
>> +		return 2000000;
>>  	default:
>> -		return 1600;
>> +		return 1600000;
>>  	}
>>  }
>>=20=20
>> @@ -114,11 +114,11 @@ static unsigned int vlv_mem_freq(struct drm_i915_p=
rivate *i915)
>>  	switch ((val >> 6) & 3) {
>>  	case 0:
>>  	case 1:
>> -		return 800;
>> +		return 800000;
>>  	case 2:
>> -		return 1066;
>> +		return 1066667;
>>  	case 3:
>> -		return 1333;
>> +		return 1333333;
>>  	}
>>=20=20
>>  	return 0;
>> @@ -139,7 +139,7 @@ static void detect_mem_freq(struct drm_i915_private =
*i915)
>>  		i915->is_ddr3 =3D pnv_is_ddr3(i915);
>>=20=20
>>  	if (i915->mem_freq)
>> -		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>> +		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>>  }
>>=20=20
>>  static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
>> @@ -150,13 +150,13 @@ static unsigned int pnv_fsb_freq(struct drm_i915_p=
rivate *i915)
>>=20=20
>>  	switch (fsb) {
>>  	case CLKCFG_FSB_400:
>> -		return 400;
>> +		return 400000;
>>  	case CLKCFG_FSB_533:
>> -		return 533;
>> +		return 533333;
>>  	case CLKCFG_FSB_667:
>> -		return 667;
>> +		return 666667;
>>  	case CLKCFG_FSB_800:
>> -		return 800;
>> +		return 800000;
>>  	}
>>=20=20
>>  	return 0;
>> @@ -170,19 +170,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_p=
rivate *dev_priv)
>>=20=20
>>  	switch (fsb) {
>>  	case 0x00c:
>> -		return 3200;
>> +		return 3200000;
>>  	case 0x00e:
>> -		return 3733;
>> +		return 3733333;
>>  	case 0x010:
>> -		return 4266;
>> +		return 4266667;
>>  	case 0x012:
>> -		return 4800;
>> +		return 4800000;
>>  	case 0x014:
>> -		return 5333;
>> +		return 5333333;
>>  	case 0x016:
>> -		return 5866;
>> +		return 5866667;
>>  	case 0x018:
>> -		return 6400;
>> +		return 6400000;
>>  	default:
>>  		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
>>  		return 0;
>> @@ -197,7 +197,7 @@ static void detect_fsb_freq(struct drm_i915_private =
*i915)
>>  		i915->fsb_freq =3D pnv_fsb_freq(i915);
>>=20=20
>>  	if (i915->fsb_freq)
>> -		drm_dbg(&i915->drm, "FSB frequency: %d MHz\n", i915->fsb_freq);
>> +		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>>  }
>>=20=20
>>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
