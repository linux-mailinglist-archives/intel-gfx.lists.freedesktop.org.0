Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A10827B46
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B82210E343;
	Mon,  8 Jan 2024 23:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8C910E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gjvc2Cb7mmOE2tw/FsFkZy5vBplf1CXqWFMgz8fd1X4=;
 b=MUGtJphR0egifKZUAevkuhorP2aFtuERlYEGkj5ZWdXSz2sv8v+NlTww
 LTFtyfKaemm0opcl7BFFCNOqNQBJZeUMz9okcFqfrn7Q5NiioCCH9M//5
 rovjcI/voY3mEnyJ7xu78xhi3ezT78I7FR+BTEB8jG+kRJrZHqP3jWUi7
 2nsoMDABSU7JdsJFzbhFb32EiEiKw8Z7KDgR2ZRY8pAzb4KfC5Eyk4ZOJ
 9ISKPSJxzh9lhszA2pfSWrZF/bhxPXxZo3lqUNxbG4vOTrVkqUhgV2syq
 IYzTm770HZX5FGpLrSmtAb0atYseejbFldQIgoAlAmrmfrFk5Js7BGOrN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514125"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514125"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647094"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647094"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 07/15] drm/i915: Collate vbt cleanup for different types
Date: Mon,  8 Jan 2024 15:05:09 -0800
Message-Id: <20240108230517.1497504-8-radhakrishna.sripada@intel.com>
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

VBT not read from opregion needs to be freed. Vbt read from
opregion is simply remapped and hence need to point to NULL. While
at it assign the type to NONE VBT type. Free the vbt in other cases.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_opregion.c |  4 ----
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index bd46a14a04f5..ccfc4a4e4c98 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3219,8 +3219,24 @@ void intel_bios_driver_remove(struct drm_i915_private *i915)
 		kfree(entry);
 	}
 
-	/* FIXME: Handle vbt free in opregion case. */
-	kfree(vbt->vbt);
+	switch (vbt->type) {
+	case I915_VBT_SPI:
+	case I915_VBT_OPROM:
+		kfree(vbt->vbt);
+		vbt->type = I915_VBT_NONE;
+		break;
+	case I915_VBT_FIRMWARE:
+		kfree(vbt->vbt_firmware);
+		fallthrough;
+	case I915_VBT_OPREGION:
+		vbt->vbt = NULL;
+		vbt->type = I915_VBT_NONE;
+		break;
+	case I915_VBT_NONE:
+		break;
+	default:
+		MISSING_CASE(vbt->type);
+	}
 }
 
 void intel_bios_fini_panel(struct intel_panel *panel)
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 5c4a5ddba01d..b879e89d0fb6 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1257,7 +1257,6 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 void intel_opregion_cleanup(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
-	struct intel_vbt *vbt = &i915->display.vbt;
 
 	if (!opregion->header)
 		return;
@@ -1268,14 +1267,11 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 		memunmap(opregion->rvda);
 		opregion->rvda = NULL;
 	}
-	kfree(vbt->vbt_firmware);
-	vbt->vbt_firmware = NULL;
 	opregion->header = NULL;
 	opregion->acpi = NULL;
 	opregion->swsci = NULL;
 	opregion->asle = NULL;
 	opregion->asle_ext = NULL;
 	opregion->asls = 0;
-	vbt->vbt = NULL;
 	opregion->lid_state = NULL;
 }
-- 
2.34.1

