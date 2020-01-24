Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A46148602
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E2872A7E;
	Fri, 24 Jan 2020 13:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6CD72A7F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="260243839"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:35 +0200
Message-Id: <fc2a561318089b9c80111039b2623eb3ad40e6a6.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 14/33] drm/i915/dsb: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ada006a690df..9dd18144a664 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -40,7 +40,7 @@ static inline bool is_dsb_busy(struct intel_dsb *dsb)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	return DSB_STATUS & I915_READ(DSB_CTRL(pipe, dsb->id));
+	return DSB_STATUS & intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 }
 
 static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
@@ -50,16 +50,16 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 	u32 dsb_ctrl;
 
-	dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
+	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
 		DRM_DEBUG_KMS("DSB engine is busy.\n");
 		return false;
 	}
 
 	dsb_ctrl |= DSB_ENABLE;
-	I915_WRITE(DSB_CTRL(pipe, dsb->id), dsb_ctrl);
+	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), dsb_ctrl);
 
-	POSTING_READ(DSB_CTRL(pipe, dsb->id));
+	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	return true;
 }
 
@@ -70,16 +70,16 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 	u32 dsb_ctrl;
 
-	dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
+	dsb_ctrl = intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	if (DSB_STATUS & dsb_ctrl) {
 		DRM_DEBUG_KMS("DSB engine is busy.\n");
 		return false;
 	}
 
 	dsb_ctrl &= ~DSB_ENABLE;
-	I915_WRITE(DSB_CTRL(pipe, dsb->id), dsb_ctrl);
+	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), dsb_ctrl);
 
-	POSTING_READ(DSB_CTRL(pipe, dsb->id));
+	intel_de_posting_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 	return true;
 }
 
@@ -198,7 +198,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb, i915_reg_t reg,
 	u32 reg_val;
 
 	if (!buf) {
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 		return;
 	}
 
@@ -272,7 +272,7 @@ void intel_dsb_reg_write(struct intel_dsb *dsb, i915_reg_t reg, u32 val)
 	u32 *buf = dsb->cmd_buf;
 
 	if (!buf) {
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 		return;
 	}
 
@@ -313,7 +313,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 		DRM_ERROR("HEAD_PTR write failed - dsb engine is busy.\n");
 		goto reset;
 	}
-	I915_WRITE(DSB_HEAD(pipe, dsb->id), i915_ggtt_offset(dsb->vma));
+	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
+		       i915_ggtt_offset(dsb->vma));
 
 	tail = ALIGN(dsb->free_pos * 4, CACHELINE_BYTES);
 	if (tail > dsb->free_pos * 4)
@@ -326,7 +327,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	}
 	DRM_DEBUG_KMS("DSB execution started - head 0x%x, tail 0x%x\n",
 		      i915_ggtt_offset(dsb->vma), tail);
-	I915_WRITE(DSB_TAIL(pipe, dsb->id), i915_ggtt_offset(dsb->vma) + tail);
+	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
+		       i915_ggtt_offset(dsb->vma) + tail);
 	if (wait_for(!is_dsb_busy(dsb), 1)) {
 		DRM_ERROR("Timed out waiting for DSB workload completion.\n");
 		goto reset;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
