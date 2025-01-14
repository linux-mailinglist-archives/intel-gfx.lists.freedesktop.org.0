Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99EFA10695
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 13:28:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F42410E20F;
	Tue, 14 Jan 2025 12:28:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kRNnERs+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4566410E20F;
 Tue, 14 Jan 2025 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736857685; x=1768393685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W4qAoRSiZu0B28zi92TqEmzvAptw+zGEjYkH3Aft9Ls=;
 b=kRNnERs+wbsICdAjv7Kwbsi2IobWIq1KpjLH9BfEfnM3jyGXQr1rmsT3
 wHB0pnabsuW9Oyos2RmeDseF2EyCb/YRA4AZzT24TUAZGC/WpZMPDz+3E
 rgVuMD9ymQZBj5ho3HZjq0u3pGqkzy/wQXVuzSHp3gB9ICEC9PvIllQ8c
 p/YeeDNFc3XESu9mtOCCZygCru5UDCBkePUE0hs3u/1VhjOopSZE5XAsf
 8XGIGakCub/lF8VHfwg89ztxSP9so/5MT+YwYn/jspuAoUsB6/Tk2ndeG
 NpaE8TiVJ9f6nJZwSQ7V/aHyu33z1UHp4SWVT0i9zpmkcT356jkVre4qi A==;
X-CSE-ConnectionGUID: UiTro5y2RrWtB5BnIpdFuA==
X-CSE-MsgGUID: 8+GvhTclSjyk9FzIDfOENA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48150863"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="48150863"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:28:05 -0800
X-CSE-ConnectionGUID: ifBjD5HmT9KiAFMk90XNmg==
X-CSE-MsgGUID: b9Edn0GOSMKai3MnX1Ou0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="104615378"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:28:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2] drm/xe/dp: Enable DP tunneling
Date: Tue, 14 Jan 2025 14:28:57 +0200
Message-ID: <20250114122857.1050090-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250113154832.1004369-1-imre.deak@intel.com>
References: <20250113154832.1004369-1-imre.deak@intel.com>
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

v2: Keep using IS_ENABLED() for kconfig options. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h |  5 +++--
 drivers/gpu/drm/xe/Kconfig                     | 14 ++++++++++++++
 drivers/gpu/drm/xe/Makefile                    |  3 +++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index e9314cf25a193..7f0f720e8dcad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -20,7 +20,8 @@ struct intel_dp;
 struct intel_encoder;
 struct intel_link_bw_limits;
 
-#if IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)
+#if (IS_ENABLED(CONFIG_DRM_I915_DP_TUNNEL) && defined(I915)) || \
+	(IS_ENABLED(CONFIG_DRM_XE_DP_TUNNEL) && !defined(I915))
 
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

