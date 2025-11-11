Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B04DC4E3EB
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 14:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D20510E148;
	Tue, 11 Nov 2025 13:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZCUvUOt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B7B810E07F;
 Tue, 11 Nov 2025 13:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762869186; x=1794405186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2qMc8CyGnsEEmklqgvb4wAoogxATbF9EnQOKBAEPpFo=;
 b=AZCUvUOtnf2/jSI9ojyLu7gya7bhONzzy1LOSGGrzqgtJ6hUCiikhRCr
 J/C1+zxtik3qj4KB21eRX8oh3S3Mm9uAu3OnWZKtxaubs1RgCqDJGUlVX
 +pznRhXNlIJCxlx4XU7qB4VZ2JP3ixjdupa9qZ4XDogJwtvi5puUnd7Bu
 G0hbXNcKcDFU68ZinQlLca17pvaALFM2D7hQDn5V2U0acuM2vRLEGgxh7
 L2hEVGdKah0AiN6pl71y+7T0CuhKYXfFUAGYHdoUnF3l3NsbxMRMJ5Tuq
 XO9fgrVjPT85Vpinj5SEzPiCkF0nSyqZ7P5MLjVzl0EDYas6L5u/7dt+l w==;
X-CSE-ConnectionGUID: 6MS3WvSiSOKNzh6f47YC8w==
X-CSE-MsgGUID: TnXgcwcnTTG4cTpko4U6hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="87560330"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="87560330"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 05:53:05 -0800
X-CSE-ConnectionGUID: 7+mAbl1jTS61J3sg+/k14Q==
X-CSE-MsgGUID: lZGsiLs5TOyvTnAtl2a/Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193220075"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 05:53:03 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: arun.r.murthy@intel.com,
	jani.nikula@linux.intel.com
Subject: [PATCH v2] drm/i915/fbdev: Hold runtime PM ref during fbdev BO
 creation
Date: Tue, 11 Nov 2025 19:24:03 +0530
Message-ID: <20251111135403.3415947-1-dibin.moolakadan.subrahmanian@intel.com>
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

During fbdev probe, the xe driver allocates and pins a framebuffer
BO (via xe_bo_create_pin_map_novm() → xe_ggtt_insert_bo()).

Without a runtime PM reference, xe_pm_runtime_get_noresume() warns about
missing outer PM protection as below:

	xe 0000:03:00.0: [drm] Missing outer runtime PM protection

Acquire a runtime PM reference before framebuffer allocation to ensure
xe_ggtt_insert_bo()  executes  under active runtime PM context.

Changes in v2:
 - Update commit message to add Fixes tag (Jani Nikula)

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6350
Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
Cc: Jani Nikula <jani.nikula@linux.intel.com>
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

