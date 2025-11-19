Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434C5C6D4A2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 09:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46FC10E5A1;
	Wed, 19 Nov 2025 08:06:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XshXzckE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D3D10E5A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Nov 2025 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763539566; x=1795075566;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3TJpLvohpM6knDjuZKmW33ML1SQngDgFPuUmrphFzFM=;
 b=XshXzckEr2i7AG71HQwsj9pd9NvSZfN2INSJkk2ncb5jOokNonImODGj
 UEiPS6Vn/6TGOLVpXLUsLAA70yLLAMswAl0Ga2/+SFtuC+Ivb5YHhS9Kk
 V0v9TCJYTUBJWxZUkGpxrJwDy4zSGLgu8HqAN4gW/058VXjVqOSJKrJjW
 YwdJ8UOXymMOMBs/84GPT7wuD+diocr5H36NvNWKZjREGcxT+Oy6VlXiF
 h1OlQ5is7VOf19Ch3nN2roPI0VVuf2pWw1wWmGeUfR8IN3xwIE3HE1qiE
 oqFDWp26wHidqSvUXm6Bfz8A2DZPhMKjSs/61dxnOHd1rQ/VlSdv+b6mj A==;
X-CSE-ConnectionGUID: clpA3A9kSnySZi2Cl0Wmdw==
X-CSE-MsgGUID: 5HZ09SMxQQuxjSBGH273Cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="76677568"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="76677568"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 00:06:02 -0800
X-CSE-ConnectionGUID: c7RXijD8RdeZv5iT6QR2Kw==
X-CSE-MsgGUID: XJAIfGubQi+lILNdGzh8cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191430748"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 00:06:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Lucas De
 Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/dram: Fix ICL DIMM_S decoding
In-Reply-To: <aQ32K_njWN_lEZ4-@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
 <20251029204215.12292-4-ville.syrjala@linux.intel.com>
 <5nlmnkl3qcv2kmjeew4wsi632dharewi4323iu7jf6scxpjgj6@sq33zos5nnfl>
 <aQ32K_njWN_lEZ4-@intel.com>
Date: Wed, 19 Nov 2025 10:05:57 +0200
Message-ID: <f1180282dbadaaab11c8d9426acdcc7bed2179d1@intel.com>
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

On Fri, 07 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 05, 2025 at 04:25:49PM -0600, Lucas De Marchi wrote:
>> On Wed, Oct 29, 2025 at 10:42:15PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> >From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> >Unfortunately the MAD_DIMM DIMM_S and DIMM_L bits on ICL are
>> >not idential, so we are currently decoding DIMM_S incorrectly.
>> >
>> >Fix the problem by defining the DIMM_S and DIMM_L bits separately.
>> >And for consistency do that same for SKL, even though there the
>> >bits do match between the two DIMMs. The result is rather
>> >repetitive in places, but I didn't feel like obfuscatign things
>> >with cpp macros/etc.
>> >
>> >Broken decoding on Dell XPS 13 7390 2-in-1:
>> > CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
>> > CH0 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
>> > CH0 ranks: 2, 16Gb+ DIMMs: no
>> > CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
>> > CH1 DIMM S size: 32 Gb, width: X32, ranks: 3, 16Gb+ DIMMs: no
>> > CH1 ranks: 2, 16Gb+ DIMMs: no
>> > Memory configuration is symmetric? no
>> >
>> >Fixed decoding on Dell XPS 13 7390 2-in-1:
>> > CH0 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
>> > CH0 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
>> > CH0 ranks: 2, 16Gb+ DIMMs: no
>> > CH1 DIMM L size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
>> > CH1 DIMM S size: 32 Gb, width: X16, ranks: 2, 16Gb+ DIMMs: no
>> > CH1 ranks: 2, 16Gb+ DIMMs: no
>> > Memory configuration is symmetric? yes
>> >
>> >Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >---
>> > drivers/gpu/drm/i915/intel_mchbar_regs.h |  53 +++++---
>> > drivers/gpu/drm/i915/soc/intel_dram.c    | 166 +++++++++++++++++------
>> > 2 files changed, 155 insertions(+), 64 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm=
/i915/intel_mchbar_regs.h
>> >index a46a45b9d2e1..614d4017b57b 100644
>> >--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
>> >+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
>> >@@ -160,25 +160,40 @@
>> >
>> > #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_=
SNB + 0x500C)
>> > #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_=
SNB + 0x5010)
>> >-#define   SKL_DRAM_S_SHIFT			16
>> >-#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
>> >-#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
>> >-#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
>> >-#define   SKL_DRAM_WIDTH_MASK			REG_GENMASK(9, 8)
>> >-#define   SKL_DRAM_WIDTH_X8			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 0)
>> >-#define   SKL_DRAM_WIDTH_X16			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 1)
>> >-#define   SKL_DRAM_WIDTH_X32			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 2)
>> >-#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
>> >-#define   ICL_DRAM_RANK_MASK			REG_GENMASK(10, 9)
>> >-#define   ICL_DRAM_RANK_1			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 0)
>> >-#define   ICL_DRAM_RANK_2			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 1)
>> >-#define   ICL_DRAM_RANK_3			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 2)
>> >-#define   ICL_DRAM_RANK_4			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 3)
>> >-#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
>> >-#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
>> >-#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
>> >-#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
>> >-#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
>> >+#define   SKL_DIMM_S_RANK_MASK			REG_GENMASK(26, 26)
>> >+#define   SKL_DIMM_S_RANK_1			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 0)
>> >+#define   SKL_DIMM_S_RANK_2			REG_FIELD_PREP(SKL_DIMM_S_RANK_MASK, 1)
>> >+#define   SKL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
>> >+#define   SKL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK, =
0)
>> >+#define   SKL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK,=
 1)
