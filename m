Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F06328C780C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F05E10ED3B;
	Thu, 16 May 2024 13:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W66lwKeA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ACAB10ED3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867819; x=1747403819;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3y0qYtkKVua95yTes+BWqqnJM17STgc+nlMlg05Sh6k=;
 b=W66lwKeA9GisdQuW6NI77C8OyQMi9yX668l5PQUvEkvF0RowNB7B1lu4
 j8PQIJX94iED20UWHtuL0XVuUlkYS0MRs7LAMFMq8z16jyTsbTgdt1jmW
 KR3G4n8fgQscfbZM+5otaxLlTTCzzerhGA1OXc39jiED1oIxQxa7riey2
 5M89erxJn+28+Xmk9Tq/q7KkYiduuYqv56bXyDlNGr/cke1oZZPZ+BIwr
 ZKllbl8KrXDJ1cq3uehPEl+h4b5ZJZQCzpO8t6BUK80aeAZZTwjynFVIH
 fOVA0etAtiuC8rihtAz6AgS71N680qCRQTOfLd89YsN8VwZaRFszOetQK w==;
X-CSE-ConnectionGUID: ZJIEd9FdRfawLreNdicbcQ==
X-CSE-MsgGUID: fuYzZDWsTj+zE71JpmlJQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357216"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357216"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:58 -0700
X-CSE-ConnectionGUID: 9qETIkfwSuqxNBRl2fd9UA==
X-CSE-MsgGUID: rlHH7ZXJT9GOxEXzI/F06w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435206"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/13] drm/i915: Polish sprite plane register definitions
Date: Thu, 16 May 2024 16:56:21 +0300
Message-ID: <20240516135622.3498-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Group the sprite plane register definitions such that everything
to do wiht the same register is in one place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_sprite_regs.h  | 231 ++++++++++--------
 1 file changed, 134 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite_regs.h b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
index bb67705652b2..c27adbaf0f00 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
@@ -7,6 +7,8 @@
 #include "intel_display_reg_defs.h"
 
 #define _DVSACNTR		0x72180
+#define _DVSBCNTR		0x73180
+#define DVSCNTR(pipe) _MMIO_PIPE(pipe, _DVSACNTR, _DVSBCNTR)
 #define   DVS_ENABLE			REG_BIT(31)
 #define   DVS_PIPE_GAMMA_ENABLE		REG_BIT(30)
 #define   DVS_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(27)
@@ -28,31 +30,67 @@
 #define   DVS_TRICKLE_FEED_DISABLE	REG_BIT(14)
 #define   DVS_TILED			REG_BIT(10)
 #define   DVS_DEST_KEY			REG_BIT(2)
+
 #define _DVSALINOFF		0x72184
+#define _DVSBLINOFF		0x73184
+#define DVSLINOFF(pipe) _MMIO_PIPE(pipe, _DVSALINOFF, _DVSBLINOFF)
+
 #define _DVSASTRIDE		0x72188
+#define _DVSBSTRIDE		0x73188
+#define DVSSTRIDE(pipe) _MMIO_PIPE(pipe, _DVSASTRIDE, _DVSBSTRIDE)
+
 #define _DVSAPOS		0x7218c
+#define _DVSBPOS		0x7318c
+#define DVSPOS(pipe) _MMIO_PIPE(pipe, _DVSAPOS, _DVSBPOS)
 #define   DVS_POS_Y_MASK		REG_GENMASK(31, 16)
 #define   DVS_POS_Y(y)			REG_FIELD_PREP(DVS_POS_Y_MASK, (y))
 #define   DVS_POS_X_MASK		REG_GENMASK(15, 0)
 #define   DVS_POS_X(x)			REG_FIELD_PREP(DVS_POS_X_MASK, (x))
+
 #define _DVSASIZE		0x72190
+#define _DVSBSIZE		0x73190
+#define DVSSIZE(pipe) _MMIO_PIPE(pipe, _DVSASIZE, _DVSBSIZE)
 #define   DVS_HEIGHT_MASK		REG_GENMASK(31, 16)
 #define   DVS_HEIGHT(h)			REG_FIELD_PREP(DVS_HEIGHT_MASK, (h))
 #define   DVS_WIDTH_MASK		REG_GENMASK(15, 0)
 #define   DVS_WIDTH(w)			REG_FIELD_PREP(DVS_WIDTH_MASK, (w))
