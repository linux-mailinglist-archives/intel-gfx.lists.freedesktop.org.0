Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCDE8BCE9A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FFB110F734;
	Mon,  6 May 2024 12:57:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGegB0fq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A9310F85D;
 Mon,  6 May 2024 12:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000262; x=1746536262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tUmv3wU1cwcvO1ENMvcJg5pdsSNIZF1jswhCIF06aWk=;
 b=DGegB0fqdKNz5G6O+0au0t/9xFh+u1+6Hc4tq355EWs5LtYllp/xfZHD
 PvQfNifnGvtVHXuRmWk2xxlUfRzV7dMq4ORMAPsjOzor71/aVzv6mg0YB
 b6V9wfibXLrTsmpLCW7de/rPvPeFg791UdovRezLzd+Zdij6zmGKFnz0c
 COfpnOBOf1Av97xQToiRLOsRiaRrfHAGnBWnL/3xvgQUUdY2o0GncAH9n
 pPcbPLgyP99KEzBJyaI7kf8MvV6+PdEvYmv8yZZfC4/0BPp26DtUdXb/5
 MqvemlJ6u3Uh3mdpA32S6E+YEWmn+vzoQur4g7PZkgHvQQNQC2oWr8KjK g==;
X-CSE-ConnectionGUID: tA8M8RUdQdOe7hdFTE2WyQ==
X-CSE-MsgGUID: 6ZGgXbLHRJyIA4xLbhy2FQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865336"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865336"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:42 -0700
X-CSE-ConnectionGUID: uxyt23sqQz6ldiQPuZe/jQ==
X-CSE-MsgGUID: 8n9itwfvQK2dvTkuT64K/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Change intel_fbdev_fb_alloc() reuturn type
Date: Mon,  6 May 2024 15:57:16 +0300
Message-ID: <20240506125718.26001-8-ville.syrjala@linux.intel.com>
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

Change intel_fbdev_fb_alloc() to return struct intel_fb instead
of struct drm_framebuffer. Let's us eliminate some annoying
aliasing variables in the fbdev setup code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  5 +++--
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bda702c2cab8..0d79ec1a6427 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -207,13 +207,13 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		intel_fb = ifbdev->fb = NULL;
 	}
 	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
-		struct drm_framebuffer *fb;
+		struct intel_framebuffer *fb;
 		drm_dbg_kms(&dev_priv->drm,
 			    "no BIOS fb, allocating a new one\n");
-		fb = intel_fbdev_fb_alloc(helper, sizes);
-		if (IS_ERR(fb))
-			return PTR_ERR(fb);
-		intel_fb = ifbdev->fb = to_intel_framebuffer(fb);
+		intel_fb = intel_fbdev_fb_alloc(helper, sizes);
+		if (IS_ERR(intel_fb))
+			return PTR_ERR(intel_fb);
+		ifbdev->fb = fb;
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
 		prealloc = true;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 0665f943f65f..497525ef9668 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -11,8 +11,8 @@
 #include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 
-struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-					     struct drm_fb_helper_surface_size *sizes)
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					       struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_framebuffer *fb;
 	struct drm_device *dev = helper->dev;
@@ -63,7 +63,7 @@ struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	fb = intel_framebuffer_create(obj, &mode_cmd);
 	i915_gem_object_put(obj);
 
-	return fb;
+	return to_intel_framebuffer(fb);
 }
 
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index a395b2c65d33..82e8e7cc007b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -12,9 +12,10 @@ struct drm_i915_gem_object;
 struct drm_i915_private;
 struct fb_info;
 struct i915_vma;
+struct intel_framebuffer;
 
-struct drm_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
-					     struct drm_fb_helper_surface_size *sizes);
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+					       struct drm_fb_helper_surface_size *sizes);
 int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
 			     struct drm_i915_gem_object *obj, struct i915_vma *vma);
 
-- 
2.43.2

