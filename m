Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E14AD7493
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 16:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A5210E891;
	Thu, 12 Jun 2025 14:50:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O434CNTl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF1510E88D;
 Thu, 12 Jun 2025 14:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739836; x=1781275836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EfszLVLkdu9osEu5xYwqH8RCHdAvOm2dommHDgI4Rkk=;
 b=O434CNTll1UD7tu+1zxs4ZRC9tWrlO6Nr+MF2omcqnUHMjC0pfmgd6IK
 s1pu3XGkbmXDeO2iMzj5783lpwVFsxTGhYExx/0TdQYAQE7UKMr8D82zt
 feX7EfUkRS/17reKSITqiCW1ysLw9k5c91wizEmSQ16lNl4zM5JHFqKMV
 Qzdn/S3ygsa8FyDeFeDtQkdS+LTi1ehP/XfEA6i2D3Y/cHbjuMLXbyG/9
 fXUsqZCwZ1BOy7JqvgayGgS/yfov1tt23g0LGQ6lF/sL8xgk3Eo66Mx/6
 MLWSr7LMJBrYP7pg+0L+GFtYHesqkKDX11WlJAtbgCIBKGlta3UBo8qhd g==;
X-CSE-ConnectionGUID: l/sklMyGRA+w4ttZP0aXRw==
X-CSE-MsgGUID: VVz2ksqIRmS3Ebbkmt1O0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52066755"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52066755"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:50:36 -0700
X-CSE-ConnectionGUID: hDcZb+3NTr2TBPskVaZ4HA==
X-CSE-MsgGUID: W5zifbMfS1++FSbejSBnaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152826217"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.200])
 by orviesa005.jf.intel.com with SMTP; 12 Jun 2025 07:50:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jun 2025 17:50:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 4/6] drm/i915/dsb: Garbage collect the MMIO DEwake stuff
Date: Thu, 12 Jun 2025 17:50:16 +0300
Message-ID: <20250612145018.8735-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
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

Since the introduction of DSB chaining we no longer need the
DEwake tricks in intel_dsb_commit().

I also need to relocate the DSB_PMCTRL* writes out of
intel_dsb_finish() (due to the flip queue DMC vs. DSB register
corruption issues), and it'll be a bit more straightforward if
I don't have to worry about the non-chained DSB path anymore.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c     | 45 ++++----------------
 drivers/gpu/drm/i915/display/intel_dsb.h     |  3 +-
 3 files changed, 11 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b0c7c46ffbe2..6ec786198f43 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6748,13 +6748,13 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (new_crtc_state->use_dsb) {
 		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
 
-		intel_dsb_commit(new_crtc_state->dsb_commit, false);
+		intel_dsb_commit(new_crtc_state->dsb_commit);
 	} else {
 		/* Perform vblank evasion around commit operation */
 		intel_pipe_update_start(state, crtc);
 
 		if (new_crtc_state->dsb_commit)
-			intel_dsb_commit(new_crtc_state->dsb_commit, false);
+			intel_dsb_commit(new_crtc_state->dsb_commit);
 
 		commit_pipe_pre_planes(state, crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 06a615d36a86..2f7bd8da1bf1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -825,8 +825,13 @@ void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
 	intel_dsb_wait_usec(dsb, usecs);
 }
 
-static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
-			      int hw_dewake_scanline)
+/**
+ * intel_dsb_commit() - Trigger workload execution of DSB.
+ * @dsb: DSB context
+ *
+ * This function is used to do actual write to hardware using DSB.
+ */
+void intel_dsb_commit(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	struct intel_display *display = to_intel_display(crtc->base.dev);
@@ -842,7 +847,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	}
 
 	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
-			  ctrl | DSB_ENABLE);
+			  DSB_ENABLE);
 
 	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
 			  dsb->chicken);
@@ -854,44 +859,10 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_head(dsb));
 
-	if (hw_dewake_scanline >= 0) {
-		int diff, position;
-
-		intel_de_write_fw(display, DSB_PMCTRL(pipe, dsb->id),
-				  DSB_ENABLE_DEWAKE |
-				  DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
-
-		/*
-		 * Force DEwake immediately if we're already past
-		 * or close to racing past the target scanline.
-		 */
-		position = intel_de_read_fw(display, PIPEDSL(display, pipe)) & PIPEDSL_LINE_MASK;
-
-		diff = hw_dewake_scanline - position;
-		intel_de_write_fw(display, DSB_PMCTRL_2(pipe, dsb->id),
-				  (diff >= 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
-				  DSB_BLOCK_DEWAKE_EXTENSION);
-	}
-
 	intel_de_write_fw(display, DSB_TAIL(pipe, dsb->id),
 			  intel_dsb_tail(dsb));
 }
 
-/**
- * intel_dsb_commit() - Trigger workload execution of DSB.
- * @dsb: DSB context
- * @wait_for_vblank: wait for vblank before executing
- *
- * This function is used to do actual write to hardware using DSB.
- */
-void intel_dsb_commit(struct intel_dsb *dsb,
-		      bool wait_for_vblank)
-{
-	_intel_dsb_commit(dsb,
-			  wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0,
-			  wait_for_vblank ? dsb->hw_dewake_scanline : -1);
-}
-
 void intel_dsb_wait(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 6bcfb03f3415..c8f4499916eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -68,8 +68,7 @@ void intel_dsb_chain(struct intel_atomic_state *state,
 		     struct intel_dsb *chained_dsb,
 		     bool wait_for_vblank);
 
-void intel_dsb_commit(struct intel_dsb *dsb,
-		      bool wait_for_vblank);
+void intel_dsb_commit(struct intel_dsb *dsb);
 void intel_dsb_wait(struct intel_dsb *dsb);
 
 void intel_dsb_irq_handler(struct intel_display *display,
-- 
2.49.0

