Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA92687A55C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 11:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818EB10EB39;
	Wed, 13 Mar 2024 10:00:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lT248uUS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C0510F430
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 10:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710324005; x=1741860005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E4cmCfqS8nDTPIbYpKnKW/p2r3R/vxmVwtneuHboooI=;
 b=lT248uUS4Ho0BYyhATt1aoCo4zmDdGZ0FGL1mDPdnizk3Tc/jF8mQzAM
 MBk4qUQs0rncDnHV7uCEYaTjaa3PxG1ApVVK/4ZRVNfw4/4TTqAwty3Iz
 LOlrxVCZhAqY+9QV+IDEe8M3Taf9xl8yatWw7t9SIGiamL3+rrp5L3hHD
 IBRj3lP1OMPsj5Q9gCfxQ9n7eFL7/nP9WithFiOEqy6wnsWayp7mPtPkG
 FlzJi1zFxTfoMazr/nWe9yc1U+fpOM064CEN54BAExM3sTTbPHGBtcFZy
 wBYZbqH11WtCrEUttiFW3kyQicW8R9rdkfnL0vjJONG+utHJvL0UDy+CI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8885979"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="8885979"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 02:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11931467"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa006.fm.intel.com with ESMTP; 13 Mar 2024 02:59:52 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav.Lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com, vidya.srinivas@intel.com
Subject: [PATCH 1/6] drm/i915: Add a small helper to compute the set of pipes
 for crtc
Date: Wed, 13 Mar 2024 11:59:44 +0200
Message-Id: <20240313095949.6898-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
References: <20240313095949.6898-1-stanislav.lisovskiy@intel.com>
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

And we have at least one trivial place in
intel_ddi_update_active_dpll() where we can use it
immediately, so let's do that.

v2: - Fixed conflicts, part of patch didn't apply, because of master_crtc
      rename(Stan)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c587a8efeafcf..bbce74f011d40 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3472,17 +3472,16 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_crtc *slave_crtc;
+	struct intel_crtc *pipe_mask_crtc;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(crtc_state);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	/* FIXME: Add MTL pll_mgr */
 	if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
 		return;
 
-	intel_update_active_dpll(state, crtc, encoder);
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
-		intel_update_active_dpll(state, slave_crtc, encoder);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_mask_crtc, pipe_mask)
+		intel_update_active_dpll(state, pipe_mask_crtc, encoder);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b88f214e111ae..021db26a630af 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -275,6 +275,13 @@ static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
 	return hweight8(crtc_state->bigjoiner_pipes);
 }
 
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return BIT(crtc->pipe) | crtc_state->bigjoiner_pipes;
+}
+
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f4a0773f0fca8..631218c954a47 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -410,6 +410,7 @@ bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
-- 
2.37.3

