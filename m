Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1404B8F8E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B8510E752;
	Wed, 16 Feb 2022 17:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DEE10E85B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 17:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033394; x=1676569394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qv1qJdYsII4h5eQaZ2Vwb06u9vtKITR6H32tZtT7axk=;
 b=Z9lB9xdLYk1qpI2p4gK6246njhjwwwslcXqHIHCoJ7f3GITsT3qzfu2C
 2vZvL1n+KR0VKZSGbmwuABCi3m1n7LvsLndFDgrm6jHDxnzuzy9bkJkpz
 6nvspQOAgLlxhenx/MvTK6nXFeXgx9uvSflSHic8z9maJ1SlgtumdP5+O
 IAbj0RUA0FOI1NPLf8ebZrXYUlkQYeqMyLq4bbschD6UqxRKaT6rwgEBA
 40wbCgXPry5n2C8/sFr153Kkj3jH7rdi0rrf5+tMT+wA8VNzI4E7lTlhn
 n7kyG+nWBA3D2J6OOODY+eyOmuZ8AfSJKVTYmxtl/EjcyXX5nRG/Zygjs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248279668"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="248279668"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:43:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="499628017"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 16 Feb 2022 09:43:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 19:43:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 19:42:50 +0200
Message-Id: <20220216174250.4449-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: Extract
 intel_bw_check_data_rate()
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

Extract the data rate calculation loop out from
intel_bw_atomic_check() to make it a bit less confusing.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 63 +++++++++++++++----------
 1 file changed, 37 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index fa03f0935b6d..963b99d3557c 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -835,31 +835,12 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
 	return mask;
 }
 
-int intel_bw_atomic_check(struct intel_atomic_state *state)
+static int intel_bw_check_data_rate(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
-	struct intel_bw_state *new_bw_state = NULL;
-	const struct intel_bw_state *old_bw_state = NULL;
-	unsigned int data_rate;
-	unsigned int num_active_planes;
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	int i, ret;
-	u32 allowed_points = 0;
-	unsigned int max_bw_point = 0, max_bw = 0;
-	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
-	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
-
-	/* FIXME earlier gens need some checks too */
-	if (DISPLAY_VER(dev_priv) < 11)
-		return 0;
-
-	/*
-	 * If we already have the bw state then recompute everything
-	 * even if pipe data_rate / active_planes didn't change.
-	 * Other things (such as SAGV) may have changed.
-	 */
-	new_bw_state = intel_atomic_get_new_bw_state(state);
+	int i;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
@@ -871,6 +852,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 			intel_bw_crtc_num_active_planes(old_crtc_state);
 		unsigned int new_active_planes =
 			intel_bw_crtc_num_active_planes(new_crtc_state);
+		struct intel_bw_state *new_bw_state;
 
 		/*
 		 * Avoid locking the bw state when
@@ -887,13 +869,42 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 		new_bw_state->data_rate[crtc->pipe] = new_data_rate;
 		new_bw_state->num_active_planes[crtc->pipe] = new_active_planes;
 
-		drm_dbg_kms(&dev_priv->drm,
-			    "pipe %c data rate %u num active planes %u\n",
-			    pipe_name(crtc->pipe),
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] data rate %u num active planes %u\n",
+			    crtc->base.base.id, crtc->base.name,
 			    new_bw_state->data_rate[crtc->pipe],
 			    new_bw_state->num_active_planes[crtc->pipe]);
 	}
 
+	return 0;
+}
+
+int intel_bw_atomic_check(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_bw_state *old_bw_state;
+	struct intel_bw_state *new_bw_state;
+	unsigned int data_rate;
+	unsigned int num_active_planes;
+	int i, ret;
+	u32 allowed_points = 0;
+	unsigned int max_bw_point = 0, max_bw = 0;
+	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
+	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
+
+	/* FIXME earlier gens need some checks too */
+	if (DISPLAY_VER(dev_priv) < 11)
+		return 0;
+
+	ret = intel_bw_check_data_rate(state);
+	if (ret)
+		return ret;
+
+	/*
+	 * If we don't have a bw_state by now then none of the
+	 * inputs to the QGV mask computation may have changed.
+	 */
+	new_bw_state = intel_atomic_get_new_bw_state(state);
 	if (!new_bw_state)
 		return 0;
 
-- 
2.34.1