+
 #define _DVSAKEYVAL		0x72194
+#define _DVSBKEYVAL		0x73194
+#define DVSKEYVAL(pipe) _MMIO_PIPE(pipe, _DVSAKEYVAL, _DVSBKEYVAL)
+
 #define _DVSAKEYMSK		0x72198
+#define _DVSBKEYMSK		0x73198
+#define DVSKEYMSK(pipe) _MMIO_PIPE(pipe, _DVSAKEYMSK, _DVSBKEYMSK)
+
 #define _DVSASURF		0x7219c
+#define _DVSBSURF		0x7319c
+#define DVSSURF(pipe) _MMIO_PIPE(pipe, _DVSASURF, _DVSBSURF)
 #define   DVS_ADDR_MASK			REG_GENMASK(31, 12)
+
 #define _DVSAKEYMAXVAL		0x721a0
+#define _DVSBKEYMAXVAL		0x731a0
+#define DVSKEYMAX(pipe) _MMIO_PIPE(pipe, _DVSAKEYMAXVAL, _DVSBKEYMAXVAL)
+
 #define _DVSATILEOFF		0x721a4
+#define _DVSBTILEOFF		0x731a4
+#define DVSTILEOFF(pipe) _MMIO_PIPE(pipe, _DVSATILEOFF, _DVSBTILEOFF)
 #define   DVS_OFFSET_Y_MASK		REG_GENMASK(31, 16)
 #define   DVS_OFFSET_Y(y)		REG_FIELD_PREP(DVS_OFFSET_Y_MASK, (y))
 #define   DVS_OFFSET_X_MASK		REG_GENMASK(15, 0)
 #define   DVS_OFFSET_X(x)		REG_FIELD_PREP(DVS_OFFSET_X_MASK, (x))
+
 #define _DVSASURFLIVE		0x721ac
+#define _DVSBSURFLIVE		0x731ac
+#define DVSSURFLIVE(pipe) _MMIO_PIPE(pipe, _DVSASURFLIVE, _DVSBSURFLIVE)
+
 #define _DVSAGAMC_G4X		0x721e0 /* g4x */
+#define _DVSBGAMC_G4X		0x731e0 /* g4x */
+#define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */
+
 #define _DVSASCALE		0x72204
+#define _DVSBSCALE		0x73204
+#define DVSSCALE(pipe) _MMIO_PIPE(pipe, _DVSASCALE, _DVSBSCALE)
 #define   DVS_SCALE_ENABLE		REG_BIT(31)
 #define   DVS_FILTER_MASK		REG_GENMASK(30, 29)
 #define   DVS_FILTER_MEDIUM		REG_FIELD_PREP(DVS_FILTER_MASK, 0)
@@ -64,42 +102,18 @@
 #define   DVS_SRC_WIDTH(w)		REG_FIELD_PREP(DVS_SRC_WIDTH_MASK, (w))
 #define   DVS_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
 #define   DVS_SRC_HEIGHT(h)		REG_FIELD_PREP(DVS_SRC_HEIGHT_MASK, (h))
+
 #define _DVSAGAMC_ILK		0x72300 /* ilk/snb */
-#define _DVSAGAMCMAX_ILK	0x72340 /* ilk/snb */
-
-#define _DVSBCNTR		0x73180
-#define _DVSBLINOFF		0x73184
-#define _DVSBSTRIDE		0x73188
-#define _DVSBPOS		0x7318c
-#define _DVSBSIZE		0x73190
-#define _DVSBKEYVAL		0x73194
-#define _DVSBKEYMSK		0x73198
-#define _DVSBSURF		0x7319c
-#define _DVSBKEYMAXVAL		0x731a0
-#define _DVSBTILEOFF		0x731a4
-#define _DVSBSURFLIVE		0x731ac
-#define _DVSBGAMC_G4X		0x731e0 /* g4x */
-#define _DVSBSCALE		0x73204
 #define _DVSBGAMC_ILK		0x73300 /* ilk/snb */
