Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C718B59516
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 13:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B9810E6DB;
	Tue, 16 Sep 2025 11:24:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PRANn/OZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CFC10E6DB;
 Tue, 16 Sep 2025 11:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758021881; x=1789557881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3C/faLy91vKsvaCjZ/monszBbKaa+f2c1VahrrMCD2w=;
 b=PRANn/OZdzJ2y+sEkC27gFlI7Pc69UH0t62JE/ZVDqXQCrc/UGL/4g0t
 9BVZ3XEuQ6OxebeoeFcJUna6gUCYR8iWzFSoVON6hK8LuciOiCC+geMRK
 COqKVXelzkrAVlxR7k2dtQyly+l0ltacJhgW1WqBFE8N3dxJ2RRQt2jrA
 MqPLjvkM/6tgpTMrIuqBsXP9GhsoTSpDQzWmLYjra3oGVh3JtefnNKqMt
 h0J5SAcT5nCABI6xh4GF/tzMWRBXVatYFkTKWSC8oXlmmzbvkAhJwrAvi
 Gcz0aAFX8Jy53MdWqNlhix5tzKyJSrYT5PgBNlpTnnpLVlNJoKwsw4wjy Q==;
X-CSE-ConnectionGUID: BMMIzkInQtqrxEuCokMxjg==
X-CSE-MsgGUID: rfcRCM2aQaWSB3NwrxaISg==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="77905928"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="77905928"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:41 -0700
X-CSE-ConnectionGUID: 61D6MeIUTMOqW1M1bcljTw==
X-CSE-MsgGUID: 52SnMKjXS8S8ROwNnn+4aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174521703"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/{i915,xe}/dsb: make struct intel_dsb_buffer opaque
Date: Tue, 16 Sep 2025 14:24:19 +0300
Message-ID: <7c7b4dd8ac05c1b4f19e20340853693e551d1941.1758021803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758021803.git.jani.nikula@intel.com>
References: <cover.1758021803.git.jani.nikula@intel.com>
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

Move the definitions of struct intel_dsb_buffer to the driver specific
files, hiding the implementation details from the shared DSB code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb_buffer.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dsb_buffer.h | 8 +-------
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c      | 6 ++++++
 3 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
index fc1f0e6031ba..50faf3869b6c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -9,6 +9,12 @@
 #include "i915_vma.h"
 #include "intel_dsb_buffer.h"
 
+struct intel_dsb_buffer {
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+	size_t buf_size;
+};
+
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
 	return i915_ggtt_offset(dsb_buf->vma);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
index 2cf639fae47a..d746c872e0c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -9,13 +9,7 @@
 #include <linux/types.h>
 
 struct drm_device;
-struct i915_vma;
-
-struct intel_dsb_buffer {
-	u32 *cmd_buf;
-	struct i915_vma *vma;
-	size_t buf_size;
-};
+struct intel_dsb_buffer;
 
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
 void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index ee7717b1980f..d55858705106 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -9,6 +9,12 @@
 #include "xe_device.h"
 #include "xe_device_types.h"
 
+struct intel_dsb_buffer {
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+	size_t buf_size;
+};
+
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
 {
 	return xe_bo_ggtt_addr(dsb_buf->vma->bo);
-- 
2.47.3

