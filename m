Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 718048958CB
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4F010FE1F;
	Tue,  2 Apr 2024 15:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YAWxG2tz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246DD10FE1E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073062; x=1743609062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k1yTMwy7PvznQWGVtP4V3/zNrbMKihlipLTxSc88dT4=;
 b=YAWxG2tzti3bYfPdWX6MlpdpPSwAZNzEssvbyaLWftBjDRluUxJ66acN
 0Mcpf6a/MBQQEA9lucTtyWNMSG3O6RoOCLvyZF83150qZyWNhVYEn1L0j
 G9VxpINE0CV8vTmLmSLke3hja1RwM7kFrWwGJmKvjTeLnDNfxu66DrRkB
 y2poIZrt739Ab/ybqc4+LWldYsMTZ4HZk8EHbNAzmv8nDKijKXPGi7pIu
 hwEz7P0Q6ZIggQ/vaJQ4PCubrAHzji/j/52u7eXf6orS5jcW+Fb3L01nq
 5cdoEoA0GzYpxNLx/BPPWJhjS31maHo9W3/hlNvc7LbACrPUVy2egYtMb g==;
X-CSE-ConnectionGUID: 2hGWn9mPTx+FMKqwUJpTRg==
X-CSE-MsgGUID: WwJPvDl8SbOQORGpaFFpmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980892"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980892"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789495"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789495"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 13/14] drm/i915: Use a plain old int for the cdclk/mdclk
 ratio
Date: Tue,  2 Apr 2024 18:50:15 +0300
Message-ID: <20240402155016.13733-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 6 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++--
 drivers/gpu/drm/i915/display/skl_watermark.h | 6 ++++--
 4 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c23b7ee2837c..d61aa5b7cbdb 100644
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
@@ -3333,7 +3333,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
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

