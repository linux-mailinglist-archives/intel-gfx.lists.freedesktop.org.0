Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9476B9AFD1B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 10:49:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3742710EA3A;
	Fri, 25 Oct 2024 08:49:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXQQmiix";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5FD10EA34;
 Fri, 25 Oct 2024 08:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729846182; x=1761382182;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kTKOpZP+ve/cksIH0npV71OAmTb9PqwHzHTj9nX4Vi8=;
 b=aXQQmiixXjCFrKHrMUbWG7C5+IWczsdrPqd/6O5OcROm6gxr2GDBWtVn
 xZ3gGrCY3a5SgfrAdWq587npyOH+P3jV29SmpdN0nEdf8aF8Qo8uDB2Bs
 t6mPnQdxw1lTaso7IZLqzRhb1rSNCqlSGkoGG9W/QdFkqX4iLsBLKpP/a
 yax81zRWutJhz6Odlx9om4SZmtCG9eErcrWKfQ87Obz3JIpu5TazIgMBo
 IXgCLRqgYONXmDqV79H1x+4YHmjq1T5+241y8Ly9E8cWbhCiwb31qN869
 fWIxVQfXl5DMJb2gQVBPlA7MMgyAHyWYOMCJ4PxHtzAxtM9F90m6/QLnP A==;
X-CSE-ConnectionGUID: /RI7C4O/Ro640cQWUPH9cg==
X-CSE-MsgGUID: rhDB4oymQi26gkTj227QJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="28948220"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="28948220"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 01:49:41 -0700
X-CSE-ConnectionGUID: 5xB6p6zyRjyiWn0dlM9KEw==
X-CSE-MsgGUID: mPUFQ5ENTBudUem2EiOL5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="85959440"
Received: from zzombora-mobl1.ti.intel.com (HELO localhost) ([10.245.246.193])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2024 01:49:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: use x100 version for full version and
 release
In-Reply-To: <ZxtUhCYU9Fl-Cp_x@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241024171104.2427750-1-jani.nikula@intel.com>
 <ZxtUhCYU9Fl-Cp_x@intel.com>
Date: Fri, 25 Oct 2024 11:49:34 +0300
Message-ID: <87ttd0r2ht.fsf@intel.com>
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

On Fri, 25 Oct 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 24, 2024 at 08:11:04PM +0300, Jani Nikula wrote:
>> Use x100, or ver * 100 + rel, versions for full IP version checks,
>
> Have the hardware folks promised to never use minor >=3D 100?

I guess that's a fair point. Xe uses this extensively, and would be
hosed as well. Matt, Rodrigo?

BR,
Jani.


