Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4969A0BC7A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 16:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20FC010E6EB;
	Mon, 13 Jan 2025 15:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5vsa0j4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ECCB10E6EB;
 Mon, 13 Jan 2025 15:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736783260; x=1768319260;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kZ5e0jSPronL2jHSLN7wbYf04zbNzIrSKLGXxbgVwCM=;
 b=G5vsa0j4XiH8tAq0gEqwzvtugHezXNo3nJI8dCcW7knzhTOjRnXUwfqn
 GCuJIzPI7HJkYOaZF8SmRjqBbxX9WWwD5Vgu0cYIzJN8sh6R8S0Vk9zWn
 Vuwd6KSLblNTi4cLQooVf/i9Z/EMWsfWp784cZ8X13CCrlbRf4MsFJ9Pb
 NPMt5EbvgIdMW0x6JbcoXrt5LDHoeKAkL1T+3ASR9Ag1D+QKa5OC3nCTI
 X4g5F0wJfGUqoXZVpRoZwkLkgXiZhKLFQssd1KlF0cu5Q1eSjMtiF5kPg
 XcaHmmk7XbIXcWAaVOCxqq3Bus9dad0fwGKP5YZvFvH+SvjyVVKt8bMFy A==;
X-CSE-ConnectionGUID: rpt0JVOJTQWmkEC/kNuLeA==
X-CSE-MsgGUID: ILPRQnv3TT+B7gE0khJszg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40818656"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40818656"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 07:47:40 -0800
X-CSE-ConnectionGUID: imqAQK4uSkGWqnntqPw/6w==
X-CSE-MsgGUID: pNM2LZioRLKiHWQcRC5Bcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="109534247"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 07:47:38 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe/dp: Enable DP tunneling
Date: Mon, 13 Jan 2025 17:48:32 +0200
Message-ID: <20250113154832.1004369-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Enable the DP tunneling functionality in the xe driver.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
 drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
 drivers/gpu/drm/xe/Makefile                    |  3 +++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index e9314cf25a193..7a91b4945eb8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -20,7 +20,8 @@ struct intel_dp;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
-#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
+#if (defined(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
+	(defined(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
 
 int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_tunnel_disconnect(struct intel_dp *intel_dp);
@@ -127,6 +128,6 @@ intel_dp_tunnel_mgr_init(struct intel_display *display)
 
 static inline void intel_dp_tunnel_mgr_cleanup(struct intel_display *display) {}
 
-#endif /* CONFIG_DRM_I915_DP_TUNNEL */
+#endif /* CONFIG_DRM_I915_DP_TUNNEL || CONFIG_DRM_XE_DP_TUNNEL */
 
 #endif /* __INTEL_DP_TUNNEL_H__ */
diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
index b51a2bde73e29..50cf80df51900 100644
--- a/drivers/gpu/drm/xe/Kconfig
+++ b/drivers/gpu/drm/xe/Kconfig
@@ -59,6 +59,20 @@ config DRM_XE_DISPLAY
 	help
 	  Disable this option only if you want to compile out display support.
 
+config DRM_XE_DP_TUNNEL
+	bool "Enable DP tunnel support"
+	depends on DRM_XE
+	depends on USB4
+	select DRM_DISPLAY_DP_TUNNEL
+	default y
+	help
+	  Choose this option to detect DP tunnels and enable the Bandwidth
+	  Allocation mode for such tunnels. This allows using the maximum
+	  resolution allowed by the link BW on all displays sharing the
+	  link BW, for instance on a Thunderbolt link.
+
+	  If in doubt say "Y".
+
 config DRM_XE_FORCE_PROBE
 	string "Force probe xe for selected Intel hardware IDs"
 	depends on DRM_XE
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 5c97ad6ed7385..81f63258a7e19 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -301,6 +301,9 @@ ifeq ($(CONFIG_DEBUG_FS),y)
 		i915-display/intel_pipe_crc.o
 endif
 
+xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
+	i915-display/intel_dp_tunnel.o
+
 obj-$(CONFIG_DRM_XE) += xe.o
 obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
 
-- 
2.44.2

