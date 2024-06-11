Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F2C903D77
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9108410E648;
	Tue, 11 Jun 2024 13:34:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F8d7h2j3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49FC10E644
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112841; x=1749648841;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CHw667NUCrAdOkph5zDSvKEBfhCGIeXVTUJenP62zBc=;
 b=F8d7h2j3Z2DL+vsqyJsM2vP3/1w7uUV/0w/X940V5l5iRbk6s6hYW4aI
 PsDbaEHwbRT9DrJNmHCemdLoTaueelO9oR++Mp+XcAnyGETpHczzqwBlf
 ve8zS/YkAbKGuSgGtIwL50lUGd3nl/hPN9GqDf2QgO1GgBszx/3tXAiOZ
 djV5XNVc5NXN7I9nbd54Ypde8VyrgWHYlQqM2mRC5D8qEKpEpadcRIE+P
 v65Uhb8Dq06WK1foWD/ls9pDoSEOvhYEBQCHTtpPNQu/2+Z3fnNH9U1sf
 BwLg7N4QUiyiE08MPJdoRXJBc38J9W1DRwHyeqWAou/0Fethji9II4O1z g==;
X-CSE-ConnectionGUID: YML4wmpsS/2MIpdI/VrTHw==
X-CSE-MsgGUID: O/uc88ZpSmyXBC78YTRm3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018238"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018238"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:00 -0700
X-CSE-ConnectionGUID: 8UF5k/wETvePVEBsRqBUwg==
X-CSE-MsgGUID: A4MnJfrnSyijsDpsBP99vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421391"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:33:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:33:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/11] drm/i915: Pass the whole atomic state to
 intel_color_prepare_commit()
Date: Tue, 11 Jun 2024 16:33:38 +0300
Message-ID: <20240611133344.30673-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

We'll have need to examine both the old and new crtc states in
intel_color_prepare_commit(), so let's just pass in the whole
atomic state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_color.h   |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c |  8 +++-----
 3 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 98553e8a5149..8cfd497c2a92 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1902,15 +1902,20 @@ void intel_color_post_update(const struct intel_crtc_state *crtc_state)
 		i915->display.funcs.color->color_post_update(crtc_state);
 }
 
-void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
+void intel_color_prepare_commit(struct intel_atomic_state *state,
+				struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state))
 		return;
 
+	if (!intel_crtc_needs_color_update(crtc_state))
+		return;
+
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 21ba4aa02e7b..79f230a1709a 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -19,7 +19,8 @@ int intel_color_init(struct drm_i915_private *i915);
 void intel_color_crtc_init(struct intel_crtc *crtc);
 int intel_color_check(struct intel_atomic_state *state,
 		      struct intel_crtc *crtc);
-void intel_color_prepare_commit(struct intel_crtc_state *crtc_state);
+void intel_color_prepare_commit(struct intel_atomic_state *state,
+				struct intel_crtc *crtc);
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);
 bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d1fbd05d655..0623cb5f4e26 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6684,7 +6684,7 @@ int intel_atomic_check(struct drm_device *dev,
 
 static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 {
-	struct intel_crtc_state *crtc_state;
+	struct intel_crtc_state __maybe_unused *crtc_state;
 	struct intel_crtc *crtc;
 	int i, ret;
 
@@ -6692,10 +6692,8 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 	if (ret < 0)
 		return ret;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		if (intel_crtc_needs_color_update(crtc_state))
-			intel_color_prepare_commit(crtc_state);
-	}
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
+		intel_color_prepare_commit(state, crtc);
 
 	return 0;
 }
-- 
2.44.2