>
>> similar to what xe driver does:
>>=20
>> - Replace IP_VER(14, 1) inline with 1401, etc.
>>=20
>> - Convert DISPLAY_VER_FULL() to DISPLAY_VERx100()
>>=20
>> - Convert IS_DISPLAY_VER_FULL() to IS_DISPLAY_VERx100()
>>=20
>> - Convert IS_DISPLAY_VER_STEP() to IS_DISPLAY_VERx100_STEP()
>>=20
>> This makes ver.rel versions easier to use, follows the xe driver
>> pattern, and drops the dependency on the IP_VER() macro.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c       |  2 +-
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +++---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  4 ++--
>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
>>  .../drm/i915/display/intel_display_device.h   | 20 +++++++++----------
>>  .../drm/i915/display/intel_display_power.c    |  4 ++--
>>  drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +++---
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
>>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>>  drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++----
>>  drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
>>  13 files changed, 33 insertions(+), 33 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 47036d4abb33..a52b0ae68b96 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -743,7 +743,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_p=
riv)
>>  	if (!HAS_DISPLAY(dev_priv))
>>  		return;
>>=20=20
>> -	if (DISPLAY_VER_FULL(dev_priv) >=3D IP_VER(14, 1) && IS_DGFX(dev_priv))
>> +	if (DISPLAY_VERx100(dev_priv) >=3D 1401 && IS_DGFX(dev_priv))
>>  		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>>  	else if (DISPLAY_VER(dev_priv) >=3D 14)
>>  		tgl_get_bw_info(dev_priv, &mtl_sa_info);
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 96523526a2c3..03c4eef3f92a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2058,8 +2058,8 @@ static bool pll_enable_wa_needed(struct intel_disp=
lay *display)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>>=20=20
>> -	return (DISPLAY_VER_FULL(display) =3D=3D IP_VER(20, 0) ||
>> -		DISPLAY_VER_FULL(display) =3D=3D IP_VER(14, 0) ||
>> +	return (DISPLAY_VERx100(display) =3D=3D 2000 ||
>> +		DISPLAY_VERx100(display) =3D=3D 1400 ||
>>  		IS_DG2(dev_priv)) &&
>>  		display->cdclk.hw.vco > 0;
>>  }
>> @@ -3852,7 +3852,7 @@ void intel_init_cdclk_hooks(struct intel_display *=
display)
>>  	} else if (DISPLAY_VER(display) >=3D 20) {
>>  		display->funcs.cdclk =3D &rplu_cdclk_funcs;
>>  		display->cdclk.table =3D xe2lpd_cdclk_table;
>> -	} else if (DISPLAY_VER_FULL(display) >=3D IP_VER(14, 1)) {
>> +	} else if (DISPLAY_VERx100(display) >=3D 1401) {
>>  		display->funcs.cdclk =3D &rplu_cdclk_funcs;
>>  		display->cdclk.table =3D xe2hpd_cdclk_table;
>>  	} else if (DISPLAY_VER(display) >=3D 14) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index 8bd5a4d1b735..85836751259f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -2260,13 +2260,13 @@ intel_c20_pll_tables_get(struct intel_crtc_state=
 *crtc_state,
>>=20=20
>>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
>> -			if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1))
>> +			if (DISPLAY_VERx100(i915) =3D=3D 1401)
>>  				return xe2hpd_c20_edp_tables;
>>  		}
>>=20=20
>>  		if (DISPLAY_VER(i915) >=3D 30)
>>  			return xe3lpd_c20_dp_edp_tables;
>> -		else if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1))
>> +		else if (DISPLAY_VERx100(i915) =3D=3D 1401)
>>  			return xe2hpd_c20_dp_tables;
>>  		else
>>  			return mtl_c20_dp_tables;
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers=
/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index ab3ae110b68f..ead486c59639 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -273,7 +273,7 @@
>>  #define _XE2HPD_C20_A_MPLLB_CFG		0xCCC2
>>  #define _XE2HPD_C20_B_MPLLB_CFG		0xCCB6
>>=20=20
>> -#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, =
1))
>> +#define _IS_XE2HPD_C20(i915)	(DISPLAY_VERx100(i915) =3D=3D 1401)
>>=20=20
>>  #define PHY_C20_A_TX_CNTX_CFG(i915, idx) \
>>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CN=
TX_CFG) - (idx))
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 071a36b51f79..cac47bfaabba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -168,10 +168,10 @@ enum intel_display_subplatform {
>>  #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
>>=20=20
>>  /* Check that device has a display IP version within the specific range=
. */
>> -#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
>> -	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
>> -	(DISPLAY_VER_FULL(__i915) >=3D (from) && \
>> -	 DISPLAY_VER_FULL(__i915) <=3D (until)))
>> +#define IS_DISPLAY_VERx100(__i915, from, until) ( \
>> +	BUILD_BUG_ON_ZERO((from) < 200) + \
>> +	(DISPLAY_VERx100(__i915) >=3D (from) && \
>> +	 DISPLAY_VERx100(__i915) <=3D (until)))
>>=20=20
>>  /*
>>   * Check if a device has a specific IP version as well as a stepping wi=
thin the
>> @@ -182,22 +182,22 @@ enum intel_display_subplatform {
>>   * hardware fix is present and the software workaround is no longer nec=
essary.
>>   * E.g.,
>>   *
>> - *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
>> - *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
>> + *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_B2)
>> + *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_C0, STEP_FOREVER)
>>   *
>>   * "STEP_FOREVER" can be passed as "until" for workarounds that have no=
 upper
>>   * stepping bound for the specified IP version.
>>   */
>> -#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
>> -	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
>> +#define IS_DISPLAY_VERx100_STEP(__i915, ipver, from, until) \
>> +	(IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
>>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>>=20=20
>>  #define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_in=
fo)
>>  #define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__r=
untime_info)
>>=20=20
>>  #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
>> -#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ve=
r, \
>> -				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
>> +#define DISPLAY_VERx100(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver * 100=
 + \
