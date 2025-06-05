Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA960ACEDA3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 12:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ECC510E923;
	Thu,  5 Jun 2025 10:29:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKhYkLyu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4A110E803;
 Thu,  5 Jun 2025 10:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749119398; x=1780655398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zu8LOZwVPUH3uCNN1Z4sk1Q5GF+vjbnTk0VcYVOOVIg=;
 b=PKhYkLyuw1+sSR6XFm9zp013fHhPJB8QnpMTY1kvgjHQynKSOrjTdz8Z
 1Rl2dmXinjGSYmWm+b295SgN1jg4l3IWMYwyyx5xdDMQF42hTDa3DqNp7
 m88eUAYHuahAX02r+RSzZO5Dd6RstFj1J9jxV3Vwxtqh3l9QBslW6LOIP
 WUPTBLFkxsMtRPZylCKu6rjAod1OZoAmt0pRlhl0iPERuOqltR0AL51qA
 SLijgjreOOCgHF1tA/mnfAH01ZBdd5cvj3WQPSKLC/wgXt+wUEyD3sUSF
 RCMdAfWBFqMVEHNSB99YWBYarCJCFjJGuzkLUFHEfmCvmdU8BCdGxwZpo w==;
X-CSE-ConnectionGUID: zi3mNamvSO6vdyq/rVy+6A==
X-CSE-MsgGUID: c7uttd7iQcaEcOkR9s7Gsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51378114"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51378114"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:58 -0700
X-CSE-ConnectionGUID: rOIlhgO6S2u/q78MjLM3Cw==
X-CSE-MsgGUID: 5XnZOLaIRsyooMwc+Y/4dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="168639756"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/6] drm/xe/pcode: add struct drm_device based interface
Date: Thu,  5 Jun 2025 13:29:35 +0300
Message-Id: <d121307f4b50473cf0fbba8f8859c72de5f6fceb.1749119274.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749119274.git.jani.nikula@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In preparation for dropping the dependency on struct intel_uncore or
struct xe_tile from display code, add a struct drm_device based
interface to pcode.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_pcode.c | 26 ++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_pcode.h | 12 +++++++++++-
 2 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pcode.c b/drivers/gpu/drm/xe/xe_pcode.c
index 9189117fe825..87323ad0cbbb 100644
--- a/drivers/gpu/drm/xe/xe_pcode.c
+++ b/drivers/gpu/drm/xe/xe_pcode.c
@@ -336,3 +336,29 @@ int xe_pcode_probe_early(struct xe_device *xe)
 	return xe_pcode_ready(xe, false);
 }
 ALLOW_ERROR_INJECTION(xe_pcode_probe_early, ERRNO); /* See xe_pci_probe */
+
+/* Helpers with drm device */
+int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+
+	return xe_pcode_read(tile, mbox, val, val1);
+}
+
+int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+
+	return xe_pcode_write_timeout(tile, mbox, val, timeout_ms);
+}
+
+int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms)
+{
+	struct xe_device *xe = to_xe_device(drm);
+	struct xe_tile *tile = xe_device_get_root_tile(xe);
+
+	return xe_pcode_request(tile, mbox, request, reply_mask, reply, timeout_base_ms);
+}
diff --git a/drivers/gpu/drm/xe/xe_pcode.h b/drivers/gpu/drm/xe/xe_pcode.h
index de38f44f3201..a5584c1c75f9 100644
--- a/drivers/gpu/drm/xe/xe_pcode.h
+++ b/drivers/gpu/drm/xe/xe_pcode.h
@@ -7,8 +7,10 @@
 #define _XE_PCODE_H_
 
 #include <linux/types.h>
-struct xe_tile;
+
+struct drm_device;
 struct xe_device;
+struct xe_tile;
 
 void xe_pcode_init(struct xe_tile *tile);
 int xe_pcode_probe_early(struct xe_device *xe);
@@ -32,4 +34,12 @@ int xe_pcode_request(struct xe_tile *tile, u32 mbox, u32 request,
 	| FIELD_PREP(PCODE_MB_PARAM1, param1)\
 	| FIELD_PREP(PCODE_MB_PARAM2, param2))
 
+/* Helpers with drm device */
+int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
+int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
+#define intel_pcode_write(drm, mbox, val) \
+	intel_pcode_write_timeout((drm), (mbox), (val), 1)
+int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms);
+
 #endif
-- 
2.39.5

