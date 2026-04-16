Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAQaCTgg4WmipQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF6C41331A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D0810E923;
	Thu, 16 Apr 2026 17:45:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CO29z3Le";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CDC10E922;
 Thu, 16 Apr 2026 17:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361524; x=1807897524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cmv03a75oTxubo+6AFWKBub2cvDv9hXuHCQchmv+5j0=;
 b=CO29z3LegOPNxIrhFSxkxwbxRP7unhhfILjovO5yN7f1xtBKYsfOhMT6
 5Ve3tHGCCXeRMIhmcteEhfa/lBBQDgPPGC4yEtX2an9E3AHII2UYlBYX7
 wO7rqSEi/sBhvoc6FROzr3T7jWWw9LFoD5dvvSCfvkT2uBb8WYCJTkIEV
 MqRw+Q+FaFQifOPk97N1YF/hvIznocGkI4MFinPiIu5YxcdnQbF12FJQg
 C3ZbxgA+sMjSo7m2zhL6eIyXPDvAeMmgoxmhM0ETLOvYmRFpbycBNA7Q3
 pex5tVIV31vPuKkmNDpyYqEjAisT9R7exAL+KNUV8FzMrV6Ll1FlnGLSR Q==;
X-CSE-ConnectionGUID: YDNqRXeKRMaoE+PvzO6/nA==
X-CSE-MsgGUID: Gp3CHwVMSa2GQ8q2jvsKwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77279635"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77279635"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:15 -0700
X-CSE-ConnectionGUID: qblDDmO/SXW0g14fyDewsA==
X-CSE-MsgGUID: 9w6nJSfpT6m4u7vHtahIvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229960340"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/11] drm/i915: Extract intel_plane_needs_low_address()
Date: Thu, 16 Apr 2026 20:44:41 +0300
Message-ID: <20260416174448.28264-6-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 8CF6C41331A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the naked "gmch? -> need a low ggtt address" check into
a more descriptive helper (intel_plane_needs_low_address()).
The goal being to eliminate all display specific stuff from the
low level pinning code.

The actual implementation still abuses PIN_MAPPABLE to achieve
this goal. I'm not entire convinced that this whole thing even
needs to exist, and the original issue wasn't just caused by
some other bug. But no time to dig into it right now, so let's
keep going.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_plane.h |  2 ++
 drivers/gpu/drm/i915/i915_fb_pin.c         | 11 ++---------
 3 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index f15dd9e91243..f41f4c2ac320 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -171,6 +171,19 @@ intel_plane_destroy_state(struct drm_plane *plane,
 	kfree(plane_state);
 }
 
+bool intel_plane_needs_low_address(struct intel_display *display)
+{
+	/*
+	 * Valleyview is definitely limited to scanning out the first
+	 * 512MiB. Lets presume this behaviour was inherited from the
+	 * g4x display engine and that all earlier gen are similarly
+	 * limited. Testing suggests that it is a little more
+	 * complicated than this. For example, Cherryview appears quite
+	 * happy to scanout from anywhere within its global aperture.
+	 */
+	return HAS_GMCH(display);
+}
+
 bool intel_plane_needs_physical(struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(plane);
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 5a8f2f3baab5..7fa7fbbb58dc 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -15,6 +15,7 @@ struct drm_rect;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
 struct intel_plane;
 struct intel_plane_state;
@@ -79,6 +80,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
 void intel_plane_helper_add(struct intel_plane *plane);
+bool intel_plane_needs_low_address(struct intel_display *display);
 bool intel_plane_needs_physical(struct intel_plane *plane);
 void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
 					 struct intel_plane_state *new_plane_state);
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 96ffc4b0d809..a3e5107c12f0 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -140,16 +140,9 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 
 	atomic_inc(&i915->pending_fb_pin);
 
-	/*
-	 * Valleyview is definitely limited to scanning out the first
-	 * 512MiB. Lets presume this behaviour was inherited from the
-	 * g4x display engine and that all earlier gen are similarly
-	 * limited. Testing suggests that it is a little more
-	 * complicated than this. For example, Cherryview appears quite
-	 * happy to scanout from anywhere within its global aperture.
-	 */
 	pinctl = 0;
-	if (HAS_GMCH(display))
+	/* PIN_MAPPABLE limits the address to GMADR size */
+	if (intel_plane_needs_low_address(display))
 		pinctl |= PIN_MAPPABLE;
 
 	i915_gem_ww_ctx_init(&ww, true);
-- 
2.52.0

