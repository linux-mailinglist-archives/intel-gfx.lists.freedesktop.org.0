Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B47B8BCE9C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0DF310F85D;
	Mon,  6 May 2024 12:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egxHdr2x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10CED10F7D9;
 Mon,  6 May 2024 12:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000265; x=1746536265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TQKWxZUHmEUAdlGWYjHBENfhb+MA/iR+iXB8iuyFCt4=;
 b=egxHdr2x0+nDBrLsrswMPHR+30Op/Cd8Iv04CJV+7a4bE2NDo83F6ilh
 LIyugsowHLE740BouKf0wQKjMFobVPseqFBDiZTDgVraakqXbz5INlrq5
 EC5xhhVDF8CrQUH4iBIHdH0RJYEZg1iAzmM+Ga4ctNaUnuwDZtuGn8EOT
 bvlI3zoyFsqOEQh0FDujA4PzQRSCeJ939mJEXgJxIxEuBT8ntP3yKmzRQ
 CbMPA0/U0tRR2vmucYCO1TDwaXW1cUHoHC3zQaT8vw+SCiHrq7bpZ8rFC
 WIRHn/11L+11gTc1fthDYB2OdE04msq0dWKdkXOokrR3fnpTDDpX2tfaU Q==;
X-CSE-ConnectionGUID: jySEd/n7Rz6ez7v3G8557w==
X-CSE-MsgGUID: mGNiaT6BR8yHsuGnphxUXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865343"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865343"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:45 -0700
X-CSE-ConnectionGUID: +Vg95iiYQNihNwu80v5BSA==
X-CSE-MsgGUID: /mDxxbyPTkW/r8jg3BZSzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164954"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915: Cleanup fbdev fb setup
Date: Mon,  6 May 2024 15:57:17 +0300
Message-ID: <20240506125718.26001-9-ville.syrjala@linux.intel.com>
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

We use a mix of 'fb' vs. 'ifbdev->fb' in the same function.
Both should be pointing at the same thing. Make things less
confusing by just getting existing fb from 'ifbdev->fb' at the
start and then sticking with the local 'fb' until the very end.

And we'll also change intel_fbdev_fb_alloc() to return
struct intel_fb instead of struct drm_framebuffer so that
we don't have to have yet another alias for the same thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 39 +++++++++++-----------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 0d79ec1a6427..e898018ab76a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -175,7 +175,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 			  struct drm_fb_helper_surface_size *sizes)
 {
 	struct intel_fbdev *ifbdev = to_intel_fbdev(helper);
-	struct intel_framebuffer *intel_fb = ifbdev->fb;
+	struct intel_framebuffer *fb = ifbdev->fb;
 	struct drm_device *dev = helper->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	const struct i915_gtt_view view = {
@@ -195,30 +195,30 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	if (ret)
 		return ret;
 
-	if (intel_fb &&
-	    (sizes->fb_width > intel_fb->base.width ||
-	     sizes->fb_height > intel_fb->base.height)) {
+	ifbdev->fb = NULL;
+
+	if (fb &&
+	    (sizes->fb_width > fb->base.width ||
+	     sizes->fb_height > fb->base.height)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "BIOS fb too small (%dx%d), we require (%dx%d),"
 			    " releasing it\n",
-			    intel_fb->base.width, intel_fb->base.height,
+			    fb->base.width, fb->base.height,
 			    sizes->fb_width, sizes->fb_height);
-		drm_framebuffer_put(&intel_fb->base);
-		intel_fb = ifbdev->fb = NULL;
+		drm_framebuffer_put(&fb->base);
+		fb = NULL;
 	}
-	if (!intel_fb || drm_WARN_ON(dev, !intel_fb_obj(&intel_fb->base))) {
-		struct intel_framebuffer *fb;
+	if (!fb || drm_WARN_ON(dev, !intel_fb_obj(&fb->base))) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "no BIOS fb, allocating a new one\n");
-		intel_fb = intel_fbdev_fb_alloc(helper, sizes);
-		if (IS_ERR(intel_fb))
-			return PTR_ERR(intel_fb);
-		ifbdev->fb = fb;
+		fb = intel_fbdev_fb_alloc(helper, sizes);
+		if (IS_ERR(fb))
+			return PTR_ERR(fb);
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
 		prealloc = true;
-		sizes->fb_width = intel_fb->base.width;
-		sizes->fb_height = intel_fb->base.height;
+		sizes->fb_width = fb->base.width;
+		sizes->fb_height = fb->base.height;
 	}
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
@@ -227,7 +227,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * This also validates that any existing fb inherited from the
 	 * BIOS is suitable for own access.
 	 */
-	vma = intel_pin_and_fence_fb_obj(&ifbdev->fb->base, false,
+	vma = intel_pin_and_fence_fb_obj(&fb->base, false,
 					 &view, false, &flags);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
@@ -241,11 +241,11 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unpin;
 	}
 
-	ifbdev->helper.fb = &ifbdev->fb->base;
+	ifbdev->helper.fb = &fb->base;
 
 	info->fbops = &intelfb_ops;
 
-	obj = intel_fb_obj(&intel_fb->base);
+	obj = intel_fb_obj(&fb->base);
 
 	ret = intel_fbdev_fb_fill_info(dev_priv, info, obj, vma);
 	if (ret)
@@ -263,8 +263,9 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
 
 	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
-		    ifbdev->fb->base.width, ifbdev->fb->base.height,
+		    fb->base.width, fb->base.height,
 		    i915_ggtt_offset(vma));
+	ifbdev->fb = fb;
 	ifbdev->vma = vma;
 	ifbdev->vma_flags = flags;
 
-- 
2.43.2

