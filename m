Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0DDA56FEB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5D410EC2C;
	Fri,  7 Mar 2025 18:02:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EHm/2JK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E9710EC1D;
 Fri,  7 Mar 2025 18:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370533; x=1772906533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P0o5zF925ruxYhHByx2uoluGqKvxOuGZ7g6y59RR+gY=;
 b=EHm/2JK+cjdfnGFRAPTttEYiasBxaVLxDyWlXo6f1dyVGc51F6j1l/Yq
 y3bZA59Ebp+Y72F3sCkguLEwxhOAf9QtVCkKMeaFj6MT1V1VdweM6TFGK
 WZ+PNfvRcLh4cI0OCGtSEfODYodiLrbSfptzjYUNfu+PeGeYYAGgXoOtV
 b7C4t5GKV+kj1BKRU2xkz5uan3Py4fzX8j/Uv36ey55fjCdy0hw7hWe0r
 sAFr43+52Jv67cRAd05TX53nYZcWpZmIAwpeaFkxSCj7gAGdMlvP+7wcl
 hwdLFE8PowR1lBodEMjPbxkWwxKRwofqe9rIKSfGOKolu/wZpELgtBUER Q==;
X-CSE-ConnectionGUID: l47xlaylTUmNiLgV7fwB9g==
X-CSE-MsgGUID: +DOO7TolSKS3H9iWJFy/XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637161"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637161"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:12 -0800
X-CSE-ConnectionGUID: ODQKNzaRS1K9wDQRVzdDJQ==
X-CSE-MsgGUID: 3HWMQkNpTyerwbxDmz277g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/14] drm/i915: Drop force_check_qgv
Date: Fri,  7 Mar 2025 20:01:33 +0200
Message-ID: <20250307180139.15744-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Remove the force_check_qgv flag and just fill the pipe_sagv_reject
bitmask properly during readout. This will cause the initial commit
to re-enable SAGV if possible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_bw.h |  6 ------
 2 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index bbb040be0502..e11fd94e9e29 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1399,9 +1399,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    (intel_can_enable_sagv(i915, old_bw_state) !=
-	     intel_can_enable_sagv(i915, new_bw_state) ||
-	     new_bw_state->force_check_qgv))
+	    intel_can_enable_sagv(i915, old_bw_state) !=
+	    intel_can_enable_sagv(i915, new_bw_state))
 		changed = true;
 
 	/*
@@ -1415,8 +1414,6 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	new_bw_state->force_check_qgv = false;
-
 	return 0;
 }
 
@@ -1430,7 +1427,6 @@ static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 		intel_bw_crtc_data_rate(crtc_state);
 	bw_state->num_active_planes[crtc->pipe] =
 		intel_bw_crtc_num_active_planes(crtc_state);
-	bw_state->force_check_qgv = true;
 
 	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
 		    pipe_name(crtc->pipe),
@@ -1448,6 +1444,7 @@ void intel_bw_update_hw_state(struct intel_display *display)
 		return;
 
 	bw_state->active_pipes = 0;
+	bw_state->pipe_sagv_reject = 0;
 
 	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
@@ -1461,6 +1458,9 @@ void intel_bw_update_hw_state(struct intel_display *display)
 			intel_bw_crtc_update(bw_state, crtc_state);
 
 		skl_crtc_calc_dbuf_bw(&bw_state->dbuf_bw[pipe], crtc_state);
+
+		/* initially SAGV has been forced off */
+		bw_state->pipe_sagv_reject |= BIT(pipe);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index e977c3586dc3..d3f92951b057 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -49,12 +49,6 @@ struct intel_bw_state {
 	 */
 	u16 qgv_points_mask;
 
-	/*
-	 * Flag to force the QGV comparison in atomic check right after the
-	 * hw state readout
-	 */
-	bool force_check_qgv;
-
 	unsigned int data_rate[I915_MAX_PIPES];
 	u8 num_active_planes[I915_MAX_PIPES];
 };
-- 
2.45.3

