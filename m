Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2B0aJzrm1mliJggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 01:35:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F853C4CBD
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 01:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E7F10E702;
	Wed,  8 Apr 2026 23:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kaLlNo24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDD610E702;
 Wed,  8 Apr 2026 23:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775691318; x=1807227318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z1H5iVBVXvfrT9Lfgb75s4vfDijExo/2/XscAqSYLlw=;
 b=kaLlNo24UV1otBDb/hkkKOE2FYzMDdCTtG1+6SHKchLEAXm4HIya3h9u
 X4ao+5SaEwG43hmEh7Gi4kNS3Oyk5B4b3VlDYKM3okYmt4UkjF9v9RnXe
 al0ACSMrnC4bMU2FPSa+thkQlfhpnfv0UUE0r/7D1btdyFFWV80nJGN5a
 4B9k6RJb8HQ1xTS6dMpwiXd3Mz3I3w/A01J/WOyFSATcXIR8mrvuZHPrL
 LhheqPJ7sNgerEUGkTtMNRGziHOc4PWkhc1y3q48dIKTUg4rg2W3xE4US
 f82kcWigEHFo7k7VrPJO09XUbYHH1o2wPdT69/RT3ak/COVX4gos6P1l7 g==;
X-CSE-ConnectionGUID: FIAwg4lTR/GCI2BJt29caA==
X-CSE-MsgGUID: HXVD1I0SStOnST31JyhUqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76705988"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76705988"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 16:35:17 -0700
X-CSE-ConnectionGUID: momyI7C9TD2JMqCiwGgZ5Q==
X-CSE-MsgGUID: +S6SR6BSSauGC6S+/HDzGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230273110"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 16:35:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Simona Vetter <simona.vetter@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 2/6] drm/i915/reset: Reorganize display reset code
Date: Thu,  9 Apr 2026 02:34:54 +0300
Message-ID: <20260408233458.22666-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,amd.com:email]
X-Rspamd-Queue-Id: 51F853C4CBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop returning the "is there a display?" status from
intel_display_reset_prepare(). I plan to move the pending_fb_pin
into the i915 code, so I need to make that determination already
before intel_display_reset_prepare() is called. Add a new
intel_display_reset_supported() function for that.

Cc: Simona Vetter <simona.vetter@ffwll.ch>
Cc: Christian König <christian.koenig@amd.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_reset.c    | 23 ++++++++-----------
 .../drm/i915/display/intel_display_reset.h    |  3 ++-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 13 +++++++----
 3 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index d00ef5bdcbda..137a2a33c8b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -16,22 +16,24 @@
 #include "intel_hotplug.h"
 #include "intel_pps.h"
 
+bool intel_display_reset_supported(struct intel_display *display)
+{
+	return HAS_DISPLAY(display);
+}
+
 bool intel_display_reset_test(struct intel_display *display)
 {
-	return display->params.force_reset_modeset_test;
+	return HAS_DISPLAY(display) &&
+		display->params.force_reset_modeset_test;
 }
 
-/* returns true if intel_display_reset_finish() needs to be called */
-bool intel_display_reset_prepare(struct intel_display *display,
+void intel_display_reset_prepare(struct intel_display *display,
 				 modeset_stuck_fn modeset_stuck, void *context)
 {
 	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(display))
-		return false;
-
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
@@ -60,7 +62,7 @@ bool intel_display_reset_prepare(struct intel_display *display,
 		ret = PTR_ERR(state);
 		drm_err(display->drm, "Duplicating state failed with %i\n",
 			ret);
-		return true;
+		return;
 	}
 
 	ret = drm_atomic_helper_disable_all(display->drm, ctx);
@@ -68,13 +70,11 @@ bool intel_display_reset_prepare(struct intel_display *display,
 		drm_err(display->drm, "Suspending crtc's failed with %i\n",
 			ret);
 		drm_atomic_state_put(state);
-		return true;
+		return;
 	}
 
 	display->restore.modeset_state = state;
 	state->acquire_ctx = ctx;
-
-	return true;
 }
 
 void intel_display_reset_finish(struct intel_display *display, bool test_only)
@@ -83,9 +83,6 @@ void intel_display_reset_finish(struct intel_display *display, bool test_only)
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(display))
-		return;
-
 	state = fetch_and_zero(&display->restore.modeset_state);
 	if (!state)
 		goto unlock;
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
index 8b3bda134454..e0f15e757728 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.h
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
@@ -12,8 +12,9 @@ struct intel_display;
 
 typedef void modeset_stuck_fn(void *context);
 
+bool intel_display_reset_supported(struct intel_display *display);
 bool intel_display_reset_test(struct intel_display *display);
-bool intel_display_reset_prepare(struct intel_display *display,
+void intel_display_reset_prepare(struct intel_display *display,
 				 modeset_stuck_fn modeset_stuck, void *context);
 void intel_display_reset_finish(struct intel_display *display, bool test_only);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 37272871b0f2..ffd11767874f 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1425,16 +1425,19 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 		bool need_display_reset;
 		bool reset_display;
 
-		need_display_reset = intel_gt_gpu_reset_clobbers_display(gt) &&
+		need_display_reset =
+			intel_display_reset_supported(display) &&
+			intel_gt_gpu_reset_clobbers_display(gt) &&
 			intel_has_gpu_reset(gt);
 
-		reset_display = intel_display_reset_test(display) ||
+		reset_display =
+			intel_display_reset_test(display) ||
 			need_display_reset;
 
 		if (reset_display)
-			reset_display = intel_display_reset_prepare(display,
-								    display_reset_modeset_stuck,
-								    gt);
+			intel_display_reset_prepare(display,
+						    display_reset_modeset_stuck,
+						    gt);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-- 
2.52.0

