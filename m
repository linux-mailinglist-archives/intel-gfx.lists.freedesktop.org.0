Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPgBDadvAWptZQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:56:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86B95084E4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 07:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5286C10E494;
	Mon, 11 May 2026 05:56:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+CbPSqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397D210E494;
 Mon, 11 May 2026 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778479012; x=1810015012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=95yzrRbyU2sl81dV7xowFQ/T8QtmzPJvgLsGwWvwqpk=;
 b=C+CbPSqB/ppP2RbHwc9rgIEX07XCr/hrHJkYzpj3rg520ixyEjsa5b9x
 LFb5RDEW2Aag8lKYc7ddm9xFMhviUIjnKYMNGgPNAbUFCs6ZzIbhRcjo/
 IW/JbX93+pQiUWEesUlKvQp/gBjFLc7ru9cBzlLnDIXKHf42BmDAZuZCW
 kqLuSb/+UkKpoCSZkqYak5/hkq9TAQaPoHzeZIjMNKJcPbCims1aWqwOA
 4JnWH9rL2AbYbiljB8T+K+b+E0x0fHWq+rDvuujiBYA2ZcS+PZqq34AsX
 wkix7kmIunLcxnXXvRRFuCc8AFGk9LW3wlyhMUQr+8Gfe3v6FqyFNF3/l Q==;
X-CSE-ConnectionGUID: qPhHkAP5RV2gXC+lKKN5AA==
X-CSE-MsgGUID: LhZ4ln7hTIOdN1s+Uw3VOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81922860"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81922860"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2026 22:56:52 -0700
X-CSE-ConnectionGUID: +obpHATtQCezu0dKY06J+A==
X-CSE-MsgGUID: HC+YNomRRFurKPJqYDRYIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="241719956"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 10 May 2026 22:56:50 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [PATCH v3 3/4] drm/i915: Avoid programming color HW blocks for NV12 Y
 planes
Date: Mon, 11 May 2026 11:02:12 +0530
Message-Id: <20260511053213.3122314-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Queue-Id: D86B95084E4
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

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