-#define _DVSBGAMCMAX_ILK	0x73340 /* ilk/snb */
-
-#define DVSCNTR(pipe) _MMIO_PIPE(pipe, _DVSACNTR, _DVSBCNTR)
-#define DVSLINOFF(pipe) _MMIO_PIPE(pipe, _DVSALINOFF, _DVSBLINOFF)
-#define DVSSTRIDE(pipe) _MMIO_PIPE(pipe, _DVSASTRIDE, _DVSBSTRIDE)
-#define DVSPOS(pipe) _MMIO_PIPE(pipe, _DVSAPOS, _DVSBPOS)
-#define DVSSURF(pipe) _MMIO_PIPE(pipe, _DVSASURF, _DVSBSURF)
-#define DVSKEYMAX(pipe) _MMIO_PIPE(pipe, _DVSAKEYMAXVAL, _DVSBKEYMAXVAL)
-#define DVSSIZE(pipe) _MMIO_PIPE(pipe, _DVSASIZE, _DVSBSIZE)
-#define DVSSCALE(pipe) _MMIO_PIPE(pipe, _DVSASCALE, _DVSBSCALE)
-#define DVSTILEOFF(pipe) _MMIO_PIPE(pipe, _DVSATILEOFF, _DVSBTILEOFF)
-#define DVSKEYVAL(pipe) _MMIO_PIPE(pipe, _DVSAKEYVAL, _DVSBKEYVAL)
-#define DVSKEYMSK(pipe) _MMIO_PIPE(pipe, _DVSAKEYMSK, _DVSBKEYMSK)
-#define DVSSURFLIVE(pipe) _MMIO_PIPE(pipe, _DVSASURFLIVE, _DVSBSURFLIVE)
-#define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */
 #define DVSGAMC_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_ILK, _DVSBGAMC_ILK) + (i) * 4) /* 16 x u0.10 */
+
+#define _DVSAGAMCMAX_ILK	0x72340 /* ilk/snb */
+#define _DVSBGAMCMAX_ILK	0x73340 /* ilk/snb */
 #define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
 
 #define _SPRA_CTL		0x70280
+#define _SPRB_CTL		0x71280
+#define SPRCTL(pipe) _MMIO_PIPE(pipe, _SPRA_CTL, _SPRB_CTL)
 #define   SPRITE_ENABLE				REG_BIT(31)
 #define   SPRITE_PIPE_GAMMA_ENABLE		REG_BIT(30)
 #define   SPRITE_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
@@ -125,31 +139,67 @@
 #define   SPRITE_PLANE_GAMMA_DISABLE		REG_BIT(13)
 #define   SPRITE_TILED				REG_BIT(10)
 #define   SPRITE_DEST_KEY			REG_BIT(2)
+
 #define _SPRA_LINOFF		0x70284
+#define _SPRB_LINOFF		0x71284
+#define SPRLINOFF(pipe) _MMIO_PIPE(pipe, _SPRA_LINOFF, _SPRB_LINOFF)
+
 #define _SPRA_STRIDE		0x70288
+#define _SPRB_STRIDE		0x71288
+#define SPRSTRIDE(pipe) _MMIO_PIPE(pipe, _SPRA_STRIDE, _SPRB_STRIDE)
+
 #define _SPRA_POS		0x7028c
+#define _SPRB_POS		0x7128c
+#define SPRPOS(pipe) _MMIO_PIPE(pipe, _SPRA_POS, _SPRB_POS)
 #define   SPRITE_POS_Y_MASK	REG_GENMASK(31, 16)
 #define   SPRITE_POS_Y(y)	REG_FIELD_PREP(SPRITE_POS_Y_MASK, (y))
 #define   SPRITE_POS_X_MASK	REG_GENMASK(15, 0)
 #define   SPRITE_POS_X(x)	REG_FIELD_PREP(SPRITE_POS_X_MASK, (x))
+
 #define _SPRA_SIZE		0x70290
