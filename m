Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0O7JIT4g4WmapQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB6E413337
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9EB10E92D;
	Thu, 16 Apr 2026 17:45:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mr1R3Lpn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C16D10E927;
 Thu, 16 Apr 2026 17:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361530; x=1807897530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+P0MHJJSyomna06hvGm2kCHagaX9cKShAapVopP8hO8=;
 b=mr1R3LpnF1ptLl1wRxuQS3wgpnsGwYjzJV7rvopWdpvhB4c/qbKztKzh
 tuSZMJrYf46QGschbCJz8xu5orqrHjT0Yvsbsa1jm6Ko7mrBi86w37RkX
 HBX664DmgC4y2rQ4mKgQOSwghOmIySs2aor2vCyfDbfTjNQrzhqjbufvD
 AdzwUpRPwp2LX/gimO+AnP3B2NIqOxWj9Oxpj2SoHg2jiGvAiH6S2ECa5
 X4Q4TJ0JFuTsW6O0soOaO++BxQUE/7f6pCFLFb037xxgvDScbr1f0q4+D
 yAPA9ITZYYDA0UGCWMpkJdtdWzRLRWwO6f1SYZD2fSvI77T/V4B1jhxNp A==;
X-CSE-ConnectionGUID: dTjJQD8eR9KgxCnRpVbsDQ==
X-CSE-MsgGUID: KI4IWPCjTGellTtx1XiETw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77279696"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77279696"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:28 -0700
X-CSE-ConnectionGUID: hzaF8IhTRTOqQptIX/Ykog==
X-CSE-MsgGUID: Ln4XVJPlSOaLA+wAAc8V2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229960391"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:27 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/11] drm/i915: Extract intel_plane_needs_fence()
Date: Thu, 16 Apr 2026 20:44:44 +0300
Message-ID: <20260416174448.28264-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 2EB6E413337
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the naked DISPLA_VER<4 checks into a descriptive little
helper (intel_plane_needs_fence()).

And while at it document the reason why the check is what it is.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_plane.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_plane.h | 1 +
 drivers/gpu/drm/i915/i915_fb_pin.c         | 2 +-
 4 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index cbeb39ebdb73..1c0859d5f829 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1287,7 +1287,7 @@ bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
-	return DISPLAY_VER(display) < 4 ||
+	return intel_plane_needs_fence(display) ||
 		(plane->fbc && !plane_state->no_fbc_reason &&
 		 i915_gtt_view_is_normal(&plane_state->view.gtt));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f41f4c2ac320..c2b58d3b9c23 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -192,6 +192,15 @@ bool intel_plane_needs_physical(struct intel_plane *plane)
 		DISPLAY_INFO(display)->cursor_needs_physical;
 }
 
+bool intel_plane_needs_fence(struct intel_display *display)
+{
+	/*
+	 * pre-i965 planes use the fence for tiled scanout.
+	 * i965+ planes have their own tiled scanout control bit.
+	 */
+	return DISPLAY_VER(display) < 4;
+}
+
 bool intel_plane_can_async_flip(struct intel_plane *plane,
 				const struct drm_format_info *info,
 				u64 modifier)
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 7fa7fbbb58dc..7b5456f56f42 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -82,6 +82,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 void intel_plane_helper_add(struct intel_plane *plane);
 bool intel_plane_needs_low_address(struct intel_display *display);
 bool intel_plane_needs_physical(struct intel_plane *plane);
+bool intel_plane_needs_fence(struct intel_display *display);
 void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
 					 struct intel_plane_state *new_plane_state);
 int intel_plane_add_affected(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index bfe9a5342e13..a8ed888183cb 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -188,7 +188,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		 * mode that matches the user configuration.
 		 */
 		ret = i915_vma_pin_fence(vma);
-		if (ret != 0 && DISPLAY_VER(display) < 4) {
+		if (ret != 0 && intel_plane_needs_fence(display)) {
 			i915_vma_unpin(vma);
 			goto err_unpin;
 		}
-- 
2.52.0

