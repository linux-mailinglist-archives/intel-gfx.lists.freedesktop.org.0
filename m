Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 952FBA3AAB9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3397010E77A;
	Tue, 18 Feb 2025 21:20:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mUXqa/Yv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D45410E778
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913615; x=1771449615;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y1gM0oV8hWxYa6h+XKyN+Mc/kVHXkG52aCZTPUlt6Yk=;
 b=mUXqa/Yvys9tbrbZr52/2hCRy499KEIESgkurk0ibuYirJG7vCFR0df+
 AOQnGuEdvl6SIvNDwAbsvd5NTyFdFM6dBK3Tpf4mIJ6N1Qs6FcyzkdSOn
 PvxKHJVWyVb3ACgFwj3f649qNoo97cdswsEu35VUQfFPOL7V5cRu1x9Fu
 mAe7NP+Zl0cEmUdiuMPTpVgW+yfXa4quc2rE/mZif5LpWaIW/AZbyRgUL
 eQJMjW/HigmmxPkVkkITTQX8RoToe4OxFHjSUjMMPvVtyR+63x+zwj/G3
 k2v+N5dtPWddBYHOAzPdaw7s4JCNUi1CSHRUxxG2RFHFrysy2qRoEAN1L Q==;
X-CSE-ConnectionGUID: 5fdT7rW8SPmAxRhd7pULog==
X-CSE-MsgGUID: XbTlDVOzR/KPsY85I5Nc6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862348"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862348"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:14 -0800
X-CSE-ConnectionGUID: 6ArTyAnaQm2prXK9B4Gm3g==
X-CSE-MsgGUID: /rRYXxgqTiGDKgGqQhsFkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693577"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:20:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:20:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/19] drm/i915: Move dbuf_state->active_piepes into
 skl_wm_get_hw_state()
Date: Tue, 18 Feb 2025 23:19:12 +0200
Message-ID: <20250218211913.27867-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

Move the dbuf_state readout parts into skl_wm_get_hw_state()
so that the details are better hidden from sight.

This will stop updating this on pre-skl, but that's what we want
since the dbuf state is only used on skl+.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 8 --------
 drivers/gpu/drm/i915/display/skl_watermark.c       | 5 ++++-
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 6a4142d7d025..312b21b1ab59 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -693,8 +693,6 @@ static void readout_plane_state(struct drm_i915_private *i915)
 static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
-	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_pmdemand_state *pmdemand_state =
 		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
 	enum pipe pipe;
@@ -702,7 +700,6 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	struct intel_encoder *encoder;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
-	u8 active_pipes = 0;
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -719,17 +716,12 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		crtc->base.enabled = crtc_state->hw.enable;
 		crtc->active = crtc_state->hw.active;
 
-		if (crtc_state->hw.active)
-			active_pipes |= BIT(crtc->pipe);
-
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] hw state readout: %s\n",
 			    crtc->base.base.id, crtc->base.name,
 			    str_enabled_disabled(crtc_state->hw.active));
 	}
 
-	dbuf_state->active_pipes = active_pipes;
-
 	readout_plane_state(i915);
 
 	for_each_intel_encoder(&i915->drm, encoder) {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 0bd7aa3b2877..2d0de1c63308 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3157,6 +3157,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 		dbuf_state->joined_mbus = intel_de_read(display, MBUS_CTL) & MBUS_JOIN;
 
 	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
+	dbuf_state->active_pipes = 0;
 
 	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -3168,8 +3169,10 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 
 		memset(&crtc_state->wm.skl.optimal, 0,
 		       sizeof(crtc_state->wm.skl.optimal));
-		if (crtc_state->hw.active)
+		if (crtc_state->hw.active) {
 			skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
+			dbuf_state->active_pipes |= BIT(pipe);
+		}
 		crtc_state->wm.skl.raw = crtc_state->wm.skl.optimal;
 
 		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
-- 
2.45.3

