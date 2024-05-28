Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3138B8D237E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E1A112608;
	Tue, 28 May 2024 18:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gZ9ri25M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39EED112606
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922195; x=1748458195;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5mu3DTZKnenvuoHIa8uO31ji4l5J4ii7LZ9Lm5MEzcA=;
 b=gZ9ri25MaKeME3mO7S/NiTpC2focSQMcOJ4zD7HxnbxAh+YJRa08Sbu9
 Qf5Ape7tHq7/wncmZvOThopPq7Mg0jwLFxoEKUEeWmL9N7a0L8wWbFDxp
 QiuAyaTHE+QAkmmtWnZtHuX3AbYWffmeWvHj5yLX7tOfCcnvgHBRH0Ouu
 cn3dugSdEPHL85O0qoCwn1/aEsZjIeSZKynGhbhr3aVtQlnIGbpIhverQ
 kNrZW2v81cpWb6PwSQBBTJg1pTraur1c9HDNm537GBcnp+0nFtumECaaZ
 XPBdvwfzgO8E4HmHBOwbvjPBjcPwMXlHjBGUYnk/yZEaMhmkIelIMhxZH w==;
X-CSE-ConnectionGUID: JX/jIlmnTa6/Fqafb6kSjg==
X-CSE-MsgGUID: Qqd3AGvmTfyDG3X8gW9r7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35812418"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35812418"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:49:55 -0700
X-CSE-ConnectionGUID: kLjusoOaSRCh3u2E4EzrtA==
X-CSE-MsgGUID: /J6yZof5QTO622isNcsEvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35141373"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:49:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:49:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Plumb the full atomic state into
 skl_ddb_add_affected_planes()
Date: Tue, 28 May 2024 21:49:45 +0300
Message-ID: <20240528184945.24083-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
References: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
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

skl_ddb_add_affected_planes() needs the full atomic state. Instead
of digging that out from dubious sources plumb it in explicitly.

The wm counterpart (skl_wm_add_affected_planes()) already does
things in the proper way.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2064f72da675..a2726364b34d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2429,12 +2429,14 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 }
 
 static int
-skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_state,
-			    struct intel_crtc_state *new_crtc_state)
+skl_ddb_add_affected_planes(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
 {
-	struct intel_atomic_state *state = to_intel_atomic_state(new_crtc_state->uapi.state);
-	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane *plane;
 
 	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
@@ -2489,7 +2491,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *old_dbuf_state;
 	struct intel_dbuf_state *new_dbuf_state = NULL;
-	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_crtc *crtc;
 	int ret, i;
@@ -2577,14 +2578,12 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_crtc_allocate_plane_ddb(state, crtc);
 		if (ret)
 			return ret;
 
-		ret = skl_ddb_add_affected_planes(old_crtc_state,
-						  new_crtc_state);
+		ret = skl_ddb_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
 	}
-- 
2.44.1

