Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 133E79E048E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 15:14:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DA210E757;
	Mon,  2 Dec 2024 14:14:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lopivi/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59E6C10E757
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 14:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733148891; x=1764684891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WbgPIQBSDJRVBDLWBf/0NmYolnvvU8KXMRph46GdcUg=;
 b=lopivi/iX2bQSPZ0gruVLSvJyerDDGGgqxlKMsUvMqLstwAtN9Zd4Efm
 +bm4FCwNX/wGcX2+y84tU3xc1lpb1AQVmC0WsUL8gFdGmyyFuojlQmfl1
 xKQ4BsroGCnFSdijkFjm4YLqIaImaE6ojXoDJIl/FD9C9yLFvMyaW0n4U
 XetNkM7+op2LqkSKfEd2RgK2ry+Nqz1asMke7Wdnd+ZuQPlP4CIx1A2lX
 a8M6A6lcpTErC0fgtzaAVT4pxamyM5AZZy/k/eG61D/iu3CHhLjbhtDPB
 fdD2YwKHfdRbgpAf39hkOwGyDXG8M+esqfXn6aesxOblU937ATL1lFK5K g==;
X-CSE-ConnectionGUID: 8NYrLrOxREKZdnJdNnGa2A==
X-CSE-MsgGUID: XujHR3tPTbWd9H/l6RRmiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="55807271"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55807271"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 06:14:51 -0800
X-CSE-ConnectionGUID: iOD+wBzNTH6vhRICNw4+pA==
X-CSE-MsgGUID: 8ca5vCqmQKGuvx0Ltl7F9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93287764"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Dec 2024 06:14:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Dec 2024 16:14:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 8/9] drm/i915: Relocate xe AUX hack
Date: Mon,  2 Dec 2024 16:14:23 +0200
Message-ID: <20241202141424.21446-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
References: <20241202141424.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Move the xe AUX neutering out from skl_get_plane_caps() into the
caller so that it'll be easier to refactor skl_get_plane_caps()
into a more readable shape. This isn't really hardware specific
anyway, and just some kind of bug/misfeature of xe.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c    | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 57e8e536ee1f..b06dc106305e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2626,9 +2626,6 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (HAS_4TILE(display))
 		caps |= INTEL_PLANE_CAP_TILING_4;
 
-	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
-		return caps;
-
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 		if (DISPLAY_VER(display) >= 12)
@@ -2657,6 +2654,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	const u32 *formats;
 	int num_formats;
 	int ret;
+	u8 caps;
 
 	plane = intel_plane_alloc();
 	if (IS_ERR(plane))
@@ -2748,8 +2746,15 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane_type = DRM_PLANE_TYPE_OVERLAY;
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv,
-						 skl_get_plane_caps(dev_priv, pipe, plane_id));
+	caps = skl_get_plane_caps(dev_priv, pipe, plane_id);
+
+	/* FIXME: xe has problems with AUX */
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(dev_priv))
+		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
+			  INTEL_PLANE_CAP_CCS_RC_CC |
+			  INTEL_PLANE_CAP_CCS_MC);
+
+	modifiers = intel_fb_plane_get_modifiers(dev_priv, caps);
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
 				       0, plane_funcs,
-- 
2.45.2

