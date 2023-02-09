Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE82A690411
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 10:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB4510E975;
	Thu,  9 Feb 2023 09:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653B810E975
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 09:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675935944; x=1707471944;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+aLBfQaKYtosLqDwK1j5Xbhjv/K5r08HphLtd47e+tc=;
 b=jUkhmUmYCoWpuD9x5IpvUcfg4QUonnVcQNukJbdfZHeNgnRuQg3P6BFN
 8A9faZ6SXlPyOzXrl01zS0Q8nsx+wISaWSVhI6KodpLT3BH2kW4yeACsh
 KhLxZGiP24be5OXrZUs///e6vo6Sfc0BtjrYYEqtHSnIRND8yOS/68gl5
 XrSO+LTTqj0NqKmJXWAagey8cmIAJ+y3i/ZsuNKkbhjPkL6RQ/05Et2DS
 B6gxsUQPQQGLnQnmE3Kir1wuOaskS51fCnKl+MKiDBvEzHWdVYBpJM/VP
 W007J4rSUxAaiPLiTOzSTv9biVAIMwEy38BZBGX2r+YdZk+2O7YdIF1rL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="392447578"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="392447578"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 01:45:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="660941238"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="660941238"
Received: from grizzo-mobl.ger.corp.intel.com (HELO localhost) ([10.252.38.7])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2023 01:45:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+OiilaLU1NtfAEp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1675849634.git.jani.nikula@intel.com>
 <687d94454a784738aed104d715516a6dc065593a.1675849634.git.jani.nikula@intel.com>
 <Y+OiilaLU1NtfAEp@intel.com>
Date: Thu, 09 Feb 2023 11:45:36 +0200
Message-ID: <87a61nxjcv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: move memory frequency
 detection to intel_dram.c
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

