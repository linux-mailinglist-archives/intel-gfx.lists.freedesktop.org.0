Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C98A5523DD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 20:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CCA10F10A;
	Mon, 20 Jun 2022 18:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71D9010F10A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655749763; x=1687285763;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1kHtQ7ymJ6W30t8v+CvPF9LBTi6s8sfgOaWI0sqKPyU=;
 b=h2Mz/tfwz0MegJhIDAjdUyuzX3PBbFLk+fnljVLFcazd3aeBTN9sdl8q
 2WcnYtDN7IZmolbjBtqED4g65WjndA6u1X3lUd2SQnVbueZe7BuueoYVG
 ll6OUghbfayvNsB0xgRnVNmbeZ3ghwkNUeerdUq3rIxWkrkJZbtLhxMMt
 DtnsHxnIKWraNjIITzfKUGhrrIWZBAryPlWWrYLWR+g0FvPf9d83hAVqs
 OBmbqGp7JMfVNlzF9/41BpkLtBb9YEfb4zxOhKmH+HeoneBaQwyTJN3kz
 Vu8oEffqNAH/BAbKBrToXUi0QeW7H9cNdkvruTpNDM7K8WOOTCvaKOhRn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="281009869"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="281009869"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:29:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="643228765"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 20 Jun 2022 11:29:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 21:29:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 21:29:17 +0300
Message-Id: <20220620182917.10765-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620182917.10765-1-ville.syrjala@linux.intel.com>
References: <20220620182917.10765-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/fbc: Use lockdep_assert_held()
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

Replace the mutex_is_locked() stuff with lockdep_assert_held() since
that's what it's there for.

Asoo sprinkle these around so that we have more or less
mirrored coverate for the enable vs. disable instead of the
current situation where the asserts seem to be more or less
randomly thrown around.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 77669e03b9f7..db1c0eb508fa 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -669,6 +669,7 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
+	lockdep_assert_held(&fbc->lock);
 	drm_WARN_ON(&i915->drm, fbc->flip_pending);
 
 	trace_intel_fbc_nuke(fbc->state.plane);
@@ -678,6 +679,8 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
 
 static void intel_fbc_activate(struct intel_fbc *fbc)
 {
+	lockdep_assert_held(&fbc->lock);
+
 	intel_fbc_hw_activate(fbc);
 	intel_fbc_nuke(fbc);
 
@@ -686,9 +689,7 @@ static void intel_fbc_activate(struct intel_fbc *fbc)
 
 static void intel_fbc_deactivate(struct intel_fbc *fbc, const char *reason)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-
-	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
+	lockdep_assert_held(&fbc->lock);
 
 	if (fbc->active)
 		intel_fbc_hw_deactivate(fbc);
@@ -1220,6 +1221,8 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
 	struct intel_fbc *fbc = plane->fbc;
 	bool need_vblank_wait = false;
 
+	lockdep_assert_held(&fbc->lock);
+
 	fbc->flip_pending = true;
 
 	if (intel_fbc_can_flip_nuke(state, crtc, plane))
@@ -1277,7 +1280,7 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 	struct drm_i915_private *i915 = fbc->i915;
 	struct intel_plane *plane = fbc->state.plane;
 
-	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
+	lockdep_assert_held(&fbc->lock);
 	drm_WARN_ON(&i915->drm, fbc->active);
 
 	drm_dbg_kms(&i915->drm, "Disabling FBC on [PLANE:%d:%s]\n",
@@ -1292,9 +1295,7 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 
 static void __intel_fbc_post_update(struct intel_fbc *fbc)
 {
-	struct drm_i915_private *i915 = fbc->i915;
-
-	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
+	lockdep_assert_held(&fbc->lock);
 
 	fbc->flip_pending = false;
 
@@ -1430,6 +1431,8 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_fbc *fbc = plane->fbc;
 
+	lockdep_assert_held(&fbc->lock);
+
 	if (fbc->state.plane) {
 		if (fbc->state.plane != plane)
 			return;
-- 
2.35.1

