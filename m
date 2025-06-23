Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4ACAE3E35
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455B410E36C;
	Mon, 23 Jun 2025 11:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="as/DQV4m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5548A10E36B;
 Mon, 23 Jun 2025 11:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679051; x=1782215051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7E/Vyi/iqE3tYgkUb9U2XR6hCeV4X9EIJ1v5URzb8AU=;
 b=as/DQV4mkMa8HfCHIciaXWpwf8xIXI3CrrPteAXpsmgLQ/DzCtp4+sXC
 112IJKhyi6dqw/fV0mZATVMRNXwMWseyItjE5aRtdhxdF+i1IHoCCAff5
 0m7xED8YdhBsuI0Xm/Tv3ez2M6yHn+R+j5AxZe/pT1eybkn4fnMLscR+y
 Imv6TLer5QfGfYzGdVjeiIMX4wJXZjsfU3hlKGrj5CuqF606hzYXWOTIG
 3j5PAjCwbpvwuf7a1F2gGYTIkdQUYnfNANxx/LVRsSumz/DeKgv4BOAk3
 EcX8z91XAcaRlwcTL9VozZ3SvXWx3GQb66REW3uSS8QK7Ji4K9SYXqExk Q==;
X-CSE-ConnectionGUID: 3C+WhRlGTVWapVFUcWkqXg==
X-CSE-MsgGUID: sce6OJiMQrOyC6u+IvFksQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52969512"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="52969512"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:11 -0700
X-CSE-ConnectionGUID: 4gNqE4bkQUKSlEBLFIDu5g==
X-CSE-MsgGUID: LHS8f1HiSOG4JEMiULg6XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152093853"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 3/6] drm/xe/pcode: add struct drm_device based interface
Date: Mon, 23 Jun 2025 14:43:46 +0300
Message-Id: <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750678991.git.jani.nikula@intel.com>
References: <cover.1750678991.git.jani.nikula@intel.com>
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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

