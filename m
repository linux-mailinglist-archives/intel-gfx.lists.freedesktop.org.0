Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHtIBJ4R2WlClwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58C93D8E78
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ECE210E977;
	Fri, 10 Apr 2026 15:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4BiAEAA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F63D10E977;
 Fri, 10 Apr 2026 15:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833499; x=1807369499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SCbRsuwleZoRe8aAWAbvjwdP1LNMk0vXzHSJ98Fpvhk=;
 b=F4BiAEAAnF8wgC9u02cSs+6czTv+pe2yHsKVq0kmjCWUK+TDxfk8BZuz
 6aKiZuqq9l36DP33LgfnBnMRf7krYJehkjGvileK5SmTjJZfocd+hBIeW
 1NVSWxE3WaWGhCfCFnc5GL36PlmDTF5xSj8BnYzjCdahDobPlzz77FFZs
 u/eOPudDbZjP8MiABMJstxENIsEhBpW94dsNZcRT3L/4s6z9wnLRzaoMM
 zJA5BX0XuG3xS/XeiotB2atDiw5BhLFAE9fYVtxkn9m6ztzNaqAlej4sQ
 2usRJ0R9oTtXzdopel692vUdF7UA+tKA9oXAC2w8yJAfZsj/51G8h6otz g==;
X-CSE-ConnectionGUID: daiDv53PQgqd0cbECgyfYg==
X-CSE-MsgGUID: VIDIow5+Q1Ozh6ZnosKB+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76815304"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76815304"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:04:57 -0700
X-CSE-ConnectionGUID: OLz7STcKQ4eEe9mfEKcNlw==
X-CSE-MsgGUID: Zy10WyrQTne2xY93IDAmAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230827799"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:04:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/10] drm/i915: Introduce sanity to the plane_config pointer
 vs. array thing
Date: Fri, 10 Apr 2026 18:04:40 +0300
Message-ID: <20260410150449.9699-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: B58C93D8E78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The "plane_config" vs. "plane_configs" naming difference is very
subtle, making it far too easy to use the wrong thing by accident.
Introduce a separate type for the array, making it impossible to
pass in the wrong thing. And while at it name the variable
"all_plane_configs" to help the poor reader make sense of things.

The .config_fini() prototype also mistakenly used the plural
form despite only taking in a singular plane_config. So fix that
one up as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_initial_plane.c    | 21 ++++++++++++-------
 include/drm/intel/display_parent_interface.h  |  2 +-
 2 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index ee545c033da6..4f51083dbd11 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -11,6 +11,10 @@
 #include "intel_initial_plane.h"
 #include "intel_plane.h"
 
+struct intel_initial_plane_configs {
+	struct intel_initial_plane_config config[I915_MAX_PIPES];
+};
+
 void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
@@ -20,7 +24,7 @@ void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 
 static const struct intel_plane_state *
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
-			      const struct intel_initial_plane_config plane_configs[])
+			      const struct intel_initial_plane_configs *all_plane_configs)
 {
 	struct intel_display *display = to_intel_display(this);
 	struct intel_crtc *crtc;
@@ -39,7 +43,8 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 		if (!plane_state->ggtt_vma)
 			continue;
 
-		if (plane_configs[this->pipe].base == plane_configs[crtc->pipe].base)
+		if (all_plane_configs->config[this->pipe].base ==
+		    all_plane_configs->config[crtc->pipe].base)
 			return plane_state;
 	}
 
@@ -69,10 +74,10 @@ intel_alloc_initial_plane_obj(struct intel_display *display,
 
 static void
 intel_find_initial_plane_obj(struct intel_crtc *crtc,
-			     struct intel_initial_plane_config plane_configs[])
+			     struct intel_initial_plane_configs *all_plane_configs)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct intel_initial_plane_config *plane_config = &plane_configs[crtc->pipe];
+	struct intel_initial_plane_config *plane_config = &all_plane_configs->config[crtc->pipe];
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	struct intel_plane_state *plane_state = to_intel_plane_state(plane->base.state);
 	struct drm_framebuffer *fb;
@@ -93,7 +98,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	} else {
 		const struct intel_plane_state *other_plane_state;
 
-		other_plane_state = intel_reuse_initial_plane_obj(crtc, plane_configs);
+		other_plane_state = intel_reuse_initial_plane_obj(crtc, all_plane_configs);
 		if (!other_plane_state)
 			goto nofb;
 
@@ -158,14 +163,14 @@ static void plane_config_fini(struct intel_display *display,
 
 void intel_initial_plane_config(struct intel_display *display)
 {
-	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
+	struct intel_initial_plane_configs all_plane_configs = {};
 	struct intel_crtc *crtc;
 
 	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_initial_plane_config *plane_config =
-			&plane_configs[crtc->pipe];
+			&all_plane_configs.config[crtc->pipe];
 
 		if (!crtc_state->hw.active)
 			continue;
@@ -183,7 +188,7 @@ void intel_initial_plane_config(struct intel_display *display)
 		 * If the fb is shared between multiple heads, we'll
 		 * just get the first one.
 		 */
-		intel_find_initial_plane_obj(crtc, plane_configs);
+		intel_find_initial_plane_obj(crtc, &all_plane_configs);
 
 		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
 			intel_initial_plane_vblank_wait(crtc);
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 258e6388ef77..9041897c772e 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -91,7 +91,7 @@ struct intel_display_initial_plane_interface {
 	struct drm_gem_object *(*alloc_obj)(struct drm_device *drm, struct intel_initial_plane_config *plane_config);
 	int (*setup)(struct drm_plane_state *plane_state, struct intel_initial_plane_config *plane_config,
 		     struct drm_framebuffer *fb, struct i915_vma *vma);
-	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
+	void (*config_fini)(struct intel_initial_plane_config *plane_config);
 };
 
 struct intel_display_irq_interface {
-- 
2.52.0

