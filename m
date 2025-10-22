Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DBDBFCE9B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3D710E169;
	Wed, 22 Oct 2025 15:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fYrBE+6o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024AE10E7FA;
 Wed, 22 Oct 2025 15:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761147409; x=1792683409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zyPQYHekT1Xoh3gNGaT+xUabcNFunytXsOP+tjvvWz0=;
 b=fYrBE+6ocXnWQOd0TyZDJ8mtzG+NbSKuX6a6AjZdsFIPSgj+JI7D4V0O
 nPOg2uCVfi3sL4td3TfqVYlbXrd8L+N/udBeyJowmobSfp2Kmo5M73NSo
 js5w204DbiECxDwMy5osmwrcPZ4vaacVFcCGFpKx5QrCx1HP/h0v0AnD8
 VjxYLlGpoIa+76hAplJ6ctpwxBXd2/DFfBRwIMmIDTD0z9KKUhV6aGIx0
 hNWjzsWUCx9kZb8AJUhRHZX3jjtc46eq7ofEAEYfjL88AMBlLdT9oKhdc
 WQSzEnU8ISsgmRchw9q4tYJ2FCzeo7jkfZZtl7+Sd3WEbul3NbuUevLMq A==;
X-CSE-ConnectionGUID: 2TH8U12IRES9otz1CqMLGg==
X-CSE-MsgGUID: E3HawSeiR+Cv++KCrXayTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63208053"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63208053"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:48 -0700
X-CSE-ConnectionGUID: gIbggboAQQ2M/3P6h6+L0A==
X-CSE-MsgGUID: Lwk4FIpVSfCn3GQmImzdwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="183796410"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:36:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 1/4] drm/{i915, xe}/dsb: make {intel,
 xe}_dsb_buffer.c independent of display
Date: Wed, 22 Oct 2025 18:36:35 +0300
Message-ID: <4d3960106d067db509ac06e7db1c567f4e8f760a.1761147363.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761147363.git.jani.nikula@intel.com>
References: <cover.1761147363.git.jani.nikula@intel.com>
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
index 4ad4efbf9253..6d546f9ff316 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -953,7 +953,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
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

