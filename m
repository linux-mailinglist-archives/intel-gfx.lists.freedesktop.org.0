Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8B71C49D3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:52:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6156E4C7;
	Mon,  4 May 2020 22:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9426E4BA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:42 +0000 (UTC)
IronPort-SDR: DGYcgA3eMBlSQCvE7/33QIWiiX3+kSwP2diJj66zmp6ke9hBP4wgP6FjGvQqhkFe8LO4prw51B
 AZwLZVq0rrcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:42 -0700
IronPort-SDR: unjJclNdemce8gT/YXq8hvcQL6i0Yt8rekjIzIA5QztkZ0n8Jdtsl0vFE5uUwvcED7X6sGmIW9
 eGx+fzr1QF5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646725"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:14 -0700
Message-Id: <20200504225227.464666-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/22] drm/i915/rkl: Program BW_BUDDY0
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
index 71691919d101..a83e1bc0e3a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5249,7 +5249,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 	enum intel_dram_type type = dev_priv->dram_info.type;
 	u8 num_channels = dev_priv->dram_info.num_channels;
 	const struct buddy_page_mask *table;
-	int i;
+	int config, min_buddy, max_buddy, i;
 
 	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
 		/* Wa_1409767108: tgl */
@@ -5257,29 +5257,35 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
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
index 59c1d527cf13..2266f9fc2d79 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7832,13 +7832,19 @@ enum {
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
