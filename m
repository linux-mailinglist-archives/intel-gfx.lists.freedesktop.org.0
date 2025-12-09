Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4496CAF071
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D4F10E1B9;
	Tue,  9 Dec 2025 06:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S34vyJOq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED68F10E1B6;
 Tue,  9 Dec 2025 06:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765261754; x=1796797754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VI1CeI9UMBSXP9jjKEsuCyE3kTicvioxU2XA0p9EGFg=;
 b=S34vyJOq8Nj8f6NWeWrnTpkYg1UIvsqoTL2A8zkj8RjZq972lg9L3uGw
 FIeos+H0b4Nb1Kk2U+/kUvUUUQgRdbVERs9s4HPFM02gtDF7PAvjk7Z3O
 TXauyyFTD7uSB7ciE2j4Iksqg/QLZ3Pj2N4bsKLUTt5sEEkRU3ioJFZd/
 tMWnUNPmKdrBVdgDxGPoez9aDcBt4HWuRorim/LDF+kLdEnJLR05HutVJ
 +MDdfes+SwfHYyCul+gbvhGDnm/uPJkmbPfTjKzuuenD5ZMQjuk5felTB
 DEMP+XqDQwFs5rGtlQ7onjPuvUR5flm1/Y434PP7BC7RMyZ4K57FrgQaH A==;
X-CSE-ConnectionGUID: +dsWcqpMT1e1IA5PXFywFQ==
X-CSE-MsgGUID: xlkw0ulsRV6u09zQfWYWZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="69804098"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="69804098"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:29:13 -0800
X-CSE-ConnectionGUID: QxDP1TYQTe2ViBsdJYh4Kg==
X-CSE-MsgGUID: ECf8RkSxT/CrDDfB4vdvWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200585546"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 08 Dec 2025 22:29:11 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/5] drm/i915/display: Move casf_compute_config
Date: Tue,  9 Dec 2025 11:55:23 +0530
Message-Id: <20251209062527.620382-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251209062527.620382-1-nemesa.garg@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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

Prefill calculations are getting screwed up as casf_compute
is getting called in later stage. So move casf_compute_config
to crtc_compute_config and check if there is a change in the
sharpness strength, if so set the flag uapi.mode_changed
so that everytime when strength changes casf_compute_config
can be called and new strength value gets updated.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c    | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
 3 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 95339b496f24..6e45ff7d5ff7 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -288,3 +288,17 @@ void intel_casf_disable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
 	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
 }
+
+void intel_casf_check(struct intel_atomic_state *state)
+{
+	int i;
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (new_crtc_state->uapi.sharpness_strength !=
+		    old_crtc_state->uapi.sharpness_strength)
+			new_crtc_state->uapi.mode_changed = true;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index b3fb0bcb3f5b..2eec90d9d4c4 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 
 struct intel_crtc_state;
+struct intel_atomic_state;
+struct intel_crtc;
 
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
 void intel_casf_update_strength(struct intel_crtc_state *new_crtc_state);
@@ -17,5 +19,6 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state);
 void intel_casf_disable(const struct intel_crtc_state *crtc_state);
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
 bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
+void intel_casf_check(struct intel_atomic_state *state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..882ea286fc9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2494,6 +2494,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 
 	intel_vrr_compute_guardband(crtc_state);
 
+	ret = intel_casf_compute_config(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
@@ -4286,10 +4290,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		return ret;
 	}
 
-	ret = intel_casf_compute_config(crtc_state);
-	if (ret)
-		return ret;
-
 	if (DISPLAY_VER(display) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state) ||
@@ -6435,6 +6435,8 @@ int intel_atomic_check(struct drm_device *dev,
 
 	intel_vrr_check_modeset(state);
 
+	intel_casf_check(state);
+
 	ret = drm_atomic_helper_check_modeset(dev, &state->base);
 	if (ret)
 		goto fail;
-- 
2.25.1

