Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL5KOi0ZxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:31:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE6C334899
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA46810E8DE;
	Thu, 26 Mar 2026 11:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3duFAj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7D710E8DE;
 Thu, 26 Mar 2026 11:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774524715; x=1806060715;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=t1v19xfeSapcI0nFIcMYHj8FDvr06u5gqHdL1uaj2sk=;
 b=h3duFAj/bWnat95VCsXaDe3AWlayBKqL8N8TeyDxcV4/JNHdPK8mm+sB
 7uosMe/NvHeXE5r5pO6rPG7c8ohGR27DMB2RLevJ8XF6lP5n12BdVXQyN
 XinKtQy1HgD4OIKpmBDPVtb5t2qVPeRKnIFVwCKaeQY2eTWiuAZrVMUhd
 rTAEzCbW3P0UH8VczsyIBtM4M+a/9LgSus7i0Oiq8zs1k6mA/aRHa4hA6
 BSCmCLIXCej7lgdxdXgAUsHYxV7PFaDaVT2gFHOy2HxWjv/phIYIWHN7m
 R/dVSO4cz9zrajt/iq1MWR9p2P2yLMR5aF9E5s24wxS8wycFXF82zM04u Q==;
X-CSE-ConnectionGUID: 37W4UgMWSPe/bL1lSt6ywQ==
X-CSE-MsgGUID: Pi5GybkuSd2f14riUWs54A==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="101033266"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="101033266"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:31:54 -0700
X-CSE-ConnectionGUID: WTb0iqedR26IW1tznIOkRg==
X-CSE-MsgGUID: 2tpSin/CQH2r0FYvyM283Q==
X-ExtLoop1: 1
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:31:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/12] drm/i915/mchbar: Use intel_mchbar_read*() instead
 of intel_uncore_read*()