>> +				 DISPLAY_RUNTIME_INFO(i915)->ip.rel)
>>  #define IS_DISPLAY_VER(i915, from, until) \
>>  	(DISPLAY_VER(i915) >=3D (from) && DISPLAY_VER(i915) <=3D (until))
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index c2bc80f5bf6b..d34dd650b839 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1683,14 +1683,14 @@ static void icl_display_core_init(struct drm_i91=
5_private *dev_priv,
>>  		intel_snps_phy_wait_for_calibration(dev_priv);
>>=20=20
>>  	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are =
enabled */
>> -	if (DISPLAY_VER_FULL(dev_priv) =3D=3D IP_VER(14, 1))
>> +	if (DISPLAY_VERx100(dev_priv) =3D=3D 1401)
>>  		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1=
);
>>=20=20
>>  	if (resume)
>>  		intel_dmc_load_program(display);
>>=20=20
>>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
>> -	if (IS_DISPLAY_VER_FULL(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
>> +	if (IS_DISPLAY_VERx100(dev_priv, 1200, 1300))
>>  		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
>>  			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>>  			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/=
i915/display/intel_dmc.c
>> index 48bbbf8f312c..ac122b76cb58 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -168,13 +168,13 @@ static const char *dmc_firmware_default(struct int=
el_display *display, u32 *size
>>  	const char *fw_path =3D NULL;
>>  	u32 max_fw_size =3D 0;
>>=20=20
>> -	if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(20, 0)) {
>> +	if (DISPLAY_VERx100(display) =3D=3D 2000) {
>>  		fw_path =3D XE2LPD_DMC_PATH;
>>  		max_fw_size =3D XE2LPD_DMC_MAX_FW_SIZE;
>> -	} else if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(14, 1)) {
>> +	} else if (DISPLAY_VERx100(display) =3D=3D 1401) {
>>  		fw_path =3D BMG_DMC_PATH;
>>  		max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>> -	} else if (DISPLAY_VER_FULL(display) =3D=3D IP_VER(14, 0)) {
>> +	} else if (DISPLAY_VERx100(display) =3D=3D 1400) {
>>  		fw_path =3D MTL_DMC_PATH;
>>  		max_fw_size =3D XELPDP_DMC_MAX_FW_SIZE;
>>  	} else if (IS_DG2(i915)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 7e29619ba040..6adeaacb9abb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -497,7 +497,7 @@ static int mtl_max_source_rate(struct intel_dp *inte=
l_dp)
>>  	if (intel_encoder_is_c10phy(encoder))
>>  		return 810000;
>>=20=20
>> -	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) =3D=3D IP_VER(14, 1))
>> +	if (DISPLAY_VERx100(to_i915(encoder->base.dev)) =3D=3D 1401)
>>  		return 1350000;
>>=20=20
>>  	return 2000000;
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/=
i915/display/intel_fbc.c
>> index 2e0863093cff..df05904bac8a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -1347,7 +1347,7 @@ static int intel_fbc_check_plane(struct intel_atom=
ic_state *state,
>>=20=20
>>  	/* Wa_14016291713 */
>>  	if ((IS_DISPLAY_VER(display, 12, 13) ||
>> -	     IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
>> +	     IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0)) &&
>>  	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
>>  		plane_state->no_fbc_reason =3D "PSR1 enabled (Wa_14016291713)";
>>  		return 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm=
/i915/display/intel_hdcp.c
>> index ed6aa87403e2..268deddc5281 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -43,11 +43,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_e=
ncoder *encoder,
>>  		return;
>>=20=20
>>  	if (DISPLAY_VER(display) >=3D 14) {
>> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER=
))
>> +		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
>>  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>>  				     0, HDCP_LINE_REKEY_DISABLE);
>> -		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FO=
REVER) ||
>> -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>> +		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER=
) ||
>> +			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
>>  			intel_de_rmw(display,
>>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu=
/drm/i915/display/intel_pmdemand.c
>> index ceaf9e3147da..2edd3999fd2c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>>  				     &pmdemand_state->base,
>>  				     &intel_pmdemand_funcs);
>>=20=20
>> -	if (IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
>> +	if (IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0))
>>  		/* Wa_14016740474 */
>>  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index 4176163ec19a..7b75c5ef6316 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1914,14 +1914,14 @@ static void intel_psr_enable_source(struct intel=
_dp *intel_dp,
>>  		 * cause issues if non-supported panels are used.
>>  		 */
>>  		if (!intel_dp->psr.panel_replay_enabled &&
>> -		    (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
>> +		    (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
>>  		     IS_ALDERLAKE_P(dev_priv)))
>>  			intel_de_rmw(display, hsw_chicken_trans_reg(dev_priv, cpu_transcoder=
),
>>  				     0, ADLP_1_BASED_X_GRANULARITY);
>>=20=20
>>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>>  		if (!intel_dp->psr.panel_replay_enabled &&
>> -		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
>> +		    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0))
>>  			intel_de_rmw(display,
>>  				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
>>  				     0,
>> @@ -2106,7 +2106,7 @@ static void intel_psr_disable_locked(struct intel_=
dp *intel_dp)
>>  	if (intel_dp->psr.sel_update_enabled) {
>>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>>  		if (!intel_dp->psr.panel_replay_enabled &&
>> -		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
>> +		    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0))
>>  			intel_de_rmw(display,
>>  				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
>>  				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
>> @@ -2561,7 +2561,7 @@ intel_psr_apply_su_area_workarounds(struct intel_c=
rtc_state *crtc_state)
>>=20=20
>>  	/* Wa_14014971492 */
>>  	if (!crtc_state->has_panel_replay &&
>> -	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
>> +	    ((IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
>>  	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
>>  	    crtc_state->splitter.enable)
>>  		crtc_state->psr2_su_area.y1 =3D 0;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 31de33e868df..3b0e87edbacf 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3533,7 +3533,7 @@ static void intel_mbus_dbox_update(struct intel_at=
omic_state *state)
>>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->act=
ive_pipes) {
>>  		u32 pipe_val =3D val;
>>=20=20
>> -		if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0)) {
>> +		if (DISPLAY_VERx100(i915) =3D=3D 1400) {
>>  			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>>  							      new_dbuf_state->active_pipes))
>>  				pipe_val |=3D MBUS_DBOX_BW_8CREDITS_MTL;
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
