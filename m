Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0GrZIqVvAWptZQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:56:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9FA5084D6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:56:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965DA10E493;
	Mon, 11 May 2026 05:56:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYyVH8XH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B1610E490;
 Mon, 11 May 2026 05:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778479010; x=1810015010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DxflBDrtRb+xSBKyN8v0o/HyrNppQUWvWLbqIYVULK4=;
 b=KYyVH8XHlAZ+LkC/tto/5UZJBkeC6Ic2lTqiVfIdqhW7kavtloVzHe2p
 vQFA8/tcaVcLnvU1K+NuAoS0X1Rdcn88elHqvBvIzPAqnghQaHje8GqbT
 qUGxNTz+MkLsSNxYpp6vkDi8jg64Iv1PUsGE2TXAcWrxOB46q9mp30ZV9
 Z3r6D1SBnP9QqkKWU0/rWd1/zH5WzgFmd7Z/VYxqcMF2coAi20d/gw1nO
 e6bWn5kY3UAWowfpZRVX0N5XsFbgiNfrHDNmOTytqzviDrTR0sx//ixU3
 ZhVZr1d1wpu9i1IDy93NP+4zdAzumvoSxJuovxLvVCE8qQs7QNE/P082/ A==;
X-CSE-ConnectionGUID: 0NXuG9A1Qu+XmvYwyH7Z5A==
X-CSE-MsgGUID: qXZ2TXQLQduwo3ZB6/TscQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81922851"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81922851"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:56:49 -0700
X-CSE-ConnectionGUID: q95/yGRGR/u2fYTHLVVe3Q==
X-CSE-MsgGUID: jXE1fhXYTGC6xmCnIfBueg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="241719949"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 10 May 2026 22:56:47 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [PATCH v3 2/4] =?UTF-8?q?drm/i915/display:=20Don=E2=80=99t=20use?=
 =?UTF-8?q?=20atomic=20state=20back-pointer=20to=20derive=20color=20pipeli?=
 =?UTF-8?q?ne?=
Date: Mon, 11 May 2026 11:02:11 +0530
Message-Id: <20260511053213.3122314-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: 1C9FA5084D6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Instead of relying on the plane_state->uapi.state back-pointer to reach
the intel_atomic_state inside intel_plane_color_copy_uapi_to_hw_state(),
accept the intel_atomic_state as an argument to make the dependency
explicit.

Update intel_plane_copy_uapi_to_hw_state() and its callers accordingly.
Call sites that do not have an atomic state available (e.g. legacy cursor
update and initial plane setup) pass NULL.

In such cases, skip color pipeline programming as there is no
corresponding atomic colorop state to consume.

v2:
 - Rebase

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Assisted-by: GitHub Copilot:Claude Sonnet 4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 .../drm/i915/display/intel_initial_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_plane.c    | 22 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_plane.h    |  3 ++-
 4 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 18d1014de361..fa934248e3e1 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -877,7 +877,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	new_plane_state->uapi.crtc_w = crtc_w;
 	new_plane_state->uapi.crtc_h = crtc_h;
 
-	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state, crtc);
+	intel_plane_copy_uapi_to_hw_state(NULL, new_plane_state, new_plane_state, crtc);
 
 	ret = intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
 						  old_plane_state, new_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 034fe199c2a1..061a3d6ebca0 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -170,7 +170,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	drm_framebuffer_get(fb);
 
 	plane_state->uapi.crtc = &crtc->base;
-	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
+	intel_plane_copy_uapi_to_hw_state(NULL, plane_state, plane_state, crtc);
 
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index e403fe4a8a20..a8efe0011b23 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -381,25 +381,27 @@ intel_plane_colorop_replace_blob(struct intel_plane_state *plane_state,
 }
 
 static void
-intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+intel_plane_color_copy_uapi_to_hw_state(struct intel_atomic_state *state,
+					struct intel_plane_state *plane_state,
 					const struct intel_plane_state *from_plane_state,
 					struct intel_crtc *crtc)
 {
 	struct drm_colorop *iter_colorop, *colorop;
 	struct drm_colorop_state *new_colorop_state;
-	struct drm_atomic_commit *state = plane_state->uapi.state;
 	struct intel_colorop *intel_colorop;
 	struct drm_property_blob *blob;
-	struct intel_atomic_state *intel_atomic_state = to_intel_atomic_state(state);
-	struct intel_crtc_state *new_crtc_state = intel_atomic_state ?
-		intel_atomic_get_new_crtc_state(intel_atomic_state, crtc) : NULL;
+	struct intel_crtc_state *new_crtc_state = state ?
+		intel_atomic_get_new_crtc_state(state, crtc) : NULL;
 	bool changed = false;
 	int i = 0;
 
+	if (!state)
+		return;
+
 	iter_colorop = from_plane_state->uapi.color_pipeline;
 
 	while (iter_colorop) {
-		for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {
+		for_each_new_colorop_in_state(&state->base, colorop, new_colorop_state, i) {
 			if (new_colorop_state->colorop == iter_colorop) {
 				blob = new_colorop_state->bypass ? NULL : new_colorop_state->data;
 				intel_colorop = to_intel_colorop(colorop);
@@ -415,7 +417,8 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 		new_crtc_state->plane_color_changed = true;
 }
 
-void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
+				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state,
 				       struct intel_crtc *crtc)
 {
@@ -444,7 +447,7 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 	plane_state->uapi.src = drm_plane_state_src(&from_plane_state->uapi);
 	plane_state->uapi.dst = drm_plane_state_dest(&from_plane_state->uapi);
 
-	intel_plane_color_copy_uapi_to_hw_state(plane_state, from_plane_state, crtc);
+	intel_plane_color_copy_uapi_to_hw_state(state, plane_state, from_plane_state, crtc);
 }
 
 void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
@@ -841,7 +844,8 @@ static int plane_atomic_check(struct intel_atomic_state *state,
 					   old_primary_crtc_plane_state,
 					   new_primary_crtc_plane_state);
 
-	intel_plane_copy_uapi_to_hw_state(new_plane_state,
+	intel_plane_copy_uapi_to_hw_state(state,
+					  new_plane_state,
 					  new_primary_crtc_plane_state,
 					  crtc);
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 7b5456f56f42..9d627d321f2e 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -35,7 +35,8 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state,
 				   int color_plane);
-void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
+void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
+				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state,
 				       struct intel_crtc *crtc);
 void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
-- 
2.25.1

