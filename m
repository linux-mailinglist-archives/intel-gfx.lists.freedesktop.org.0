Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D636C0DBE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F3D710E1FA;
	Mon, 20 Mar 2023 09:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F57C10E1FA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679306095; x=1710842095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G8mYFWOIl7yG6Ee52/oia0GnuNhbJInCEUoRKKhsgG8=;
 b=AaXyhQ4sT063emrr2EeWr6Gmazq++HbtNoHuNA2YihwLAJvtRvXRS/ST
 fl/FguVETaosu2yV7jh4bgWGBOJpki0UVFS6zpItcunsi77e7B2BFr2ol
 WFIdUSXh81FQObKXAOP1RdsQ98XeMQXjIrF9S8gYePU44hJyRvwQ3yK+y
 d/p5bRMjNqnwbmolWoDOeppnv/EZpn+lCCBsd5xoQJqEyLFGz9/bS+kHj
 OezKl2haWW4E08UHU3qpIKZSeGdMpfz3WiIpoV7Yz7wi+thYkeK/aDUVY
 //PiLFO55easSCZccNLJ2ESdgBvvMByt9o9ojuPfdipHawYeNVOfkndBK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="366336456"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="366336456"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="631067065"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="631067065"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 20 Mar 2023 02:54:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:54:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:54:35 +0200
Message-Id: <20230320095438.17328-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Add a .color_post_update() hook
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're going to need stuff after the color management
register lathcing has happened. Add a corresponding hook.

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_color.h   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  3 +++
 3 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 37fb5a7bc8d8..3cd53d29dd4b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -46,6 +46,11 @@ struct intel_color_funcs {
 	 * registers involved with the same commit.
 	 */
 	void (*color_commit_arm)(const struct intel_crtc_state *crtc_state);
+	/*
+	 * Perform any extra tasks needed after all the
+	 * double buffered registers have been latched.
+	 */
+	void (*color_post_update)(const struct intel_crtc_state *crtc_state);
 	/*
 	 * Load LUTs (and other single buffered color management
 	 * registers). Will (hopefully) be called during the vblank
@@ -1415,6 +1420,14 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	i915->display.funcs.color->color_commit_arm(crtc_state);
 }
 
+void intel_color_post_update(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	if (i915->display.funcs.color->color_post_update)
+		i915->display.funcs.color->color_post_update(crtc_state);
+}
+
 void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index d620b5b1e2a6..8002492be709 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -21,6 +21,7 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state);
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
 void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
 void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
+void intel_color_post_update(const struct intel_crtc_state *crtc_state);
 void intel_color_load_luts(const struct intel_crtc_state *crtc_state);
 void intel_color_get_config(struct intel_crtc_state *crtc_state);
 bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 121990ba2a28..5146d6cc7400 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1115,6 +1115,9 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (needs_cursorclk_wa(old_crtc_state) &&
 	    !needs_cursorclk_wa(new_crtc_state))
 		icl_wa_cursorclkgating(dev_priv, pipe, false);
+
+	if (intel_crtc_needs_color_update(new_crtc_state))
+		intel_color_post_update(new_crtc_state);
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
-- 
2.39.2

