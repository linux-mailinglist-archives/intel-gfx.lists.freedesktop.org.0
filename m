Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F654A8BC3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD29010EA56;
	Thu,  3 Feb 2022 18:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5476910EA54
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913525; x=1675449525;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3td+g021ZbAoS6IUVQ+5KfHlAHQp2R0bFsqu+N4QqZc=;
 b=DC8e7wjIxjTxRKOuSwDhSiJSqXwJnP0fMf36ddIYJn7H134bbUg0EWQj
 BxCdkugEmV9lTra2CGlPAvwHWEANX0IVjoeGcxkd/n86OPP3Sl0xBgm25
 zq5l+620G+XBzcsz6LSCSx6iZ8lvyndGbiN2TKEES1X+uVW3jW2gkzuXi
 fsVvHfABLofTgvueDpFJPbWSiWkIKKUKRNoo7Bpvdclo3HXPOnQMn52t6
 sf568F9C3aNivPWu8kJ7dAC55gMhvqoNCmBjHQHRJ6XhqIff3o6/+38Ap
 ic17SfaCADgWQm7DPTP5se90XEyOsDTNFYY557U0t004hRwfZgL7NVWXD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248437352"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248437352"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="566496961"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 03 Feb 2022 10:38:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:16 +0200
Message-Id: <20220203183823.22890-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915: Remove weird code from
 intel_atomic_check_bigjoiner()
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

There's some weird junk in intel_atomic_check_bigjoiner()
that's trying to look at the old crtc state's bigjoiner
usage for some reason. That code is totally unnecessary,
and maybe even actively harmful. Not entirely sure which
since it's such a mess that I can't actually wrap my brain
around what it ends up doing.

Either way, thanks to intel_bigjoiner_add_affected_crtcs()
all of the old bigjoiner crtcs are guaranteed to be in the
state already if any one of them is in the state. Also if
any one of those crtcs got flagged for a modeset, then all
of them will have been flagged, and the bigjoiner links
will have been detached via kill_bigjoiner_slave().

So there is no need to look examing any old bigjoiner
usage in intel_atomic_check_bigjoiner(). All we have to care
about is whether bigjoiner is needed for the new state,
and whether we can get the slave crtc we need.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++-------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2006eec6e166..b5701ca57889 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7584,38 +7584,28 @@ static bool intel_cpu_transcoders_need_modeset(struct intel_atomic_state *state,
 }
 
 static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
-					struct intel_crtc *crtc,
-					struct intel_crtc_state *old_crtc_state,
-					struct intel_crtc_state *new_crtc_state)
+					struct intel_crtc *master_crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
-	struct intel_crtc *slave_crtc, *master_crtc;
+	struct intel_crtc_state *master_crtc_state =
+		intel_atomic_get_new_crtc_state(state, master_crtc);
+	struct intel_crtc_state *slave_crtc_state;
+	struct intel_crtc *slave_crtc;
 
-	/* slave being enabled, is master is still claiming this crtc? */
-	if (old_crtc_state->bigjoiner_slave) {
-		slave_crtc = crtc;
-		master_crtc = old_crtc_state->bigjoiner_linked_crtc;
-		master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
-		if (!master_crtc_state || !intel_crtc_needs_modeset(master_crtc_state))
-			goto claimed;
-	}
-
-	if (!new_crtc_state->bigjoiner)
+	if (!master_crtc_state->bigjoiner)
 		return 0;
 
-	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
+	slave_crtc = intel_dsc_get_bigjoiner_secondary(master_crtc);
 	if (!slave_crtc) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Big joiner configuration requires "
 			    "CRTC + 1 to be used, doesn't exist\n",
-			    crtc->base.base.id, crtc->base.name);
+			    master_crtc->base.base.id, master_crtc->base.name);
 		return -EINVAL;
 	}
 
-	new_crtc_state->bigjoiner_linked_crtc = slave_crtc;
+	master_crtc_state->bigjoiner_linked_crtc = slave_crtc;
 	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave_crtc);
-	master_crtc = crtc;
 	if (IS_ERR(slave_crtc_state))
 		return PTR_ERR(slave_crtc_state);
 
@@ -7627,7 +7617,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 		    "[CRTC:%d:%s] Used as slave for big joiner\n",
 		    slave_crtc->base.base.id, slave_crtc->base.name);
 
-	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
+	return copy_bigjoiner_crtc_state(slave_crtc_state, master_crtc_state);
 
 claimed:
 	drm_dbg_kms(&i915->drm,
@@ -7899,8 +7889,7 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (ret)
 			goto fail;
 
-		ret = intel_atomic_check_bigjoiner(state, crtc, old_crtc_state,
-						   new_crtc_state);
+		ret = intel_atomic_check_bigjoiner(state, crtc);
 		if (ret)
 			goto fail;
 	}
-- 
2.34.1

