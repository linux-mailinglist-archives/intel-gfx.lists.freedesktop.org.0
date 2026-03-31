Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHu5FOeyy2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A0368F1A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 13:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CAE10EAC4;
	Tue, 31 Mar 2026 11:41:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6zgZbIh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D9EF10EA94;
 Tue, 31 Mar 2026 11:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774957284; x=1806493284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oOzKzutH98YBmprkq+/u0O1cGJTjB5Dk7oMqFrsrylE=;
 b=D6zgZbIhUvWukDhKqZqFHX+SnMjTiwpct8jy2rLyBuFdpPESW20C6QrY
 VNRW10iQsSxk1X5SRD1hI6XGX8Ivd7GNHmj/I1pW9xFZwb+hrvMv0xq4Q
 emJdD+PoN191XQNwVPZFTwtAgFe1seSchoSPDMfp48m9ZGBLI9QXfxMRD
 e7xE1BfVE8DyUbDwT8P0Q1bVhC23OBNWoIMBfSsO8XtbhOLC2tovuvhJO
 HJOSX7b7CikapXhqDbXANEwirj6RAS6z2h0nE/kJLtajqcdfGz+ZwptC5
 i/RT3DEVfnG1Xs+2GdvZux2y8Fa5ScZHU4axlzdLAQbKOR/GkrnOYlMHf w==;
X-CSE-ConnectionGUID: Ju0bsmflR/qLo35dhedLIA==
X-CSE-MsgGUID: 9P4eUjAhTwGoCjVurDjWdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75854127"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75854127"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:24 -0700
X-CSE-ConnectionGUID: 7zJ+Gn9FRr6FpUImsSoGmA==
X-CSE-MsgGUID: 7U9kj+91Q8iK3qtcrwuOFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231167674"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 04:41:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915: move VLV IOSF sideband to display parent
 interface
Date: Tue, 31 Mar 2026 14:40:57 +0300
Message-ID: <15dfc67b58f5b5b381be0f9bc66d60b43bebfecf.1774957233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774957233.git.jani.nikula@intel.com>
References: <cover.1774957233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 006A0368F1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove another direct dependency from display to i915 core by moving the
VLV IOSF sideband calls to the display parent interface. Xe doesn't need
this, so it'll remain optional and NULL.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 16 +++---
 drivers/gpu/drm/i915/display/intel_parent.c  | 34 ++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h  |  7 +++
 drivers/gpu/drm/i915/display/vlv_sideband.c  | 55 ++++++++++----------
 drivers/gpu/drm/i915/i915_driver.c           |  1 +
 drivers/gpu/drm/i915/vlv_iosf_sb.c           |  8 +++
 drivers/gpu/drm/i915/vlv_iosf_sb.h           |  2 +
 include/drm/intel/display_parent_interface.h | 11 ++++
 8 files changed, 99 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8e0424a2c16f..4a663dddf896 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -691,10 +691,10 @@ static void vlv_set_cdclk(struct intel_display *display,
 	 */
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 
-	vlv_iosf_sb_get(display->drm,
-			BIT(VLV_IOSF_SB_CCK) |
-			BIT(VLV_IOSF_SB_BUNIT) |
-			BIT(VLV_IOSF_SB_PUNIT));
+	intel_parent_vlv_iosf_get(display,
+				  BIT(VLV_IOSF_SB_CCK) |
+				  BIT(VLV_IOSF_SB_BUNIT) |
+				  BIT(VLV_IOSF_SB_PUNIT));
 
 	val = vlv_punit_read(display, PUNIT_REG_DSPSSPM);
 	val &= ~DSPFREQGUAR_MASK;
@@ -740,10 +740,10 @@ static void vlv_set_cdclk(struct intel_display *display,
 		val |= 3000 / 250; /* 3.0 usec */
 	vlv_bunit_write(display, BUNIT_REG_BISOC, val);
 
-	vlv_iosf_sb_put(display->drm,
-			BIT(VLV_IOSF_SB_CCK) |
-			BIT(VLV_IOSF_SB_BUNIT) |
-			BIT(VLV_IOSF_SB_PUNIT));
+	intel_parent_vlv_iosf_put(display,
+				  BIT(VLV_IOSF_SB_CCK) |
+				  BIT(VLV_IOSF_SB_BUNIT) |
+				  BIT(VLV_IOSF_SB_PUNIT));
 
 	intel_update_cdclk(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 2e3bad2b3e6b..4e01423a0392 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -22,6 +22,7 @@
 
 #include "intel_display_core.h"
 #include "intel_parent.h"
+#include "vlv_iosf_sb.h"
 
 /* dpt */
 struct intel_dpt *intel_parent_dpt_create(struct intel_display *display,
@@ -338,6 +339,39 @@ void intel_parent_stolen_node_free(struct intel_display *display, const struct i
 	display->parent->stolen->node_free(node);
 }
 
+/* vlv iosf */
+void intel_parent_vlv_iosf_get(struct intel_display *display, unsigned long unit_mask)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->vlv_iosf))
+		return;
+
+	display->parent->vlv_iosf->get(display->drm, unit_mask);
+}
+
+void intel_parent_vlv_iosf_put(struct intel_display *display, unsigned long unit_mask)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->vlv_iosf))
+		return;
+
+	display->parent->vlv_iosf->put(display->drm, unit_mask);
+}
+
+u32 intel_parent_vlv_iosf_read(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->vlv_iosf))
+		return 0;
+
+	return display->parent->vlv_iosf->read(display->drm, unit, addr);
+}
+
+int intel_parent_vlv_iosf_write(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr, u32 val)
+{
+	if (drm_WARN_ON_ONCE(display->drm, !display->parent->vlv_iosf))
+		return -EINVAL;
+
+	return display->parent->vlv_iosf->write(display->drm, unit, addr, val);
+}
+
 /* vma */
 int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 2013e5ed5aa9..1e89d24163cc 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 
