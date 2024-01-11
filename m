Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6099382B3EE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:21:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB75810E930;
	Thu, 11 Jan 2024 17:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF5E10E930
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993704; x=1736529704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0lLTJdkHoqslorPaglC7RccK51qfmz++oiRFjKHX6jA=;
 b=jBCaZgS+mqlGQGKc1Ol9psR1ylnXjdkT8YTtyGnxL6/t8JPteHxu/Co3
 Z7ddQFWh/wKtJypesD8ykpuhznYnA5gFZN6TJcD2YDbF/5JqZzac/e0EQ
 SqGRrnt9rzRPbvVJ5fHS5Rd6uAWmcfaTcBQZRiHoNI3a2Jr6H4SxSC4Wx
 86O60qCYiNxzSEftFlqaHoVvl9OBxw1pvxyFGbbzJ7s3jHWMoyUq7Albk
 hHWiKXjeLBWbsvKFVs2/PKAvTeDtntYe7adPZAT+1MiGL4g/Rd6LjOgEj
 68mbEVZ2odHeORwhEfz1fjrz1wfEHTcTKUNDP51CAivmM4cXTqfEZX3K7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="6282268"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
   d="scan'208";a="6282268"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="906020584"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="906020584"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/opregion: abstract getting the opregion VBT
Date: Thu, 11 Jan 2024 19:21:16 +0200
Message-Id: <8205b8fa724f98bbf1f76c59e661909d874e843e.1704992868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704992868.git.jani.nikula@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a function to get the opregion VBT instead of accessing the opregion
structures directly.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 14 +++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  8 ++++++++
 3 files changed, 30 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cf8e6f7bd490..5f04e495fd27 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3073,7 +3073,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
  */
 void intel_bios_init(struct drm_i915_private *i915)
 {
-	const struct vbt_header *vbt = i915->display.opregion.vbt;
+	const struct vbt_header *vbt;
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
@@ -3088,6 +3088,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
+	vbt = intel_opregion_get_vbt(i915, NULL);
+
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
 	 * PCI mapping
@@ -3305,7 +3307,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 		 * additional data.  Trust that if the VBT was written into
 		 * the OpRegion then they have validated the LVDS's existence.
 		 */
-		if (i915->display.opregion.vbt)
+		if (intel_opregion_get_vbt(i915, NULL))
 			return true;
 	}
 
@@ -3660,14 +3662,16 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
 static int intel_bios_vbt_show(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = m->private;
-	struct intel_opregion *opregion = &i915->display.opregion;
+	const void *vbt;
+	size_t vbt_size;
 
 	/*
 	 * FIXME: VBT might originate from other places than opregion, and then
 	 * this would be incorrect.
 	 */
-	if (opregion->vbt)
-		seq_write(m, opregion->vbt, opregion->vbt_size);
+	vbt = intel_opregion_get_vbt(i915, &vbt_size);
+	if (vbt)
+		seq_write(m, vbt, vbt_size);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 26c92ab4ee8a..8b9e820971cb 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1132,6 +1132,19 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
 	return drm_edid;
 }
 
+const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
+{
+	struct intel_opregion *opregion = &i915->display.opregion;
+
+	if (!opregion->vbt)
+		return NULL;
+
+	if (size)
+		*size = opregion->vbt_size;
+
+	return opregion->vbt;
+}
+
 bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 7177f50ab0d3..9efadfb72584 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -77,6 +77,8 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
 const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
 
+const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size);
+
 bool intel_opregion_headless_sku(struct drm_i915_private *i915);
 
 void intel_opregion_debugfs_register(struct drm_i915_private *i915);
@@ -136,6 +138,12 @@ intel_opregion_get_edid(struct intel_connector *connector)
 	return NULL;
 }
 
+static inline const void *
+intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
+{
+	return NULL;
+}
+
 static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 {
 	return false;
-- 
2.39.2

