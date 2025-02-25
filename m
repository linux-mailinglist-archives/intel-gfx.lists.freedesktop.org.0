Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDE4A446D0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C0E10E76A;
	Tue, 25 Feb 2025 16:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q0sSJKK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9849110E768;
 Tue, 25 Feb 2025 16:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502183; x=1772038183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MFUHAisZg0RE9F4weP7dlN+qVBvGvlfyYxyt2i896aM=;
 b=Q0sSJKK+/G6n8ZU7PcaFEZeGNy0WQxiwsOHYhgugaL4ZPPC98Bli5utK
 eStjy580sE9W5ClFxmBZ1co7543sSsa1Kd2oKzyQc/OwbCMcPvpCudLvg
 XRMW9BrldUI50jGOuNbaav0C6bBq4icTFnAObpjNLmWF+voTGK/ouAIEO
 fElrgYAvvQ4TijkFRn7MwDDgtdv7Z1yhCS7FMA3qovCUKXEkACajShVLP
 m4kSnKFnkDdRnD5eoAQ9V8iyBANHifgy8CQknVF+zkHdUpVxVH/ZeYLIx
 rx0avedN4agNAEJ77CJ1Hv/QIH6a83A1y6yPJMQUkNzUqM8RSmP/MmLGA A==;
X-CSE-ConnectionGUID: rVcCmgEGTtuF9eJtadtBXA==
X-CSE-MsgGUID: nioZKuo4RVKenB2yrL6zTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454436"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454436"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:42 -0800
X-CSE-ConnectionGUID: FRoyx1LzSXOkvL8r1gSe9w==
X-CSE-MsgGUID: LIIJrlCdT6i7JgyGSxyR3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930226"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/12] drm/i915/dkl: convert intel_dkl_phy.[ch] to struct
 intel_display
Date: Tue, 25 Feb 2025 18:49:06 +0200
Message-Id: <fce153dbd3a69dc574a66fb97b7c1f441df9726f.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_dkl_phy.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy.c        | 8 +++-----
 drivers/gpu/drm/i915/display/intel_dkl_phy.h        | 3 +--
 3 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index aa394f574575..f22672ed556a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -194,7 +194,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	mutex_init(&display->hdcp.hdcp_mutex);
 
 	intel_display_irq_init(i915);
-	intel_dkl_phy_init(i915);
+	intel_dkl_phy_init(display);
 	intel_color_init_hooks(display);
 	intel_init_cdclk_hooks(display);
 	intel_audio_hooks_init(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 0920f78f182e..79601f43d4a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -3,8 +3,6 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#include "i915_drv.h"
-
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_dkl_phy.h"
@@ -12,11 +10,11 @@
 
 /**
  * intel_dkl_phy_init - initialize Dekel PHY
- * @i915: i915 device instance
+ * @display: display device instance
  */
-void intel_dkl_phy_init(struct drm_i915_private *i915)
+void intel_dkl_phy_init(struct intel_display *display)
 {
-	spin_lock_init(&i915->display.dkl.phy_lock);
+	spin_lock_init(&display->dkl.phy_lock);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
index 1d96e6be657c..ccb445c0022b 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
@@ -10,10 +10,9 @@
 
 #include "intel_dkl_phy_regs.h"
 
-struct drm_i915_private;
 struct intel_display;
 
-void intel_dkl_phy_init(struct drm_i915_private *i915);
+void intel_dkl_phy_init(struct intel_display *display);
 u32
 intel_dkl_phy_read(struct intel_display *display, struct intel_dkl_phy_reg reg);
 void
-- 
2.39.5

