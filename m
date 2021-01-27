Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 359CD305E45
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 15:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2006E323;
	Wed, 27 Jan 2021 14:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E6A6E323
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 14:29:35 +0000 (UTC)
IronPort-SDR: RzLgmpCqf8kBNsqgYTXwbMCMqo2y56hSa37Qa3/QybM7+bEw9K++wDm1rNB7T0JadmPqGuHfUE
 5n8ZN6NTwDqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="176563473"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="176563473"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:29:35 -0800
IronPort-SDR: OfSF6PpYOLoq035yuBkJSeaFbyN2ObuJHEwpiG4zfLtZhT088jedLPZ3BuZsKKY9mqBKTs2nAS
 XB1MR2s9qmiw==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388326028"
Received: from tdo2-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.72.224])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 06:29:32 -0800
Date: Wed, 27 Jan 2021 06:29:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210127142929.7uq5kewj5umvhfnu@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201205010844.361880-1-aditya.swarup@intel.com>
 <20201205010844.361880-18-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205010844.361880-18-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 17/22] drm/i915/adl_s: MCHBAR memory info
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 05:08:39PM -0800, Aditya Swarup wrote:
>From: Caz Yokoyama <caz.yokoyama@intel.com>
>
>The crwebview indicates on ADL-S that some of our MCHBAR
>registers have moved from their traditional 0x50XX offsets to
>new locations. The meaning and bit layout of the registers
>remain same.
>
>v2: Simplify logic to a single if else chain and fix indents.(Lucas)
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>---
> drivers/gpu/drm/i915/i915_reg.h   |  5 +++++
> drivers/gpu/drm/i915/intel_dram.c | 23 +++++++++++++++++------
> 2 files changed, 22 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index ce4ef7fa4000..55e186293fbb 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -10865,6 +10865,8 @@ enum skl_power_gate {
> #define  SKL_DRAM_DDR_TYPE_LPDDR3		(2 << 0)
> #define  SKL_DRAM_DDR_TYPE_LPDDR4		(3 << 0)
>
>+#define ADLS_MAD_INTER_CHANNEL_0_0_0_MCHBAR _MMIO(MCHBAR_MIRROR_BASE_SNB =
+ 0x6048)
>+
> #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB=
 + 0x500C)
> #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB=
 + 0x5010)
> #define  SKL_DRAM_S_SHIFT			16
>@@ -10892,6 +10894,9 @@ enum skl_power_gate {
> #define  CNL_DRAM_RANK_3			(0x2 << 9)
> #define  CNL_DRAM_RANK_4			(0x3 << 9)
>
>+#define ADLS_MAD_DIMM_CH0_0_0_0_MCHBAR		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x=
6054)
>+#define ADLS_MAD_DIMM_CH1_0_0_0_MCHBAR		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x=
6058)
>+
> /*
>  * Please see hsw_read_dcomp() and hsw_write_dcomp() before using this re=
gister,
>  * since on HSW we can't write to it using intel_uncore_write.
>diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/inte=
l_dram.c
>index 4754296a250e..fc9942139ccc 100644
>--- a/drivers/gpu/drm/i915/intel_dram.c
>+++ b/drivers/gpu/drm/i915/intel_dram.c
>@@ -181,17 +181,24 @@ skl_dram_get_channels_info(struct drm_i915_private *=
i915)
> {
> 	struct dram_info *dram_info =3D &i915->dram_info;
> 	struct dram_channel_info ch0 =3D {}, ch1 =3D {};
>+	i915_reg_t ch0_reg, ch1_reg;
> 	u32 val;
> 	int ret;
>
>-	val =3D intel_uncore_read(&i915->uncore,
>-				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
>+	if (IS_ALDERLAKE_S(i915)) {
>+		ch0_reg =3D ADLS_MAD_DIMM_CH0_0_0_0_MCHBAR;
>+		ch1_reg =3D ADLS_MAD_DIMM_CH1_0_0_0_MCHBAR;
>+	} else {
>+		ch0_reg =3D ADLS_MAD_DIMM_CH0_0_0_0_MCHBAR;
>+		ch1_reg =3D ADLS_MAD_DIMM_CH1_0_0_0_MCHBAR;

this is not right and breaks all the other platforms.

Also this patch conflicts with
https://patchwork.freedesktop.org/series/86092/
and general direction that we should get these values from pcode rather
than keep changing the offset we use to avoid MCHBAR.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
