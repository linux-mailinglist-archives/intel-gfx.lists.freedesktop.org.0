Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06D688D089
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 23:10:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0D910F3D4;
	Tue, 26 Mar 2024 22:10:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6Svwipx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41B510F3D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 22:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711491031; x=1743027031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e2rew4UjpC8N1/lqT6RufMBPpb/79+89bTCnNjtfigE=;
 b=N6Svwipx8f4fjjJTvbR7DpLS9Oo9riVLiq5/LN5d0vmwA+lbQYbpxzyB
 x0WaW2BEddTvgcTIOLFFvdcvDlOePS/zPxMu1orvH8aP/UvTsTqNeoUVi
 WLdT8ajcXwKKPBZ1nA71UJRthHN2MScschoCmDNPi3Sioj5J0Bc2ZU23m
 S4PlqHXyCECJkQjOABBSLqW6B2hT9aWUwRK0ZdkR/iTrFCaV/hGXbbXJ+
 MIJuFUwOYYqff9oGKGLPDY6WA2Jc7v3F/jD+U02+7cCBugWRq1dvdwxvA
 tNvH/jkwCOt9N66RmD6olfPHycJcsOdZMLEAgGovQhnr9SJe6e+OPUWoZ Q==;
X-CSE-ConnectionGUID: zoJe9yyPRhKWjc0QWHXxcQ==
X-CSE-MsgGUID: w15ZhOYCT7Co1I59HdoY5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6759634"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6759634"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 15:10:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785465"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="827785465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 15:10:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 00:10:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/i915/cdclk: Fix CDCLK programming order when pipes
 are active
Date: Wed, 27 Mar 2024 00:10:26 +0200
Message-ID: <20240326221026.9012-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326203128.10259-2-ville.syrjala@linux.intel.com>
References: <20240326203128.10259-2-ville.syrjala@linux.intel.com>
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

Currently we always reprogram CDCLK from the
intel_set_cdclk_pre_plane_update() when using squahs/crawl.
The code only works correctly for the cd2x update or full
modeset cases, and it was simply never updated to deal with
squash/crawl.

If the CDCLK frequency is increasing we must reprogram it
before we do anything else that might depend on the new
higher frequency, and conversely we must not decrease
the frequency until everything that might still depend
on the old higher frequency has been dealt with.

Since cdclk_state->pipe is only relevant when doing a cd2x
update we can't use it to determine the correct sequence
during squash/crawl. To that end introduce cdclk_state->disable_pipes
which simply indicates that we must perform the update
while the pipes are disable (ie. during
intel_set_cdclk_pre_plane_update()). Otherwise we use the
same old vs. new CDCLK frequency comparsiong as for cd2x
updates.

The only remaining problem case is when the voltage_level
needs to increase due to a DDI port, but the CDCLK frequency
is decreasing (and not all pipes are being disabled). The
current approach will not bump the voltage level up until
after the port has already been enabled, which is too late.
But we'll take care of that case separately.

v2: Don't break the "must disable pipes case"

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.h |  3 +++
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 31aaa9780dfc..619529dba095 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2600,7 +2600,6 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	enum pipe pipe = new_cdclk_state->pipe;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2609,11 +2608,12 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_pre_notify(state);
 
-	if (pipe == INVALID_PIPE ||
+	if (new_cdclk_state->disable_pipes ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual,
+				new_cdclk_state->pipe);
 	}
 }
 
@@ -2632,7 +2632,6 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	enum pipe pipe = new_cdclk_state->pipe;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2641,11 +2640,12 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_post_notify(state);
 
-	if (pipe != INVALID_PIPE &&
+	if (!new_cdclk_state->disable_pipes &&
 	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual,
+				new_cdclk_state->pipe);
 	}
 }
 
@@ -3124,6 +3124,7 @@ static struct intel_global_state *intel_cdclk_duplicate_state(struct intel_globa
 		return NULL;
 
 	cdclk_state->pipe = INVALID_PIPE;
+	cdclk_state->disable_pipes = false;
 
 	return &cdclk_state->base;
 }
@@ -3316,6 +3317,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
+		new_cdclk_state->disable_pipes = true;
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "Modeset required for cdclk change\n");
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index bc8f86e292d8..2843fc091086 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -53,6 +53,9 @@ struct intel_cdclk_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
+
+	/* update cdclk with pipes disabled */
+	bool disable_pipes;
 };
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
-- 
2.43.2

