Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D43A92DF4C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 07:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7616710E0A6;
	Thu, 11 Jul 2024 05:05:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eDoqiR5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C8710E0A6;
 Thu, 11 Jul 2024 05:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720674333; x=1752210333;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/CA/70QFoYTWIUxQZApCjFfiFuWQ5WZON3Fn5XNad+I=;
 b=eDoqiR5O8Oa/LKs16gM9qPUAKBch4L1KflW1F1KPqCOGZZeAW9jhxJLN
 4Ov3l+uAwwH2+ozP1T9lxXK0IwePy7b+16x6Azy1b/gAzUzFz1bXEkLBD
 d5g7/9vLEwV5gqsvqoLoEBir5ApDItMOolb+rCQARHVpWITjX+ZFqj9xc
 qhDAs+WWeTGosiUUJH66y656NawKedyyYyfg3oOrQmtjGCROuF2ISDNI8
 F+/4Q3+GXVY2edEQTHaSSysXTnfbrpWaiRCq0xLMSvZk+jVx84RCGHNkS
 04g0A0e/EZoZ9quLNpypeTHKVU/CuNMziUUgdrxCWC9+/zM8M9RBAKa/B Q==;
X-CSE-ConnectionGUID: GpQ3Zx3zQB6tLdW4cVeu4g==
X-CSE-MsgGUID: RUFUNVatTK2H+gwKo98I8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="12489838"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="12489838"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 22:05:32 -0700
X-CSE-ConnectionGUID: cD8YqeDpSzmzqFJ9hR67sQ==
X-CSE-MsgGUID: eZ3wqjr7R5uGhAM6bjBI7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52827071"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa005.fm.intel.com with ESMTP; 10 Jul 2024 22:05:30 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, daniele.ceraolospurio@intel.com,
 vinay.belgaumkar@intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Date: Thu, 11 Jul 2024 10:43:39 +0530
Message-ID: <20240711051339.3289552-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
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

As per recommendation in the workarounds:
WA_14021987551, Wa_16023588340:

There is an issue with accessing Stolen memory pages due a
hardware limitation. Limit the usage of stolen memory for
fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
assign the same from system memory.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 816ad13821a8..8fda8745ce0a 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe)) {
+	/*
+	 * WA_14021987551, Wa_16023588340:
+	 * There is an issue with accessing Stolen memory pages
+	 * due a hardware limitation. Limit the usage of stolen
+	 * memory for fbdev for LNL+. Don't use BIOS FB from
+	 * stolen on LNL+ and assign the same from system memory
+	 */
+	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
@@ -48,6 +55,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		else
 			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
 	}
+
 	if (IS_ERR(obj)) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 5eccd6abb3ef..80dd6b64c921 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
 		phys_base = base;
 		flags |= XE_BO_FLAG_STOLEN;
 
+		/*
+		 * WA_14021987551, Wa_16023588340:
+		 * There is an issue with accessing Stolen memory pages
+		 * due a hardware limitation. Limit the usage of stolen
+		 * memory for fbdev for LNL+. Don't use BIOS FB from
+		 * stolen on LNL+ and assign the same from system memory
+		 */
+		if (DISPLAY_VER(xe) >= 20)
+			return NULL;
+
 		/*
 		 * If the FB is too big, just don't use it since fbdev is not very
 		 * important and we should probably use that space with FBC or other
-- 
2.42.0

