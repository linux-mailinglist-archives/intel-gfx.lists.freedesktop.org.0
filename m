Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECDBBCAE31
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1098210EB19;
	Thu,  9 Oct 2025 21:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jMpRWYym";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DD710EB19;
 Thu,  9 Oct 2025 21:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044413; x=1791580413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FHOJhvwrW7k3Ke5SwyWfE1EiUGS8bBxekU1ytOxtMIk=;
 b=jMpRWYymQMjy0Tqe1wZcDC8rNptg/jQ9xsYnXIUm8wOgGzJMUB2SX+Pn
 maG6I6LQs2bn8wWAdtLbamZaDoV7QuT4BtakatpsoFnFtPnnKwkLPwaxh
 EPB/2uXkzvb7/hLpENHIHzIvjhxSOK/aS6W7Zfqj7f2MhMJcZ38DtxLlA
 RP7pDH7BVudj23dxXIP5+MRzvd9LjVetM+ujGtNFDufH2VF/GzmW12RPx
 C5HILUTpzO4lAQpIREfL9o9l7YnNrq9tg6um/M5vA0YR77HuFo3jAdw6P
 kTIByenuTNi/EQm1nz92gcqD9HsTMQnCCsoid5ySW03h/yxQ9fPw2kgSK A==;
X-CSE-ConnectionGUID: KhZNQ7yyS1yvgBItM4EOFQ==
X-CSE-MsgGUID: QHj1ISTHQQWdK3DGd0jiXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910102"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910102"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:33 -0700
X-CSE-ConnectionGUID: 0/WvxLxJTDyz0BvbJtcLRg==
X-CSE-MsgGUID: VsDzlW0ZTem690HgkuQjPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516355"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/8] drm/i915: Start checking plane min size for the chroma
 plane
Date: Fri, 10 Oct 2025 00:13:08 +0300
Message-ID: <20251009211313.30234-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we check the plane min size only for the Y plane.
Extend the check to the CbCr plane as well.

This will also allow us to remove the planar format check from
icl_plane_min_width() since the +2 on the CbCr plane is equivalent
to +4 on the Y plane. I suspect this approach actually models the
hardware issue more accurately.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9049cd79a29f..6f187e14f9ae 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -400,17 +400,8 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
 {
-	int min_width;
-
-	min_width = 16 / fb->format->cpp[color_plane];
-
 	/* Wa_14011264657, Wa_14011050563: gen11+ */
-	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
-		min_width += 4;
-	else
-		min_width += 2;
-
-	return min_width;
+	return 16 / fb->format->cpp[color_plane] + 2;
 }
 
 static int xe3_plane_max_width(const struct drm_framebuffer *fb,
@@ -2070,6 +2061,7 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	int uv_plane = 1;
 	int ccs_plane = intel_fb_is_ccs_modifier(fb->modifier) ?
 			skl_main_to_aux_plane(fb, uv_plane) : 0;
+	int min_width = intel_plane_min_width(plane, fb, uv_plane, rotation);
 	int max_width = intel_plane_max_width(plane, fb, uv_plane, rotation);
 	int max_height = intel_plane_max_height(plane, fb, uv_plane, rotation);
 	int x = plane_state->uapi.src.x1 >> 17;
@@ -2079,11 +2071,11 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	u32 offset;
 
 	/* FIXME not quite sure how/if these apply to the chroma plane */
-	if (w > max_width || h > max_height) {
+	if (w > max_width || w < min_width || h > max_height || h < 1) {
 		drm_dbg_kms(display->drm,
-			    "[PLANE:%d:%s] CbCr source size %dx%d too big (limit %dx%d)\n",
+			    "[PLANE:%d:%s] requested CbCr source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
 			    plane->base.base.id, plane->base.name,
-			    w, h, max_width, max_height);
+			    w, h, min_width, max_width, max_height);
 		return -EINVAL;
 	}
 
-- 
2.49.1

