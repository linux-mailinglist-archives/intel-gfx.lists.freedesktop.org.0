Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 054809491BA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 15:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F5D10E369;
	Tue,  6 Aug 2024 13:39:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EUAN3SPd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C66310E367
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 13:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722951540; x=1754487540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WLvKBvQWw7jlffHL6Bd/5Xz30J6iZ2a+5/GzoxwF8R4=;
 b=EUAN3SPd9Ll/v18TkQ7qj6Urnu7R/A00kT9DF4cSSO5gmUTDWlHwUurJ
 4eLw+SU3HjuT7lITkhI5Ti+EkGkkBXl5pNnS5CnA71f6zcGGEXVxlX83a
 WV9lDNlJO3WceNTuum3/WGM869TdZg7WetqGnVkEhrk7PiUGClV3usYMd
 wgVNxiTskqcBIzkshM1/OlyILa8/p4vAYvuvPuaf82924Dqs5uBRYHVwh
 bDk2kfEyrX/t5h6HgW3SDBX7cckB83FZipDlw28x2Z6QneWkYMhqF4DUw
 e6QZt3Ba7+c98n/BX30Wy+tZ1SawEpAlpCEt8PUFBFbd15XZu3wZYKWCf g==;
X-CSE-ConnectionGUID: E1k0wsDHR3+U9WuTwYTmhw==
X-CSE-MsgGUID: eBL9scacTTOAELmaHuMJ/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="24756965"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="24756965"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:38:59 -0700
X-CSE-ConnectionGUID: jB0xr6n9ScOL5k2CKMBulg==
X-CSE-MsgGUID: hV+AbXznTnC3Q5eTQ8sHJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="57090118"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:38:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915: remove i915_report_error()
Date: Tue,  6 Aug 2024 16:38:31 +0300
Message-Id: <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722951405.git.jani.nikula@intel.com>
References: <cover.1722951405.git.jani.nikula@intel.com>
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

i915_report_error() has only two users, both in driver probe. I doubt
these cases are worth having a dedicated wrapper to also print bug
reporting info. Just switch them to regular drm_err() and remove the
wrapper.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 8 ++++----
 drivers/gpu/drm/i915/i915_utils.h  | 3 ---
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fb8e9c2fcea5..94dca1d8bb15 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -451,8 +451,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (HAS_PPGTT(dev_priv)) {
 		if (intel_vgpu_active(dev_priv) &&
 		    !intel_vgpu_has_full_ppgtt(dev_priv)) {
-			i915_report_error(dev_priv,
-					  "incompatible vGPU found, support for isolated ppGTT required\n");
+			drm_err(&dev_priv->drm,
+				"incompatible vGPU found, support for isolated ppGTT required\n");
 			return -ENXIO;
 		}
 	}
@@ -465,8 +465,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 		 */
 		if (intel_vgpu_active(dev_priv) &&
 		    !intel_vgpu_has_hwsp_emulation(dev_priv)) {
-			i915_report_error(dev_priv,
-					  "old vGPU host found, support for HWSP emulation required\n");
+			drm_err(&dev_priv->drm,
+				"old vGPU host found, support for HWSP emulation required\n");
 			return -ENXIO;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 06ec6ceb61d5..feb078ae246f 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -49,9 +49,6 @@ void __printf(3, 4)
 __i915_printk(struct drm_i915_private *dev_priv, const char *level,
 	      const char *fmt, ...);
 
-#define i915_report_error(dev_priv, fmt, ...)				   \
-	__i915_printk(dev_priv, KERN_ERR, fmt, ##__VA_ARGS__)
-
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 
 int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
-- 
2.39.2

