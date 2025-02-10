Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4F0A2ECB1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 13:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDE810E512;
	Mon, 10 Feb 2025 12:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGCADh22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0C410E50F;
 Mon, 10 Feb 2025 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739191205; x=1770727205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6cLbl34i5MeYR2DpAr6N/qp12Wc8dp+nMQOVrhyyBlM=;
 b=kGCADh22P5BjQmddW7HvqW/E57aPNMrmm5WU0Okux8imA2ZeOdgDLFpv
 vGkZ1Uhli6TDoLc4dWkxYuu1oxxQcz5fvWcacg417hvKAoLDkAtKKk13K
 g3ung58QMeR7uqxffVGZqhf/dVMFgqFBb4h9/rEe1NT/MBnQIOHKQCeYy
 /Fo+dZd0sTHOWWxprKdghM7BXhZ4WA/uwA1EqoPawdXZktRsambNf80EO
 Omkm4Hr6GQVmVYH4wL3pOTsCbnTJBVRqGTQtabK0BUKxuy0uJBMjEwGJ/
 W/v6M8BWbw/Z8mpl7U3bH5ZdOlTH8mlWz8k7/JoRxQmYqvhv9kdXnva9Y g==;
X-CSE-ConnectionGUID: 2aqV900RTCmw2DdnFDo2Iw==
X-CSE-MsgGUID: X6HWdGiGSmKE916yeQQyXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40038305"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="40038305"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:40:05 -0800
X-CSE-ConnectionGUID: CqOrnU+DQwGPmJq6SyEfew==
X-CSE-MsgGUID: zuYFocKUQmyQCY3/MclveA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113063611"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 10 Feb 2025 04:40:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/9] drm/i915/display_debug_fs: Prefer using display->platform
Date: Mon, 10 Feb 2025 18:09:43 +0530
Message-Id: <20250210123950.3476620-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250210123950.3476620-1-suraj.kandpal@intel.com>
References: <20250210123950.3476620-1-suraj.kandpal@intel.com>
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

Prefer using display->platform.xx instead of IS_PLATFORM() checks

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6dd95b377429..ba044ddf1fda 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -96,14 +96,14 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 		/* no global SR status; inspect per-plane WM */;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		sr_enabled = intel_de_read(display, WM1_LP_ILK) & WM_LP_ENABLE;
-	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
-		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
+	else if (display->platform.i965gm || display->platform.g4x ||
+		 display->platform.i945g || display->platform.i945gm)
 		sr_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
-	else if (IS_I915GM(dev_priv))
+	else if (display->platform.i915gm)
 		sr_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
-	else if (IS_PINEVIEW(dev_priv))
+	else if (display->platform.pineview)
 		sr_enabled = intel_de_read(display, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.valleyview || display->platform.cherryview)
 		sr_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
-- 
2.34.1

