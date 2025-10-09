Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E92BCAE28
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 23:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E829610EB1D;
	Thu,  9 Oct 2025 21:13:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cI0KPI2S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380C010EB1D;
 Thu,  9 Oct 2025 21:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760044401; x=1791580401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eG7CKth/puEM5X5hynSFslshtqQ/vuufG3+2Iw6fxgk=;
 b=cI0KPI2S0RYPT04szFGjGqrHb/1UrNg4yJRvBh1UCebf9O9bYkknQvLW
 cC2uJ96Z6GOe1gn9MZA7v+2pwoct2+Zhem+uZObL1QyXo8MRO4UMflFW1
 SLLvHcULB6zghCIYTg95mPshTJaQMbfkEXMDWt0AOmXd16+MoeZovcQWl
 fIVKgrkJ8bbpFwHxKrJJcZ7HPcaiVHr5+6Eq2ZZC/kOLtmJvsmsIMOasf
 qm0WQINe3otur0TTiM3eKZQT2loEelRlNxPjtdSIDjew1e3Fl8x/7xqtv
 eqFV4Zdtv+TSu5vxNufyb8OVjJx4y5nB0xkogUgzSsbReYU7eNptbQkvv A==;
X-CSE-ConnectionGUID: 5jjhC5XBTGqjLQT8NkTVdw==
X-CSE-MsgGUID: m7Ki7wYGSAqB+zoCqt0ZKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="79910082"
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="79910082"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:21 -0700
X-CSE-ConnectionGUID: fgucSGrHRYagfTRE48kGdg==
X-CSE-MsgGUID: eJMhD0VsQIScuoewKVmIVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="204516298"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 14:13:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915: Rewrite icl_min_plane_width()
Date: Fri, 10 Oct 2025 00:13:05 +0300
Message-ID: <20251009211313.30234-2-ville.syrjala@linux.intel.com>
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

Replace the ginormous switch statement in icl_plane_min_width() with
simple arithmetic.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 43 +++++--------------
 1 file changed, 10 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e13fb781e7b2..153c76d00977 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -393,40 +393,17 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
 {
+	int min_width;
+
+	min_width = 16 / fb->format->cpp[color_plane];
+
 	/* Wa_14011264657, Wa_14011050563: gen11+ */
-	switch (fb->format->format) {
-	case DRM_FORMAT_C8:
-		return 18;
-	case DRM_FORMAT_RGB565:
-		return 10;
-	case DRM_FORMAT_XRGB8888:
-	case DRM_FORMAT_XBGR8888:
-	case DRM_FORMAT_ARGB8888:
-	case DRM_FORMAT_ABGR8888:
-	case DRM_FORMAT_XRGB2101010:
-	case DRM_FORMAT_XBGR2101010:
-	case DRM_FORMAT_ARGB2101010:
-	case DRM_FORMAT_ABGR2101010:
-	case DRM_FORMAT_XVYU2101010:
-	case DRM_FORMAT_Y212:
-	case DRM_FORMAT_Y216:
-		return 6;
-	case DRM_FORMAT_NV12:
-		return 20;
-	case DRM_FORMAT_P010:
-	case DRM_FORMAT_P012:
-	case DRM_FORMAT_P016:
-		return 12;
-	case DRM_FORMAT_XRGB16161616F:
-	case DRM_FORMAT_XBGR16161616F:
-	case DRM_FORMAT_ARGB16161616F:
-	case DRM_FORMAT_ABGR16161616F:
-	case DRM_FORMAT_XVYU12_16161616:
-	case DRM_FORMAT_XVYU16161616:
-		return 4;
-	default:
-		return 1;
-	}
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		min_width += 4;
+	else
+		min_width += 2;
+
+	return min_width;
 }
 
 static int xe3_plane_max_width(const struct drm_framebuffer *fb,
-- 
2.49.1

