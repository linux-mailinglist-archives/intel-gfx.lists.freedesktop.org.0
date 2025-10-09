Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95664BCAE34
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD4F10EB1F;
	Thu,  9 Oct 2025 21:13:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wbt2Fnsq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695BC10EB1F;
 Thu,  9 Oct 2025 21:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044417; x=1791580417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pv24XabNsz8A+UP+E4STgNgiSBcP7mjl7CIlT6m45W8=;
 b=Wbt2FnsqoyCcUbCJmL+qSLwz8Ab1lZySuVGfCW6gOeqd1XDt3qmzmcvZ
 mcyWwRjiDJb2HB2vRfw1Eg+AbPS5N11m2ZJC2s7401r12zjo3OxrZwFeZ
 ME1mMO7l4nOKo4YMFfcWjrbWKXQDygRuCVAnasOscI+Cj4PXTdz/8KNyU
 9l28ZppQwJllgXJFjDJInv22bgJYNtjrL6z6ZgyuagMak4FN+gPmOioUt
 uvtwfcqGWhKpsSczxXklVMvp3XujxC0iZxIoNMNf0xAvl+ux0b7Z0cHsw
 oVjhX3wV6fTahY1yxBlA8Zw2TQSsagpUHfGUXzSfO8MJSMtqLLdmIACmh g==;
X-CSE-ConnectionGUID: WtOQIgToRNSXtTX2und0lw==
X-CSE-MsgGUID: 9Y0pVpVqSx2ySGDuZkdo/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910105"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910105"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:37 -0700
X-CSE-ConnectionGUID: o3u+PISxQ3G0KxyH138Z3A==
X-CSE-MsgGUID: ucpO7qkhSc6DpBwMS6IaGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516367"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:36 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/8] drm/i915: Introduce intel_plane_min_height()
Date: Fri, 10 Oct 2025 00:13:09 +0300
Message-ID: <20251009211313.30234-6-ville.syrjala@linux.intel.com>
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

Make the skl+ plane size checks a bit more regular by
adding intel_plane_min_height() instead of using a hardcoded
1 everwhere.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 20 ++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6f187e14f9ae..8ead07b4b7a7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1859,6 +1859,14 @@ static int intel_plane_min_width(struct intel_plane *plane,
 		return 1;
 }
 
+static int intel_plane_min_height(struct intel_plane *plane,
+				  const struct drm_framebuffer *fb,
+				  int color_plane,
+				  unsigned int rotation)
+{
+	return 1;
+}
+
 static int intel_plane_max_width(struct intel_plane *plane,
 				 const struct drm_framebuffer *fb,
 				 int color_plane,
@@ -1990,6 +1998,7 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	int w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	int h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	int min_width = intel_plane_min_width(plane, fb, 0, rotation);
+	int min_height = intel_plane_min_height(plane, fb, 0, rotation);
 	int max_width = intel_plane_max_width(plane, fb, 0, rotation);
 	int max_height = intel_plane_max_height(plane, fb, 0, rotation);
 	unsigned int alignment = plane->min_alignment(plane, fb, 0);
@@ -1997,11 +2006,11 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	u32 offset;
 	int ret;
 
-	if (w > max_width || w < min_width || h > max_height || h < 1) {
+	if (w > max_width || w < min_width || h > max_height || h < min_height) {
 		drm_dbg_kms(display->drm,
-			    "[PLANE:%d:%s] requested Y/RGB source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
+			    "[PLANE:%d:%s] requested Y/RGB source size %dx%d outside limits (min: %dx%d max: %dx%d)\n",
 			    plane->base.base.id, plane->base.name,
-			    w, h, min_width, max_width, max_height);
+			    w, h, min_width, min_height, max_width, max_height);
 		return -EINVAL;
 	}
 
@@ -2062,6 +2071,7 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	int ccs_plane = intel_fb_is_ccs_modifier(fb->modifier) ?
 			skl_main_to_aux_plane(fb, uv_plane) : 0;
 	int min_width = intel_plane_min_width(plane, fb, uv_plane, rotation);
+	int min_height = intel_plane_min_height(plane, fb, uv_plane, rotation);
 	int max_width = intel_plane_max_width(plane, fb, uv_plane, rotation);
 	int max_height = intel_plane_max_height(plane, fb, uv_plane, rotation);
 	int x = plane_state->uapi.src.x1 >> 17;
@@ -2073,9 +2083,9 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	/* FIXME not quite sure how/if these apply to the chroma plane */
 	if (w > max_width || w < min_width || h > max_height || h < 1) {
 		drm_dbg_kms(display->drm,
-			    "[PLANE:%d:%s] requested CbCr source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
+			    "[PLANE:%d:%s] requested CbCr source size %dx%d outside limits (min: %dx%d max: %dx%d)\n",
 			    plane->base.base.id, plane->base.name,
-			    w, h, min_width, max_width, max_height);
+			    w, h, min_width, min_height, max_width, max_height);
 		return -EINVAL;
 	}
 
-- 
2.49.1