+#define _SPRB_SIZE		0x71290
+#define SPRSIZE(pipe) _MMIO_PIPE(pipe, _SPRA_SIZE, _SPRB_SIZE)
 #define   SPRITE_HEIGHT_MASK	REG_GENMASK(31, 16)
 #define   SPRITE_HEIGHT(h)	REG_FIELD_PREP(SPRITE_HEIGHT_MASK, (h))
 #define   SPRITE_WIDTH_MASK	REG_GENMASK(15, 0)
 #define   SPRITE_WIDTH(w)	REG_FIELD_PREP(SPRITE_WIDTH_MASK, (w))
+
 #define _SPRA_KEYVAL		0x70294
+#define _SPRB_KEYVAL		0x71294
+#define SPRKEYVAL(pipe) _MMIO_PIPE(pipe, _SPRA_KEYVAL, _SPRB_KEYVAL)
+
 #define _SPRA_KEYMSK		0x70298
+#define _SPRB_KEYMSK		0x71298
+#define SPRKEYMSK(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMSK, _SPRB_KEYMSK)
+
 #define _SPRA_SURF		0x7029c
+#define _SPRB_SURF		0x7129c
+#define SPRSURF(pipe) _MMIO_PIPE(pipe, _SPRA_SURF, _SPRB_SURF)
 #define   SPRITE_ADDR_MASK	REG_GENMASK(31, 12)
+
 #define _SPRA_KEYMAX		0x702a0
+#define _SPRB_KEYMAX		0x712a0
+#define SPRKEYMAX(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMAX, _SPRB_KEYMAX)
+
 #define _SPRA_TILEOFF		0x702a4
+#define _SPRB_TILEOFF		0x712a4
+#define SPRTILEOFF(pipe) _MMIO_PIPE(pipe, _SPRA_TILEOFF, _SPRB_TILEOFF)
 #define   SPRITE_OFFSET_Y_MASK	REG_GENMASK(31, 16)
 #define   SPRITE_OFFSET_Y(y)	REG_FIELD_PREP(SPRITE_OFFSET_Y_MASK, (y))
 #define   SPRITE_OFFSET_X_MASK	REG_GENMASK(15, 0)
 #define   SPRITE_OFFSET_X(x)	REG_FIELD_PREP(SPRITE_OFFSET_X_MASK, (x))
+
 #define _SPRA_OFFSET		0x702a4
+#define _SPRB_OFFSET		0x712a4
+#define SPROFFSET(pipe) _MMIO_PIPE(pipe, _SPRA_OFFSET, _SPRB_OFFSET)
+
 #define _SPRA_SURFLIVE		0x702ac
+#define _SPRB_SURFLIVE		0x712ac
+#define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIVE)
+
 #define _SPRA_SCALE		0x70304
+#define _SPRB_SCALE		0x71304
+#define SPRSCALE(pipe) _MMIO_PIPE(pipe, _SPRA_SCALE, _SPRB_SCALE)
 #define   SPRITE_SCALE_ENABLE			REG_BIT(31)
 #define   SPRITE_FILTER_MASK			REG_GENMASK(30, 29)
 #define   SPRITE_FILTER_MEDIUM			REG_FIELD_PREP(SPRITE_FILTER_MASK, 0)
@@ -161,45 +211,27 @@
 #define   SPRITE_SRC_WIDTH(w)			REG_FIELD_PREP(SPRITE_SRC_WIDTH_MASK, (w))
 #define   SPRITE_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
 #define   SPRITE_SRC_HEIGHT(h)			REG_FIELD_PREP(SPRITE_SRC_HEIGHT_MASK, (h))
+
 #define _SPRA_GAMC		0x70400
-#define _SPRA_GAMC16		0x70440
-#define _SPRA_GAMC17		0x7044c
-
-#define _SPRB_CTL		0x71280
-#define _SPRB_LINOFF		0x71284
-#define _SPRB_STRIDE		0x71288
-#define _SPRB_POS		0x7128c
-#define _SPRB_SIZE		0x71290
-#define _SPRB_KEYVAL		0x71294
-#define _SPRB_KEYMSK		0x71298
-#define _SPRB_SURF		0x7129c
-#define _SPRB_KEYMAX		0x712a0
-#define _SPRB_TILEOFF		0x712a4
-#define _SPRB_OFFSET		0x712a4
-#define _SPRB_SURFLIVE		0x712ac
-#define _SPRB_SCALE		0x71304
 #define _SPRB_GAMC		0x71400
