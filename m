Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 629B3518C3D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D09C10E800;
	Tue,  3 May 2022 18:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17C6010E800
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602220; x=1683138220;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DFiSeBBT9l+mT6a5kooajnj07I2kT+jKqBJndGB54OY=;
 b=OcJBGoN8vNdYnE4tHzXiVINMPVQkH1sbFkaD+WyPwvTVjXDE49A4yccL
 1G6rlhej+oQqMJaus6FyN2r6PmDhrzIOtbKmWYgm42j4aCjjxG6/YXrA+
 t31rEyP+Z4q/ppft2G41UsP60KLpe9ZRWR9AAJp1B8uz/OQFx3PY9oOKu
 S7t2zwvGajc/VPqtG9tfQB0jfo+ENxXvQdfhH0iA+A69WRs3CjWigPC9z
 M7yOO40gGNIH0uWj5CntoTMVGJs/6pELjQskWYViEbqBTouS6bGnKJ9ZG
 3qHGSaKJH8PcGZ7pTYiAEHSAmsoAiOpgNfsvD/3zs+NbvT4EKfn9To3oy Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="292743042"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="292743042"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="584316105"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 03 May 2022 11:23:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:34 +0300
Message-Id: <20220503182242.18797-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/26] drm/i915: Nuke fastet state copy hacks
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

Now that we no longer do the fuzzy clock and M/N checks we can
get rid of the fastset state copy hacks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++-----------------
 1 file changed, 3 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 066b9e7a5696..11e974d66c29 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7013,23 +7013,6 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 	new_crtc_state->update_pipe = true;
 }
 
-static void intel_crtc_copy_fastset(const struct intel_crtc_state *old_crtc_state,
-				    struct intel_crtc_state *new_crtc_state)
-{
-	/*
-	 * If we're not doing the full modeset we want to
-	 * keep the current M/N values as they may be
-	 * sufficiently different to the computed values
-	 * to cause problems.
-	 *
-	 * FIXME: should really copy more fuzzy state here
-	 */
-	new_crtc_state->fdi_m_n = old_crtc_state->fdi_m_n;
-	new_crtc_state->dp_m_n = old_crtc_state->dp_m_n;
-	new_crtc_state->dp_m2_n2 = old_crtc_state->dp_m2_n2;
-	new_crtc_state->has_drrs = old_crtc_state->has_drrs;
-}
-
 static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
 					  struct intel_crtc *crtc,
 					  u8 plane_ids_mask)
@@ -7739,17 +7722,12 @@ static int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (intel_crtc_needs_modeset(new_crtc_state)) {
-			any_ms = true;
-
-			intel_release_shared_dplls(state, crtc);
+		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
-		}
 
-		if (!new_crtc_state->update_pipe)
-			continue;
+		any_ms = true;
 
-		intel_crtc_copy_fastset(old_crtc_state, new_crtc_state);
+		intel_release_shared_dplls(state, crtc);
 	}
 
 	if (any_ms && !check_digital_port_conflicts(state)) {
-- 
2.35.1

