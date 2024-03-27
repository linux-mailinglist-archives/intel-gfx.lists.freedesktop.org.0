Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B18E88ECF1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C72C10FEC9;
	Wed, 27 Mar 2024 17:46:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AensC8MJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35EE310FEC8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561583; x=1743097583;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OYkXSnuoP8eCnYjl37dlehfqRs/mHvUNl92xyf1iXSk=;
 b=AensC8MJlps2JQFC0Karxx9YRc0MG9lC8macZwdDN9cyuwRob6reO7YB
 IF0MtScLfHv16HdcNuFDCX3JmbQu0yn4nw2Z2e/qWpPy30kSlS/KZb19x
 Kt75DQq6JOBzvIAOM/cQxSMflu/Tzmkccdleeu6ymaFfhD64I2bm/vQwg
 lvR0GO/40i99cqs45LwzYCKHTzqG3ilyBGllr7rDVQWPKcW2FANRfvEMJ
 6z09G8BDugqVg7oXMre2ymgrkGuh4lOkovdrVbm9vHO/eEwJffDMZf3dH
 Ixc+9gzH5Z4/KoVaIMr9mMdsHL5VtM/YlqjGDNR2fI49g6Rng9dywnz6K Q==;
X-CSE-ConnectionGUID: gDI+accERJqgazqHmWBHKg==
X-CSE-MsgGUID: CO1Cgi84RtCmjHKKdhZRSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795484"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795484"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785915"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785915"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/13] drm/i915: Use a plain old int for the cdclk/mdclk ratio
Date: Wed, 27 Mar 2024 19:45:43 +0200
Message-ID: <20240327174544.983-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

No point in throwing around u8 when we're dealing with
just an integer. Use a plain old boring 'int'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 6 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++--
 drivers/gpu/drm/i915/display/skl_watermark.h | 6 ++++--
 4 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 66c161d7b485..5cba0d08189b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1893,8 +1893,8 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
 	return MDCLK_SOURCE_SEL_CD2XCLK;
 }
 
-u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
-			   const struct intel_cdclk_config *cdclk_config)
+int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+			    const struct intel_cdclk_config *cdclk_config)
 {
 	if (mdclk_source_is_cdclk_pll(i915))
 		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
@@ -3321,7 +3321,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 	if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
 	    intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) {
-		u8 ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
+		int ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
 
 		ret = intel_dbuf_state_set_mdclk_cdclk_ratio(state, ratio);
 		if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 5d4faf401774..cfdcdec07a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -67,8 +67,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv);
 u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
 bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
-u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
-			   const struct intel_cdclk_config *cdclk_config);
+int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+			    const struct intel_cdclk_config *cdclk_config);
 bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ca0f1f89e6d9..1b48009efe2b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3616,7 +3616,8 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	}
 }
 
-int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio)
+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
+					   int ratio)
 {
 	struct intel_dbuf_state *dbuf_state;
 
@@ -3629,7 +3630,8 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8
 	return intel_atomic_lock_global_state(&dbuf_state->base);
 }
 
-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus)
+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
+					 int ratio, bool joined_mbus)
 {
 	enum dbuf_slice slice;
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 3323a1d973f9..ef1a008466be 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -74,11 +74,13 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
 
 int intel_dbuf_init(struct drm_i915_private *i915);
-int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio);
+int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
+					   int ratio);
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
-void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio, bool joined_mbus);
+void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
+					 int ratio, bool joined_mbus);
 void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
 void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
 
-- 
2.43.2