-#define _SPRB_GAMC16		0x71440
-#define _SPRB_GAMC17		0x7144c
-
-#define SPRCTL(pipe) _MMIO_PIPE(pipe, _SPRA_CTL, _SPRB_CTL)
-#define SPRLINOFF(pipe) _MMIO_PIPE(pipe, _SPRA_LINOFF, _SPRB_LINOFF)
-#define SPRSTRIDE(pipe) _MMIO_PIPE(pipe, _SPRA_STRIDE, _SPRB_STRIDE)
-#define SPRPOS(pipe) _MMIO_PIPE(pipe, _SPRA_POS, _SPRB_POS)
-#define SPRSIZE(pipe) _MMIO_PIPE(pipe, _SPRA_SIZE, _SPRB_SIZE)
-#define SPRKEYVAL(pipe) _MMIO_PIPE(pipe, _SPRA_KEYVAL, _SPRB_KEYVAL)
-#define SPRKEYMSK(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMSK, _SPRB_KEYMSK)
-#define SPRSURF(pipe) _MMIO_PIPE(pipe, _SPRA_SURF, _SPRB_SURF)
-#define SPRKEYMAX(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMAX, _SPRB_KEYMAX)
-#define SPRTILEOFF(pipe) _MMIO_PIPE(pipe, _SPRA_TILEOFF, _SPRB_TILEOFF)
-#define SPROFFSET(pipe) _MMIO_PIPE(pipe, _SPRA_OFFSET, _SPRB_OFFSET)
-#define SPRSCALE(pipe) _MMIO_PIPE(pipe, _SPRA_SCALE, _SPRB_SCALE)
 #define SPRGAMC(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC, _SPRB_GAMC) + (i) * 4) /* 16 x u0.10 */
+
+#define _SPRA_GAMC16		0x70440
+#define _SPRB_GAMC16		0x71440
 #define SPRGAMC16(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC16, _SPRB_GAMC16) + (i) * 4) /* 3 x u1.10 */
+
+#define _SPRA_GAMC17		0x7044c
+#define _SPRB_GAMC17		0x7144c
 #define SPRGAMC17(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC17, _SPRB_GAMC17) + (i) * 4) /* 3 x u2.10 */
-#define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIVE)
+
+#define _VLV_SPR(pipe, plane_id, reg_a, reg_b) \
+	_PIPE((pipe) * 2 + (plane_id) - PLANE_SPRITE0, (reg_a), (reg_b))
+#define _MMIO_VLV_SPR(pipe, plane_id, reg_a, reg_b) \
+	_MMIO(_VLV_SPR((pipe), (plane_id), (reg_a), (reg_b)))
 
 #define _SPACNTR		(VLV_DISPLAY_BASE + 0x72180)
+#define _SPBCNTR		(VLV_DISPLAY_BASE + 0x72280)
+#define SPCNTR(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACNTR, _SPBCNTR)
 #define   SP_ENABLE			REG_BIT(31)
 #define   SP_PIPE_GAMMA_ENABLE		REG_BIT(30)
 #define   SP_FORMAT_MASK		REG_GENMASK(29, 26)
@@ -225,80 +257,85 @@
 #define   SP_ROTATE_180			REG_BIT(15)
 #define   SP_TILED			REG_BIT(10)
 #define   SP_MIRROR			REG_BIT(8) /* CHV pipe B */
+
 #define _SPALINOFF		(VLV_DISPLAY_BASE + 0x72184)
+#define _SPBLINOFF		(VLV_DISPLAY_BASE + 0x72284)
+#define SPLINOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPALINOFF, _SPBLINOFF)
+
 #define _SPASTRIDE		(VLV_DISPLAY_BASE + 0x72188)
