Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0E5A71BCE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D097310E734;
	Wed, 26 Mar 2025 16:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nz8NVP9U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464AE10E733;
 Wed, 26 Mar 2025 16:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006374; x=1774542374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rbPxnzz3tLLwTsz9d+o3Y4Vh3+TGnzEMtaSJ0XkJ4kA=;
 b=nz8NVP9ULpFpCTIYOG/VmqhpB3PiAqRrwJlbvpJG4DG2SmFIzaWs2L62
 fkAK1gGGaJznq0rXlhnPx/4qfZ+g+fm265MZTtN0Skk7AKvwIk3qbBipt
 FsPiBYE73A0icy7DwdLBNM8KuPLo809i2agM45XOpElxjb7uHEtsvQ9fp
 HiWCZVZCND5by5+BwNfEUDBrO5wNldojA/Uck31gX7+AhIWncpteNXM1c
 U4l8cxFX3MECGc2/+dPEX/plbekZarXGyi5aQY3zgU2J3n56LMcnGW1Ji
 GcbIVd2KO+lvQE9/j4ha9VCCmJ7bzaJ+8GMNfRGVx/n2Rl9Dycq8Y5l3O g==;
X-CSE-ConnectionGUID: 8DqoLJ8IQG+G+mVpF1vGxw==
X-CSE-MsgGUID: hhvdA3UyR8i/n3FmU1CT0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029576"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029576"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:14 -0700
X-CSE-ConnectionGUID: VRGXZVu3TaeIfYtTlvTbWw==
X-CSE-MsgGUID: RLh46jXAQKiofwyZVcZMzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 08/14] drm/i915: Drop force_check_qgv
Date: Wed, 26 Mar 2025 18:25:38 +0200
Message-ID: <20250326162544.3642-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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
index 69f3de0bba6a..47de106c608f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1435,9 +1435,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	new_bw_state = intel_atomic_get_new_bw_state(state);
 
 	if (new_bw_state &&
-	    (intel_can_enable_sagv(i915, old_bw_state) !=
-	     intel_can_enable_sagv(i915, new_bw_state) ||
-	     new_bw_state->force_check_qgv))
+	    intel_can_enable_sagv(i915, old_bw_state) !=
+	    intel_can_enable_sagv(i915, new_bw_state))
 		changed = true;
 
 	/*
@@ -1451,8 +1450,6 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	new_bw_state->force_check_qgv = false;
-
 	return 0;
 }
 
@@ -1466,7 +1463,6 @@ static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 		intel_bw_crtc_data_rate(crtc_state);
 	bw_state->num_active_planes[crtc->pipe] =
 		intel_bw_crtc_num_active_planes(crtc_state);
-	bw_state->force_check_qgv = true;
 
 	drm_dbg_kms(display->drm, "pipe %c data rate %u num active planes %u\n",
 		    pipe_name(crtc->pipe),
@@ -1484,6 +1480,7 @@ void intel_bw_update_hw_state(struct intel_display *display)
 		return;
 
 	bw_state->active_pipes = 0;
+	bw_state->pipe_sagv_reject = 0;
 
 	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
@@ -1497,6 +1494,9 @@ void intel_bw_update_hw_state(struct intel_display *display)
 			intel_bw_crtc_update(bw_state, crtc_state);
 
 		skl_crtc_calc_dbuf_bw(&bw_state->dbuf_bw[pipe], crtc_state);
+
+		/* initially SAGV has been forced off */
+		bw_state->pipe_sagv_reject |= BIT(pipe);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 3e4397c85774..4a6a033f11e4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -48,12 +48,6 @@ struct intel_bw_state {
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

