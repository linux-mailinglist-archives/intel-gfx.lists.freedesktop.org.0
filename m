Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBpDBr1IHWo2YgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:54:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A261F61BDA1
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35602112FFA;
	Mon,  1 Jun 2026 08:54:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZJpEGyi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89FF112FFA;
 Mon,  1 Jun 2026 08:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780304058; x=1811840058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4wKtwAj13cB8E3ZivtbpODhWh4vEX3LdodPkmzKidyw=;
 b=UZJpEGyiGYg7YJpNIRwKXuTbKJuOA8Q6O6ZDK6vCu9Wm/lK6akxh/FsE
 I89/7z3oCU/sLAy5/8k1wReM3tD7yfWetstsPqn9GEgIFmpkEmpffX1/7
 TQIicY0sN7zxUJkVoLm7QUYEpU0YOAoPinyWG0d/82yFcKIFHKcp55A+m
 anrFJCOQ0ysEwkfG6dwYDjkhflW5sT2ln38oDpZLvWBLOTiEKXLSY2Xaw
 lo40zQORHZQ87PYQTjUGc5ZwVYp9Ac6AbjZ+ZD9t8psNRRAKvp3YW/f7d
 Pc8m0DQztsEJh1lNmECykAR6f+vi+hZjMRWWzm2+mhLlZpwLoZzuLSoPX Q==;
X-CSE-ConnectionGUID: fApXJWQtRaaRwIz4qpPcdg==
X-CSE-MsgGUID: zHIt+2twQCu2oowKhZoeTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="91368919"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="91368919"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:54:18 -0700
X-CSE-ConnectionGUID: gg8WFEk2QRCSysr3YqMkrg==
X-CSE-MsgGUID: LbBJqtJgSwihcq/PnHiJEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="239110429"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 01 Jun 2026 01:54:16 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [v4 1/3] =?UTF-8?q?drm/i915/display:=20Don=E2=80=99t=20use=20atom?=
 =?UTF-8?q?ic=20state=20back-pointer=20to=20derive=20color=20pipeline?=
Date: Mon,  1 Jun 2026 13:59:51 +0530
Message-Id: <20260601082953.128539-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
References: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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
X-Rspamd-Queue-Id: A261F61BDA1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
Assisted-by: GitHub-Copilot:Claude-Sonnet-4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 .../drm/i915/display/intel_initial_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_plane.c    | 22 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_plane.h    |  3 ++-
 4 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 52347668f27d..88384dea868b 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -876,7 +876,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	new_plane_state->uapi.crtc_w = crtc_w;
 	new_plane_state->uapi.crtc_h = crtc_h;
 
-	intel_plane_copy_uapi_to_hw_state(new_plane_state, new_plane_state, crtc);
+	intel_plane_copy_uapi_to_hw_state(NULL, new_plane_state, new_plane_state, crtc);
 
 	ret = intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
 						  old_plane_state, new_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 6aa253678ec9..e414b5d1085c 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -170,7 +170,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	drm_framebuffer_get(fb);
 
 	plane_state->uapi.crtc = &crtc->base;
-	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
+	intel_plane_copy_uapi_to_hw_state(NULL, plane_state, plane_state, crtc);
 
 	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f55a6a2f7dd1..974cb671e1b9 100644
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
index a6338bba72d9..87c79a644052 100644
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

