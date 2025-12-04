Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06561CA359F
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82C3110E953;
	Thu,  4 Dec 2025 10:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngg28+fu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2103610E953;
 Thu,  4 Dec 2025 10:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845975; x=1796381975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WJfnO/JZSBx5uqcfPjaFhVqEco88SbFQqVtINQ0+QQM=;
 b=ngg28+fuj+mz2zO20WMccrNUiz6J/rHCT5uwW2nslGRgTyrQkai2rGD1
 sdJrcDd6EAZsL+fUtSlA6jkpxao8NUESSfQ7XHh9Hh+SLr7Vh43bjRoQ1
 ZYHunZasjSLXfk3+zVD9YVWWd4LFMfVfN4VBF9hCsDIrBGeXGQqtVZsWD
 r0eOFLxi/vraNagx5jE5EJKqPvEfucysPx+gzty3m0yCKxxll6JhKwVME
 rtmDew1VlxsB0ye9cgYcY+hmr7g3VB2gR8Cuptvj5P6EReOWKCRtG3vel
 7NBVuSvb7axuA0lJL+wb1Y6sOGIyDnZVf9mw0IOaDxlcDo1oaoQvRMemh Q==;
X-CSE-ConnectionGUID: KtqdKF01SreXUAClknD78g==
X-CSE-MsgGUID: AN6HBpWJR6aC5kS8LBPb8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="69456203"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="69456203"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:35 -0800
X-CSE-ConnectionGUID: NZ/LJ/GyRMSDj5n/rQm20w==
X-CSE-MsgGUID: ZCS5ql8hS8ms84Cds72mGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="225627596"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 18/25] drm/vblank: merge drm_vblank_restore() into
 drm_crtc_vblank_restore()
Date: Thu,  4 Dec 2025 12:57:46 +0200
Message-ID: <d7f7e3937dcd5045023fd4c7b28efaa6ef94dffa.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
References: <cover.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

The extra function serves no useful purpose.

This allows us to drop another superfluous pipe check warning.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 57 +++++++++++++++---------------------
 1 file changed, 23 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index e4c8af7fb5db..ad44fea4ff67 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1527,23 +1527,41 @@ void drm_crtc_vblank_on(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_on);
 
-static void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
+/**
+ * drm_crtc_vblank_restore - estimate missed vblanks and update vblank count.
+ * @crtc: CRTC in question
+ *
+ * Power manamement features can cause frame counter resets between vblank
+ * disable and enable. Drivers can use this function in their
+ * &drm_crtc_funcs.enable_vblank implementation to estimate missed vblanks since
+ * the last &drm_crtc_funcs.disable_vblank using timestamps and update the
+ * vblank counter.
+ *
+ * Note that drivers must have race-free high-precision timestamping support,
+ * i.e.  &drm_crtc_funcs.get_vblank_timestamp must be hooked up and
+ * &drm_vblank_crtc_config.disable_immediate must be set to indicate the
+ * time-stamping functions are race-free against vblank hardware counter
+ * increments.
+ */
+void drm_crtc_vblank_restore(struct drm_crtc *crtc)
 {
+	struct drm_device *dev = crtc->dev;
+	unsigned int pipe = drm_crtc_index(crtc);
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 	ktime_t t_vblank;
-	struct drm_vblank_crtc *vblank;
 	int framedur_ns;
 	u64 diff_ns;
 	u32 cur_vblank, diff = 1;
 	int count = DRM_TIMESTAMP_MAXRETRIES;
 	u32 max_vblank_count = drm_max_vblank_count(dev, pipe);
 
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return;
+	drm_WARN_ON_ONCE(dev, !crtc->funcs->get_vblank_timestamp);
+	drm_WARN_ON_ONCE(dev, vblank->inmodeset);
+	drm_WARN_ON_ONCE(dev, !vblank->config.disable_immediate);
 
 	assert_spin_locked(&dev->vbl_lock);
 	assert_spin_locked(&dev->vblank_time_lock);
 
-	vblank = drm_vblank_crtc(dev, pipe);
 	drm_WARN_ONCE(dev,
 		      drm_debug_enabled(DRM_UT_VBL) && !vblank->framedur_ns,
 		      "Cannot compute missed vblanks without frame duration\n");
@@ -1564,35 +1582,6 @@ static void drm_vblank_restore(struct drm_device *dev, unsigned int pipe)
 		    diff, diff_ns, framedur_ns, cur_vblank - vblank->last);
 	vblank->last = (cur_vblank - diff) & max_vblank_count;
 }
-
-/**
- * drm_crtc_vblank_restore - estimate missed vblanks and update vblank count.
- * @crtc: CRTC in question
- *
- * Power manamement features can cause frame counter resets between vblank
- * disable and enable. Drivers can use this function in their
- * &drm_crtc_funcs.enable_vblank implementation to estimate missed vblanks since
- * the last &drm_crtc_funcs.disable_vblank using timestamps and update the
- * vblank counter.
- *
- * Note that drivers must have race-free high-precision timestamping support,
- * i.e.  &drm_crtc_funcs.get_vblank_timestamp must be hooked up and
- * &drm_vblank_crtc_config.disable_immediate must be set to indicate the
- * time-stamping functions are race-free against vblank hardware counter
- * increments.
- */
-void drm_crtc_vblank_restore(struct drm_crtc *crtc)
-{
-	struct drm_device *dev = crtc->dev;
-	unsigned int pipe = drm_crtc_index(crtc);
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
-
-	drm_WARN_ON_ONCE(dev, !crtc->funcs->get_vblank_timestamp);
-	drm_WARN_ON_ONCE(dev, vblank->inmodeset);
-	drm_WARN_ON_ONCE(dev, !vblank->config.disable_immediate);
-
-	drm_vblank_restore(dev, pipe);
-}
 EXPORT_SYMBOL(drm_crtc_vblank_restore);
 
 static int drm_vblank_crtc_queue_event(struct drm_vblank_crtc *vblank,
-- 
2.47.3

