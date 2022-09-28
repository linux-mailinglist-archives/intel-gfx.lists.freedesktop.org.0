Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF25ED481
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 08:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D095910E26A;
	Wed, 28 Sep 2022 06:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3539C10E26A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664345297; x=1695881297;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5rAuIZ2wPVO9GHR7NgXao6WpZdw/+UATSy6LTMF5ojE=;
 b=DzEolyLyZ45uGKNwGK5ufbp6C8Gd6iaH9krDP33fGKQ46NeXwOPtN4dm
 o4Eu9GzzlV4dYA3HNvFZc9sFgAoaHjukTndj+ARa99uTFiWbMTeTaDp8C
 nOZztEQuiqYQfQHFYCVw/iQe9YPVmBvukYaAr0JZvphQqzDJr5ls+mzwt
 0VP8eCn0c/1f8Q/9y4RH6x4DtHbTIvNJKbmdC8qduo3HyUs1K0Q6Yfm+W
 RCHZkuq17kKncOonUbyrJb5PHvpkLH3lCk4QLTdER4LHWC/VCxoW8Vtuv
 25u+PLbCXSEFb6N3PF2EXbZ5MLArduNkF1uBCoocp1Gzv+EHUcmMrkP8k g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363355099"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="363355099"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 23:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="764157792"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="764157792"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 27 Sep 2022 23:08:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Sep 2022 09:08:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Sep 2022 09:08:13 +0300
Message-Id: <20220928060813.23264-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add some debug prints for
 intel_modeset_all_pipes()
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

Print out on which pipes, and for what reason, we are forcing a
full modeset.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display.h | 3 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 4 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a12e86d92783..ad401357ab66 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2769,7 +2769,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
-		ret = intel_modeset_all_pipes(state);
+		ret = intel_modeset_all_pipes(state, "CDCLK change");
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb8eaeb19881..650d37ff76e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5937,7 +5937,8 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-int intel_modeset_all_pipes(struct intel_atomic_state *state)
+int intel_modeset_all_pipes(struct intel_atomic_state *state,
+			    const char *reason)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
@@ -5958,6 +5959,9 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state)
 		    drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
 			continue;
 
+		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
+			    crtc->base.base.id, crtc->base.name, reason);
+
 		crtc_state->uapi.mode_changed = true;
 
 		ret = drm_atomic_add_affected_connectors(&state->base,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 884e8e67b17c..2af4a1925063 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -683,7 +683,8 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_resume(struct drm_device *dev);
-int intel_modeset_all_pipes(struct intel_atomic_state *state);
+int intel_modeset_all_pipes(struct intel_atomic_state *state,
+			    const char *reason);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 01b0932757ed..59e4fc6191f1 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2486,7 +2486,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
 			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes(state);
+			ret = intel_modeset_all_pipes(state, "MBUS joining change");
 			if (ret)
 				return ret;
 		}
-- 
2.35.1

