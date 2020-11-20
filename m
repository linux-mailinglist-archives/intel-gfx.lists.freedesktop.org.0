Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCA72BB65B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 21:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA6E6E911;
	Fri, 20 Nov 2020 20:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BFC6E911
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 20:18:39 +0000 (UTC)
IronPort-SDR: 3/vts2Yg9zDNCwSaS9gLeULLoV3APXGsgtvZusFrnd56TR/EamgsGL/Ps9gS+nWEkir01sk2iU
 TqjQjvFB8ooQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="159306969"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="159306969"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 12:18:38 -0800
IronPort-SDR: VjK+/npy7cr2P8Xp8jiwN8t6rpJfF6XUXfX3Ohm4G2Qll9ifBKOCFH1xF5JUvGc790EFfBf1qr
 qhg+Idh8BGug==
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="477352348"
Received: from darohlox-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.246.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 12:18:37 -0800
Date: Fri, 20 Nov 2020 12:18:16 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201120201816.likpgiooyzo4mke3@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-17-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117185029.22078-17-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 16/21] drm/i915/adl_s: MCHBAR memory info
 registers are moved
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
Cc: Jani Nikula <jani.nikula@intel.com>, Yokoyama@ldmartin-desk1,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 10:50:24AM -0800, Aditya Swarup wrote:
>From: Caz Yokoyama <caz.yokoyama@intel.com>
>
>The crwebview indicates on ADL-S that some of our MCHBAR
>registers have moved from their traditional 0x50XX offsets to
>new locations. The meaning and bit layout of the registers
>remain same.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Yokoyama, Caz <caz.yokoyama@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>---
> drivers/gpu/drm/i915/i915_reg.h   |  5 +++++
> drivers/gpu/drm/i915/intel_dram.c | 18 +++++++++++++++---
> 2 files changed, 20 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 4c8d0d84af6a..6abba59592f7 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -10863,6 +10863,8 @@ enum skl_power_gate {
> #define  SKL_DRAM_DDR_TYPE_LPDDR3		(2 << 0)
> #define  SKL_DRAM_DDR_TYPE_LPDDR4		(3 << 0)
>
>+#define  ADLS_MAD_INTER_CHANNEL_0_0_0_MCHBAR _MMIO(MCHBAR_MIRROR_BASE_SNB=
 + 0x6048)
>+
> #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB=
 + 0x500C)
> #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB=
 + 0x5010)
> #define  SKL_DRAM_S_SHIFT			16
>@@ -10890,6 +10892,9 @@ enum skl_power_gate {
> #define  CNL_DRAM_RANK_3			(0x2 << 9)
> #define  CNL_DRAM_RANK_4			(0x3 << 9)
>
>+#define ADLS_MAD_DIMM_CH0_0_0_0_MCHBAR		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x=
6054)
>+#define ADLS_MAD_DIMM_CH1_0_0_0_MCHBAR		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x=
6058)
>+
> /* Please see hsw_read_dcomp() and hsw_write_dcomp() before using this re=
gister,
>  * since on HSW we can't write to it using I915_WRITE. */
> #define D_COMP_HSW			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5F0C)
>diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/inte=
l_dram.c
>index 4754296a250e..e7427e5f4130 100644
>--- a/drivers/gpu/drm/i915/intel_dram.c
>+++ b/drivers/gpu/drm/i915/intel_dram.c
>@@ -184,13 +184,21 @@ skl_dram_get_channels_info(struct drm_i915_private *=
i915)
> 	u32 val;
> 	int ret;
>
>-	val =3D intel_uncore_read(&i915->uncore,
>+	if (IS_ALDERLAKE_S(i915))
>+		val =3D intel_uncore_read(&i915->uncore,
>+				ADLS_MAD_DIMM_CH0_0_0_0_MCHBAR);
>+	else
>+		val =3D intel_uncore_read(&i915->uncore,
> 				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
> 	ret =3D skl_dram_get_channel_info(i915, &ch0, 0, val);
> 	if (ret =3D=3D 0)
> 		dram_info->num_channels++;
>
>-	val =3D intel_uncore_read(&i915->uncore,
>+	if (IS_ALDERLAKE_S(i915))
>+		val =3D intel_uncore_read(&i915->uncore,
>+				ADLS_MAD_DIMM_CH1_0_0_0_MCHBAR);
>+	else
>+		val =3D intel_uncore_read(&i915->uncore,
> 				SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);

probably better to:

u32 ch0, ch1;

and then keep the reads together in a single if/else chain.
Or use i915_reg_t ch0_reg, ch1_reg

Lucas De Marchi

> 	ret =3D skl_dram_get_channel_info(i915, &ch1, 1, val);
> 	if (ret =3D=3D 0)
>@@ -231,7 +239,11 @@ skl_get_dram_type(struct drm_i915_private *i915)
> {
> 	u32 val;
>
>-	val =3D intel_uncore_read(&i915->uncore,
>+	if (IS_ALDERLAKE_S(i915))
>+		val =3D intel_uncore_read(&i915->uncore,
>+				ADLS_MAD_INTER_CHANNEL_0_0_0_MCHBAR);
>+	else
>+		val =3D intel_uncore_read(&i915->uncore,
> 				SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
>
> 	switch (val & SKL_DRAM_DDR_TYPE_MASK) {
>-- =

>2.27.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
