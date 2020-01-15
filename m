Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01213BCD8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 10:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41B26E8E7;
	Wed, 15 Jan 2020 09:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B406E8E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 09:53:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 01:53:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="273604553"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jan 2020 01:53:15 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 11:50:53 +0200
Message-Id: <20200115095054.10660-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
References: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 4/5] drm/i915: Introduce parameterized
 DBUF_CTL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now start using parameterized DBUF_CTL instead
of hardcoded, this would allow shorter access
functions when reading or storing entire state.

Tried to implement it in a MMIO_PIPE manner, however
DBUF_CTL1 address is higher than DBUF_CTL2, which
implies that we have to now subtract from base
rather than add.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 19 +++----------------
 drivers/gpu/drm/i915/i915_reg.h               | 12 +++++++++---
 drivers/gpu/drm/i915/intel_pm.c               | 19 ++-----------------
 3 files changed, 14 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4503f5fab63d..806392fd97ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4415,22 +4415,9 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
 
 	for (i = 0; i < max_slices; i++) {
-		u8 slice_set = req_slices & BIT(i);
-
-		switch (i) {
-		case DBUF_S1:
-			intel_dbuf_slice_set(dev_priv,
-					     DBUF_CTL_S1,
-					     slice_set);
-			break;
-		case DBUF_S2:
-			intel_dbuf_slice_set(dev_priv,
-					     DBUF_CTL_S2,
-					     slice_set);
-			break;
-		default:
-			MISSING_CASE(i);
-		}
+		intel_dbuf_slice_set(dev_priv,
+				     DBUF_CTL_S(i),
+				     (req_slices & BIT(i)) != 0);
 	}
 
 	dev_priv->enabled_dbuf_slices_mask = req_slices;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6cc55c103f67..34f1cf3597fd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7745,9 +7745,15 @@ enum {
 #define DISP_ARB_CTL2	_MMIO(0x45004)
 #define  DISP_DATA_PARTITION_5_6	(1 << 6)
 #define  DISP_IPC_ENABLE		(1 << 3)
-#define DBUF_CTL	_MMIO(0x45008)
-#define DBUF_CTL_S1	_MMIO(0x45008)
-#define DBUF_CTL_S2	_MMIO(0x44FE8)
+#define DBUF_CTL_ADDR1			0x45008
+#define DBUF_CTL_ADDR2			0x44FE8
+#define DBUF_CTL			_MMIO(DBUF_CTL_ADDR1)
+#define DBUF_CTL_S1			DBUF_CTL
+#define DBUF_CTL_S2			_MMIO(DBUF_CTL_ADDR2)
+/* DBUF_CTL_ADDR2 is less than DBUF_CTL_ADDR1 */
+#define DBUF_CTL_DIST			(DBUF_CTL_ADDR1 - DBUF_CTL_ADDR2)
+#define DBUF_CTL_ADDR(X)		(DBUF_CTL_ADDR1 - (DBUF_CTL_DIST * (X)))
+#define DBUF_CTL_S(X)			(_MMIO(DBUF_CTL_ADDR(X)))
 #define  DBUF_POWER_REQUEST		(1 << 31)
 #define  DBUF_POWER_STATE		(1 << 30)
 #define GEN7_MSG_CTL	_MMIO(0x45010)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 6ba72a6be7cb..e5b82264ca5f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3655,23 +3655,8 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv)
 		return BIT(DBUF_S1);
 
 	for (i = 0; i < max_slices; i++) {
-		u8 slice_bit = BIT(i);
-		bool res;
-
-		switch (i) {
-
-		case DBUF_S1:
-			res = I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE;
-			break;
-		case DBUF_S2:
-			res = I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE;
-			break;
-		default:
-			MISSING_CASE(slice_bit);
-		}
-
-		if (res)
-			enabled_slices_mask |= slice_bit;
+		if (I915_READ(DBUF_CTL_S(i)) & DBUF_POWER_STATE)
+			enabled_slices_mask |= BIT(i);
 	}
 
 	return enabled_slices_mask;
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
