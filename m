Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D80148607
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227B672A85;
	Fri, 24 Jan 2020 13:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4B672A82
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:14 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="230291250"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:38 +0200
Message-Id: <fca7d63b3aa669b5984be45b5968f47fb0b64b2b.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 17/33] drm/i915/fifo_underrun: use intel_de_*()
 functions for register access
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
 .../drm/i915/display/intel_fifo_underrun.c    | 37 ++++++++++---------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 6c83b350525d..470b3b0b9bdb 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -95,12 +95,12 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
-	if ((I915_READ(reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
+	if ((intel_de_read(dev_priv, reg) & PIPE_FIFO_UNDERRUN_STATUS) == 0)
 		return;
 
 	enable_mask = i915_pipestat_enable_mask(dev_priv, crtc->pipe);
-	I915_WRITE(reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
-	POSTING_READ(reg);
+	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
+	intel_de_posting_read(dev_priv, reg);
 
 	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
 	DRM_ERROR("pipe %c underrun\n", pipe_name(crtc->pipe));
@@ -118,10 +118,11 @@ static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
 	if (enable) {
 		u32 enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
-		I915_WRITE(reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
-		POSTING_READ(reg);
+		intel_de_write(dev_priv, reg,
+			       enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
+		intel_de_posting_read(dev_priv, reg);
 	} else {
-		if (old && I915_READ(reg) & PIPE_FIFO_UNDERRUN_STATUS)
+		if (old && intel_de_read(dev_priv, reg) & PIPE_FIFO_UNDERRUN_STATUS)
 			DRM_ERROR("pipe %c underrun\n", pipe_name(pipe));
 	}
 }
@@ -143,15 +144,15 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 err_int = I915_READ(GEN7_ERR_INT);
+	u32 err_int = intel_de_read(dev_priv, GEN7_ERR_INT);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if ((err_int & ERR_INT_FIFO_UNDERRUN(pipe)) == 0)
 		return;
 
-	I915_WRITE(GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
-	POSTING_READ(GEN7_ERR_INT);
+	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
+	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
 
 	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
 	DRM_ERROR("fifo underrun on pipe %c\n", pipe_name(pipe));
@@ -163,7 +164,8 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	if (enable) {
-		I915_WRITE(GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
+		intel_de_write(dev_priv, GEN7_ERR_INT,
+			       ERR_INT_FIFO_UNDERRUN(pipe));
 
 		if (!ivb_can_enable_err_int(dev))
 			return;
@@ -173,7 +175,7 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
 		ilk_disable_display_irq(dev_priv, DE_ERR_INT_IVB);
 
 		if (old &&
-		    I915_READ(GEN7_ERR_INT) & ERR_INT_FIFO_UNDERRUN(pipe)) {
+		    intel_de_read(dev_priv, GEN7_ERR_INT) & ERR_INT_FIFO_UNDERRUN(pipe)) {
 			DRM_ERROR("uncleared fifo underrun on pipe %c\n",
 				  pipe_name(pipe));
 		}
@@ -209,15 +211,16 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pch_transcoder = crtc->pipe;
-	u32 serr_int = I915_READ(SERR_INT);
+	u32 serr_int = intel_de_read(dev_priv, SERR_INT);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	if ((serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) == 0)
 		return;
 
-	I915_WRITE(SERR_INT, SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
-	POSTING_READ(SERR_INT);
+	intel_de_write(dev_priv, SERR_INT,
+		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
+	intel_de_posting_read(dev_priv, SERR_INT);
 
 	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
 	DRM_ERROR("pch fifo underrun on pch transcoder %c\n",
@@ -231,8 +234,8 @@ static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
 	if (enable) {
-		I915_WRITE(SERR_INT,
-			   SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
+		intel_de_write(dev_priv, SERR_INT,
+			       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
 
 		if (!cpt_can_enable_serr_int(dev))
 			return;
@@ -241,7 +244,7 @@ static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
 	} else {
 		ibx_disable_display_interrupt(dev_priv, SDE_ERROR_CPT);
 
-		if (old && I915_READ(SERR_INT) &
+		if (old && intel_de_read(dev_priv, SERR_INT) &
 		    SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) {
 			DRM_ERROR("uncleared pch fifo underrun on pch transcoder %c\n",
 				  pipe_name(pch_transcoder));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
