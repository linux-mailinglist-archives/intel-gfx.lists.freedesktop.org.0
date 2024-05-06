Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AF88BCE94
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37E710F76B;
	Mon,  6 May 2024 12:57:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DndElYl7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AB0D10F6C3;
 Mon,  6 May 2024 12:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000244; x=1746536244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MlhpzetGflHLvLmX0xVnP2Vt4VJFXfOgVTrg/+YpD/4=;
 b=DndElYl723zNiPTPPNsQtm8sBOuri5kdhjZDNGxH4bCrmz9bCAqq/PgR
 t+Z5DC2Aw8Kc4jXD5yFVMoiZBpbS5UqwV7OOLPLktrbPk2Ei38RX8oNaL
 y5OziVDldhuk9lG11ARBaB3PK8/4vEPd+AoVBotq5YLlEeFrsicaXn4oM
 7JNaqgh0fwyoa0yJpXpVa9GsOL6CmtU/1E0WF/zu6FK+NlNBZTKSDhIa7
 5MjfWFy+Gx0jbQ4X0mLYGgx/SZAwkUoyxmHcZcFTYZBW2V0zi46e71fP6
 27rxR0nE6+6LdEJy1Ge4oplnPybhQppCLSe1xv0oniBZxgShn2gFOWIL2 g==;
X-CSE-ConnectionGUID: o9an4j3zSyWOcupcjM5xAQ==
X-CSE-MsgGUID: Qh+NiCwRTzqFMJHF5ssYuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865316"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865316"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:24 -0700
X-CSE-ConnectionGUID: 0+Is2SrKTGC7CW0hCxMHRw==
X-CSE-MsgGUID: 02jmG0SPQ5GWo8oyGLbZyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164943"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/9] drm/i915: Split gen2 vs. gen3 .max_stride()
Date: Mon,  6 May 2024 15:57:10 +0300
Message-ID: <20240506125718.26001-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
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

Plane .max_stride() is alreayd a vfunc so having one made
up of two branches based on the display version is silly.
Split i9xx_plane_max_stride() into gen2 vs. gen3 variants
so  that we get rid of said check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c | 32 +++++++++++++----------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 3442264443e5..21303fa4f08f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -741,23 +741,25 @@ i965_plane_max_stride(struct intel_plane *plane,
 }
 
 static unsigned int
-i9xx_plane_max_stride(struct intel_plane *plane,
+i915_plane_max_stride(struct intel_plane *plane,
 		      u32 pixel_format, u64 modifier,
 		      unsigned int rotation)
 {
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	if (modifier == I915_FORMAT_MOD_X_TILED)
+		return 8 * 1024;
+	else
+		return 16 * 1024;
+}
 
-	if (DISPLAY_VER(dev_priv) >= 3) {
-		if (modifier == I915_FORMAT_MOD_X_TILED)
-			return 8*1024;
-		else
-			return 16*1024;
-	} else {
-		if (plane->i9xx_plane == PLANE_C)
-			return 4*1024;
-		else
-			return 8*1024;
-	}
+static unsigned int
+i8xx_plane_max_stride(struct intel_plane *plane,
+		      u32 pixel_format, u64 modifier,
+		      unsigned int rotation)
+{
+	if (plane->i9xx_plane == PLANE_C)
+		return 4 * 1024;
+	else
+		return 8 * 1024;
 }
 
 static const struct drm_plane_funcs i965_plane_funcs = {
@@ -854,8 +856,10 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (HAS_GMCH(dev_priv)) {
 		if (DISPLAY_VER(dev_priv) >= 4)
 			plane->max_stride = i965_plane_max_stride;
+		else if (DISPLAY_VER(dev_priv) == 3)
+			plane->max_stride = i915_plane_max_stride;
 		else
-			plane->max_stride = i9xx_plane_max_stride;
+			plane->max_stride = i8xx_plane_max_stride;
 	} else {
 		if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 			plane->max_stride = hsw_primary_max_stride;
-- 
2.43.2

