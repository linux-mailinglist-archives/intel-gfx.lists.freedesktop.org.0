Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A0B89103A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ECC110EC42;
	Fri, 29 Mar 2024 01:13:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YuakPf2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099F010E9B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674822; x=1743210822;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cOI9wTvoPb5zFS+1SPhMyHQXMFF2t6xqGoj9QVyKAAs=;
 b=YuakPf2oKE0Ogd+ssOKUsTbNCaFLb9cBX+HsnmJFfYv4boFR2lHP3oG4
 J8vH7q0A5kGedrjSXkcBaSut6Jnc7cPEF/wTF4jRBXpQzNkzqrIgQ8Vrg
 4CTp30WZN7xG1BL6aJIwS+PPAywdDf7p+FMD4lqxXfIO6tGvSnY1vwrAa
 Yjs0ZkfYW11pDUXC7ATh6Skr4FfM273Q5xRoBN0tB6mfd8AKaHTb0g3b2
 0upiXO5y0jYvKZGd9Zr9ZrIm7SQjSjzDiYHnfjvyT506pGVezfagojgRx
 yrsIqZNTzl64WnsIkOsVOPdGLaSX6MpJDJTdeTIqJjJmO5ZOHJhXE3vMp w==;
X-CSE-ConnectionGUID: QHOAW7SSQC6N+wfRgM8mbw==
X-CSE-MsgGUID: JZ1aqe7FQ5CaCnCy5HbPWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756328"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756328"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786779"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786779"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/22] drm/i915: Introduce intel_crtc_joined_pipe_mask()
Date: Fri, 29 Mar 2024 03:12:47 +0200
Message-ID: <20240329011254.24160-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Add a small helper to compute the set of pipes that the current
crtc is using.

And we have at least one trivial place in
intel_ddi_update_active_dpll() where we can use it
immediately, so let's do that.

v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 11 +++++------
 drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index fa6fe9ec8027..24a9be2a217f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3463,18 +3463,17 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_crtc_state *crtc_state =
+	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_crtc *slave_crtc;
+	struct intel_crtc *pipe_crtc;
 
 	/* FIXME: Add MTL pll_mgr */
 	if (DISPLAY_VER(i915) >= 14 || !intel_encoder_is_tc(encoder))
 		return;
 
-	intel_update_active_dpll(state, crtc, encoder);
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(crtc_state))
-		intel_update_active_dpll(state, slave_crtc, encoder);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(crtc_state))
+		intel_update_active_dpll(state, pipe_crtc, encoder);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6197b62dac55..58ee40786d5c 100644
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
index 986ec77490de..31ee34c59844 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -408,6 +408,7 @@ intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
-- 
2.43.2

