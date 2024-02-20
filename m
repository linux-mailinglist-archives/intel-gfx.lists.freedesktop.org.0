Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7679485C816
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 22:18:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098DA10E15C;
	Tue, 20 Feb 2024 21:18:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTLE0bLk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAEC110E572;
 Tue, 20 Feb 2024 21:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708463918; x=1739999918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FznQMgo8NNVvcNmdYjyEetp0FgX3EkBKFSsi2MZ6gro=;
 b=VTLE0bLk/p9j7qRXjYKMVjQ0t/gMIRcuHJ3zf4ZJZhV7WGBK7/aDM6YK
 lsYBPYTrgXZSMOF4BjCxxkVbaNfKUrad0PHla4wRsA65vyTuv2z2WHLTb
 ZZ9EZLn/WeNPeyoHEAajVXw4CF0w9+NH034GEVQUdqMGRzpkr0Yf0GE5o
 UoRFYg4N8NsjSkrCIRmD1f5g4Bwde7pWMKsKB51WlOIFPA65MQZbQkRP2
 K5vdib2McIEi5gAJ/rqzDn3H19anR2EAKFOoZ5EKkQZaqjVFB2leVFP0M
 kmmKocfo8m170nptK7rmnXC5Vipgq06PBVFe5pmWBpeHnSBWSlrpQjgzR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2738663"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2738663"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:18:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5061610"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:18:36 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 11/21] drm/i915/dp: Add way to get active pipes with
 syncing commits
Date: Tue, 20 Feb 2024 23:18:31 +0200
Message-Id: <20240220211841.448846-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220211841.448846-1-imre.deak@intel.com>
References: <20240220211841.448846-1-imre.deak@intel.com>
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

Add a way to get the active pipes through a given DP port by syncing
against a related pending non-blocking commit. Atm
intel_dp_get_active_pipes() will only try to sync a given pipe and if
that would block ignore the pipe. A follow-up change enabling the DP
tunnel BW allocation mode will need to ensure that all active pipes are
returned.

This change will use intel_crtc_state::uapi.commit instead of the
corresponding commit in the connector state. This shouldn't make a
difference, since the two commit objects match for an active pipe.

A follow-up patchset will remove syncing during TC port reset, which
should reset a port/pipe even if syncing against a commit would block.
Syncing OTOH is not needed there, since the commit used for the reset
implies a sync already. For now add a TODO comment for this.

v2:
- Add a separate function to try-sync the pipes. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 27 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c   |  6 ++---
 drivers/gpu/drm/i915/display/intel_tc.c   |  7 ++++++
 4 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 25593f6aae7de..17ed2e62cc66a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -654,3 +654,30 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 out:
 	intel_psr_unlock(new_crtc_state);
 }
+
+/**
+ * intel_crtc_try_sync_pipes - Try syncing pending commits on a set of pipes
+ * @i915: i915 device object
+ * @pipe_mask: Mask of pipes to sync
+ *
+ * Try to sync a pending non-blocking commit for the provided pipes in
+ * @pipe_mask. The commit won't be synced if this would block.
+ *
+ * Return a mask of the pipes that got synced or didn't need syncing.
+ */
+u32 intel_crtc_try_sync_pipes(struct drm_i915_private *i915, u32 pipe_mask)
+{
+	struct intel_crtc *crtc;
+	u32 synced = 0;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		if (!crtc_state->uapi.commit ||
+		    try_wait_for_completion(&crtc_state->uapi.commit->hw_done))
+			synced |= BIT(crtc->pipe);
+	}
+
+	return synced;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 22d7993d1f0ba..71a5b93166da7 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -47,5 +47,6 @@ struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
 void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
 				     enum pipe pipe);
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
+u32 intel_crtc_try_sync_pipes(struct drm_i915_private *i915, u32 pipe_mask);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d9e75922ff8f5..d0452d3e534a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5048,10 +5048,6 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 		if (!crtc_state->hw.active)
 			continue;
 
-		if (conn_state->commit &&
-		    !try_wait_for_completion(&conn_state->commit->hw_done))
-			continue;
-
 		*pipe_mask |= BIT(crtc->pipe);
 	}
 	drm_connector_list_iter_end(&conn_iter);
@@ -5091,6 +5087,8 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	pipe_mask &= intel_crtc_try_sync_pipes(dev_priv, pipe_mask);
+
 	if (pipe_mask == 0)
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 6b374d481cd9e..14d17903a81f5 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -7,6 +7,7 @@
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_cx0_phy_regs.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display.h"
@@ -1663,6 +1664,12 @@ static int reset_link_commit(struct intel_tc_port *tc,
 	if (ret)
 		return ret;
 
+	/*
+	 * TODO: remove the following, since an output must be reset
+	 * even if we had to wait for a non-blocking commit on a pipe.
+	 */
+	pipe_mask &= intel_crtc_try_sync_pipes(i915, pipe_mask);
+
 	if (!pipe_mask)
 		return 0;
 
-- 
2.39.2

