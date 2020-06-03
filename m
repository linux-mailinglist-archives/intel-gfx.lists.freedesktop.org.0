Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19CE1ED7E9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 23:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F396289E69;
	Wed,  3 Jun 2020 21:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB8289E69
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 21:15:43 +0000 (UTC)
IronPort-SDR: x/az2ALl9TpQxo4g/LQSJfIIuSt+phnMzshLsYCVZJ+I0aMRBzC/lGiDzWbEMrulHY8D84pVQk
 JVg6c336jZQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:15:43 -0700
IronPort-SDR: Wez25PyUJQFzh5MIs+1RWxHl8P0Fpx90X2ojAaIpQ8L1hikGQaNoemhO0wnOQGe8SmF4iOqcwd
 0NjzufiuXMoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="258715076"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 14:15:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 14:15:16 -0700
Message-Id: <20200603211529.3005059-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/15] drm/i915/rkl: Program BW_BUDDY0
 registers instead of BW_BUDDY1/2
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

RKL uses the same BW_BUDDY programming table as TGL, but programs the
values into a single set BUDDY0 set of registers rather than the
BUDDY1/BUDDY2 sets used by TGL.

Bspec: 49218
Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 44 +++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h               | 14 ++++--
 2 files changed, 35 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 72312b67b57a..2c1ce50b572b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5254,7 +5254,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 	enum intel_dram_type type = dev_priv->dram_info.type;
 	u8 num_channels = dev_priv->dram_info.num_channels;
 	const struct buddy_page_mask *table;
-	int i;
+	int config, min_buddy, max_buddy, i;
 
 	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
 		/* Wa_1409767108: tgl */
@@ -5262,29 +5262,35 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 	else
 		table = tgl_buddy_page_masks;
 
-	for (i = 0; table[i].page_mask != 0; i++)
-		if (table[i].num_channels == num_channels &&
-		    table[i].type == type)
+	if (IS_ROCKETLAKE(dev_priv)) {
+		min_buddy = max_buddy = 0;
+	} else {
+		min_buddy = 1;
+		max_buddy = 2;
+	}
+
+	for (config = 0; table[config].page_mask != 0; config++)
+		if (table[config].num_channels == num_channels &&
+		    table[config].type == type)
 			break;
 
-	if (table[i].page_mask == 0) {
+	if (table[config].page_mask == 0) {
 		drm_dbg(&dev_priv->drm,
 			"Unknown memory configuration; disabling address buddy logic.\n");
-		intel_de_write(dev_priv, BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
-		intel_de_write(dev_priv, BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
+		for (i = min_buddy; i <= max_buddy; i++)
+			intel_de_write(dev_priv, BW_BUDDY_CTL(i),
+				       BW_BUDDY_DISABLE);
 	} else {
-		intel_de_write(dev_priv, BW_BUDDY1_PAGE_MASK,
-			       table[i].page_mask);
-		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
-			       table[i].page_mask);
-
-		/* Wa_22010178259:tgl */
-		intel_de_rmw(dev_priv, BW_BUDDY1_CTL,
-			     BW_BUDDY_TLB_REQ_TIMER_MASK,
-			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
-		intel_de_rmw(dev_priv, BW_BUDDY2_CTL,
-			     BW_BUDDY_TLB_REQ_TIMER_MASK,
-			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
+		for (i = min_buddy; i <= max_buddy; i++) {
+			intel_de_write(dev_priv, BW_BUDDY_PAGE_MASK(i),
+				       table[config].page_mask);
+
+			/* Wa_22010178259:tgl,rkl */
+			intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
+				     BW_BUDDY_TLB_REQ_TIMER_MASK,
+				     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK,
+						    0x8));
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 578cfe11cbb9..3e79cefc510a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7837,13 +7837,19 @@ enum {
 #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
 #define  WAIT_FOR_PCH_FLR_ACK		(1 << 0)
 
-#define BW_BUDDY1_CTL			_MMIO(0x45140)
-#define BW_BUDDY2_CTL			_MMIO(0x45150)
+#define _BW_BUDDY0_CTL			0x45130
+#define _BW_BUDDY1_CTL			0x45140
+#define BW_BUDDY_CTL(x)			_MMIO(_PICK_EVEN(x, \
+							 _BW_BUDDY0_CTL, \
+							 _BW_BUDDY1_CTL))
 #define   BW_BUDDY_DISABLE		REG_BIT(31)
 #define   BW_BUDDY_TLB_REQ_TIMER_MASK	REG_GENMASK(21, 16)
 
-#define BW_BUDDY1_PAGE_MASK		_MMIO(0x45144)
-#define BW_BUDDY2_PAGE_MASK		_MMIO(0x45154)
+#define _BW_BUDDY0_PAGE_MASK		0x45134
+#define _BW_BUDDY1_PAGE_MASK		0x45144
+#define BW_BUDDY_PAGE_MASK(x)		_MMIO(_PICK_EVEN(x, \
+							 _BW_BUDDY0_PAGE_MASK, \
+							 _BW_BUDDY1_PAGE_MASK))
 
 #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
 #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
