Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49A5B2413
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 18:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DA510EB6B;
	Thu,  8 Sep 2022 16:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FAB210EA02
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 16:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662656246; x=1694192246;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rvxOeMx/tt5rMRELxz8pHwxqfZjifQaiydW1Nwh7k1k=;
 b=fTsWNl7x8f10b4SQdalkpeGzjon/5r4qIye3aJgFX9PoEifrd5x9TIbh
 yPtmAhWvGMlGILPeCSEvygCr2TwE5zGdy6LegW9DDmljziYathr/DkdF4
 aoX/zRriKuVfUMBMxC5TT6+LiIndI2rqS5QOnA4gYZ2XL/2HmymMpUDVy
 UxqshwZ7IsJVOmadkZr3wihumL1QKVFC1aLyebX9n+DfE2PBoHMdJ6FUx
 +yRkpY6zMDZUQSb9HD3/MkxxFkcVq4MyQp7mY1SCrYOQn9sLySWS1zn7B
 YqE4qrpawDGgRvhUsGFajThh1nwSp030Hse6Gaqnb88IppmXG1tqfbZJ6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383552711"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383552711"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 09:57:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="592258624"
Received: from fproca-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.108])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 09:57:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 19:57:02 +0300
Message-Id: <20220908165702.973854-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: hide struct intel_dsb better
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

struct intel_dsb can be an opaque type, hidden in intel_dsb.c. Make it
so. Reduce related includes while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c     | 30 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h     | 28 ------------------
 drivers/gpu/drm/i915/i915_drv.h              |  1 -
 5 files changed, 32 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ed98c732b24e..6bda4274eae9 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -26,6 +26,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
+#include "intel_dsb.h"
 #include "vlv_dsi_pll.h"
 
 struct intel_color_funcs {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2b6bb5ee7698..296cbcd1352c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -91,6 +91,7 @@
 #include "intel_dmc.h"
 #include "intel_dp_link_training.h"
 #include "intel_dpt.h"
+#include "intel_dsb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_fdi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index c4affcb216fd..fc9c3e41c333 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -9,6 +9,36 @@
 #include "i915_drv.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dsb.h"
+
+struct i915_vma;
+
+enum dsb_id {
+	INVALID_DSB = -1,
+	DSB1,
+	DSB2,
+	DSB3,
+	MAX_DSB_PER_PIPE
+};
+
+struct intel_dsb {
+	enum dsb_id id;
+	u32 *cmd_buf;
+	struct i915_vma *vma;
+
+	/*
+	 * free_pos will point the first free entry position
+	 * and help in calculating tail of command buffer.
+	 */
+	int free_pos;
+
+	/*
+	 * ins_start_offset will help to store start address of the dsb
+	 * instuction and help in identifying the batch of auto-increment
+	 * register.
+	 */
+	u32 ins_start_offset;
+};
 
 #define DSB_BUF_SIZE    (2 * PAGE_SIZE)
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 6cb9c580cdca..74dd2b3343bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -11,34 +11,6 @@
 #include "i915_reg_defs.h"
 
 struct intel_crtc_state;
-struct i915_vma;
-
-enum dsb_id {
-	INVALID_DSB = -1,
-	DSB1,
-	DSB2,
-	DSB3,
-	MAX_DSB_PER_PIPE
-};
-
-struct intel_dsb {
-	enum dsb_id id;
-	u32 *cmd_buf;
-	struct i915_vma *vma;
-
-	/*
-	 * free_pos will point the first free entry position
-	 * and help in calculating tail of command buffer.
-	 */
-	int free_pos;
-
-	/*
-	 * ins_start_offset will help to store start address of the dsb
-	 * instuction and help in identifying the batch of auto-increment
-	 * register.
-	 */
-	u32 ins_start_offset;
-};
 
 void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
 void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 76aad81c014b..be201ba5e9ab 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -38,7 +38,6 @@
 
 #include "display/intel_display.h"
 #include "display/intel_display_core.h"
-#include "display/intel_dsb.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_lmem.h"
-- 
2.34.1

