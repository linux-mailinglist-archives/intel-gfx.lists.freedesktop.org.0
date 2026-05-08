Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJdkA6P0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB3F4F7CBD
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A21210F50E;
	Fri,  8 May 2026 14:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E07ywGlk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521E410F50D;
 Fri,  8 May 2026 14:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250911; x=1809786911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dpGyS1UKdTM5XVIlm1UBweixwj78z/OEbrnduZqxEVM=;
 b=E07ywGlkQTwH6vZxRcbZXD47jgeT+pZAV30nVqRoxSqUIF8g0gV0qYuY
 cdKFqL0kAl+tXiB+ANnfsOeG3Fr72v6oD8WWG90SUl+J/tfdx9PO/e0t2
 K1oFHPSS15FNtyVqnfMovTtmJA4UfLPo9voIathcXGKbImkFaim6mPEQZ
 0MAm//38dzOhjr2nMs6c334VZ94iWFVxbQgw2z8NOiXSU58wLVq1DLCFs
 lJlR9C6pGRiPEO5KchzolHNuwmvvOBLdwn78vA3IfpmOuJ8mOjq8OPABC
 vYCr7PIsTanJFg/Adp/kLe+WQ61tEVxfhEPPbl907wVq9SSNIC1szGg/A w==;
X-CSE-ConnectionGUID: cWWcLBJpRN+90xxw6gYHfA==
X-CSE-MsgGUID: gneil7wQQwO6hB2rcTkuPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96644290"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96644290"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:11 -0700
X-CSE-ConnectionGUID: q+vrgvJtSae26MooVoqv6Q==
X-CSE-MsgGUID: Wbi7dYQmQlKwHsaNHDi2ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238566452"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/16] drm/xe: Reorganize intel_plane_pin_fb() a bit
Date: Fri,  8 May 2026 17:34:19 +0300
Message-ID: <20260508143426.26504-10-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: BBB3F4F7CBD
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move most of the plane state stuff out from the inner parts
of intel_plane_pin_fb(). The plan is to take those inner parts and
abstract them into the new fb_pin parent interface, and we don't
want any plane_state stuff there.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index bab9b015ff8d..cddb0f3c7da0 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -467,26 +467,30 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 {
 	struct drm_framebuffer *fb = new_plane_state->hw.fb;
 	struct drm_gem_object *obj = intel_fb_bo(fb);
-	struct i915_vma *vma;
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	struct intel_fb_pin_params pin_params = {
 		.view = &new_plane_state->view.gtt,
 		.alignment = intel_plane_fb_min_alignment(new_plane_state),
 		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
 	};
+	struct i915_vma *ggtt_vma = NULL;
+	struct i915_vma *dpt_vma = NULL;
+	int fence_id = -1;
+	u32 offset;
 
 	if (reuse_vma(new_plane_state, old_plane_state))
 		return 0;
 
-	vma = __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
-
-	if (IS_ERR(vma))
-		return PTR_ERR(vma);
+	ggtt_vma = __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
+	if (IS_ERR(ggtt_vma))
+		return PTR_ERR(ggtt_vma);
 
-	new_plane_state->ggtt_vma = vma;
+	offset = xe_ggtt_node_addr(ggtt_vma->node);
 
-	new_plane_state->surf = xe_ggtt_node_addr(new_plane_state->ggtt_vma->node) +
-		plane->surf_offset(new_plane_state);
+	new_plane_state->dpt_vma = dpt_vma;
+	new_plane_state->ggtt_vma = ggtt_vma;
+	new_plane_state->fence_id = fence_id;
+	new_plane_state->surf = offset + plane->surf_offset(new_plane_state);
 
 	return 0;
 }
-- 
2.52.0

