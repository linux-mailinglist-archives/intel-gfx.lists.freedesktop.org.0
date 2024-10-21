Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0E69A934C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2177210E5BC;
	Mon, 21 Oct 2024 22:28:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FkTiH44U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11ED10E5BC;
 Mon, 21 Oct 2024 22:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549700; x=1761085700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=grIa19BEV7KB/mrObcRLtZLQqW6dFmcAlv4rtwfXVqU=;
 b=FkTiH44Uvbv8eROlVN6bgnVT4TBGmrSQ/zHok1aVfT8p1s/xUiB06mgS
 nT+QSfQ/K35iXp9sqBoZfBFDzAl96ybIR1qR9x1ROfWhw86qP/J25/mUZ
 tvx3mKs5WFhE3NaVt9kXiJN9sYscGyD41Rlj8RwH8WQEex3mOtCzLcOSg
 8WAEX4788Iny3Z42kYGYyZP3u1Fhim5Tp65HbeLFpNN5xHrIRDOGETFlM
 Wx1jI5BdLqQu9d+JgRgN2JplwO/1Z04DKNhGn9rUY4v9NhU/ZjpsWVRbb
 n5HdrUBWN9jPSS97LuX39LYHHqqWlfeW9L7BFvnfYvVdjPIgnmHTOpvWm Q==;
X-CSE-ConnectionGUID: Rx4RMiVpTIy7BsHmFB8xQg==
X-CSE-MsgGUID: DxG12/E8Qq6J3iw7F6CTtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934475"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934475"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:19 -0700
X-CSE-ConnectionGUID: RySRFPb6Rhyl+aYq0irpjQ==
X-CSE-MsgGUID: AHcypAD/Rxe0dWS8z6oVrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009641"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:18 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 11/13] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
Date: Mon, 21 Oct 2024 19:27:30 -0300
Message-ID: <20241021222744.294371-12-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

In order to be able to use the DMC wakelock, we also need to know that
the display hardware has support for DMC, which is a runtime info.
Define HAS_DMC_WAKELOCK(), which checks for both DMC availability and IP
version, and use it in place of directly checking the display version.

Since we depend on runtime info, also make sure to call
intel_dmc_wl_init() only after we have probed the hardware for such info
(i.e. after intel_display_device_info_runtime_init()).

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 071a36b51f79..5f78fd127fe0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -128,6 +128,7 @@ enum intel_display_subplatform {
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
+#define HAS_DMC_WAKELOCK(i915)		(HAS_DMC(i915) && DISPLAY_VER(i915) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
 #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 673f9b965494..8afaa9cb89d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -200,7 +200,6 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
 	intel_fdi_init_hook(i915);
-	intel_dmc_wl_init(&i915->display);
 }
 
 /* part #1: call before irq install */
@@ -238,6 +237,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 		return 0;
 
 	intel_dmc_init(display);
+	intel_dmc_wl_init(display);
 
 	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
 	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 8283b607aac4..f6ec79b0e39d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -250,7 +250,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display, u32 address)
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) < 20 ||
+	if (!HAS_DMC_WAKELOCK(display) ||
 	    !intel_dmc_has_payload(display) ||
 	    !display->params.enable_dmc_wl)
 		return false;
@@ -263,7 +263,7 @@ void intel_dmc_wl_init(struct intel_display *display)
 	struct intel_dmc_wl *wl = &display->wl;
 
 	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl)
+	if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
-- 
2.47.0

