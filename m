Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPYbB7EI62lvHgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 08:07:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA8B45A270
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 08:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6811E10E3AA;
	Fri, 24 Apr 2026 06:07:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H23kBQ+z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E074E10E3AA;
 Fri, 24 Apr 2026 06:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777010861; x=1808546861;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e5KmvoLUOaW8pmoRp1MVikCpBP0zqkvaIrhGA0WzrPE=;
 b=H23kBQ+zMyReRT5oVtwCY9m2tET8YAgjUvQfM9EM2wLrbDkl41FsJ3g9
 W7EBcQdgqrbaprpdZUoGCDkvihpPub7D59WmCrEZ7rRJCpBpUaUVvxcXa
 N7LStnwPNSUfWpMvLhZkiIyvtSsbxb4T+JzxjW9RaUeUk/Pk+g8v5HHUb
 +UTQAr/+lQcTRSIn9Kb5IWyqPpi28avPCqKwzjxhHGxTm40SGztTMW67c
 gHVGC4QDrhR/HjTBKMH2szR9eURHg+GGYSHaZOwAESH473AAzsE2w9cev
 FL156iYzsdgIXtbGOO5ASpRX9v8dYdT+2xu71Ive6/0HOMW/QuRn0w2uC w==;
X-CSE-ConnectionGUID: NkRBVdW2RhaSvF3yLxXrcg==
X-CSE-MsgGUID: 612ZDK4SS/eUtlAe6xk5Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77690816"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77690816"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 23:07:40 -0700
X-CSE-ConnectionGUID: MSsuVdgbQGusHxgtmOFTGQ==
X-CSE-MsgGUID: wf+lhcWVQCKGun6oumhMVA==
X-ExtLoop1: 1
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa003.fm.intel.com with ESMTP; 23 Apr 2026 23:07:38 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [PATCH v2 1/4] =?UTF-8?q?drm/i915/display:=20Don=E2=80=99t=20use?=
 =?UTF-8?q?=20atomic=20state=20back-pointer=20to=20derive=20color=20pipeli?=
 =?UTF-8?q?ne?=
Date: Fri, 24 Apr 2026 11:11:26 +0530
Message-Id: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Queue-Id: 7AA8B45A270
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

Instead of relying on the plane_state->uapi.state back-pointer to reach
the intel_atomic_state inside intel_plane_color_copy_uapi_to_hw_state(),
accept the intel_atomic_state as an argument to make the dependency
explicit.

Update intel_plane_copy_uapi_to_hw_state() and its callers accordingly.
Call sites that do not have an atomic state available (e.g. legacy cursor
update and initial plane setup) pass NULL.

In such cases, skip color pipeline programming as there is no
corresponding atomic colorop state to consume.

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
index 0e5cd45f01cc..d021b0bebf35 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -170,7 +170,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	drm_framebuffer_get(fb);
 
 	plane_state->uapi.crtc = &crtc->base;
-	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
+	intel_plane_copy_uapi_to_hw_state(NULL, plane_state, plane_state, crtc);
 
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index c2b58d3b9c23..d08e9166824b 100644
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
-	struct drm_atomic_state *state = plane_state->uapi.state;
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
 	iter_colorop = plane_state->uapi.color_pipeline;
 
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

