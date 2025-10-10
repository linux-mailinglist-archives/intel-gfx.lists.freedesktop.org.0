Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1396DBCCB1E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 13:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECB410EBBB;
	Fri, 10 Oct 2025 11:08:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUDqRty7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F01610EBB1;
 Fri, 10 Oct 2025 11:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760094484; x=1791630484;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0LDbsErngnAu3phKld0LmkfOjNNvTplU4evgOhZSeVM=;
 b=kUDqRty7xTzNcDBgjiEHDVGEn1j1ywI2JQQo/JwhBIQV6V+g3OkYlxRG
 2fIsR31EKVWWe7OQa3ID8hjaaCBg+feNzO2HP+uCb9Qz+iGp+GWys84Wz
 Fe7MSmZfGf1JQvDAIChijrNwAlZTUKXmqSgTWUm+bqOpuoU4cqB8izr1Q
 J7nT8uErS3JIFVsJpYaH+6an7FKCJnHdnmEW+tIaIiWSIMFpwyMzxhJ0s
 0pGoLkXTQN3iZadSgny/Z+jNlr+u8ZrHillgUjVuPJdvzi1+VtPlU50ME
 mdlLDrhiye8amEMW/uJtXzfTR5+LBI1WWotNjAQosoFjcn/yFQP6VmqUP g==;
X-CSE-ConnectionGUID: q+brHZOZSsKH8GJmVVnp9A==
X-CSE-MsgGUID: JV8PFQy9Ssq9ABwulMyM4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="72925053"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="72925053"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:08:04 -0700
X-CSE-ConnectionGUID: RrYolkqRT4O4XF7Y30ISqg==
X-CSE-MsgGUID: iFO6pKhrSMWJVhUFYGmkVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211607759"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.168])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:08:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/3] drm/i915: include gen 2 in HAS_128_BYTE_Y_TILING()
Date: Fri, 10 Oct 2025 14:07:51 +0300
Message-ID: <41bf9d67a11f38f4ab0f82740f38d5c8fe0bb58b.1760094361.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1760094361.git.jani.nikula@intel.com>
References: <cover.1760094361.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Gen 2 platforms actually have 128-byte Y-tile, it's just different from
the 128-byte Y-tile on i945+. Make the HAS_128_BYTE_Y_TILING() feature
check macro and its usage slightly less convoluted by including gen 2 in
it.

i915_tiling_ok() would strictly not need changing, but separate the if
clauses to emphasize gen 2 X-tile also being 128 bytes.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c    | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 5 +++--
 drivers/gpu/drm/i915/i915_drv.h            | 3 +--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 99823ef42ef1..3bfd211d64ba 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -814,7 +814,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
 			return 64;
 		fallthrough;
 	case I915_FORMAT_MOD_Y_TILED:
-		if (DISPLAY_VER(display) == 2 || HAS_128_BYTE_Y_TILING(i915))
+		if (HAS_128_BYTE_Y_TILING(i915))
 			return 128;
 		else
 			return 512;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 5a296ba3758a..567b97d28d30 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -145,8 +145,9 @@ i915_tiling_ok(struct drm_i915_gem_object *obj,
 			return false;
 	}
 
-	if (GRAPHICS_VER(i915) == 2 ||
-	    (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915)))
+	if (tiling == I915_TILING_Y && HAS_128_BYTE_Y_TILING(i915))
+		tile_width = 128;
+	else if (GRAPHICS_VER(i915) == 2)
 		tile_width = 128;
 	else
 		tile_width = 512;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6e159bb8ad2f..4b66e5d017d9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -602,8 +602,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
  */
-#define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
-					 !(IS_I915G(i915) || IS_I915GM(i915)))
+#define HAS_128_BYTE_Y_TILING(i915) (!IS_I915G(i915) && !IS_I915GM(i915))
 
 #define HAS_RC6(i915)		 (INTEL_INFO(i915)->has_rc6)
 #define HAS_RC6p(i915)		 (INTEL_INFO(i915)->has_rc6p)
-- 
2.47.3

