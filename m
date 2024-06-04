Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 897198FB494
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 15:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE21510E492;
	Tue,  4 Jun 2024 13:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COztw/90";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4672010E492
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 13:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717509547; x=1749045547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JMDoyoHVlTguZJZJ8R65Tl76IsHFIR3K0XZ6XyO6BjY=;
 b=COztw/90vl07SkJhNsmB3WLJECE3+knkxjT2F3+Q6zHQ2e/n0ZXJkOcg
 G1kWdImcLJTe+FH0+NoaXXfIpXkzem3HbeVVDN4zHNVWzMVyGoZpEL6C4
 oCaSeRgx90gDfbiwP3q3XEJ3ObCyFPRZM6WOxqnQHOp3KRcDgMpFMa2XY
 XkWsAJE/skNGxu+2Xh70FwxHzbGMs4clYQ7T+Lqdv/l+G3BJlR8P9PFxs
 GhAVeLwgZhnhjYfZKQwEnEB2KHGy+45YydQsuRlo1Fc3WtUblXY46XuhV
 Q0yrrhFiwAbaRYCMJk/AeYRpaKDsSlJe7i6FLPB7uVVFUzrB+4egCADU1 Q==;
X-CSE-ConnectionGUID: UQN65SBhRDyfO2VtF5XHng==
X-CSE-MsgGUID: kwJta43zQ+2NoONlHFWu1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17886217"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="17886217"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:59:06 -0700
X-CSE-ConnectionGUID: kX/LK0NvRaSSDHa+S8n8rA==
X-CSE-MsgGUID: uQz4AX2yQS698grFYZvWnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="68401895"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:59:03 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH] drm/i915/display/bmg: Add platform descriptor
Date: Tue,  4 Jun 2024 19:30:21 +0530
Message-Id: <20240604140021.1357502-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
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

Platform descriptor defined and PCI IDs added for Battlemage.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
 include/drm/intel/i915_pciids.h                     | 8 ++++++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b35422da7f6c..dd7dce4b0e7a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1110,6 +1110,10 @@ static const struct platform_desc lnl_desc = {
 	PLATFORM(LUNARLAKE),
 };
 
+static const struct platform_desc bmg_desc = {
+	PLATFORM(BATTLEMAGE),
+};
+
 __diag_pop();
 
 /*
@@ -1178,6 +1182,7 @@ static const struct {
 	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
 	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
 	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
+	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index e1d9947394dc..44cda6c3e4d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -68,6 +68,8 @@ enum intel_display_platform {
 	INTEL_DISPLAY_METEORLAKE,
 	/* Display ver 20 (based on GMD ID) */
 	INTEL_DISPLAY_LUNARLAKE,
+	/* Display ver 14.1 (based on GMD ID) */
+	INTEL_DISPLAY_BATTLEMAGE,
 };
 
 enum intel_display_subplatform {
diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 7ae7ee11ef38..b21374f76df2 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -789,4 +789,12 @@
 	MACRO__(0x64A0, ## __VA_ARGS__), \
 	MACRO__(0x64B0, ## __VA_ARGS__)
 
+/* BMG */
+#define INTEL_BMG_IDS(MACRO__, ...) \
+	MACRO__(0xE202, ## __VA_ARGS__), \
+	MACRO__(0xE20B, ## __VA_ARGS__), \
+	MACRO__(0xE20C, ## __VA_ARGS__), \
+	MACRO__(0xE20D, ## __VA_ARGS__), \
+	MACRO__(0xE212, ## __VA_ARGS__)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

