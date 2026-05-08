Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AzHDrD0/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC9F4F7CE3
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F37710F513;
	Fri,  8 May 2026 14:35:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M0b2aZuF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586DD10F512;
 Fri,  8 May 2026 14:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250924; x=1809786924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MRrDVAMXk+kcr43SxDm3NycxHg58E/ZS6hO9VLyNc30=;
 b=M0b2aZuFCR3q2JjRRjBE9/SN4gK7Trhf3aoKnST+BsGPvmlxYiHx8hWC
 tkApzYMmz8gndwm8V/mi0JMyHEXRPNxdDnFi/zlMk77Wi8eswro/tTx3G
 SqqSHmLbyrVr++dSVlSHEP44GmK90KsI6ZmJStCbxm7zLbAniOYZx0cxW
 jYwVPLG1gRB9KwHNcZHOJUt59iApnlS/TF61a8FbACRV2ULmr/KNCwhhK
 q8uDkQBT8WiR9NTbWH+G2trtKYMOYoblrBRGo0LhoWaEOm1XyuRRYPhTV
 NlkgUPI0mV+JnzdF8B3UQzui0Kme0DolD48UdpAVDc3brL4jYS1PVt1Hq Q==;
X-CSE-ConnectionGUID: PkJQFrGJR1y6SnLMibVIZw==
X-CSE-MsgGUID: gqjqB+VPStCfEAiLoKvduA==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96644360"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96644360"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:24 -0700
X-CSE-ConnectionGUID: zRCXHGf5RVC+J+gVl1ZuRA==
X-CSE-MsgGUID: OeuZc+NhQUuICpRvgrjkwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238566541"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/16] drm/xe: Restructure reuse_vma()
Date: Fri,  8 May 2026 17:34:22 +0300
Message-ID: <20260508143426.26504-13-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: ADC9F4F7CE3
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restructure reuse_vma() into a form that doesn't need the plane
state structs, and rename the result to xe_fb_pin_reuse_vma().
This will become the new fb_pin parent interface.

v2: Fix memcmp() arguments

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 48 ++++++++++++++------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 1db72c73f11e..33100dba39ab 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -486,30 +486,24 @@ static void xe_fb_pin_dpt_unpin(struct intel_dpt *dpt,
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
-
-	if (old_plane_state->hw.fb == new_plane_state->hw.fb &&
-	    !memcmp(&old_plane_state->view.gtt,
-		    &new_plane_state->view.gtt,
-		    sizeof(new_plane_state->view.gtt))) {
-		vma = old_plane_state->ggtt_vma;
-		goto found;
-	}
-
-	return false;
+	if (old_ggtt_vma && old_obj == new_obj &&
+	    !memcmp(old_view, new_view, sizeof(*new_view))) {
+		refcount_inc(&old_ggtt_vma->ref);
 
-found:
-	refcount_inc(&vma->ref);
-	new_plane_state->ggtt_vma = vma;
+		*out_offset = xe_ggtt_node_addr(old_ggtt_vma->node);
 
-	new_plane_state->surf = xe_ggtt_node_addr(new_plane_state->ggtt_vma->node) +
-		plane->surf_offset(new_plane_state);
+		return old_ggtt_vma;
+	}
 
-	return true;
+	return NULL;
 }
 
 static unsigned int
@@ -523,7 +517,8 @@ intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
-	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
+	const struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
+	const struct intel_framebuffer *old_fb = to_intel_framebuffer(old_plane_state->hw.fb);
 	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	struct intel_fb_pin_params pin_params = {
@@ -537,8 +532,14 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
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
@@ -552,6 +553,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 			return ret;
 	}
 
+got_vma:
 	new_plane_state->dpt_vma = dpt_vma;
 	new_plane_state->ggtt_vma = ggtt_vma;
 	new_plane_state->fence_id = fence_id;
-- 
2.52.0

