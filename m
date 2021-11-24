Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0AE45B93B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7DD6E84E;
	Wed, 24 Nov 2021 11:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D24E6E84E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="222482809"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="222482809"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509436856"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 24 Nov 2021 03:37:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:47 +0200
Message-Id: <20211124113652.22090-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/20] drm/i915/fbc: Disable FBC fully on FIFO
 underrun
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

Currently a FIFO underrun just causes FBC to be deactivated,
and later checks then prevent it from being reactivated. We
can simpify our lives a bit by logically disabling FBC on
FIFO underruna. This avoids the funny intermediate state where
FBC is logically enabled but can't actually be activated.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 29 +++++++-----------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 616ab95766b2..74ba54d70e57 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -994,16 +994,6 @@ static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
 	return fbc->state_cache.cfb_size > fbc->compressed_fb.size * fbc->limit;
 }
 
-static bool intel_fbc_can_enable(struct intel_fbc *fbc)
-{
-	if (fbc->underrun_detected) {
-		fbc->no_fbc_reason = "underrun detected";
-		return false;
-	}
-
-	return true;
-}
-
 static int intel_fbc_check_plane(struct intel_atomic_state *state,
 				 struct intel_plane *plane)
 {
@@ -1123,22 +1113,11 @@ static bool intel_fbc_can_activate(struct intel_fbc *fbc)
 	struct drm_i915_private *i915 = fbc->i915;
 	struct intel_fbc_state *cache = &fbc->state_cache;
 
-	if (!intel_fbc_can_enable(fbc))
-		return false;
-
 	if (cache->no_fbc_reason) {
 		fbc->no_fbc_reason = cache->no_fbc_reason;
 		return false;
 	}
 
-	/* We don't need to use a state cache here since this information is
-	 * global for all CRTC.
-	 */
-	if (fbc->underrun_detected) {
-		fbc->no_fbc_reason = "underrun detected";
-		return false;
-	}
-
 	/* The use of a CPU fence is one of two ways to detect writes by the
 	 * CPU to the scanout and trigger updates to the FBC.
 	 *
@@ -1467,6 +1446,11 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 	if (cache->no_fbc_reason)
 		return;
 
+	if (fbc->underrun_detected) {
+		fbc->no_fbc_reason = "FIFO underrun";
+		return;
+	}
+
 	if (intel_fbc_alloc_cfb(fbc, intel_fbc_cfb_size(plane_state), min_limit)) {
 		fbc->no_fbc_reason = "not enough stolen memory";
 		return;
@@ -1567,6 +1551,9 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 	fbc->underrun_detected = true;
 
 	intel_fbc_deactivate(fbc, "FIFO underrun");
+	if (!fbc->flip_pending)
+		intel_wait_for_vblank(i915, fbc->plane->pipe);
+	__intel_fbc_disable(fbc);
 out:
 	mutex_unlock(&fbc->lock);
 }
-- 
2.32.0

