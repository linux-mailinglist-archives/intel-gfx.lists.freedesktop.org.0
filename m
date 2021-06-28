Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498F23B6B91
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 01:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8536E5AE;
	Mon, 28 Jun 2021 23:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585B86E5AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 23:51:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="271911839"
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="271911839"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 16:51:07 -0700
X-IronPort-AV: E=Sophos;i="5.83,307,1616482800"; d="scan'208";a="446801011"
Received: from avgutkin-mobl.amr.corp.intel.com (HELO
 mtolakan-mobl1.intel.com) ([10.212.176.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 16:51:06 -0700
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Jun 2021 16:50:54 -0700
Message-Id: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement Wa_14013120569
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

PCH display HPD IRQ is not detected with default filter value.
So, PP_CONTROL is manually reprogrammed.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c     | 16 ++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 285380079aab..e44323cc76f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -6385,8 +6385,16 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 
 void intel_display_power_suspend_late(struct drm_i915_private *i915)
 {
+    struct drm_i915_private *dev_priv = i915;
+    u32 val;
 	if (DISPLAY_VER(i915) >= 11 || IS_GEMINILAKE(i915) ||
 	    IS_BROXTON(i915)) {
+		val = intel_de_read(dev_priv, PP_CONTROL(0));
+		/* Wa_14013120569:tgl */
+		if (IS_TIGERLAKE(i915)) {
+			val &= ~PANEL_POWER_ON;
+			intel_de_write(dev_priv, PP_CONTROL(0), val);
+	}
 		bxt_enable_dc9(i915);
 		/* Tweaked Wa_14010685332:icp,jsp,mcc */
 		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC)
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 47c85ac97c87..8e3f84100daf 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -26,6 +26,7 @@
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_hotplug.h"
+#include "intel_de.h"
 
 /**
  * DOC: Hotplug
@@ -266,7 +267,9 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 		      struct intel_connector *connector)
 {
 	struct drm_device *dev = connector->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum drm_connector_status old_status;
+	u32 val;
 	u64 old_epoch_counter;
 	bool ret = false;
 
@@ -288,6 +291,19 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 			      drm_get_connector_status_name(connector->base.status),
 			      old_epoch_counter,
 			      connector->base.epoch_counter);
+
+		/* Wa_14013120569:tgl */
+		if (IS_TIGERLAKE(dev_priv)) {
+			val = intel_de_read(dev_priv, PP_CONTROL(0));
+			if (connector->base.status == connector_status_connected) {
+				val |= PANEL_POWER_ON;
+				intel_de_write(dev_priv, PP_CONTROL(0), val);
+			}
+			else if (connector->base.status == connector_status_disconnected) {
+				val &= ~PANEL_POWER_ON;
+				intel_de_write(dev_priv, PP_CONTROL(0), val);
+			}
+		}
 		return INTEL_HOTPLUG_CHANGED;
 	}
 	return INTEL_HOTPLUG_UNCHANGED;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
