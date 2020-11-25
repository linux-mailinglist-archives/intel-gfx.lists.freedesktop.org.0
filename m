Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF642C3541
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 01:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F7C6E7D0;
	Wed, 25 Nov 2020 00:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BC16E7D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 00:11:54 +0000 (UTC)
IronPort-SDR: ehgNbh5XhYyR6AFkHydD0sXRqEomgFzkmbIwJjNX7aGmXbGzoNPG/vF8KnVaUrLoGjJ7z/neIR
 0Mq40gmEEsCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="190172290"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="190172290"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 16:11:53 -0800
IronPort-SDR: U3nShhx2LgpmgWDleh7jk2ephwqfmnucaIMhZWbtV2JX5JtOXVTlyKEyj5AO2rbexfNCukf8aE
 1DgrXFXY9+Xw==
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="362105871"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.72])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 16:11:53 -0800
Date: Tue, 24 Nov 2020 16:11:53 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201125001153.mq27yw6ybtnt3r3q@ldmartin-desk1.jf.intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, Yokoyama@freedesktop.org,
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

should be single space after define

Lucas De Marchi

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
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
