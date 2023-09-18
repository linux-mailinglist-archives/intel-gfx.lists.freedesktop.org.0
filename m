Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BDF7A51FD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 20:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A41410E2D0;
	Mon, 18 Sep 2023 18:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63BBC10E2C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 18:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695061488; x=1726597488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FeeIzRiHPhgbIiFS0NfgD8OPwwbAYlkw3aHfFQwu4rI=;
 b=FD/ydsDRAlw1TPDp7jhHFS0rrx21/CwRPdLbcOHEBbBIOAsNKumv+uW9
 t9oWpuFpvQm5rfJy/a8lJ7bHKsn6D54aJ/hGrmoNe2luAw7fF17Fv3m1n
 OPix2cO2ESqO/oIS7BVIZIWrSyblou34f0UDyMX6+R2MJHLfIRcgYls8V
 eiWya7oxtLrGVg8wT+mqUpb7+21Pupnaqco79uDJZf6IsGi6+p95pS4/1
 7F2BlEDrS3NST2CTni68ZDNpKRr/i7l2PC6zYBmGOL7yDy+Q9e8FiAIlG
 7qIKr6g0u6umWKzKyOjItIHREn5bngPL+hoRG+F/eU6nLDJ0qtaL/VQ3a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="410686510"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="410686510"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 11:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="722552034"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="722552034"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 11:24:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 21:25:04 +0300
Message-Id: <20230918182506.1634464-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-8-imre.deak@intel.com>
References: <20230914192659.757475-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 07/25] drm/i915: Rename
 intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
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

Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late() to
clarify when the function can be called (vs.
intel_modeset_pipes_in_mask_early()).

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.h | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad5251ba6fe13..a2e20b25d6361 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3139,7 +3139,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
-		ret = intel_modeset_all_pipes(state, "CDCLK change");
+		ret = intel_modeset_all_pipes_late(state, "CDCLK change");
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1c9a128f4af27..9a69b8848fee6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5475,7 +5475,7 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 }
 
 /**
- * intel_modeset_all_pipes - force a full modeset on all pipes
+ * intel_modeset_all_pipes_late - force a full modeset on all pipes
  * @state: intel atomic state
  * @reason: the reason for the full modeset
  *
@@ -5485,8 +5485,8 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
  *
  * Returns 0 in case of success, negative error code otherwise.
  */
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason)
+int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
+				 const char *reason)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 3008e8b2b437e..64a5be7859331 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -515,8 +515,8 @@ void intel_update_watermarks(struct drm_i915_private *i915);
 /* modesetting */
 int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason);
+int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
+				 const char *reason);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 063929a42a42f..a29d9b717deed 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2616,7 +2616,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
 			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes(state, "MBUS joining change");
+			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
 			if (ret)
 				return ret;
 		}
-- 
2.37.2

