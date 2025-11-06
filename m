Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D391C3AC10
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 13:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A4310E5DC;
	Thu,  6 Nov 2025 12:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RDCcTgeA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4043510E5DC;
 Thu,  6 Nov 2025 12:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762430549; x=1793966549;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MSzc8dp5Fpa2ncqlspDqmb7YEsyyg7SyFtjqyrVRctA=;
 b=RDCcTgeAcntXRvPpuiDSscSwRJYC2mD0JHwP09oTer+SFNkcO0NW6Bvj
 i3f4/ua5Mf02i/2BC/w/a1laNMfJeLit6aEHf4bUv1IMcROeNon0v+ase
 SfTNLUihAI2HGRvQCyo7Q8o4OLtugJZwacRdI65rBlAbusztfwndV3mjL
 Arq0F+W4Vu81dQGmeEZcFcbj/pYBk1a5NseC/hx5ssxvzVZRQQ4W9nP+x
 rj/avk0ubQzJLAKYSDfed+fjPTyW7agxhF5PJ0HkQKpSdixc4uVe4yJLM
 jdU8xOueGd+b0EBaMtrFmGA6QGY+oZU/TVAt7BhM1nkGUrJ6/uqLwjtaX Q==;
X-CSE-ConnectionGUID: YaAp/yY1TCKWSyxqCr1C/Q==
X-CSE-MsgGUID: CN03eNZxT+WUZ5fEKsVSzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64261584"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64261584"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:02:29 -0800
X-CSE-ConnectionGUID: b1tzkCQYSY+qIcZLwzN+JQ==
X-CSE-MsgGUID: sQgnmTjUQAabhIPJ3r7khA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="191836298"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:02:27 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: arun.r.murthy@intel.com
Subject: [PATCH] drm/i915/fbdev: Hold runtime PM ref during fbdev BO creation
Date: Thu,  6 Nov 2025 17:33:13 +0530
Message-ID: <20251106120313.2670852-1-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
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

During fbdev probe, the driver allocates and pins a framebuffer
BO (via xe_bo_create_pin_map_novm() → xe_ggtt_insert_bo()).

Without a runtime PM reference, xe_pm_runtime_get_noresume() warns about
missing outer PM protection as below:

	xe 0000:03:00.0: [drm] Missing outer runtime PM protection

Acquire a runtime PM reference before framebuffer allocation to ensure
xe_ggtt_insert_bo()  executes  under active runtime PM context.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6350

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index e5449c41cfa1..7173bd1cbffd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -288,13 +288,18 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 		drm_framebuffer_put(&fb->base);
 		fb = NULL;
 	}
+
+	wakeref = intel_display_rpm_get(display);
+
 	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
 		drm_dbg_kms(display->drm,
 			    "no BIOS fb, allocating a new one\n");
 
 		fb = __intel_fbdev_fb_alloc(display, sizes);
-		if (IS_ERR(fb))
-			return PTR_ERR(fb);
+		if (IS_ERR(fb)) {
+			ret = PTR_ERR(fb);
+			goto out_unlock;
+		}
 	} else {
 		drm_dbg_kms(display->drm, "re-using BIOS fb\n");
 		prealloc = true;
@@ -302,8 +307,6 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 		sizes->fb_height = fb->base.height;
 	}
 
-	wakeref = intel_display_rpm_get(display);
-
 	/* Pin the GGTT vma for our access via info->screen_base.
 	 * This also validates that any existing fb inherited from the
 	 * BIOS is suitable for own access.
-- 
2.43.0

