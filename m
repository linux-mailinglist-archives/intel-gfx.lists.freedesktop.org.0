Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1DGCO7MI62mUHgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 08:07:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9640D45A27F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 08:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9360F10F300;
	Fri, 24 Apr 2026 06:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzUxFncI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D60610F2B0;
 Fri, 24 Apr 2026 06:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777010864; x=1808546864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=95yzrRbyU2sl81dV7xowFQ/T8QtmzPJvgLsGwWvwqpk=;
 b=IzUxFncIjUvh9utvpsKk2KHGC6s40It9BNGAwzDJeA5w8HZ+oau8jSyk
 DIewhleBbLdc68JQR5JkayG7Mqb4/dgSEZdiC7cyylhpDVLx8UINxPLyn
 JzPWQcbyKZKpKI1L18Y5tz8nVQjL+CzzYNFJki4fEhRBpsjh4kjXhzXq9
 APv/awfx1DwJRSA37KKbzultX79FfXV2+5KtNiu4d/NY/LkW1cunWgppU
 EgDP61Q94aWMO6Lh8ysz4VGMyXIKRZmD4fquTzMBAWqeJwiBqnLhqisv7
 LitDVG+ampe+QKyFMJZdD8kq43R6dVpZ+aGWGzPPasM66Q29/60WhlvmS A==;
X-CSE-ConnectionGUID: RSl8OA0MQjuPE7yED9nOqA==
X-CSE-MsgGUID: Rxc3KNbSQOWtY/Bx9vb5rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77690820"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77690820"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 23:07:44 -0700
X-CSE-ConnectionGUID: X/2EISGOQcmxR05Oty7zsQ==
X-CSE-MsgGUID: 5J4B3BrYRIqlWLPvTy4orw==
X-ExtLoop1: 1
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa003.fm.intel.com with ESMTP; 23 Apr 2026 23:07:42 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [PATCH v2 3/4] drm/i915: Avoid programming color HW blocks for NV12 Y
 planes
Date: Fri, 24 Apr 2026 11:11:28 +0530
Message-Id: <20260424054129.2148049-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
References: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: 9640D45A27F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

link_nv12_planes() currently copies the full UV plane hw state to
the Y plane. This includes the color pipeline blobs (ctm, degamma_lut,
gamma_lut, lut_3d) which is incorrect as we don't need to program these
HW blocks for Y plane.

This is harmless currently as the color pipeline uapi does not support
YUV (both packed and planar) formats but that can change in the future.

Add a new static helper intel_plane_y_copy_hw_state() that copies only
the rendering parameters a Y plane actually needs, leaving all color
pipeline blobs unset. Remove the helper intel_plane_copy_hw_state() as
there are no users for it.

Assisted-by: GitHub Copilot:Claude Sonnet 4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 26 +++++++++++++---------
 drivers/gpu/drm/i915/display/intel_plane.h |  2 --
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index a8efe0011b23..559eef467dda 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -450,16 +450,22 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
 	intel_plane_color_copy_uapi_to_hw_state(state, plane_state, from_plane_state, crtc);
 }
 
-void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
-			       const struct intel_plane_state *from_plane_state)
+static void intel_plane_y_copy_hw_state(struct intel_plane_state *y_plane_state,
+					const struct intel_plane_state *uv_plane_state)
 {
-	intel_plane_clear_hw_state(plane_state);
-
-	memcpy(&plane_state->hw, &from_plane_state->hw,
-	       sizeof(plane_state->hw));
-
-	if (plane_state->hw.fb)
-		drm_framebuffer_get(plane_state->hw.fb);
+	intel_plane_clear_hw_state(y_plane_state);
+
+	y_plane_state->hw.crtc		= uv_plane_state->hw.crtc;
+	y_plane_state->hw.fb		= uv_plane_state->hw.fb;
+	if (y_plane_state->hw.fb)
+		drm_framebuffer_get(y_plane_state->hw.fb);
+
+	y_plane_state->hw.alpha		= uv_plane_state->hw.alpha;
+	y_plane_state->hw.pixel_blend_mode = uv_plane_state->hw.pixel_blend_mode;
+	y_plane_state->hw.rotation	= uv_plane_state->hw.rotation;
+	y_plane_state->hw.color_encoding = uv_plane_state->hw.color_encoding;
+	y_plane_state->hw.color_range	= uv_plane_state->hw.color_range;
+	y_plane_state->hw.scaling_filter = uv_plane_state->hw.scaling_filter;
 }
 
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
@@ -1549,7 +1555,7 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
 
 	/* Copy parameters to Y plane */
-	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
+	intel_plane_y_copy_hw_state(y_plane_state, uv_plane_state);
 	y_plane_state->uapi.src = uv_plane_state->uapi.src;
 	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 9d627d321f2e..a5bb0caa54a1 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -39,8 +39,6 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
 				       struct intel_plane_state *plane_state,
 				       const struct intel_plane_state *from_plane_state,
 				       struct intel_crtc *crtc);
-void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
-			       const struct intel_plane_state *from_plane_state);
 void intel_plane_async_flip(struct intel_dsb *dsb,
 			    struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
-- 
2.25.1

