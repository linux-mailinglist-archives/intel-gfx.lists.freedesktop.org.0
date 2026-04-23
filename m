Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIwVJNZO6mkhxgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3868A4552AD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD6B10F1EF;
	Thu, 23 Apr 2026 16:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kkMUlQ8W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907A210F1EF;
 Thu, 23 Apr 2026 16:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963284; x=1808499284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7/as9k11j+aARG3/3M7oFpRXxVB4ktAsKLT9Pg85EgQ=;
 b=kkMUlQ8WFiFp+63S5aNk/YJhx5PqiLmRusO5zU/rAhNst4L30OUqjM8P
 ycN18XmBgkFeKeM4TULr2BJ36es/mVpGzwZBSOfPHdoMwCS+kTjOGVHMj
 D3XVAc1orElRE4hLKbqzwPNh+qPfkFYMM7FioYtUsMUksaioy6dPW3qR9
 nybkBvRIx0YobRRZ0asK45ndlIINmpQifFIIdNd3LLNJO5MdX9Ut4w8hu
 4oYTSFqoiN/BzellqavuSdKr5WLzlNXiUTwatz+38Ll+8YocPStVjTXir
 3NPxKnp+OzLABnXy2XRgp+UasCwWFsWXZNNpEkzq+KEhPza0IWb3x1wtJ Q==;
X-CSE-ConnectionGUID: rwY4bngcThKAIx9HELBZvA==
X-CSE-MsgGUID: V6c+NuUqRa6GqismIEQ39g==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81799526"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="81799526"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:44 -0700
X-CSE-ConnectionGUID: IIdaI0h9ShWxEJeq5T2iiQ==
X-CSE-MsgGUID: cmRSFg+cS4aeVfboSYCp7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="232560219"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/16] drm/xe: Restructure reuse_vma()
Date: Thu, 23 Apr 2026 19:53:41 +0300
Message-ID: <20260423165346.20884-13-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3868A4552AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restructure reuse_vma() into a form that doesn't need the plane
state structs, and rename the result to xe_fb_pin_reuse_vma().
This will become the new fb_pin parent interface.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 48 ++++++++++++++------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index bdd6a4da0997..cd287efded28 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -486,36 +486,31 @@ static void xe_fb_pin_dpt_unpin(struct intel_dpt *dpt,
 	__xe_unpin_fb_vma(ggtt_vma);
 }
 
-static bool reuse_vma(struct intel_plane_state *new_plane_state,
-		      const struct intel_plane_state *old_plane_state)
+static struct i915_vma *
+xe_fb_pin_reuse_vma(struct i915_vma *old_ggtt_vma,
+		    struct drm_gem_object *old_obj,
+		    const struct i915_gtt_view *old_view,
+		    struct drm_gem_object *new_obj,
+		    const struct i915_gtt_view *new_view,
+		    u32 *out_offset)
 {
-	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
-	struct i915_vma *vma;
+	if (old_ggtt_vma && old_obj == new_obj &&
+	    !memcmp(&old_view, &new_view, sizeof(*new_view))) {
+		refcount_inc(&old_ggtt_vma->ref);
 
-	if (old_plane_state->hw.fb == new_plane_state->hw.fb &&
-	    !memcmp(&old_plane_state->view.gtt,
-		    &new_plane_state->view.gtt,
-		    sizeof(new_plane_state->view.gtt))) {
-		vma = old_plane_state->ggtt_vma;
-		goto found;
+		*out_offset = xe_ggtt_node_addr(old_ggtt_vma->node);
+
+		return old_ggtt_vma;
 	}
 
-	return false;
-
-found:
-	refcount_inc(&vma->ref);
-	new_plane_state->ggtt_vma = vma;
-
-	new_plane_state->surf = xe_ggtt_node_addr(new_plane_state->ggtt_vma->node) +
-		plane->surf_offset(new_plane_state);
-
-	return true;
+	return NULL;
 }
 
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
-	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
+	const struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
+	const struct intel_framebuffer *old_fb = to_intel_framebuffer(old_plane_state->hw.fb);
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	struct intel_fb_pin_params pin_params = {
@@ -529,8 +524,14 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 	u32 offset;
 	int ret;
 
-	if (reuse_vma(new_plane_state, old_plane_state))
-		return 0;
+	ggtt_vma = xe_fb_pin_reuse_vma(old_plane_state->ggtt_vma,
+				       intel_fb_bo(&old_fb->base),
+				       &old_plane_state->view.gtt,
+				       intel_fb_bo(&fb->base),
+				       &new_plane_state->view.gtt,
+				       &offset);
+	if (ggtt_vma)
+		goto got_vma;
 
 	if (!intel_fb_uses_dpt(&fb->base)) {
 		ret = xe_fb_pin_ggtt_pin(obj, &pin_params,
@@ -544,6 +545,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 			return ret;
 	}
 
+got_vma:
 	new_plane_state->dpt_vma = dpt_vma;
 	new_plane_state->ggtt_vma = ggtt_vma;
 	new_plane_state->fence_id = fence_id;
-- 
2.52.0

