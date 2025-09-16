Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8686FB59514
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 13:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F1089CA4;
	Tue, 16 Sep 2025 11:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hPQLNXzN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2DBA89BAE;
 Tue, 16 Sep 2025 11:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758021871; x=1789557871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k0cK3uX21i/2tF1EUPQ7GKXUjsezqHtIEufXMgGxQ70=;
 b=hPQLNXzNYdtUV9yCv32BuZapWfMlEHt//dktfq+0iIXeqFbnWY8e3Y6b
 xCrLH/nsFDJ/mNN4rIOfmdloNLk+vKUHG/v5jSD+VpqBwbK4C/OpqC5g7
 ADM2Q2FgS9ugoypfaZY+MRigmXAUS/5p6My1FNcPbc3BCTmj7jHGr7tAC
 RpRBOKKeS8Pi3hBas8FT6RYBksnl2IT+Z8Hn7NR7+W3DYmIekGgzmb5T9
 fgrJHfn331Yuqa+Sqstcgzk+9KT76Dd4+4klhqLU9Ta+FMvtHzB60w8oU
 vQxix/rrr3dw1l5jRJVVFq6YUPV7TfyAHkebFTmzv/Hdp6kO9RIuE5HMh w==;
X-CSE-ConnectionGUID: NppE+g0QT5CDxq+1tOTbEw==
X-CSE-MsgGUID: vYjP+sHXQm23JZMN9HjFtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="77905917"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="77905917"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:31 -0700
X-CSE-ConnectionGUID: DuywVd2CT/WaGAPSmUBSVw==
X-CSE-MsgGUID: mZsxRCJxTQmOCKoQx9sKrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174521688"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.81])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 04:24:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/{i915, xe}/dsb: make {intel,
 xe}_dsb_buffer.c independent of display
Date: Tue, 16 Sep 2025 14:24:17 +0300
Message-ID: <9a2db2240d523e5f173dcdfd3836868b80aca0bb.1758021803.git.jani.nikula@intel.com>
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

The DSB buffer implementation is really independent of display. Pass
struct drm_device instead of struct intel_crtc to
intel_dsb_buffer_create(), and drop the intel_display_types.h include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_dsb_buffer.c | 5 ++---
 drivers/gpu/drm/i915/display/intel_dsb_buffer.h | 4 ++--
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c      | 5 ++---
 4 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dee44d45b668..06d8ff75d62e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -944,7 +944,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
+	if (!intel_dsb_buffer_create(display->drm, &dsb->dsb_buf, size))
 		goto out_put_rpm;
 
 	intel_display_rpm_put(display, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
index c77d48bda26a..1eafcb2dedcb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -7,7 +7,6 @@
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
-#include "intel_display_types.h"
 #include "intel_dsb_buffer.h"
 
 u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)
@@ -32,9 +31,9 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
 	memset(&dsb_buf->cmd_buf[idx], val, size);
 }
 
-bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, size_t size)
+bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *dsb_buf, size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(drm);
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 *buf;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
index 425acd393905..496ece42b4a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-struct intel_crtc;
+struct drm_device;
 struct i915_vma;
 
 struct intel_dsb_buffer {
@@ -21,7 +21,7 @@ u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
 void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
 u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
 void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, size_t size);
-bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf,
+bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *dsb_buf,
 			     size_t size);
 void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
 void intel_dsb_buffer_flush_map(struct intel_dsb_buffer *dsb_buf);
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index 58581d7aaae6..1bbebc0313c8 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -4,7 +4,6 @@
  */
 
 #include "i915_vma.h"
-#include "intel_display_types.h"
 #include "intel_dsb_buffer.h"
 #include "xe_bo.h"
 #include "xe_device.h"
@@ -32,9 +31,9 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
 	iosys_map_memset(&dsb_buf->vma->bo->vmap, idx * 4, val, size);
 }
 
-bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, size_t size)
+bool intel_dsb_buffer_create(struct drm_device *drm, struct intel_dsb_buffer *dsb_buf, size_t size)
 {
-	struct xe_device *xe = to_xe_device(crtc->base.dev);
+	struct xe_device *xe = to_xe_device(drm);
 	struct xe_bo *obj;
 	struct i915_vma *vma;
 
-- 
2.47.3

