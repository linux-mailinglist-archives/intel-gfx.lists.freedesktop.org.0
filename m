Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AASBG6f0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 049CE4F7CCD
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3CD10F50F;
	Fri,  8 May 2026 14:35:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EfPHaBbG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBA310F511;
 Fri,  8 May 2026 14:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250916; x=1809786916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mgxpz7OPQEfYblUdflXpnYlgGEoGxZqrpk/vmSay9bM=;
 b=EfPHaBbGqau3iAaCQbgMztY56U2OVEMevgnnC+Mbp+mFmOQhuT9wARYi
 nbrDjpt2GH91BfDtGz6IPbd/T9YVVHA5MxoGIwjJ+TiBvtbeZ14LzahQ5
 HMFvd8l3iw2qEzjyC+x0Rj7U2yofsmNVLwuODatQxfuTxQBn18bw4DI5M
 oiw1T0f/xyWyElBM+BoA8hkdDaY9Utq8aQ2IK1H7H38qHENruXad11QdV
 GpF5DURO+FYIqAxlGZw8lvGAGHVb7MvJDG/1rCrgiMZMkLz/3/7og5Xp5
 wTOdskHGplcy9cvm4H6/+U/c+PM8hbgFVzmVAwjnipMqzHjNTLIqiA/Pv Q==;
X-CSE-ConnectionGUID: 4p3jlADvRWGIVRzd4phCvQ==
X-CSE-MsgGUID: BiZvWRTVT+u2E1b0I6mXRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96644320"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96644320"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:16 -0700
X-CSE-ConnectionGUID: LbKT00RPS8OAgvzmE7bN/Q==
X-CSE-MsgGUID: 54UIXda+TEyKXZyLpebS1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238566488"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 10/16] drm/xe: Introduce xe_fb_pin_dpt_(un)pin()
Date: Fri,  8 May 2026 17:34:20 +0300
Message-ID: <20260508143426.26504-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
References: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 049CE4F7CCD
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
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the inner DPT parts of intel_plane_(un)pin() into the
xe_fb_pin_dpt_(un)pin(). These will become part of the new
fb_pin parent interface.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 67 ++++++++++++++++++++++----
 1 file changed, 58 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index cddb0f3c7da0..0257fafdb0df 100644
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
@@ -465,27 +495,35 @@ intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
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
 		.alignment = intel_plane_fb_min_alignment(new_plane_state),
-		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
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
@@ -497,8 +535,19 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 
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

