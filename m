Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ABFA71BD2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4897510E737;
	Wed, 26 Mar 2025 16:26:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NSM0bjEm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D49510E736;
 Wed, 26 Mar 2025 16:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006377; x=1774542377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=07binDDMjbsvc77rSa/7UIXVPOvRlcpXGxT8hHbt4H0=;
 b=NSM0bjEmhXaYF2K03P7P739vnjQ+fNHzIjTQrmd1lhPjNFJdbakPRvBC
 9V3NL1jnIshZfVg3MVWGkuTMlRSpDvaPEAbKR44QJGM5kBkKFi4k6LiK6
 DV1V1u5bNGJ4leiJNl8E7dUCvPL/guB/gZWW4EGckJ+R3KH1IulDqR8v1
 IF2sNXHVeu7Q2ymjL4yTkJnQSq1C0eAT2+XeT23Mne36q/A1QIepV47Y5
 Wd2D35nAsU8qBqonAa16SDS1H/BEi9/UbZd4LXRmZ3ucGvojDPyMwKG96
 o6sO8V69ul7qO4t/RGNDl5DrY5Wa6zYxN7yMpyzwYrDFt9DANmCRpNbZD A==;
X-CSE-ConnectionGUID: OOejYhVFRT2LgQcXMzR1qw==
X-CSE-MsgGUID: 1LC6N/66QqeJh/ocXUroKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029577"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029577"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:17 -0700
X-CSE-ConnectionGUID: IulG4vU3Rkq6Onrf4OpRhQ==
X-CSE-MsgGUID: 67TgscpXQxWir7mg2q8z+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016382"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 09/14] drm/i915: Extract intel_bw_modeset_checks()
Date: Wed, 26 Mar 2025 18:25:39 +0200
Message-ID: <20250326162544.3642-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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

Pull the new_bw_state->active_pipes computation out from
intel_compute_sagv_mask() and move it into the intel_bw.c
(which is arguably the correct place for it).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++++
 drivers/gpu/drm/i915/display/skl_watermark.c |  9 ------
 4 files changed, 36 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 47de106c608f..dcf2b711b83a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1414,6 +1414,35 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 	return 0;
 }
 
+int intel_bw_modeset_checks(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_bw_state *old_bw_state;
+	struct intel_bw_state *new_bw_state;
+
+	if (DISPLAY_VER(display) < 9)
+		return 0;
+
+	new_bw_state = intel_atomic_get_bw_state(state);
+	if (IS_ERR(new_bw_state))
+		return PTR_ERR(new_bw_state);
+
+	old_bw_state = intel_atomic_get_old_bw_state(state);
+
+	new_bw_state->active_pipes =
+		intel_calc_active_pipes(state, old_bw_state->active_pipes);
+
+	if (new_bw_state->active_pipes != old_bw_state->active_pipes) {
+		int ret;
+
+		ret = intel_atomic_lock_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 4a6a033f11e4..ac435674c3ed 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -66,6 +66,7 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state);
 
 void intel_bw_init_hw(struct intel_display *display);
 int intel_bw_init(struct intel_display *display);
+int intel_bw_modeset_checks(struct intel_atomic_state *state);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
 int icl_pcode_restrict_qgv_points(struct intel_display *display,
 				  u32 points_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a893add41849..0ecfcb68e56d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6416,6 +6416,12 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	if (any_ms) {
+		ret = intel_bw_modeset_checks(state);
+		if (ret)
+			goto fail;
+	}
+
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
 		goto fail;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a6af5e4ba4d4..1da1bfeadd9c 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -501,15 +501,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return 0;
 
-	new_bw_state->active_pipes =
-		intel_calc_active_pipes(state, old_bw_state->active_pipes);
-
-	if (new_bw_state->active_pipes != old_bw_state->active_pipes) {
-		ret = intel_atomic_lock_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
-
 	if (intel_can_enable_sagv(i915, new_bw_state) !=
 	    intel_can_enable_sagv(i915, old_bw_state)) {
 		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
-- 
2.45.3