>> >+#define   SKL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_S_WIDTH_MASK,=
 2)
>> >+#define   SKL_DIMM_S_SIZE_MASK			REG_GENMASK(21, 16)
>> >+#define   SKL_DIMM_L_RANK_MASK			REG_GENMASK(10, 10)
>> >+#define   SKL_DIMM_L_RANK_1			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 0)
>> >+#define   SKL_DIMM_L_RANK_2			REG_FIELD_PREP(SKL_DIMM_L_RANK_MASK, 1)
>> >+#define   SKL_DIMM_L_WIDTH_MASK			REG_GENMASK(9, 8)
>> >+#define   SKL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK, =
0)
>> >+#define   SKL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK,=
 1)
>> >+#define   SKL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(SKL_DIMM_L_WIDTH_MASK,=
 2)
>> >+#define   SKL_DIMM_L_SIZE_MASK			REG_GENMASK(5, 0)
>> >+#define   ICL_DIMM_S_RANK_MASK			REG_GENMASK(27, 26)
>> >+#define   ICL_DIMM_S_RANK_1			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 0)
>> >+#define   ICL_DIMM_S_RANK_2			REG_FIELD_PREP(ICL_DIMM_S_RANK_MASK, 1)
>> >+#define   ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(25, 24)
>> >+#define   ICL_DIMM_S_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK, =
0)
>> >+#define   ICL_DIMM_S_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK,=
 1)
>> >+#define   ICL_DIMM_S_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_S_WIDTH_MASK,=
 2)
>> >+#define   ICL_DIMM_S_SIZE_MASK			REG_GENMASK(22, 16)
>> >+#define   ICL_DIMM_L_RANK_MASK			REG_GENMASK(10, 9)
>> >+#define   ICL_DIMM_L_RANK_1			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 0)
>> >+#define   ICL_DIMM_L_RANK_2			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 1)
>> >+#define   ICL_DIMM_L_RANK_3			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 2)
>> >+#define   ICL_DIMM_L_RANK_4			REG_FIELD_PREP(ICL_DIMM_L_RANK_MASK, 3)
>> >+#define   ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8, 7)
>> >+#define   ICL_DIMM_L_WIDTH_X8			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK, =
0)
>> >+#define   ICL_DIMM_L_WIDTH_X16			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK,=
 1)
>> >+#define   ICL_DIMM_L_WIDTH_X32			REG_FIELD_PREP(ICL_DIMM_L_WIDTH_MASK,=
 2)
>> >+#define   ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6, 0)
>>=20
>> so we have:
>>=20
>> ICL_DIMM_L_RANK_MASK			REG_GENMASK(10     , 9)
>> ICL_DIMM_L_WIDTH_MASK			REG_GENMASK(8      , 7)
>> ICL_DIMM_L_SIZE_MASK			REG_GENMASK(6      , 0)
>>=20
>> vs
>>=20
>> ICL_DIMM_S_RANK_MASK			REG_GENMASK(11 + 16, 10 + 16)
>> ICL_DIMM_S_WIDTH_MASK			REG_GENMASK(9  + 16, 8  + 16)
>> ICL_DIMM_S_SIZE_MASK			REG_GENMASK(6  + 16, 0  + 16)
>>=20
>>=20
>> I can't really check the soc spec right now, but this fix seems very
>> verbose. Maybe the first patch could fix the bug in the simple way and
>> then have these refactors on top?
>>=20
>> u16 lval =3D val & 0xffff;
>> u16 sval =3D val >> 16;
>>=20
>> /*
>>   * Some cursing here for format change - "fix" it up by making it compa=
tible
>>   * with the lower bits by doing shr where appropriate
>>   */
>> sval =3D (sval & ICL_DIMM_L_SIZE_MASK) |
>>         ((sval >> 1) & ICL_DIMM_L_WIDTH_MASK) |
>>         ((sval >> 1) & ICL_DIMM_L_RANK_MASK);
>>=20
>> ...
>>=20
>> > static int
>> > skl_dram_get_channel_info(struct drm_i915_private *i915,
>> > 			  struct dram_channel_info *ch,
>> > 			  int channel, u32 val)
>> > {
>> >-	skl_dram_get_dimm_info(i915, &ch->dimm_l,
>> >-			       channel, 'L', val & 0xffff);
>> >-	skl_dram_get_dimm_info(i915, &ch->dimm_s,
>> >-			       channel, 'S', val >> 16);
>>=20
>> Which would mean basically changing this function to derive sval and
>> lval as above (untested). This could easily propagate to through stable.
>
> Meh. We have no know issues that this fixes so wasn't planning on
> a stable backport anyway.

I'm fine with backporting the deps if we end up having to backport this.

It's a hard diff to read, but I couldn't spot any issues.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel
