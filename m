Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E7B54FC44
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 19:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EA7310E473;
	Fri, 17 Jun 2022 17:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B5D10E257
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 17:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655487404; x=1687023404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=83xqgvC+En18oeyD6Pw4sET6ZQBZTXsxvjTvUJZXY3g=;
 b=HEWonS4RTiW0ZHvwI0lZoBxyxnfsyXwI2WmRbD6vRqnMdkMs2WjHh1VM
 AL+UUaVSAnetSOg/NIXCb4FzbnVaCwE5t97ITXF/3Qntjuo7V6oAdoWtc
 U3+mDROoC//Zv6TlKb1TbdqbsaQAisqfK4vg4/THSBfDYTl1TERGLyYW2
 Eq/tUmTGKvkKocgrG1DwSgpczO0Qqf2U2+9RCup+R9YI7wgl+F1sjQ0kc
 LS4Z/Ha2DqdiSpa50p0tD643owAXTholGhEWrccL/imPgBuhKT4PJLaH8
 LQlPSzOli/RCyYyn7M1i7CH0ojP0vCBmY0SWSjMpcfzErtP9NIiGZxuIT w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259945429"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259945429"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="578230521"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 17 Jun 2022 09:05:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:05:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:05:05 +0300
Message-Id: <20220617160510.2082-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
References: <20220617160510.2082-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/16] drm/i915: Nuke fastet state copy hacks
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
index c98c93500a43..16a4ea183746 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6262,23 +6262,6 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
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
@@ -6988,17 +6971,12 @@ static int intel_atomic_check(struct drm_device *dev,
 
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

