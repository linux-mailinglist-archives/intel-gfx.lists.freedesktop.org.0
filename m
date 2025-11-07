Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF558C413C8
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B3310EB76;
	Fri,  7 Nov 2025 18:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oB8AMtRP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7A710EB76;
 Fri,  7 Nov 2025 18:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539123; x=1794075123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SsAPXCsM78QsKo0lUxd/26IE5TFDQ50wedwhTjcUbcQ=;
 b=oB8AMtRPl1X835GzcK3XSfbCj6+96IDnWPo4F8yEh+2Ib+IPhptAdUmo
 mmp8MwOZ/vKhz1ZE5wnshrvGSqfsalZLlq86iVW2Z7Fvd/yVQ3VO5Hz+J
 KZXU4TA0IsM4Qk2Qij0c+TN678M1JOaKY7VL9JZUu4IyjZiMRU5pelCuO
 rseOXW/rGYR0SujMx7G5lgB0kgGyG7cpmYravcShLQVyjcM9MvDvXy+/b
 utEOfdj4InTgdsfLF7ehH5EPHRIgBQvDlNGjIjrZAruAsWtdN5gVagqMC
 R5R9vWxPvtwypqPIJWhGEIVoQKR7sjiWRv1FI+jNJel3rfW+6pzyT3cuB g==;
X-CSE-ConnectionGUID: Pal/Rai/SwqMPud7zKQK3g==
X-CSE-MsgGUID: fPKDudTiR2ahaL7ypWTkIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="52257637"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="52257637"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:12:03 -0800
X-CSE-ConnectionGUID: PusUY3rQRyS/5tzC5smn4A==
X-CSE-MsgGUID: GqYI40ElQ0WDubDgH13PDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="187822338"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:12:02 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915/cursor: Extract intel_cursor_mode_config_init()
Date: Fri,  7 Nov 2025 20:11:25 +0200
Message-ID: <20251107181126.5743-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the max cursor size initialization into intel_cursor.c
so that all the platform specific details about cursors are
concentrated in one file.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c     | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cursor.h     |  2 ++
 .../gpu/drm/i915/display/intel_display_driver.c | 13 ++-----------
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 0367e6fc8de7..8410646a1f95 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -1092,3 +1092,20 @@ intel_cursor_plane_create(struct intel_display *display,
 
 	return ERR_PTR(ret);
 }
+
+void intel_cursor_mode_config_init(struct intel_display *display)
+{
+	struct drm_mode_config *mode_config = &display->drm->mode_config;
+
+	if (display->platform.i845g || display->platform.i865g) {
+		mode_config->cursor_width = display->platform.i845g ? 64 : 512;
+		mode_config->cursor_height = 1023;
+	} else if (display->platform.i830 || display->platform.i85x ||
+		   display->platform.i915g || display->platform.i915gm) {
+		mode_config->cursor_width = 64;
+		mode_config->cursor_height = 64;
+	} else {
+		mode_config->cursor_width = 256;
+		mode_config->cursor_height = 256;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.h b/drivers/gpu/drm/i915/display/intel_cursor.h
index 65a9e7eb88c2..7c269d7381ad 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor.h
@@ -17,4 +17,6 @@ intel_cursor_plane_create(struct intel_display *display,
 
 void intel_cursor_unpin_work(struct kthread_work *base);
 
+void intel_cursor_mode_config_init(struct intel_display *display);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 63942ebf46fb..7e000ba3e08b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -29,6 +29,7 @@
 #include "intel_cdclk.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
+#include "intel_cursor.h"
 #include "intel_dbuf_bw.h"
 #include "intel_display_core.h"
 #include "intel_display_debugfs.h"
@@ -148,17 +149,7 @@ static void intel_mode_config_init(struct intel_display *display)
 		mode_config->max_height = 2048;
 	}
 
-	if (display->platform.i845g || display->platform.i865g) {
-		mode_config->cursor_width = display->platform.i845g ? 64 : 512;
-		mode_config->cursor_height = 1023;
-	} else if (display->platform.i830 || display->platform.i85x ||
-		   display->platform.i915g || display->platform.i915gm) {
-		mode_config->cursor_width = 64;
-		mode_config->cursor_height = 64;
-	} else {
-		mode_config->cursor_width = 256;
-		mode_config->cursor_height = 256;
-	}
+	intel_cursor_mode_config_init(display);
 }
 
 static void intel_mode_config_cleanup(struct intel_display *display)
-- 
2.49.1

