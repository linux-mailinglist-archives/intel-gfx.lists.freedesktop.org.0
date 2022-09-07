Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 001AC5B001B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AC610E4D5;
	Wed,  7 Sep 2022 09:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9C510E4DE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541899; x=1694077899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H5cCuiA6v2vT7QwH37iv26ORkFA3QLeGzlrzA3vrB+A=;
 b=AVnRnxL4cDBNSW/9ek59G0cZmVyWgZq9iATCwmeNtKyg2dATtxWEnkWy
 Y5j+gN19frYZQE2sDFkuOb6mnm/kHfnlBswvWN8S2gaIqkXqqdMfRsMyU
 wpe3E17HW5D3bkTCpaH+NsGJHK+IXV1hP5iCs7tueplePdPq/Mgk252jG
 k7DzdDhqpOICTIlVu/WpOMh5ZCaHo5Ze+lnjUY18RFhesMmS19iUJP0w/
 QjG/Wj6n84skaNw4/N911Dgew3OoXrYlK/UpjSmGLX7ZbP1NeKtVXd8AH
 /HUy3+nIkSASoVQfKWokHRi28UMf2VFMvxOr9sqmo2lSozUcY9CcTJ9Xs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="358538227"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="358538227"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="756697283"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 07 Sep 2022 02:11:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:52 +0300
Message-Id: <20220907091057.11572-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/17] drm/i915: Nuke fastet state copy hacks
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we no longer do the fuzzy clock and M/N checks we can
get rid of the fastset state copy hacks.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++-----------------
 1 file changed, 3 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 10319856ed15..6370ba7bbbb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6126,23 +6126,6 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
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
@@ -6852,17 +6835,12 @@ static int intel_atomic_check(struct drm_device *dev,
 
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