On Wed, 08 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 08, 2023 at 11:48:39AM +0200, Jani Nikula wrote:
>> The memory frequency detection is a bit spread out here and
>> there. Consolidate to intel_dram.c.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_rps.c   |  29 -----
>>  drivers/gpu/drm/i915/intel_pm.c       | 101 ----------------
>>  drivers/gpu/drm/i915/soc/intel_dram.c | 158 +++++++++++++++++++++++++-
>>  3 files changed, 157 insertions(+), 131 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index f5d7b5126433..4d0dc9de23f9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -1677,7 +1677,6 @@ static void vlv_init_gpll_ref_freq(struct intel_rp=
s *rps)
>>  static void vlv_rps_init(struct intel_rps *rps)
>>  {
>>  	struct drm_i915_private *i915 =3D rps_to_i915(rps);
>> -	u32 val;
>>=20=20
>>  	vlv_iosf_sb_get(i915,
>>  			BIT(VLV_IOSF_SB_PUNIT) |
>> @@ -1686,21 +1685,6 @@ static void vlv_rps_init(struct intel_rps *rps)
>>=20=20
>>  	vlv_init_gpll_ref_freq(rps);
>>=20=20
>> -	val =3D vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
>> -	switch ((val >> 6) & 3) {
>> -	case 0:
>> -	case 1:
>> -		i915->mem_freq =3D 800;
>> -		break;
>> -	case 2:
>> -		i915->mem_freq =3D 1066;
>> -		break;
>> -	case 3:
>> -		i915->mem_freq =3D 1333;
>> -		break;
>> -	}
>> -	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>> -
>>  	rps->max_freq =3D vlv_rps_max_freq(rps);
>>  	rps->rp0_freq =3D rps->max_freq;
>>  	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
>> @@ -1727,7 +1711,6 @@ static void vlv_rps_init(struct intel_rps *rps)
>>  static void chv_rps_init(struct intel_rps *rps)
>>  {
>>  	struct drm_i915_private *i915 =3D rps_to_i915(rps);
>> -	u32 val;
>>=20=20
>>  	vlv_iosf_sb_get(i915,
>>  			BIT(VLV_IOSF_SB_PUNIT) |
>> @@ -1736,18 +1719,6 @@ static void chv_rps_init(struct intel_rps *rps)
>>=20=20
>>  	vlv_init_gpll_ref_freq(rps);
>>=20=20
>> -	val =3D vlv_cck_read(i915, CCK_FUSE_REG);
>> -
>> -	switch ((val >> 2) & 0x7) {
>> -	case 3:
>> -		i915->mem_freq =3D 2000;
>> -		break;
>> -	default:
>> -		i915->mem_freq =3D 1600;
>> -		break;
>> -	}
>> -	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>> -
>>  	rps->max_freq =3D chv_rps_max_freq(rps);
>>  	rps->rp0_freq =3D rps->max_freq;
>>  	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/inte=
l_pm.c
>> index e0364c4141b8..ee8f8d2d2a66 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -131,101 +131,6 @@ static void glk_init_clock_gating(struct drm_i915_=
private *dev_priv)
>>  		   PWM1_GATING_DIS | PWM2_GATING_DIS);
>>  }
>>=20=20
>> -static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
>> -{
>> -	u32 tmp;
>> -
>> -	tmp =3D intel_uncore_read(&dev_priv->uncore, CLKCFG);
>> -
>> -	switch (tmp & CLKCFG_FSB_MASK) {
>> -	case CLKCFG_FSB_533:
>> -		dev_priv->fsb_freq =3D 533; /* 133*4 */
>> -		break;
>> -	case CLKCFG_FSB_800:
>> -		dev_priv->fsb_freq =3D 800; /* 200*4 */
>> -		break;
>> -	case CLKCFG_FSB_667:
>> -		dev_priv->fsb_freq =3D  667; /* 167*4 */
>> -		break;
>> -	case CLKCFG_FSB_400:
>> -		dev_priv->fsb_freq =3D 400; /* 100*4 */
>> -		break;
>> -	}
>> -
>> -	switch (tmp & CLKCFG_MEM_MASK) {
>> -	case CLKCFG_MEM_533:
>> -		dev_priv->mem_freq =3D 533;
>> -		break;
>> -	case CLKCFG_MEM_667:
>> -		dev_priv->mem_freq =3D 667;
>> -		break;
>> -	case CLKCFG_MEM_800:
>> -		dev_priv->mem_freq =3D 800;
>> -		break;
>> -	}
>> -
>> -	/* detect pineview DDR3 setting */
>> -	tmp =3D intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
>> -	dev_priv->is_ddr3 =3D (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
>> -}
>> -
>> -static void ilk_get_mem_freq(struct drm_i915_private *dev_priv)
>> -{
>> -	u16 ddrpll, csipll;
>> -
>> -	ddrpll =3D intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>> -	csipll =3D intel_uncore_read16(&dev_priv->uncore, CSIPLL0);
>> -
>> -	switch (ddrpll & 0xff) {
>> -	case 0xc:
>> -		dev_priv->mem_freq =3D 800;
>> -		break;
>> -	case 0x10:
>> -		dev_priv->mem_freq =3D 1066;
>> -		break;
>> -	case 0x14:
>> -		dev_priv->mem_freq =3D 1333;
>> -		break;
>> -	case 0x18:
>> -		dev_priv->mem_freq =3D 1600;
>> -		break;
>> -	default:
>> -		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
>> -			ddrpll & 0xff);
>> -		dev_priv->mem_freq =3D 0;
>> -		break;
>> -	}
>> -
>> -	switch (csipll & 0x3ff) {
>> -	case 0x00c:
>> -		dev_priv->fsb_freq =3D 3200;
>> -		break;
>> -	case 0x00e:
>> -		dev_priv->fsb_freq =3D 3733;
>> -		break;
>> -	case 0x010:
>> -		dev_priv->fsb_freq =3D 4266;
>> -		break;
>> -	case 0x012:
>> -		dev_priv->fsb_freq =3D 4800;
>> -		break;
>> -	case 0x014:
>> -		dev_priv->fsb_freq =3D 5333;
>> -		break;
>> -	case 0x016:
>> -		dev_priv->fsb_freq =3D 5866;
>> -		break;
>> -	case 0x018:
>> -		dev_priv->fsb_freq =3D 6400;
>> -		break;
>> -	default:
>> -		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
>> -			csipll & 0x3ff);
>> -		dev_priv->fsb_freq =3D 0;
>> -		break;
>> -	}
>> -}
>> -
>>  static const struct cxsr_latency cxsr_latency_table[] =3D {
>>  	{1, 0, 800, 400, 3382, 33382, 3983, 33983},    /* DDR2-400 SC */
>>  	{1, 0, 800, 667, 3354, 33354, 3807, 33807},    /* DDR2-667 SC */
>> @@ -4909,12 +4814,6 @@ void intel_init_pm(struct drm_i915_private *dev_p=
riv)
>>  		return;
>>  	}
>>=20=20
>> -	/* For cxsr */
>> -	if (IS_PINEVIEW(dev_priv))
>> -		pnv_get_mem_freq(dev_priv);
>> -	else if (GRAPHICS_VER(dev_priv) =3D=3D 5)
>> -		ilk_get_mem_freq(dev_priv);
>> -
>>  	/* For FIFO watermark updates */
>>  	if (HAS_PCH_SPLIT(dev_priv)) {
>>  		ilk_setup_wm_latency(dev_priv);
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i91=
5/soc/intel_dram.c
>> index bba8cb6e8ae4..ad767b677486 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -10,6 +10,7 @@
>>  #include "intel_dram.h"
>>  #include "intel_mchbar_regs.h"
>>  #include "intel_pcode.h"
>> +#include "vlv_sideband.h"
>>=20=20
>>  struct dram_dimm_info {
>>  	u16 size;
>> @@ -42,6 +43,156 @@ static const char *intel_dram_type_str(enum intel_dr=
am_type type)
>>=20=20
>>  #undef DRAM_TYPE_STR
>>=20=20
>> +static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
>> +{
>> +	u32 tmp;
>> +
>> +	tmp =3D intel_uncore_read(&dev_priv->uncore, CLKCFG);
>> +
>> +	switch (tmp & CLKCFG_FSB_MASK) {
>> +	case CLKCFG_FSB_533:
>> +		dev_priv->fsb_freq =3D 533; /* 133*4 */
>> +		break;
>> +	case CLKCFG_FSB_800:
>> +		dev_priv->fsb_freq =3D 800; /* 200*4 */
>> +		break;
>> +	case CLKCFG_FSB_667:
>> +		dev_priv->fsb_freq =3D  667; /* 167*4 */
>> +		break;
>> +	case CLKCFG_FSB_400:
>> +		dev_priv->fsb_freq =3D 400; /* 100*4 */
>> +		break;
>> +	}
>> +
>> +	switch (tmp & CLKCFG_MEM_MASK) {
>> +	case CLKCFG_MEM_533:
>> +		dev_priv->mem_freq =3D 533;
>> +		break;
>> +	case CLKCFG_MEM_667:
>> +		dev_priv->mem_freq =3D 667;
>> +		break;
>> +	case CLKCFG_MEM_800:
>> +		dev_priv->mem_freq =3D 800;
>> +		break;
>> +	}
>> +
>> +	/* detect pineview DDR3 setting */
>> +	tmp =3D intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
>> +	dev_priv->is_ddr3 =3D (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
>> +}
>> +
>> +static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
>> +{
>> +	u16 ddrpll, csipll;
>> +
>> +	ddrpll =3D intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>> +	switch (ddrpll & 0xff) {
>> +	case 0xc:
>> +		dev_priv->mem_freq =3D 800;
>> +		break;
>> +	case 0x10:
>> +		dev_priv->mem_freq =3D 1066;
>> +		break;
>> +	case 0x14:
>> +		dev_priv->mem_freq =3D 1333;
>> +		break;
>> +	case 0x18:
>> +		dev_priv->mem_freq =3D 1600;
>> +		break;
>> +	default:
>> +		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
>> +			ddrpll & 0xff);
>> +		dev_priv->mem_freq =3D 0;
>> +		break;
>> +	}
>> +
>> +	csipll =3D intel_uncore_read16(&dev_priv->uncore, CSIPLL0);
>> +	switch (csipll & 0x3ff) {
>> +	case 0x00c:
>> +		dev_priv->fsb_freq =3D 3200;
>> +		break;
>> +	case 0x00e:
>> +		dev_priv->fsb_freq =3D 3733;
>> +		break;
>> +	case 0x010:
>> +		dev_priv->fsb_freq =3D 4266;
>> +		break;
>> +	case 0x012:
>> +		dev_priv->fsb_freq =3D 4800;
>> +		break;
>> +	case 0x014:
>> +		dev_priv->fsb_freq =3D 5333;
>> +		break;
>> +	case 0x016:
>> +		dev_priv->fsb_freq =3D 5866;
>> +		break;
>> +	case 0x018:
>> +		dev_priv->fsb_freq =3D 6400;
>> +		break;
>> +	default:
>> +		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
>> +			csipll & 0x3ff);
>> +		dev_priv->fsb_freq =3D 0;
>> +		break;
>> +	}
>> +}
>> +
>> +static void chv_detect_mem_freq(struct drm_i915_private *i915)
>> +{
>> +	u32 val;
>> +
>> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
>> +	val =3D vlv_cck_read(i915, CCK_FUSE_REG);
>> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
>> +
>> +	switch ((val >> 2) & 0x7) {
>> +	case 3:
>> +		i915->mem_freq =3D 2000;
>> +		break;
>> +	default:
>> +		i915->mem_freq =3D 1600;
>> +		break;
>> +	}
>> +}
>> +
>> +static void vlv_detect_mem_freq(struct drm_i915_private *i915)
>> +{
>> +	u32 val;
>> +
>> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
>> +	val =3D vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
>> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
>> +
>> +	switch ((val >> 6) & 3) {
>> +	case 0:
>> +	case 1:
>> +		i915->mem_freq =3D 800;
>> +		break;
>> +	case 2:
>> +		i915->mem_freq =3D 1066;
>> +		break;
>> +	case 3:
>> +		i915->mem_freq =3D 1333;
>> +		break;
>> +	}
>> +}
>> +
>> +static void detect_mem_freq(struct drm_i915_private *i915)
>> +{
>> +	/* For cxsr */
>
> Not true for all the platforms...

Yeah, I think I'll just remove the comment altogether.

>
>> +	if (IS_PINEVIEW(i915))
>> +		pnv_detect_mem_freq(i915);
>> +	else if (GRAPHICS_VER(i915) =3D=3D 5)
>> +		ilk_detect_mem_freq(i915);
>> +	else if (IS_CHERRYVIEW(i915))
>> +		chv_detect_mem_freq(i915);
>> +	else if (IS_VALLEYVIEW(i915))
>> +		vlv_detect_mem_freq(i915);
>> +
>> +	if (i915->mem_freq)
>> +		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
>> +}
>> +
>>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
>>  {
>>  	return dimm->ranks * 64 / (dimm->width ?: 1);
>> @@ -507,8 +658,13 @@ void intel_dram_detect(struct drm_i915_private *i91=
5)
>>  	struct dram_info *dram_info =3D &i915->dram_info;
>>  	int ret;
>>=20=20
>> -	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
>> +	if (!HAS_DISPLAY(i915) || IS_DG2(i915))
>> +		return;
>
> ...which also means doing the HAS_DISPLAY check befoae=20
> detect_mem_freq() is kinda wrong.
>
> I suppose we don't have any !HAS_DISPLAY stuff on these
> platforms, but would seem better to be consistent anyway.

Right. No harm in calling it unconditionally, really.

BR,
Jani.

>
>> +
>> +	if (GRAPHICS_VER(i915) < 9) {
>> +		detect_mem_freq(i915);
>>  		return;
>> +	}
>>=20=20
>>  	/*
>>  	 * Assume level 0 watermark latency adjustment is needed until proven
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
