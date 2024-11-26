Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB3A9D953B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 11:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92E810E2E1;
	Tue, 26 Nov 2024 10:12:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U3IGFbxI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3481710E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 10:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732615949; x=1764151949;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yOD9OENrLkYZvRVMCqvE2ZYolFAEFUCC812s1cgBsr0=;
 b=U3IGFbxIf2G9gejJ0/DKg0hnwHIi+hVNj7a4x/48rtARaviEyQiM8DU8
 Mr4p19BR/IEgm6Oj+efn9VWLilsjj7M3WlsO0jpRFgqNHXQO1Yr+l43vk
 qWWPsl0T5yZLWAKTp5bo+kWnK/Iio7jKBu5AQV4J0zd13IA+DFUHOtCBX
 9Y/KCzqJK6L/leLOUic60aKpey4UlomfyQyLp1aUoA/P3//BGXpshrhof
 AF8DWDQ4fLgAxHjuRBqwOyTY0AOyN0H734WCQLax7Bas1+U2Ki1olAlvk
 CAzD92/kasDEye0/c+qsMyybzoaLK7jYZ8Ci6phIJtyFpZGYWl/BgQqiD w==;
X-CSE-ConnectionGUID: s1HqCiuuSFCVDbJb8QaKzg==
X-CSE-MsgGUID: tgQNnvOYQvaeNgCajx+0ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="58172998"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="58172998"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 02:12:29 -0800
X-CSE-ConnectionGUID: 9/BMuve8R1qB2d55YOX8cA==
X-CSE-MsgGUID: BuywQ97uTKOrj86rfwR/YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="129084036"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 02:12:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 1/2] drm/i915/display: prefer DISPLAY_VER over GRAPHICS_VER in
 display s/r
Date: Tue, 26 Nov 2024 12:12:21 +0200
Message-Id: <20241126101222.2671224-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

Use display version checks for display scratch registers, not graphics
version. And for the older platforms it's the same thing anyway.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_display_sr.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index 4c78b7165831..e0e8044f9bcb 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -16,14 +16,14 @@ static void i9xx_display_save_swf(struct drm_i915_private *i915)
 	int i;
 
 	/* Scratch space */
-	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
 			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
 			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 		}
 		for (i = 0; i < 3; i++)
 			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
-	} else if (GRAPHICS_VER(i915) == 2) {
+	} else if (DISPLAY_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
 			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
 	} else if (HAS_GMCH(i915)) {
@@ -42,14 +42,14 @@ static void i9xx_display_restore_swf(struct drm_i915_private *i915)
 	int i;
 
 	/* Scratch space */
-	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
 		for (i = 0; i < 7; i++) {
 			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
 			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
 			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
-	} else if (GRAPHICS_VER(i915) == 2) {
+	} else if (DISPLAY_VER(i915) == 2) {
 		for (i = 0; i < 7; i++)
 			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
 	} else if (HAS_GMCH(i915)) {
@@ -71,10 +71,10 @@ void i9xx_display_sr_save(struct drm_i915_private *i915)
 		return;
 
 	/* Display arbitration control */
-	if (GRAPHICS_VER(i915) <= 4)
+	if (DISPLAY_VER(i915) <= 4)
 		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));
 
-	if (GRAPHICS_VER(i915) == 4)
+	if (DISPLAY_VER(i915) == 4)
 		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);
 
 	i9xx_display_save_swf(i915);
@@ -90,10 +90,10 @@ void i9xx_display_sr_restore(struct drm_i915_private *i915)
 
 	i9xx_display_restore_swf(i915);
 
-	if (GRAPHICS_VER(i915) == 4)
+	if (DISPLAY_VER(i915) == 4)
 		pci_write_config_word(pdev, GCDGMBUS, display->restore.saveGCDGMBUS);
 
 	/* Display arbitration */
-	if (GRAPHICS_VER(i915) <= 4)
+	if (DISPLAY_VER(i915) <= 4)
 		intel_de_write(display, DSPARB(i915), display->restore.saveDSPARB);
 }
-- 
2.39.5