+#define _SPBSTRIDE		(VLV_DISPLAY_BASE + 0x72288)
+#define SPSTRIDE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASTRIDE, _SPBSTRIDE)
+
 #define _SPAPOS			(VLV_DISPLAY_BASE + 0x7218c)
+#define _SPBPOS			(VLV_DISPLAY_BASE + 0x7228c)
+#define SPPOS(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPAPOS, _SPBPOS)
 #define   SP_POS_Y_MASK			REG_GENMASK(31, 16)
 #define   SP_POS_Y(y)			REG_FIELD_PREP(SP_POS_Y_MASK, (y))
 #define   SP_POS_X_MASK			REG_GENMASK(15, 0)
 #define   SP_POS_X(x)			REG_FIELD_PREP(SP_POS_X_MASK, (x))
+
 #define _SPASIZE		(VLV_DISPLAY_BASE + 0x72190)
+#define _SPBSIZE		(VLV_DISPLAY_BASE + 0x72290)
+#define SPSIZE(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASIZE, _SPBSIZE)
 #define   SP_HEIGHT_MASK		REG_GENMASK(31, 16)
 #define   SP_HEIGHT(h)			REG_FIELD_PREP(SP_HEIGHT_MASK, (h))
 #define   SP_WIDTH_MASK			REG_GENMASK(15, 0)
 #define   SP_WIDTH(w)			REG_FIELD_PREP(SP_WIDTH_MASK, (w))
+
 #define _SPAKEYMINVAL		(VLV_DISPLAY_BASE + 0x72194)
+#define _SPBKEYMINVAL		(VLV_DISPLAY_BASE + 0x72294)
+#define SPKEYMINVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMINVAL, _SPBKEYMINVAL)
+
 #define _SPAKEYMSK		(VLV_DISPLAY_BASE + 0x72198)
+#define _SPBKEYMSK		(VLV_DISPLAY_BASE + 0x72298)
+#define SPKEYMSK(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMSK, _SPBKEYMSK)
+
 #define _SPASURF		(VLV_DISPLAY_BASE + 0x7219c)
+#define _SPBSURF		(VLV_DISPLAY_BASE + 0x7229c)
+#define SPSURF(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASURF, _SPBSURF)
 #define   SP_ADDR_MASK			REG_GENMASK(31, 12)
+
 #define _SPAKEYMAXVAL		(VLV_DISPLAY_BASE + 0x721a0)
+#define _SPBKEYMAXVAL		(VLV_DISPLAY_BASE + 0x722a0)
+#define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)
+
 #define _SPATILEOFF		(VLV_DISPLAY_BASE + 0x721a4)
+#define _SPBTILEOFF		(VLV_DISPLAY_BASE + 0x722a4)
+#define SPTILEOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPATILEOFF, _SPBTILEOFF)
 #define   SP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
 #define   SP_OFFSET_Y(y)		REG_FIELD_PREP(SP_OFFSET_Y_MASK, (y))
 #define   SP_OFFSET_X_MASK		REG_GENMASK(15, 0)
 #define   SP_OFFSET_X(x)		REG_FIELD_PREP(SP_OFFSET_X_MASK, (x))
+
 #define _SPACONSTALPHA		(VLV_DISPLAY_BASE + 0x721a8)
+#define _SPBCONSTALPHA		(VLV_DISPLAY_BASE + 0x722a8)
+#define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)
 #define   SP_CONST_ALPHA_ENABLE		REG_BIT(31)
 #define   SP_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
 #define   SP_CONST_ALPHA(alpha)		REG_FIELD_PREP(SP_CONST_ALPHA_MASK, (alpha))
+
 #define _SPASURFLIVE		(VLV_DISPLAY_BASE + 0x721ac)
+#define _SPBSURFLIVE		(VLV_DISPLAY_BASE + 0x722ac)
+#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)
+
 #define _SPACLRC0		(VLV_DISPLAY_BASE + 0x721d0)
