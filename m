Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8197C827B41
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C4510E33E;
	Mon,  8 Jan 2024 23:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE6C10E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sw6aFjrA9QVlZp5eiez0PbsrRzgn4xjiy52r0KVGdHg=;
 b=bOJHxflVjvzOV1xb9P7wdPqEqItAv3uf0cDW2m6CJzKv26a7ZxtppwKc
 GZOkgAHVxW/t6Oxmwaoi3fqd504NlBL9gooAa5kW4hdQxa7+1yk3eJjpp
 +ILh9aiwNUxgM6xG9KAhEYaJx4E9WGvJdGB2SfolHzKGJrKbTQyCV2YE6
 jIbQ+MWBDAeHs+jIbLgjWw0cgaiKQd95Lvw7Xd9bLN1S0p51v9fIur4Jw
 /rdaQFHsGdPObU/Y9QHu4vEJaoczfF7onxPsfkQ5vBrZNHIzsNBEKnlh8
 eMpKZT29j+jdj5FrFvL7fCGaIUX2zCbliIGcpY0bVUIng5Xl2Alf0bEt4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514124"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514124"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647091"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647091"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 06/15] drm/i915: Classify vbt type based on its residence
Date: Mon,  8 Jan 2024 15:05:08 -0800
Message-Id: <20240108230517.1497504-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
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

Vbt can be read from different sources viz. firmware, opregion,
oprom or spi. This will be useful for us to handle the vbt cleanup
during bios remove phase.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 15 ++++++++++++---
 drivers/gpu/drm/i915/display/intel_display_core.h |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_opregion.c     |  3 +++
 3 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0944802ecbd5..bd46a14a04f5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2996,6 +2996,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 
 	i915->display.vbt.vbt = vbt;
 	i915->display.vbt.vbt_size = vbt_size;
+	i915->display.vbt.type = I915_VBT_SPI;
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
 
 	return (struct vbt_header *)vbt;
@@ -3057,6 +3058,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	i915->display.vbt.vbt = vbt;
 	i915->display.vbt.vbt_size = vbt_size;
+	i915->display.vbt.type = I915_VBT_OPROM;
 	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
 
 	return vbt;
@@ -3082,6 +3084,13 @@ void intel_bios_init(struct drm_i915_private *i915)
 	const struct vbt_header *vbt = i915->display.vbt.vbt;
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
+	const char * const vbt_type[] = {
+		[I915_VBT_NONE] = "None",
+		[I915_VBT_FIRMWARE] = "Firmware",
+		[I915_VBT_OPREGION] = "Opregion",
+		[I915_VBT_OPROM] = "Oprom",
+		[I915_VBT_SPI] = "SPI",
+	};
 
 	INIT_LIST_HEAD(&i915->display.vbt.data.display_devices);
 	INIT_LIST_HEAD(&i915->display.vbt.data.bdb_blocks);
@@ -3114,9 +3123,9 @@ void intel_bios_init(struct drm_i915_private *i915)
 	bdb = get_bdb_header(vbt);
 	i915->display.vbt.data.version = bdb->version;
 
-	drm_dbg_kms(&i915->drm,
-		    "VBT signature \"%.*s\", BDB version %d\n",
-		    (int)sizeof(vbt->signature), vbt->signature, i915->display.vbt.data.version);
+	drm_dbg_kms(&i915->drm, "%s VBT signature \"%.*s\", BDB version %d\n",
+		    vbt_type[i915->display.vbt.type], (int)sizeof(vbt->signature),
+		    vbt->signature, i915->display.vbt.data.version);
 
 	init_bdb_blocks(i915, bdb);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9e134b08aea0..4807edc88f81 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -236,6 +236,14 @@ struct intel_vbt {
 	void *vbt_firmware;
 	const void *vbt;
 	u32 vbt_size;
+	enum {
+		I915_VBT_NONE = 0,
+		I915_VBT_FIRMWARE,
+		I915_VBT_OPREGION,
+		I915_VBT_OPROM,
+		I915_VBT_SPI
+	} type;
+
 	struct intel_vbt_data data;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index cf7312cfd94a..5c4a5ddba01d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -862,6 +862,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 				    "Found valid VBT firmware \"%s\"\n", name);
 			vbt->vbt = vbt->vbt_firmware;
 			vbt->vbt_size = fw->size;
+			vbt->type = I915_VBT_FIRMWARE;
 			ret = 0;
 		} else {
 			ret = -ENOMEM;
@@ -918,6 +919,7 @@ static int intel_load_opregion_vbt(struct drm_i915_private *i915,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
 			vbt->vbt = vbt_data;
 			vbt->vbt_size = vbt_size;
+			vbt->type = I915_VBT_OPREGION;
 			goto out;
 		} else {
 			drm_dbg_kms(&i915->drm,
@@ -943,6 +945,7 @@ static int intel_load_opregion_vbt(struct drm_i915_private *i915,
 			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
 		vbt->vbt = vbt_data;
 		vbt->vbt_size = vbt_size;
+		vbt->type = I915_VBT_OPREGION;
 	} else {
 		drm_dbg_kms(&i915->drm,
 			    "Invalid VBT in ACPI OpRegion (Mailbox #4)\n");
-- 
2.34.1