+enum vlv_iosf_sb_unit;
 struct dma_fence;
 struct drm_file;
 struct drm_gem_object;
@@ -109,6 +110,12 @@ u64 intel_parent_stolen_node_size(struct intel_display *display, const struct in
 struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_display *display);
 void intel_parent_stolen_node_free(struct intel_display *display, const struct intel_stolen_node *node);
 
+/* vlv iosf */
+void intel_parent_vlv_iosf_get(struct intel_display *display, unsigned long unit_mask);
+void intel_parent_vlv_iosf_put(struct intel_display *display, unsigned long unit_mask);
+u32 intel_parent_vlv_iosf_read(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr);
+int intel_parent_vlv_iosf_write(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
+
 /* vma */
 int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma);
 
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/drm/i915/display/vlv_sideband.c
index a9c812da3c91..068f58bd9a2b 100644
--- a/drivers/gpu/drm/i915/display/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
@@ -6,71 +6,72 @@
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
+#include "intel_parent.h"
 #include "vlv_sideband.h"
 
 void vlv_bunit_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_BUNIT));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_BUNIT));
 }
 
 u32 vlv_bunit_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_BUNIT, reg);
+	return intel_parent_vlv_iosf_read(display, VLV_IOSF_SB_BUNIT, reg);
 }
 
 void vlv_bunit_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_BUNIT, reg, val);
+	intel_parent_vlv_iosf_write(display, VLV_IOSF_SB_BUNIT, reg, val);
 }
 
 void vlv_bunit_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_BUNIT));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_BUNIT));
 }
 
 void vlv_cck_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_CCK));
 }
 
 u32 vlv_cck_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_CCK, reg);
+	return intel_parent_vlv_iosf_read(display, VLV_IOSF_SB_CCK, reg);
 }
 
 void vlv_cck_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_CCK, reg, val);
+	intel_parent_vlv_iosf_write(display, VLV_IOSF_SB_CCK, reg, val);
 }
 
 void vlv_cck_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_CCK));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_CCK));
 }
 
 void vlv_ccu_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCU));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_CCU));
 }
 
 u32 vlv_ccu_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_CCU, reg);
+	return intel_parent_vlv_iosf_read(display, VLV_IOSF_SB_CCU, reg);
 }
 
 void vlv_ccu_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_CCU, reg, val);
+	intel_parent_vlv_iosf_write(display, VLV_IOSF_SB_CCU, reg, val);
 }
 
 void vlv_ccu_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_CCU));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_CCU));
 }
 
 void vlv_dpio_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
 static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display *display,
@@ -91,7 +92,7 @@ u32 vlv_dpio_read(struct intel_display *display, enum dpio_phy phy, int reg)
 	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(display, phy);
 	u32 val;
 
