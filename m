Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008EC81884E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 14:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835B710E467;
	Tue, 19 Dec 2023 13:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45E1810E2CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 13:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702991289; x=1734527289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SgoHkFHZf+kcvVU29/OcLVm0W2wZNYkz1AMYlkFpzz0=;
 b=EDOv4cTVKirbxqr7B4dhDK97VrCp8u6KGBWiE0SQaEtOoJBOj28tJe11
 0UMb0wo246K88nD6Nzkpj+Ymr2VbOH9LotXuFmrUyWnmlRL8Nw29YmpVl
 qEVkNrhVsI0AdmOqx1psBrRzA0WbFRzpyDBNHvId/uxGgyKYoUxjZqvhD
 gpYRA6JUKrHDunPsR/gGBJbA8xwLe6xBqpZlXKHScnL6RhJDQqmsfzo2t
 AlOGRWYag0CP0eKl7aKYHQJLoOE1vyVI5wcWHpAlCLWHLXTLebvf6tc2K
 4ylbv1fN/zrH9boZSUGXGq514wQoLr+z38ZPLGwzshiA9b3KE+Wa4D9Pt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17213577"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17213577"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 05:08:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769230638"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769230638"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 05:08:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 15:08:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Extract intel_atomic_swap_state()
Date: Tue, 19 Dec 2023 15:07:56 +0200
Message-ID: <20231219130756.25986-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
References: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
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

Pull all the state swap stuff into its own function to declutter
intel_atomic_commit() a bit.

Note that currently the state swap is spread across both
sides of the unprepare branch in intel_atomic_commit(), but
we can pull all of it ahead a bit since we bail on the first
error, and thus there is no change in behaviour from the
reordering.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 46eff0ee5519..bf37bfcf350e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7311,6 +7311,23 @@ static int intel_atomic_setup_commit(struct intel_atomic_state *state, bool nonb
 	return 0;
 }
 
+static int intel_atomic_swap_state(struct intel_atomic_state *state)
+{
+	int ret;
+
+	ret = drm_atomic_helper_swap_state(&state->base, true);
+	if (ret)
+		return ret;
+
+	intel_atomic_swap_global_state(state);
+
+	intel_shared_dpll_swap_state(state);
+
+	intel_atomic_track_fbs(state);
+
+	return 0;
+}
+
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 			bool nonblock)
 {
@@ -7358,9 +7375,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 
 	ret = intel_atomic_setup_commit(state, nonblock);
 	if (!ret)
-		ret = drm_atomic_helper_swap_state(&state->base, true);
-	if (!ret)
-		intel_atomic_swap_global_state(state);
+		ret = intel_atomic_swap_state(state);
 
 	if (ret) {
 		struct intel_crtc_state *new_crtc_state;
@@ -7374,8 +7389,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 		return ret;
 	}
-	intel_shared_dpll_swap_state(state);
-	intel_atomic_track_fbs(state);
 
 	drm_atomic_state_get(&state->base);
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
-- 
2.41.0

