Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E00AB67B9E5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 19:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E871B10E811;
	Wed, 25 Jan 2023 18:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A3810E812
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674672761; x=1706208761;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+mLdtNC6tSkqbH6OSdLTcPPrJdX/I1n+Dn3WZIMu6ZI=;
 b=E74zbe0/+5l3/47EUagY1+mjNa4s4AUCw7L3ELqN29gtxSaJelY9SAx+
 44+3x823as82nSYCR4IRfLRBuoZQubEvRHsAx+BBUojfXFn1iGV4aELCx
 797SB+VBPNTwS3xTNMiHPA8Hw0tHKswfdTndhZWy3YUv+JPg1cCzwkYXw
 GzWIP0RHaCoVo/t2FAVbt2mAD/06/ts5PSKvnENWtt4fWzNN1cSvA5vxT
 kBTZrjzM/T3eilZH0qqgj7erG5M8K9WgbFhhQGcIOs0eRA0khi1h2Q35+
 CZK7azRaG9yEOyZWdJX9Mtp/gp8eOfeXiiKKRHz1nVHSIHIbtcNmbIQVE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326671491"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="326671491"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 10:52:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655912137"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="655912137"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 25 Jan 2023 10:52:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Jan 2023 20:52:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 20:52:30 +0200
Message-Id: <20230125185234.21599-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Mark FIFO underrun disabled
 earlier
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

At least on some platforms (tested on ctg) the way
vgacon does screen blanking seems to flag constant
FIFO underruns, which means we have to be prepared
for them while the driver is loading. Currently
there is a time window between drm_crtc_init() and
intel_sanitize_fifo_underrun_reporting() during
which FIFO underrun reporting is in fact marked as
enabled. Thus we may end up mistakenly detecting
these bogus underruns during driver init.

Close the race by marking FIFO underrun reporting
as disabled prior to even registering the crtc.
intel_sanitize_fifo_underrun_reporting()/etc. will
re-enable it later if needed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +++
 .../drm/i915/display/intel_fifo_underrun.c    | 20 ++++++++++++++++
 .../drm/i915/display/intel_fifo_underrun.h    |  3 +++
 .../drm/i915/display/intel_modeset_setup.c    | 24 +++++--------------
 4 files changed, 32 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 82be0fbe9934..b79a8834559f 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -25,6 +25,7 @@
 #include "intel_display_types.h"
 #include "intel_drrs.h"
 #include "intel_dsi.h"
+#include "intel_fifo_underrun.h"
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
@@ -314,6 +315,8 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	}
 	crtc->plane_ids_mask |= BIT(primary->id);
 
+	intel_init_fifo_underrun_reporting(dev_priv, crtc, false);
+
 	for_each_sprite(dev_priv, pipe, sprite) {
 		struct intel_plane *plane;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index d636d21fa9ce..b708a62e509a 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -31,6 +31,7 @@
 #include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_fifo_underrun.h"
+#include "intel_pch_display.h"
 
 /**
  * DOC: fifo underrun handling
@@ -509,3 +510,22 @@ void intel_check_pch_fifo_underruns(struct drm_i915_private *dev_priv)
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
+
+void intel_init_fifo_underrun_reporting(struct drm_i915_private *i915,
+					struct intel_crtc *crtc,
+					bool enable)
+{
+	crtc->cpu_fifo_underrun_disabled = !enable;
+
+	/*
+	 * We track the PCH trancoder underrun reporting state
+	 * within the crtc. With crtc for pipe A housing the underrun
+	 * reporting state for PCH transcoder A, crtc for pipe B housing
+	 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
+	 * and marking underrun reporting as disabled for the non-existing
+	 * PCH transcoders B and C would prevent enabling the south
+	 * error interrupt (see cpt_can_enable_serr_int()).
+	 */
+	if (intel_has_pch_trancoder(i915, crtc->pipe))
+		crtc->pch_fifo_underrun_disabled = !enable;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
index 2e47d7d3c101..b00d8abebcf9 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
@@ -9,8 +9,11 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct intel_crtc;
 enum pipe;
 
+void intel_init_fifo_underrun_reporting(struct drm_i915_private *i915,
+					struct intel_crtc *crtc, bool enable);
 bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 					   enum pipe pipe, bool enable);
 bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 52cdbd4fc2fa..be095327a9ba 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -21,6 +21,7 @@
 #include "intel_display.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_fifo_underrun.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
 #include "intel_pm.h"
@@ -234,12 +235,9 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	if (!crtc_state->hw.active && !HAS_GMCH(i915))
-		return;
-
 	/*
-	 * We start out with underrun reporting disabled to avoid races.
-	 * For correct bookkeeping mark this on active crtcs.
+	 * We start out with underrun reporting disabled on active
+	 * pipes to avoid races.
 	 *
 	 * Also on gmch platforms we dont have any hardware bits to
 	 * disable the underrun reporting. Which means we need to start
@@ -250,19 +248,9 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 	 * No protection against concurrent access is required - at
 	 * worst a fifo underrun happens which also sets this to false.
 	 */
-	crtc->cpu_fifo_underrun_disabled = true;
-
-	/*
-	 * We track the PCH trancoder underrun reporting state
-	 * within the crtc. With crtc for pipe A housing the underrun
-	 * reporting state for PCH transcoder A, crtc for pipe B housing
-	 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
-	 * and marking underrun reporting as disabled for the non-existing
-	 * PCH transcoders B and C would prevent enabling the south
-	 * error interrupt (see cpt_can_enable_serr_int()).
-	 */
-	if (intel_has_pch_trancoder(i915, crtc->pipe))
-		crtc->pch_fifo_underrun_disabled = true;
+	intel_init_fifo_underrun_reporting(i915, crtc,
+					   !crtc_state->hw.active &&
+					   !HAS_GMCH(i915));
 }
 
 static void intel_sanitize_crtc(struct intel_crtc *crtc,
-- 
2.39.1

