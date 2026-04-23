Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MDn8K81O6mkhxgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 643EA455296
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FBA10F1E1;
	Thu, 23 Apr 2026 16:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SgXIQAfi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9EB10F1EE;
 Thu, 23 Apr 2026 16:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963275; x=1808499275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QH9QB9DLxhsFIngYqSTcWTo3XHCo9VCxtn02lfEHj70=;
 b=SgXIQAfioesoojJoeavSSEnRysoZs+6d0oQOg0ET6aX3QH3Xj1GCNXHF
 Ch+7or38ZnF/ZMoANA1MveyWFoYBrqj1io664CxZLbxiD5lM3fTrwR2qw
 amoNFXiCElXjB4YgYtAtSP0JQMu8dNGCduCCJM9faRJe6fi20Z+vTvhoL
 9yNiDsD9wa3EiOtGF3zsf87bO1EEDxiK4OpQgkm+29r2qUMp9sZD2XQKj
 +ZAIBMWhpnyjCOctj1Wr/VMH+t1onGIl6VZnX+m/IJ7zrS9Fk2MtUAWd9
 GlTdDnxECoD6dG1/akgWqmP4HhfmGpagYjrAhu1HhY1yQ/kpezklmwPqE g==;
X-CSE-ConnectionGUID: RhLSz1sKRwastPHeF9LOpQ==
X-CSE-MsgGUID: zNAxJ2EWQiaKNaf+XRa21A==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81799509"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="81799509"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:35 -0700
X-CSE-ConnectionGUID: XxdAvWcXRJynyECyTDiEsg==
X-CSE-MsgGUID: GQUU8RJRS3+zlinPKC+WNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="232560161"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/16] drm/xe: Introduce xe_fb_pin_dpt_(un)pin()
Date: Thu, 23 Apr 2026 19:53:39 +0300
Message-ID: <20260423165346.20884-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 643EA455296
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the inner DPT parts of intel_plane_(un)pin() into the
xe_fb_pin_dpt_(un)pin(). These will become part of the new
fb_pin parent interface.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 69 ++++++++++++++++++++++----
 1 file changed, 59 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 9774089ee75c..46f6ae6acc4e 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -428,6 +428,36 @@ void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
 	__xe_unpin_fb_vma(vma);
 }
 
+static int xe_fb_pin_dpt_pin(struct drm_gem_object *obj, struct intel_dpt *dpt,
+			     const struct intel_fb_pin_params *pin_params,
+			     struct i915_vma **out_dpt_vma,
+			     struct i915_vma **out_ggtt_vma,
+			     u32 *out_offset)
+{
+	struct i915_vma *ggtt_vma;
+
+	WARN_ON(dpt);
+
+	ggtt_vma = __xe_pin_fb_vma(obj, true, pin_params);
+	if (IS_ERR(ggtt_vma))
+		return PTR_ERR(ggtt_vma);
+
+	*out_dpt_vma = NULL; /* not used on xe */
+	*out_ggtt_vma = ggtt_vma;
+	*out_offset = xe_ggtt_node_addr(ggtt_vma->node);
+
+	return 0;
+}
+
+static void xe_fb_pin_dpt_unpin(struct intel_dpt *dpt,
+				struct i915_vma *dpt_vma,
+				struct i915_vma *ggtt_vma)
+{
+	WARN_ON(dpt || dpt_vma);
+
+	__xe_unpin_fb_vma(ggtt_vma);
+}
+
 static bool reuse_vma(struct intel_plane_state *new_plane_state,
 		      const struct intel_plane_state *old_plane_state)
 {
@@ -457,27 +487,35 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
-	struct drm_framebuffer *fb = new_plane_state->hw.fb;
-	struct drm_gem_object *obj = intel_fb_bo(fb);
+	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	struct intel_fb_pin_params pin_params = {
 		.view = &new_plane_state->view.gtt,
-		.alignment = plane->min_alignment(plane, fb, 0),
-		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
+		.alignment = plane->min_alignment(plane, &fb->base, 0),
+		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
 	};
 	struct i915_vma *ggtt_vma = NULL;
 	struct i915_vma *dpt_vma = NULL;
 	int fence_id = -1;
 	u32 offset;
+	int ret;
 
 	if (reuse_vma(new_plane_state, old_plane_state))
 		return 0;
 
-	ggtt_vma = __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
-	if (IS_ERR(ggtt_vma))
-		return PTR_ERR(ggtt_vma);
+	if (!intel_fb_uses_dpt(&fb->base)) {
+		ggtt_vma = __xe_pin_fb_vma(obj, false, &pin_params);
+		if (IS_ERR(ggtt_vma))
+			return PTR_ERR(ggtt_vma);
 
-	offset = xe_ggtt_node_addr(ggtt_vma->node);
+		offset = xe_ggtt_node_addr(ggtt_vma->node);
+	} else {
+		ret = xe_fb_pin_dpt_pin(obj, fb->dpt, &pin_params,
+					&dpt_vma, &ggtt_vma, &offset);
+		if (ret)
+			return ret;
+	}
 
 	new_plane_state->dpt_vma = dpt_vma;
 	new_plane_state->ggtt_vma = ggtt_vma;
@@ -489,8 +527,19 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 {
-	__xe_unpin_fb_vma(old_plane_state->ggtt_vma);
-	old_plane_state->ggtt_vma = NULL;
+	const struct intel_framebuffer *fb = to_intel_framebuffer(old_plane_state->hw.fb);
+
+	if (!intel_fb_uses_dpt(&fb->base)) {
+		__xe_unpin_fb_vma(old_plane_state->ggtt_vma);
+
+		old_plane_state->ggtt_vma = NULL;
+	} else {
+		xe_fb_pin_dpt_unpin(fb->dpt, old_plane_state->dpt_vma,
+				    old_plane_state->ggtt_vma);
+
+		old_plane_state->dpt_vma = NULL;
+		old_plane_state->ggtt_vma = NULL;
+	}
 }
 
 static void xe_fb_pin_get_map(struct i915_vma *vma, struct iosys_map *map)
-- 
2.52.0