In-Reply-To: <20260325185342.11482-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-7-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:31:48 +0200
Message-ID: <03d46f1c2e1ba9197e5b9185189d6e68e3e313a3@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2CE6C334899
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace all the naked intel_uncore_read*() accesses to MCHBAR
> registers with the dedicated intel_mchbar_read*().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c    | 10 ++++----
>  drivers/gpu/drm/i915/display/intel_bw.c   | 11 ++++-----
>  drivers/gpu/drm/i915/display/intel_dram.c | 29 ++++++++---------------
>  3 files changed, 19 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index 9e170e79dcf6..ef84c7bb50d9 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -19,6 +19,7 @@
>  #include "intel_display_utils.h"
>  #include "intel_dram.h"
>  #include "intel_fb.h"
> +#include "intel_mchbar.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
> @@ -2742,12 +2743,11 @@ static void ilk_compute_wm_level(struct intel_dis=
play *display,
>=20=20
>  static void hsw_read_wm_latency(struct intel_display *display, u16 wm[])
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u64 sskpd;
>=20=20
>  	display->wm.num_levels =3D 5;
>=20=20
> -	sskpd =3D intel_uncore_read64(uncore, MCH_SSKPD);
> +	sskpd =3D intel_mchbar_read64(display, MCH_SSKPD);
>=20=20
>  	wm[0] =3D REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
>  	if (wm[0] =3D=3D 0)
> @@ -2760,12 +2760,11 @@ static void hsw_read_wm_latency(struct intel_disp=
lay *display, u16 wm[])
>=20=20
>  static void snb_read_wm_latency(struct intel_display *display, u16 wm[])
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 sskpd;
>=20=20
>  	display->wm.num_levels =3D 4;
>=20=20
> -	sskpd =3D intel_uncore_read(uncore, MCH_SSKPD);
> +	sskpd =3D intel_mchbar_read(display, MCH_SSKPD);
>=20=20
>  	wm[0] =3D REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
>  	wm[1] =3D REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
> @@ -2775,12 +2774,11 @@ static void snb_read_wm_latency(struct intel_disp=
lay *display, u16 wm[])
>=20=20
>  static void ilk_read_wm_latency(struct intel_display *display, u16 wm[])
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 mltr;
>=20=20
>  	display->wm.num_levels =3D 3;
>=20=20
> -	mltr =3D intel_uncore_read(uncore, MLTR_ILK);
> +	mltr =3D intel_mchbar_read(display, MLTR_ILK);
>=20=20
>  	/* ILK primary LP0 latency is 700 ns */
>  	wm[0] =3D 7;
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 18b80147ddc7..e6c8fd630294 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -15,9 +15,9 @@
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_dram.h"
> +#include "intel_mchbar.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_parent.h"
> -#include "intel_uncore.h"
>  #include "skl_watermark.h"
>=20=20
>  struct intel_bw_state {
> @@ -75,11 +75,10 @@ static int dg1_mchbar_read_qgv_point_info(struct inte=
l_display *display,
>  					  struct intel_qgv_point *sp,
>  					  int point)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 dclk_ratio, dclk_reference;
>  	u32 val;
>=20=20
> -	val =3D intel_uncore_read(uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
> +	val =3D intel_mchbar_read(display, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
>  	dclk_ratio =3D REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
>  	if (val & DG1_QCLK_REFERENCE)
>  		dclk_reference =3D 6; /* 6 * 16.666 MHz =3D 100 MHz */
> @@ -87,18 +86,18 @@ static int dg1_mchbar_read_qgv_point_info(struct inte=
l_display *display,
>  		dclk_reference =3D 8; /* 8 * 16.666 MHz =3D 133 MHz */
>  	sp->dclk =3D DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, =
1000);
>=20=20
> -	val =3D intel_uncore_read(uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
> +	val =3D intel_mchbar_read(display, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
>  	if (val & DG1_GEAR_TYPE)
>  		sp->dclk *=3D 2;
>=20=20
>  	if (sp->dclk =3D=3D 0)
>  		return -EINVAL;
>=20=20
> -	val =3D intel_uncore_read(uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
> +	val =3D intel_mchbar_read(display, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
>  	sp->t_rp =3D REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
>  	sp->t_rdpre =3D REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
>=20=20
> -	val =3D intel_uncore_read(uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIG=
H);
> +	val =3D intel_mchbar_read(display, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HI=
GH);
>  	sp->t_rcd =3D REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
>  	sp->t_ras =3D REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/=
i915/display/intel_dram.c
> index f05796417485..05da74534a5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dram.c
> +++ b/drivers/gpu/drm/i915/display/intel_dram.c
> @@ -14,9 +14,9 @@
>  #include "intel_display_utils.h"
>  #include "intel_display_regs.h"
>  #include "intel_dram.h"
> +#include "intel_mchbar.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_parent.h"
> -#include "intel_uncore.h"
>  #include "vlv_iosf_sb.h"
>=20=20
>  struct dram_dimm_info {
> @@ -59,18 +59,15 @@ const char *intel_dram_type_str(enum intel_dram_type =
type)
>=20=20
>  static enum intel_dram_type pnv_dram_type(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> -
> -	return intel_uncore_read(uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
> +	return intel_mchbar_read(display, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
>  		INTEL_DRAM_DDR3 : INTEL_DRAM_DDR2;
>  }
>=20=20
>  static unsigned int pnv_mem_freq(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 tmp;
>=20=20
> -	tmp =3D intel_uncore_read(uncore, CLKCFG);
> +	tmp =3D intel_mchbar_read(display, CLKCFG);
>=20=20
>  	switch (tmp & CLKCFG_MEM_MASK) {
>  	case CLKCFG_MEM_533:
> @@ -86,10 +83,9 @@ static unsigned int pnv_mem_freq(struct intel_display =
*display)
>=20=20
>  static unsigned int ilk_mem_freq(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u16 ddrpll;
>=20=20
> -	ddrpll =3D intel_uncore_read16(uncore, DDRMPLL1);
> +	ddrpll =3D intel_mchbar_read16(display, DDRMPLL1);
>  	switch (ddrpll & 0xff) {
>  	case 0xc:
>  		return 800000;
> @@ -159,7 +155,6 @@ unsigned int intel_mem_freq(struct intel_display *dis=
play)
>=20=20
>  static unsigned int i9xx_fsb_freq(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 fsb;
>=20=20
>  	/*
> @@ -170,7 +165,7 @@ static unsigned int i9xx_fsb_freq(struct intel_displa=
y *display)
>  	 * don't know which registers have that information,
>  	 * and all the relevant docs have gone to bit heaven :(
>  	 */
> -	fsb =3D intel_uncore_read(uncore, CLKCFG) & CLKCFG_FSB_MASK;
> +	fsb =3D intel_mchbar_read(display, CLKCFG) & CLKCFG_FSB_MASK;
>=20=20
>  	if (display->platform.pineview || display->platform.mobile) {
>  		switch (fsb) {
> @@ -215,10 +210,9 @@ static unsigned int i9xx_fsb_freq(struct intel_displ=
ay *display)
>=20=20
>  static unsigned int ilk_fsb_freq(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u16 fsb;
>=20=20
> -	fsb =3D intel_uncore_read16(uncore, CSIPLL0) & 0x3ff;
> +	fsb =3D intel_mchbar_read16(display, CSIPLL0) & 0x3ff;
>=20=20
>  	switch (fsb) {
>  	case 0x00c:
> @@ -485,7 +479,6 @@ intel_is_dram_symmetric(const struct dram_channel_inf=
o *ch0,
>  static int
>  skl_dram_get_channels_info(struct intel_display *display, struct dram_in=
fo *dram_info)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	struct dram_channel_info ch0 =3D {}, ch1 =3D {};
>  	u32 val;
>  	int ret;
> @@ -493,12 +486,12 @@ skl_dram_get_channels_info(struct intel_display *di=
splay, struct dram_info *dram
>  	/* Assume 16Gb+ DIMMs are present until proven otherwise */
>  	dram_info->has_16gb_dimms =3D true;
>=20=20
> -	val =3D intel_uncore_read(uncore, SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
> +	val =3D intel_mchbar_read(display, SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN=
);
>  	ret =3D skl_dram_get_channel_info(display, &ch0, 0, val);
>  	if (ret =3D=3D 0)
>  		dram_info->num_channels++;
>=20=20
> -	val =3D intel_uncore_read(uncore, SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
> +	val =3D intel_mchbar_read(display, SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN=
);
>  	ret =3D skl_dram_get_channel_info(display, &ch1, 1, val);
>  	if (ret =3D=3D 0)
>  		dram_info->num_channels++;
> @@ -529,10 +522,9 @@ skl_dram_get_channels_info(struct intel_display *dis=
play, struct dram_info *dram
>  static enum intel_dram_type
>  skl_get_dram_type(struct intel_display *display)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 val;
>=20=20
> -	val =3D intel_uncore_read(uncore, SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MC=
MAIN);
> +	val =3D intel_mchbar_read(display, SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_M=
CMAIN);
>=20=20
>  	switch (val & SKL_DRAM_DDR_TYPE_MASK) {
>  	case SKL_DRAM_DDR_TYPE_DDR3:
> @@ -643,7 +635,6 @@ static void bxt_get_dimm_info(struct dram_dimm_info *=
dimm, u32 val)
>=20=20
>  static int bxt_get_dram_info(struct intel_display *display, struct dram_=
info *dram_info)
>  {
> -	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	u32 val;
>  	u8 valid_ranks =3D 0;
>  	int i;
> @@ -655,7 +646,7 @@ static int bxt_get_dram_info(struct intel_display *di=
splay, struct dram_info *dr
>  		struct dram_dimm_info dimm;
>  		enum intel_dram_type type;
>=20=20
> -		val =3D intel_uncore_read(uncore, BXT_D_CR_DRP0_DUNIT(i));
> +		val =3D intel_mchbar_read(display, BXT_D_CR_DRP0_DUNIT(i));
>  		if (val =3D=3D 0xFFFFFFFF)
>  			continue;

--=20
Jani Nikula, Intel
