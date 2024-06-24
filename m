Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667C5915701
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE92B10E570;
	Mon, 24 Jun 2024 19:11:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m5RodzTL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0065B10E56B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256275; x=1750792275;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a6WIxLj2XXDJ9P63HV6AQEAjPNWRlYV0BcaU5N72/x0=;
 b=m5RodzTLZS2ILt9RmX5YxRVmLDDGW3CEwqbCrD5dN0To8zmsPMG2Q+W4
 hIwuFfysj3pxaUpRktvDGcmrEjrz0vE19UBBUB9sKSaA5oIL4bj+PCm/V
 cchwFOTWD5Qw/PUPXxvRqBkKxg5PuPjGZFcQw1GvQag+ojfetRuOvWqlQ
 DvQvqaia3KlevTvrrKmp1nNbHe1AEzNBc/uesr4pWhGTg/1BTKyRK4odk
 gsF15kRo92qcSDg1gCReBhy+r8ld7KJ7sYPnBfzBYfWgayR+knWrEetXJ
 arb/oKesHgiLmhjXCBD2v/6zFMwqxAQcRvBep7kWv9yStDYU94FmDH5GB g==;
X-CSE-ConnectionGUID: kLFCp9B9SBqADBfxs5H3ZA==
X-CSE-MsgGUID: OIgRDHJ6T1y8vMOPVNOYsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374232"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374232"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:11:14 -0700
X-CSE-ConnectionGUID: v+hc2twdQnWI1z294ozFUw==
X-CSE-MsgGUID: xL4SRLTrTqGPpL2JTq10VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43372009"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:11:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:11:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/14] drm/i915/dsb: Use chained DSBs for LUT programming
Date: Mon, 24 Jun 2024 22:10:32 +0300
Message-ID: <20240624191032.27333-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

In order to better handle the necessary DSB DEwake tricks let's
switch over to using a chained DSB for the actual LUT programming.
The CPU will start 'dsb_color_commit', which in turn will start the
chained 'dsb_color_vblank'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  2 ++
 drivers/gpu/drm/i915/display/intel_color.c    | 32 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../drm/i915/display/intel_display_types.h    |  2 +-
 4 files changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 55ce71be41ec..12d6ed940751 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -277,6 +277,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
 	crtc_state->dsb_color_vblank = NULL;
+	crtc_state->dsb_color_commit = NULL;
 
 	return &crtc_state->uapi;
 }
@@ -311,6 +312,7 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
 
 	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_vblank);
+	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_commit);
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 27acbf92d60f..5d701f48351b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1890,8 +1890,8 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 
 	i915->display.funcs.color->color_commit_arm(crtc_state);
 
-	if (crtc_state->dsb_color_vblank)
-		intel_dsb_commit(crtc_state->dsb_color_vblank, true);
+	if (crtc_state->dsb_color_commit)
+		intel_dsb_commit(crtc_state->dsb_color_commit, false);
 }
 
 void intel_color_post_update(const struct intel_crtc_state *crtc_state)
@@ -1919,26 +1919,44 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb_color_vblank = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
+	crtc_state->dsb_color_vblank = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
 	if (!crtc_state->dsb_color_vblank)
 		return;
 
 	i915->display.funcs.color->load_luts(crtc_state);
 
 	intel_dsb_finish(crtc_state->dsb_color_vblank);
+
+	crtc_state->dsb_color_commit = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 16);
+	if (!crtc_state->dsb_color_commit) {
+		intel_dsb_cleanup(crtc_state->dsb_color_vblank);
+		crtc_state->dsb_color_vblank = NULL;
+		return;
+	}
+
+	intel_dsb_chain(state, crtc_state->dsb_color_commit,
+			crtc_state->dsb_color_vblank, true);
+
+	intel_dsb_finish(crtc_state->dsb_color_commit);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->dsb_color_vblank)
-		return;
+	if (crtc_state->dsb_color_commit) {
+		intel_dsb_cleanup(crtc_state->dsb_color_commit);
+		crtc_state->dsb_color_commit = NULL;
+	}
 
-	intel_dsb_cleanup(crtc_state->dsb_color_vblank);
-	crtc_state->dsb_color_vblank = NULL;
+	if (crtc_state->dsb_color_vblank) {
+		intel_dsb_cleanup(crtc_state->dsb_color_vblank);
+		crtc_state->dsb_color_vblank = NULL;
+	}
 }
 
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 {
+	if (crtc_state->dsb_color_commit)
+		intel_dsb_wait(crtc_state->dsb_color_commit);
 	if (crtc_state->dsb_color_vblank)
 		intel_dsb_wait(crtc_state->dsb_color_vblank);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 05a2a6942000..d5e0fa5c78b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7511,6 +7511,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * FIXME get rid of this funny new->old swapping
 		 */
 		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);
+		old_crtc_state->dsb_color_commit = fetch_and_zero(&new_crtc_state->dsb_color_commit);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bd079cd77bda..f22de0495dd7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1397,7 +1397,7 @@ struct intel_crtc_state {
 	enum transcoder mst_master_transcoder;
 
 	/* For DSB based color LUT updates */
-	struct intel_dsb *dsb_color_vblank;
+	struct intel_dsb *dsb_color_vblank, *dsb_color_commit;
 
 	u32 psr2_man_track_ctl;
 
-- 
2.44.2