+#define _SPBCLRC0		(VLV_DISPLAY_BASE + 0x722d0)
+#define SPCLRC0(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC0, _SPBCLRC0)
 #define   SP_CONTRAST_MASK		REG_GENMASK(26, 18)
 #define   SP_CONTRAST(x)		REG_FIELD_PREP(SP_CONTRAST_MASK, (x)) /* u3.6 */
 #define   SP_BRIGHTNESS_MASK		REG_GENMASK(7, 0)
 #define   SP_BRIGHTNESS(x)		REG_FIELD_PREP(SP_BRIGHTNESS_MASK, (x)) /* s8 */
+
 #define _SPACLRC1		(VLV_DISPLAY_BASE + 0x721d4)
+#define _SPBCLRC1		(VLV_DISPLAY_BASE + 0x722d4)
+#define SPCLRC1(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC1, _SPBCLRC1)
 #define   SP_SH_SIN_MASK		REG_GENMASK(26, 16)
 #define   SP_SH_SIN(x)			REG_FIELD_PREP(SP_SH_SIN_MASK, (x)) /* s4.7 */
 #define   SP_SH_COS_MASK		REG_GENMASK(9, 0)
 #define   SP_SH_COS(x)			REG_FIELD_PREP(SP_SH_COS_MASK, (x)) /* u3.7 */
+
 #define _SPAGAMC		(VLV_DISPLAY_BASE + 0x721e0)
-
-#define _SPBCNTR		(VLV_DISPLAY_BASE + 0x72280)
-#define _SPBLINOFF		(VLV_DISPLAY_BASE + 0x72284)
-#define _SPBSTRIDE		(VLV_DISPLAY_BASE + 0x72288)
-#define _SPBPOS			(VLV_DISPLAY_BASE + 0x7228c)
-#define _SPBSIZE		(VLV_DISPLAY_BASE + 0x72290)
-#define _SPBKEYMINVAL		(VLV_DISPLAY_BASE + 0x72294)
-#define _SPBKEYMSK		(VLV_DISPLAY_BASE + 0x72298)
-#define _SPBSURF		(VLV_DISPLAY_BASE + 0x7229c)
-#define _SPBKEYMAXVAL		(VLV_DISPLAY_BASE + 0x722a0)
-#define _SPBTILEOFF		(VLV_DISPLAY_BASE + 0x722a4)
-#define _SPBCONSTALPHA		(VLV_DISPLAY_BASE + 0x722a8)
-#define _SPBSURFLIVE		(VLV_DISPLAY_BASE + 0x722ac)
-#define _SPBCLRC0		(VLV_DISPLAY_BASE + 0x722d0)
-#define _SPBCLRC1		(VLV_DISPLAY_BASE + 0x722d4)
 #define _SPBGAMC		(VLV_DISPLAY_BASE + 0x722e0)
-
-#define _VLV_SPR(pipe, plane_id, reg_a, reg_b) \
-	_PIPE((pipe) * 2 + (plane_id) - PLANE_SPRITE0, (reg_a), (reg_b))
-#define _MMIO_VLV_SPR(pipe, plane_id, reg_a, reg_b) \
-	_MMIO(_VLV_SPR((pipe), (plane_id), (reg_a), (reg_b)))
-
-#define SPCNTR(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACNTR, _SPBCNTR)
-#define SPLINOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPALINOFF, _SPBLINOFF)
-#define SPSTRIDE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASTRIDE, _SPBSTRIDE)
-#define SPPOS(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPAPOS, _SPBPOS)
-#define SPSIZE(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASIZE, _SPBSIZE)
-#define SPKEYMINVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMINVAL, _SPBKEYMINVAL)
-#define SPKEYMSK(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMSK, _SPBKEYMSK)
-#define SPSURF(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASURF, _SPBSURF)
-#define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)
-#define SPTILEOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPATILEOFF, _SPBTILEOFF)
-#define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)
-#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)
-#define SPCLRC0(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC0, _SPBCLRC0)
-#define SPCLRC1(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC1, _SPBCLRC1)
 #define SPGAMC(pipe, plane_id, i)	_MMIO(_VLV_SPR((pipe), (plane_id), _SPAGAMC, _SPBGAMC) + (5 - (i)) * 4) /* 6 x u0.10 */
 
 /*
-- 
2.44.1

