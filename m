Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 737F74455A4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F65289C07;
	Thu,  4 Nov 2021 14:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835CC89C07
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:46:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="211768122"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="211768122"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="501566647"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 04 Nov 2021 07:45:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:16 +0200
Message-Id: <20211104144520.22605-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/17] drm/i915/fbc: Finish polishing FBC1
 registers
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

Switch all the FBC1 registers over to REG_BTT()/etc.
And while at it add a few more registers/bits that
escaped the net previously.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h          | 62 ++++++++++++++----------
 2 files changed, 37 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1c9ada22b4de..888ee814e8bb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -189,7 +189,7 @@ static u32 i965_fbc_ctl2(struct drm_i915_private *i915)
 		FBC_CTL_PLANE(params->crtc.i9xx_plane);
 
 	if (params->fence_id >= 0)
-		fbc_ctl2 |= FBC_CTL_CPU_FENCE;
+		fbc_ctl2 |= FBC_CTL_CPU_FENCE_EN;
 
 	return fbc_ctl2;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d937958e7a6b..3463853e4a6d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3309,34 +3309,44 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define FBC_CFB_BASE		_MMIO(0x3200) /* 4k page aligned */
 #define FBC_LL_BASE		_MMIO(0x3204) /* 4k page aligned */
 #define FBC_CONTROL		_MMIO(0x3208)
-#define   FBC_CTL_EN		REG_BIT(31)
-#define   FBC_CTL_PERIODIC	REG_BIT(30)
-#define   FBC_CTL_INTERVAL_MASK	REG_GENMASK(29, 16)
-#define   FBC_CTL_INTERVAL(x)	REG_FIELD_PREP(FBC_CTL_INTERVAL_MASK, (x))
-#define   FBC_CTL_STOP_ON_MOD	REG_BIT(15)
-#define   FBC_CTL_UNCOMPRESSIBLE REG_BIT(14) /* i915+ */
-#define   FBC_CTL_C3_IDLE	REG_BIT(13) /* i945gm */
-#define   FBC_CTL_STRIDE_MASK	REG_GENMASK(12, 5)
-#define   FBC_CTL_STRIDE(x)	REG_FIELD_PREP(FBC_CTL_STRIDE_MASK, (x))
-#define   FBC_CTL_FENCENO_MASK	REG_GENMASK(3, 0)
-#define   FBC_CTL_FENCENO(x)	REG_FIELD_PREP(FBC_CTL_FENCENO_MASK, (x))
+#define   FBC_CTL_EN			REG_BIT(31)
+#define   FBC_CTL_PERIODIC		REG_BIT(30)
+#define   FBC_CTL_INTERVAL_MASK		REG_GENMASK(29, 16)
+#define   FBC_CTL_INTERVAL(x)		REG_FIELD_PREP(FBC_CTL_INTERVAL_MASK, (x))
+#define   FBC_CTL_STOP_ON_MOD		REG_BIT(15)
+#define   FBC_CTL_UNCOMPRESSIBLE	REG_BIT(14) /* i915+ */
+#define   FBC_CTL_C3_IDLE		REG_BIT(13) /* i945gm only */
+#define   FBC_CTL_STRIDE_MASK		REG_GENMASK(12, 5)
+#define   FBC_CTL_STRIDE(x)		REG_FIELD_PREP(FBC_CTL_STRIDE_MASK, (x))
+#define   FBC_CTL_FENCENO_MASK		REG_GENMASK(3, 0)
+#define   FBC_CTL_FENCENO(x)		REG_FIELD_PREP(FBC_CTL_FENCENO_MASK, (x))
 #define FBC_COMMAND		_MMIO(0x320c)
-#define   FBC_CMD_COMPRESS	(1 << 0)
+#define   FBC_CMD_COMPRESS		REG_BIT(0)
 #define FBC_STATUS		_MMIO(0x3210)
-#define   FBC_STAT_COMPRESSING	(1 << 31)
-#define   FBC_STAT_COMPRESSED	(1 << 30)
-#define   FBC_STAT_MODIFIED	(1 << 29)
-#define   FBC_STAT_CURRENT_LINE_SHIFT	(0)
-#define FBC_CONTROL2		_MMIO(0x3214)
-#define   FBC_CTL_FENCE_DBL	(0 << 4)
-#define   FBC_CTL_IDLE_IMM	(0 << 2)
-#define   FBC_CTL_IDLE_FULL	(1 << 2)
-#define   FBC_CTL_IDLE_LINE	(2 << 2)
-#define   FBC_CTL_IDLE_DEBUG	(3 << 2)
-#define   FBC_CTL_CPU_FENCE	(1 << 1)
-#define   FBC_CTL_PLANE(plane)	((plane) << 0)
-#define FBC_FENCE_OFF		_MMIO(0x3218) /* BSpec typo has 321Bh */
-#define FBC_TAG(i)		_MMIO(0x3300 + (i) * 4)
+#define   FBC_STAT_COMPRESSING		REG_BIT(31)
+#define   FBC_STAT_COMPRESSED		REG_BIT(30)
+#define   FBC_STAT_MODIFIED		REG_BIT(29)
+#define   FBC_STAT_CURRENT_LINE_MASK	REG_GENMASK(10, 0)
+#define FBC_CONTROL2		_MMIO(0x3214) /* i965gm only */
+#define   FBC_CTL_FENCE_DBL		REG_BIT(4)
+#define   FBC_CTL_IDLE_MASK		REG_GENMASK(3, 2)
+#define   FBC_CTL_IDLE_IMM		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 0)
+#define   FBC_CTL_IDLE_FULL		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 1)
+#define   FBC_CTL_IDLE_LINE		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 2)
+#define   FBC_CTL_IDLE_DEBUG		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 3)
+#define   FBC_CTL_CPU_FENCE_EN		REG_BIT(1)
+#define   FBC_CTL_PLANE_MASK		REG_GENMASK(1, 0)
+#define   FBC_CTL_PLANE(i9xx_plane)	REG_FIELD_PREP(FBC_CTL_PLANE_MASK, (i9xx_plane))
+#define FBC_FENCE_OFF		_MMIO(0x3218)  /* i965gm only, BSpec typo has 321Bh */
+#define FBC_MOD_NUM		_MMIO(0x3220)  /* i965gm only */
+#define   FBC_MOD_NUM_MASK		REG_GENMASK(31, 1)
+#define   FBC_MOD_NUM_VALID		REG_BIT(0)
+#define FBC_TAG(i)		_MMIO(0x3300 + (i) * 4) /* 49 reisters */
+#define   FBC_TAG_MASK			REG_GENMASK(1, 0) /* 16 tags per register */
+#define   FBC_TAG_MODIFIED		REG_FIELD_PREP(FBC_TAG_MASK, 0)
+#define   FBC_TAG_UNCOMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 1)
+#define   FBC_TAG_UNCOMPRESSIBLE	REG_FIELD_PREP(FBC_TAG_MASK, 2)
+#define   FBC_TAG_COMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 3)
 
 #define FBC_LL_SIZE		(1536)
 
-- 
2.32.0

