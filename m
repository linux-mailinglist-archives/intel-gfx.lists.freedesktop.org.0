Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0389827B42
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03FCC10E341;
	Mon,  8 Jan 2024 23:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580D10E335
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c7+s0godtRrNIZmPeIb1tUPNPqQElZ2p5Wwipux6CnM=;
 b=RFdM6ukCJxA38FclwKvm00UwhuCym2sekovQeIG6HM+kCM9Bc5w/5rSS
 cPqbfW3JBxUnTKLneDtYGWA7c6l8Y6DQR8XQbXls+JOInjULgG2XkbW6T
 ENW22gclKDBMsgLbfV0cbKZiKs+CWFEWGMkawdvy03mozaIJPykqM947D
 rbLI3l+nUkyjhL94j8/H1cjbYTmZAVl0I5ywlHDUXuVG8kukMPAnbjGpq
 W47o6lDnjN/qBfvEg3I6jJro8/WjeXqMgJ18xD3q0VZ3WLcuwjjEli4Xa
 dzgMvKaMqnFSHTm+MbksF+bKcrfTFXYlV128eifzIfrB1vTYehS7C2npU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514132"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514132"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647115"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647115"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 14/15] drm/i915: Kill reduntant vbt_firmware from intel_vbt
Date: Mon,  8 Jan 2024 15:05:16 -0800
Message-Id: <20240108230517.1497504-15-radhakrishna.sripada@intel.com>
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

vbt_firmware was used to cache the vbt read from firmware. With
introduction of intel_vbt, vbt field is used to cache the firmware read
from different sources making vbt_firmware field redundant. Kill this
field to simplify intel_vbt structure.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         | 9 +++------
 drivers/gpu/drm/i915/display/intel_display_core.h | 1 -
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1b5cc3416d77..135a2d5d50b8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2968,11 +2968,10 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv,
 	}
 
 	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
-		vbt->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
-		if (vbt->vbt_firmware) {
+		vbt->vbt = kmemdup(fw->data, fw->size, GFP_KERNEL);
+		if (vbt->vbt) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Found valid VBT firmware \"%s\"\n", name);
-			vbt->vbt = vbt->vbt_firmware;
 			vbt->vbt_size = fw->size;
 			vbt->type = I915_VBT_FIRMWARE;
 			ret = 0;
@@ -3273,12 +3272,10 @@ void intel_bios_driver_remove(struct drm_i915_private *i915)
 	switch (vbt->type) {
 	case I915_VBT_SPI:
 	case I915_VBT_OPROM:
+	case I915_VBT_FIRMWARE:
 		kfree(vbt->vbt);
 		vbt->type = I915_VBT_NONE;
 		break;
-	case I915_VBT_FIRMWARE:
-		kfree(vbt->vbt_firmware);
-		fallthrough;
 	case I915_VBT_OPREGION:
 		vbt->vbt = NULL;
 		vbt->type = I915_VBT_NONE;
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 4807edc88f81..cdc6e30ba6a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -233,7 +233,6 @@ struct intel_vbt_data {
 };
 
 struct intel_vbt {
-	void *vbt_firmware;
 	const void *vbt;
 	u32 vbt_size;
 	enum {
-- 
2.34.1

