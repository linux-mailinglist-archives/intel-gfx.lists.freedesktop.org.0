Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66977BA311D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 11:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C15A10E33E;
	Fri, 26 Sep 2025 09:05:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fl4DmyVl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC5510E33E;
 Fri, 26 Sep 2025 09:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758877548; x=1790413548;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pQ14oJYNR51k6cUsdfxG9RhFF+OGKkxMmBbo7Mt605I=;
 b=fl4DmyVlrKgU8CBecUoMBoV4oqpSqiLa2w86nEtmwoRuTnjrmGlIRYF0
 RGa+CMRzDp1vYGo1FKq3UbWCPSczpo05Brk1CHcTnHw/c7Tum/Q4VybNE
 smoPNCUl/fNlV6JAo5NS3eJzVIC29w/3bu5YApQbktgsTYrBkzSlWlGWM
 JGPn6BGVV/CxCW8jDV4ZG3Zb69VAq2BCX+RA+KoUWCkCaQDdBm7sS3/Ze
 9dBBV+yOXOHTd5MB7l6HybuH+n8XK7lsShQmZ7QJ6WXnzXn+ZJ7oI6lYP
 WiMLHsKBONY2jMScNlpwP0ttgVKHhuLIbRT9GLpEcJQOjStZcQzLWVAX9 Q==;
X-CSE-ConnectionGUID: nN3ksnFvSvmY938/47fdvg==
X-CSE-MsgGUID: XSYY9Zx6QrqPpwXg2FKVKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="64839745"
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="64839745"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 02:05:47 -0700
X-CSE-ConnectionGUID: dN/2W7wgQZ+uPPcdIi9fpg==
X-CSE-MsgGUID: S4L7425ZSAm6EfmCft9ERQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="181570509"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 02:05:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/display: duplicate 128-byte Y-tiling feature check
Date: Fri, 26 Sep 2025 12:05:38 +0300
Message-ID: <20250926090538.1117038-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

We should try to get rid of checks that depend on struct
drm_i915_private (or struct xe_device) in display
code. HAS_128_BYTE_Y_TILING() is one of them. In the interest of
simplicity, just duplicate the check as HAS_128B_Y_TILING() in display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_fb.c             | 3 +--
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 1 -
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0e062753cf9b..3e8d4fc862ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -142,6 +142,7 @@ struct intel_display_platforms {
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
+#define HAS_128B_Y_TILING(__display)	(DISPLAY_VER(__display) != 2 && !(__display)->platform.i915g && !(__display)->platform.i915gm)
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
 #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 69237dabdae8..f2ccc9b1175d 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -777,7 +777,6 @@ unsigned int
 intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 {
 	struct intel_display *display = to_intel_display(fb->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int cpp = fb->format->cpp[color_plane];
 
 	switch (fb->modifier) {
@@ -814,7 +813,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 64;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED:
-		if (DISPLAY_VER(display) == 2 || HAS_128_BYTE_Y_TILING(i915))
+		if (DISPLAY_VER(display) == 2 || HAS_128B_Y_TILING(display))
 			return 128;
 		else
 			return 512;
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index b8269391bc69..be3edf20de22 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -36,6 +36,5 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 #define IS_MOBILE(xe) (xe && 0)
 
 #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
-#define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
 #endif
-- 
2.47.3

