Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FF2BCCB21
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 13:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A918610EBB3;
	Fri, 10 Oct 2025 11:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LkcoQwYy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C514210EBB3;
 Fri, 10 Oct 2025 11:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760094489; x=1791630489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QSpuZGfq7L9vnevS2BB26byK/Vj+KYQvqhHEVYtSYnU=;
 b=LkcoQwYys3w0OSb+vmmXrT6Akpn9VIMQ+A8JDSCP2lZCe9PXgjARYruz
 O++Dahg2lzYgBrZoD9C5uazyYZglkI8V1vE4h5mS/FvY0iXQtvGrwlM+R
 sg8Q5sbmTgk7emW3mQIW79AgzYM4JRIfkxzzORQb9jNbjPFUupMUIDJfw
 q5l9eOF88POEs+WjE7jWB64g/2ztWQFWk57ppwgX/5us5mH4UIQ3h3ZaW
 ojicTIN/sNgWBO9YVHeOnfTJB0GB4k+d6Lu3NVZn1f21AvT8o/rHawMKM
 9JUW6GRacgn7MN/TBbl/iqKCyXLogY7P95wG0bEdBCMyNdPYooj8VV8Wx g==;
X-CSE-ConnectionGUID: v0rtsi9hQ52pMudsUeFCtw==
X-CSE-MsgGUID: /RnpM+aFQzepsUYhBcoBQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="72925063"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="72925063"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:08:09 -0700
X-CSE-ConnectionGUID: T/nXn0SkQ7iiGR6JQ/e9hQ==
X-CSE-MsgGUID: lxV/pT1nRH+2tjfed4FFaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211607776"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.168])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:08:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/3] drm/i915/display: duplicate 128-byte Y-tiling feature
 check
Date: Fri, 10 Oct 2025 14:07:52 +0300
Message-ID: <2a7877f8f1d11114c1a17869bd24d83e13b1fac2.1760094361.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1760094361.git.jani.nikula@intel.com>
References: <cover.1760094361.git.jani.nikula@intel.com>
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

v2: gen2 also has 128-byte Y-tile

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_fb.c             | 3 +--
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 1 -
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0e062753cf9b..9960ac13a6dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -142,6 +142,7 @@ struct intel_display_platforms {
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
+#define HAS_128B_Y_TILING(__display)	(!(__display)->platform.i915g && !(__display)->platform.i915gm)
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
 #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3bfd211d64ba..7388791dfde0 100644
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
-		if (HAS_128_BYTE_Y_TILING(i915))
+		if (HAS_128B_Y_TILING(display))
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