-	val = vlv_iosf_sb_read(display->drm, unit, reg);
+	val = intel_parent_vlv_iosf_read(display, unit, reg);
 
 	/*
 	 * FIXME: There might be some registers where all 1's is a valid value,
@@ -109,65 +110,65 @@ void vlv_dpio_write(struct intel_display *display,
 {
 	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(display, phy);
 
-	vlv_iosf_sb_write(display->drm, unit, reg, val);
+	intel_parent_vlv_iosf_write(display, unit, reg, val);
 }
 
 void vlv_dpio_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
 }
 
 void vlv_flisdsi_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_FLISDSI));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_FLISDSI));
 }
 
 u32 vlv_flisdsi_read(struct intel_display *display, u32 reg)
 {
-	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_FLISDSI, reg);
+	return intel_parent_vlv_iosf_read(display, VLV_IOSF_SB_FLISDSI, reg);
 }
 
 void vlv_flisdsi_write(struct intel_display *display, u32 reg, u32 val)
 {
-	vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_FLISDSI, reg, val);
+	intel_parent_vlv_iosf_write(display, VLV_IOSF_SB_FLISDSI, reg, val);
 }
 
 void vlv_flisdsi_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_FLISDSI));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_FLISDSI));
 }
 
 void vlv_nc_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_NC));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_NC));
 }
 
 u32 vlv_nc_read(struct intel_display *display, u8 addr)
 {
-	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_NC, addr);
+	return intel_parent_vlv_iosf_read(display, VLV_IOSF_SB_NC, addr);
 }
 
 void vlv_nc_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_NC));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_NC));
 }
 
 void vlv_punit_get(struct intel_display *display)
 {
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_PUNIT));
+	intel_parent_vlv_iosf_get(display, BIT(VLV_IOSF_SB_PUNIT));
 }
 
 u32 vlv_punit_read(struct intel_display *display, u32 addr)
 {
-	return vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_PUNIT, addr);
+	return intel_parent_vlv_iosf_read(display, VLV_IOSF_SB_PUNIT, addr);
 }
 
 int vlv_punit_write(struct intel_display *display, u32 addr, u32 val)
 {
-	return vlv_iosf_sb_write(display->drm, VLV_IOSF_SB_PUNIT, addr, val);
+	return intel_parent_vlv_iosf_write(display, VLV_IOSF_SB_PUNIT, addr, val);
 }
 
 void vlv_punit_put(struct intel_display *display)
 {
-	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_PUNIT));
+	intel_parent_vlv_iosf_put(display, BIT(VLV_IOSF_SB_PUNIT));
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 385a634c3ed0..c10cab38935a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -780,6 +780,7 @@ static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.rps = &i915_display_rps_interface,
 	.stolen = &i915_display_stolen_interface,
+	.vlv_iosf = &i915_display_vlv_iosf_interface,
 	.vma = &i915_display_vma_interface,
 
 	.fence_priority_display = fence_priority_display,
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index 38a75651b0dc..1f0332b4ad0d 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/display_parent_interface.h>
 
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
@@ -229,3 +230,10 @@ void vlv_iosf_sb_fini(struct drm_i915_private *i915)
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		mutex_destroy(&i915->vlv_iosf_sb.lock);
 }
+
+const struct intel_display_vlv_iosf_interface i915_display_vlv_iosf_interface = {
+	.get = vlv_iosf_sb_get,
+	.put = vlv_iosf_sb_put,
+	.read = vlv_iosf_sb_read,
+	.write = vlv_iosf_sb_write,
+};
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index e2fea29a30ea..e4002d5b5a2e 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -34,4 +34,6 @@ void vlv_iosf_sb_put(struct drm_device *drm, unsigned long unit_mask);
 u32 vlv_iosf_sb_read(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr);
 int vlv_iosf_sb_write(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
 
+extern const struct intel_display_vlv_iosf_interface i915_display_vlv_iosf_interface;
+
 #endif /* _VLV_IOSF_SB_H_ */
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 97ec94a2e749..c0d18d5577f3 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 
+enum vlv_iosf_sb_unit;
 struct dma_fence;
 struct drm_crtc;
 struct drm_device;
@@ -176,6 +177,13 @@ struct intel_display_stolen_interface {
 	void (*node_free)(const struct intel_stolen_node *node);
 };
 
+struct intel_display_vlv_iosf_interface {
+	void (*get)(struct drm_device *drm, unsigned long unit_mask);
+	void (*put)(struct drm_device *drm, unsigned long unit_mask);
+	u32 (*read)(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr);
+	int (*write)(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
+};
+
 struct intel_display_vma_interface {
 	int (*fence_id)(const struct i915_vma *vma);
 };
@@ -235,6 +243,9 @@ struct intel_display_parent_interface {
 	/** @stolen: Stolen memory. */
 	const struct intel_display_stolen_interface *stolen;
 
+	/** @vlv_iosf: VLV IOSF sideband. Optional. */
+	const struct intel_display_vlv_iosf_interface *vlv_iosf;
+
 	/** @vma: VMA interface. Optional. */
 	const struct intel_display_vma_interface *vma;
 
-- 
2.47.3

