Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9303605FB3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED38710ED01;
	Thu, 20 Oct 2022 12:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B0710EC88
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666267512; x=1697803512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jV6QtpzGqcG0NZOVqE6uNcGJjOUYbNnZdqimdDzzHIU=;
 b=MDy6vwRfLenuW1Ajh8SzG7TDQsHYsGVj49CZaDfEKCCXnXXGgzvNQ/lr
 vOA892EY0uY7nRAsA48S12r2VrJ4PHbgbiBmaU5n5UtgcNKNsc6JQtCoS
 zveqSLN88RaC2zacbEJniXqfXkDmxF+YsVcmuyiAN+oJ5FT4gysajy16C
 R5t3DgebR42kmwU/UU9t/uuXYgTuIsfDVU4pkaeHp7O/ExaGBsK8TzEBG
 h1ItGVdp4kUWov8XPw+vXipIaB5EDoJR5sv31l7OgCM30M0LwrCnFBtRj
 62QLBBB1bPd3e4QHfKusqp/Zz09JKE4Q1+1481bvTpd0FNKnUlR2W+R5q Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370900765"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="370900765"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:05:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="663004819"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="663004819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 20 Oct 2022 05:05:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 15:05:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 15:04:57 +0300
Message-Id: <20221020120457.19528-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
References: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Introduce
 intel_crtc_needs_color_update()
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

Add a common helper to answer the question "do we need
to update color management stuff?".

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c         |  6 ++----
 drivers/gpu/drm/i915/display/intel_crtc.c      |  3 +--
 drivers/gpu/drm/i915/display/intel_display.c   | 18 +++++-------------
 .../gpu/drm/i915/display/intel_display_types.h |  8 ++++++++
 4 files changed, 16 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index c23fabb76fda..83aa3800245f 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -104,8 +104,7 @@ static bool hsw_ips_need_disable(struct intel_atomic_state *state,
 	 * Disable IPS before we program the LUT.
 	 */
 	if (IS_HASWELL(i915) &&
-	    (new_crtc_state->uapi.color_mgmt_changed ||
-	     intel_crtc_needs_fastset(new_crtc_state)) &&
+	    intel_crtc_needs_color_update(new_crtc_state) &&
 	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
 		return true;
 
@@ -146,8 +145,7 @@ static bool hsw_ips_need_enable(struct intel_atomic_state *state,
 	 * Re-enable IPS after the LUT has been programmed.
 	 */
 	if (IS_HASWELL(i915) &&
-	    (new_crtc_state->uapi.color_mgmt_changed ||
-	     intel_crtc_needs_fastset(new_crtc_state)) &&
+	    intel_crtc_needs_color_update(new_crtc_state) &&
 	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
 		return true;
 
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index af7dbac7ed32..037fc140b585 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -386,8 +386,7 @@ static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_sta
 	return crtc_state->hw.active &&
 		!intel_crtc_needs_modeset(crtc_state) &&
 		!crtc_state->preload_luts &&
-		(crtc_state->uapi.color_mgmt_changed ||
-		 intel_crtc_needs_fastset(crtc_state));
+		intel_crtc_needs_color_update(crtc_state);
 }
 
 static void intel_crtc_vblank_work(struct kthread_work *base)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7b48ad20c548..5fb9d4654d78 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4853,9 +4853,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (c8_planes_changed(crtc_state))
 		crtc_state->uapi.color_mgmt_changed = true;
 
-	if (intel_crtc_needs_modeset(crtc_state) ||
-	    intel_crtc_needs_fastset(crtc_state) ||
-	    crtc_state->uapi.color_mgmt_changed) {
+	if (intel_crtc_needs_color_update(crtc_state)) {
 		ret = intel_color_check(crtc_state);
 		if (ret)
 			return ret;
@@ -6968,11 +6966,8 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 		return ret;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		if (intel_crtc_needs_modeset(crtc_state) ||
-		    intel_crtc_needs_fastset(crtc_state) ||
-		    crtc_state->uapi.color_mgmt_changed) {
+		if (intel_crtc_needs_color_update(crtc_state))
 			intel_dsb_prepare(crtc_state);
-		}
 	}
 
 	return 0;
@@ -7053,8 +7048,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 	 * CRTC was enabled.
 	 */
 	if (!modeset) {
-		if (new_crtc_state->uapi.color_mgmt_changed ||
-		    intel_crtc_needs_fastset(new_crtc_state))
+		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state);
 
 		if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
@@ -7119,8 +7113,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset) {
 		if (new_crtc_state->preload_luts &&
-		    (new_crtc_state->uapi.color_mgmt_changed ||
-		     intel_crtc_needs_fastset(new_crtc_state)))
+		    intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_load_luts(new_crtc_state);
 
 		intel_pre_plane_update(state, crtc);
@@ -7136,8 +7129,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	intel_fbc_update(state, crtc);
 
 	if (!modeset &&
-	    (new_crtc_state->uapi.color_mgmt_changed ||
-	     intel_crtc_needs_fastset(new_crtc_state)))
+	    intel_crtc_needs_color_update(new_crtc_state))
 		intel_color_commit_noarm(new_crtc_state);
 
 	intel_crtc_planes_update_noarm(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 60c748e4e0d8..609eeb5c7b71 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2064,6 +2064,14 @@ intel_crtc_needs_fastset(const struct intel_crtc_state *crtc_state)
 	return crtc_state->update_pipe;
 }
 
+static inline bool
+intel_crtc_needs_color_update(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->uapi.color_mgmt_changed ||
+		intel_crtc_needs_fastset(crtc_state) ||
+		intel_crtc_needs_modeset(crtc_state);
+}
+
 static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
 {
 	return i915_ggtt_offset(plane_state->ggtt_vma);
-- 
2.35.1

