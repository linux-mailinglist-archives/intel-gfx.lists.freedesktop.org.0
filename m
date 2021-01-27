Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE28305F19
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E219C6E5BB;
	Wed, 27 Jan 2021 15:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E3B6E2D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:08:33 +0000 (UTC)
IronPort-SDR: CpDwUvAcZCx8P0KIZwYlFWHSnGZ2IKCqeHt/WU1VErfFBhgXUYVDGtH8t/bDp+IrQlvQICSAj6
 g3pO6bdSnT0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167754191"
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="167754191"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:07:39 -0800
IronPort-SDR: N/XRn8e3pS4Eu8589kdH5DF6vPEQBgzkZgvOdSZpwWrugfPnIY35baZ7Gs2/H56mVU5OwA99t3
 RHx4L8HjMAaA==
X-IronPort-AV: E=Sophos;i="5.79,379,1602572400"; d="scan'208";a="388341961"
Received: from tdo2-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.72.224])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 07:07:37 -0800
Date: Wed, 27 Jan 2021 07:07:33 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210127150733.ntbtt2vrhw5aqpxx@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-3-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127041159.136409-3-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/adl_s: MCHBAR memory info
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

On Tue, Jan 26, 2021 at 08:11:52PM -0800, Aditya Swarup wrote:
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
> drivers/gpu/drm/i915/intel_dram.c | 24 ++++++++++++++++++------
> 2 files changed, 23 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index aa872446337b..3031897239a0 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -10916,6 +10916,8 @@ enum skl_power_gate {
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
>@@ -10943,6 +10945,9 @@ enum skl_power_gate {
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
>index 4754296a250e..84f84e118531 100644
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

I commented on the wrong version of the patch, but the bug is still
here. And this patch conflict with Jose's patch.

Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
