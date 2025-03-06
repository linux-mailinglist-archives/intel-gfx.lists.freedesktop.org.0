Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AF7A55132
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4C510EA1E;
	Thu,  6 Mar 2025 16:35:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVFjadYl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB84710EA0B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278917; x=1772814917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xJ6BKYnOKvJWD38CEkDNJTV445CHjyiGeNmMA2KvEOI=;
 b=GVFjadYlo1TneQxb2wiJKqu/55+jlzQ3RFXwwmrtfG3SPmkGqZZgJ2lK
 YRtb0WYFsuqSCAZ1USzLNoRVgvRauFrXhgWlTEuEhwQqOALck+uERbtmS
 x4/rTQZ2gqLwOI1SyckK0jnRfUI7Le3ynlxtxOJtfO0ZOqbFMi2F66Lwj
 doygqLiSnX3T8+kheEuzy2oh1atlOF8vQTGm/BHnIHBJxJHA27bjgM4OH
 zqIah+XL2ahd3W5h0J+u/BH9CmW4Z5VGOKQp3V9FnK2xYMmeza2OX/Mbl
 EiNhPqxWcixiYayT8N5W2HZnBNbu9UZvumvgGExdKYe7dLoaQOIR/f7UL w==;
X-CSE-ConnectionGUID: k4CuaecVQJ+t+/UCxdIvRQ==
X-CSE-MsgGUID: 2eeIj+zKSDW7kK80/AwSfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704405"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704405"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:35:17 -0800
X-CSE-ConnectionGUID: trRBojbfRgasAzFWINmaFQ==
X-CSE-MsgGUID: cHFi4TRsRLigty9VJVjO1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289271"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:35:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:35:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 17/18] drm/i915: Move dbuf_state->active_piepes into
 skl_wm_get_hw_state()
Date: Thu,  6 Mar 2025 18:34:19 +0200
Message-ID: <20250306163420.3961-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
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

