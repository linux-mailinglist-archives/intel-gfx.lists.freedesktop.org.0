Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104F7903D7D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8FE10E64E;
	Tue, 11 Jun 2024 13:34:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HrK1DAHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E77E10E64E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112846; x=1749648846;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mgYBQaCADcjdFslNxW0FRSm8VtNSJZgHVG5AVj5HF/Q=;
 b=HrK1DAHa3cqd983nn95x5i14MlukUxWbfGMe6omkHDeyG3T70H1nU61s
 V9mui7lKiB658O08dQEYR1Wu4lEfLKU1CDKkDI9k+lsKU/VtDNDnsnDZ+
 k58Q+AG2oy4k+Wud8q2KPYYWkVc4JAJotHh8alM/dnDfoT23rjj/lYjgW
 y1ohHM2OxFnu6qpkpaUImMrTGJHDKHJ+tYib8FO9DKDmqcffZsAJaSEhb
 n0ONA82ZxlBwa/HO7KzH5J+miGDbS0NYz/895lYtQrH2OBPvNnCcjnuBI
 KFXGb755/PMK+GIP3kKJeQHLkBbFl5v7FgcRT8u/eN6sm/5xfWRtrP/0c g==;
X-CSE-ConnectionGUID: XIdYOwMJQfmaJjb5r2o7zg==
X-CSE-MsgGUID: QflzqKS0RryU+QstJzWgng==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018240"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018240"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:06 -0700
X-CSE-ConnectionGUID: byJ3+KSkRGeU3JOqVfw/hA==
X-CSE-MsgGUID: mDBce+tbRu+1Xe6197kZZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421426"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:34:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:34:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/11] drm/i915/dsb: Convert the DSB code to use intel_display
 rather than i915
Date: Tue, 11 Jun 2024 16:33:40 +0300
Message-ID: <20240611133344.30673-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The future direction will be to mainly use intel_display
rather than i915 in the display code. Start on that path
for the DSB code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 52 ++++++++++++------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 8ae7bcfa8403..bee48ac419ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -85,10 +85,10 @@ struct intel_dsb {
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 
 	/* each instruction is 2 dwords */
-	return !drm_WARN(&i915->drm, dsb->free_pos > dsb->size - 2,
+	return !drm_WARN(display->drm, dsb->free_pos > dsb->size - 2,
 			 "[CRTC:%d:%s] DSB %d buffer overflow\n",
 			 crtc->base.base.id, crtc->base.name, dsb->id);
 }
@@ -96,25 +96,25 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
 static void intel_dsb_dump(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	int i;
 
-	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
+	drm_dbg_kms(display->drm, "[CRTC:%d:%s] DSB %d commands {\n",
 		    crtc->base.base.id, crtc->base.name, dsb->id);
 	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
 			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
 			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
 			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
 			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
-	drm_dbg_kms(&i915->drm, "}\n");
+	drm_dbg_kms(display->drm, "}\n");
 }
 
-static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
+static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 			enum intel_dsb_id dsb_id)
 {
-	return intel_de_read_fw(i915, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
+	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
@@ -343,27 +343,27 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			      int dewake_scanline)
 {
 	struct intel_crtc *crtc = dsb->crtc;
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
 
 	tail = dsb->free_pos * 4;
-	if (drm_WARN_ON(&dev_priv->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
+	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
 		return;
 
-	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
-		drm_err(&dev_priv->drm, "[CRTC:%d:%s] DSB %d is busy\n",
+	if (is_dsb_busy(display, pipe, dsb->id)) {
+		drm_err(display->drm, "[CRTC:%d:%s] DSB %d is busy\n",
 			crtc->base.base.id, crtc->base.name, dsb->id);
 		return;
 	}
 
-	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
+	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
 			  ctrl | DSB_ENABLE);
 
-	intel_de_write_fw(dev_priv, DSB_CHICKEN(pipe, dsb->id),
+	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
 			  dsb_chicken(crtc));
 
-	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
+	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
 
 	if (dewake_scanline >= 0) {
@@ -371,7 +371,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 
 		hw_dewake_scanline = intel_crtc_scanline_to_hw(crtc, dewake_scanline);
 
-		intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
+		intel_de_write_fw(display, DSB_PMCTRL(pipe, dsb->id),
 				  DSB_ENABLE_DEWAKE |
 				  DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
 
@@ -380,12 +380,12 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 		 * or close to racing past the target scanline.
 		 */
 		diff = dewake_scanline - intel_get_crtc_scanline(crtc);
-		intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
+		intel_de_write_fw(display, DSB_PMCTRL_2(pipe, dsb->id),
 				  (diff >= 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
 				  DSB_BLOCK_DEWAKE_EXTENSION);
 	}
 
-	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
+	intel_de_write_fw(display, DSB_TAIL(pipe, dsb->id),
 			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
 }
 
@@ -407,21 +407,21 @@ void intel_dsb_commit(struct intel_dsb *dsb,
 void intel_dsb_wait(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
+	if (wait_for(!is_dsb_busy(display, pipe, dsb->id), 1)) {
 		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
 
-		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
+		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
 				  DSB_ENABLE | DSB_HALT);
 
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"[CRTC:%d:%s] DSB %d timed out waiting for idle (current head=0x%x, head=0x%x, tail=0x%x)\n",
 			crtc->base.base.id, crtc->base.name, dsb->id,
-			intel_de_read_fw(dev_priv, DSB_CURRENT_HEAD(pipe, dsb->id)) - offset,
-			intel_de_read_fw(dev_priv, DSB_HEAD(pipe, dsb->id)) - offset,
-			intel_de_read_fw(dev_priv, DSB_TAIL(pipe, dsb->id)) - offset);
+			intel_de_read_fw(display, DSB_CURRENT_HEAD(pipe, dsb->id)) - offset,
+			intel_de_read_fw(display, DSB_HEAD(pipe, dsb->id)) - offset,
+			intel_de_read_fw(display, DSB_TAIL(pipe, dsb->id)) - offset);
 
 		intel_dsb_dump(dsb);
 	}
@@ -429,7 +429,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	/* Attempt to reset it */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
-	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
+	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id), 0);
 }
 
 /**
-- 
2.44.2

