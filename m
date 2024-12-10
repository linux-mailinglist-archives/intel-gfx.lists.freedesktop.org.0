Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B65B9EBB94
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5071D10E5D3;
	Tue, 10 Dec 2024 21:10:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtMFVvrf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECF410E974
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865035; x=1765401035;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ypyA6fUIHti/sTzksh4+UziyyRt51CeXyu8JSGKms0g=;
 b=LtMFVvrfYswdO625JPdUZzgNV991RWiyc9ZqIb7o4I+RQjuRt6be8jJK
 5KW+k5AZMINdkRiy+TuATndT9QC5esp+wkzHR/eSshzgHlfluJ26Cv20v
 82LnCc76BOP7BAKHH2/Yig+a85zalpwhTr2k8myePgScsC760D9dALqKF
 IRr1RhyOgKk4pXHimKaWmyJwII64ngJV71rp7JEpxfu/IvtFeELXwf8Rm
 mqTEhABISWd6O1rdj7HwJ3aDFXQLE7qwRS3ZETJ5W864/4Iqyu8MniCEE
 Zq5yiOKgUwpvWrqbq4pDbugqK00XKhWTjbgWGMaYnA3OMwiAMQbjLswRL g==;
X-CSE-ConnectionGUID: n5OWLCOZQwK6e3VvlopC2g==
X-CSE-MsgGUID: 5WcNJLiDSsOmPGQG+lrjfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620196"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620196"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:35 -0800
X-CSE-ConnectionGUID: +AYejqyFSXWG83cHYiSopg==
X-CSE-MsgGUID: AR8Z/pKWSk23z7mjJeZx3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735107"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/18] drm/i915: Extract intel_mode_vblank_delay()
Date: Tue, 10 Dec 2024 23:09:58 +0200
Message-ID: <20241210211007.5976-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Extract the code that computes the hardware centric view
of the vblank delay into a helper. We;ll need a slightly
different variant for VRR soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 3 +--
 drivers/gpu/drm/i915/display/intel_vblank.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_vblank.h | 1 +
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fcb8bf9cb313..d755825edb35 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -130,8 +130,7 @@ pre_commit_crtc_state(struct intel_atomic_state *state,
 
 static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
-	return intel_mode_vblank_start(&crtc_state->hw.adjusted_mode) -
-		intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
+	return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
 }
 
 static int dsb_vtotal(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 6f0e0c64187d..ee33a49d9873 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -597,6 +597,11 @@ int intel_mode_vtotal(const struct drm_display_mode *mode)
 	return vtotal;
 }
 
+int intel_mode_vblank_delay(const struct drm_display_mode *mode)
+{
+	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
+}
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
@@ -653,8 +658,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	 */
 	if (intel_color_uses_dsb(new_crtc_state) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
-		evade->min -= intel_mode_vblank_start(adjusted_mode) -
-			intel_mode_vdisplay(adjusted_mode);
+		evade->min -= intel_mode_vblank_delay(adjusted_mode);
 }
 
 /* must be called with vblank interrupt already enabled! */
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 6d7336256982..12c8e1f829a4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -24,6 +24,7 @@ int intel_mode_vdisplay(const struct drm_display_mode *mode);
 int intel_mode_vblank_start(const struct drm_display_mode *mode);
 int intel_mode_vblank_end(const struct drm_display_mode *mode);
 int intel_mode_vtotal(const struct drm_display_mode *mode);
+int intel_mode_vblank_delay(const struct drm_display_mode *mode);
 
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
-- 
2.45.2

