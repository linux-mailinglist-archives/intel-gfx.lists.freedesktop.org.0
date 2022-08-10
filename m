Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C3958ECEE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35BCB0BD2;
	Wed, 10 Aug 2022 13:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9380911AEC8
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137509; x=1691673509;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZuWe0UcFrsQ7zmcNskkRZ0EDQeAVSXlpbubgk5dpd9Q=;
 b=ZVNEMxeckfh6w1J2Qb+c7miY3vBkFjbCStbIh+l9H5kk7LfanFBHatRx
 6UExUjgGbNp54oHY9yNgloaBmHUws19MKTqZv46hPpBzjRws10iLIZC8t
 UquEN9JXIDkQKyplLlonubJ8fCQOKP4LPO0jPNsOHKeWFHvppS5d9SEJu
 eDjAkQIe6NJaoepZatV5G0h5OL06PkL2M3G6NNCCp98IMfujeEKmbRDnv
 mSMZ5jqvcSHpKAs6AUiepuYujZVEZTwYsja3O87/KHosoM9WpHrF+RI8f
 ySrbJ5PFDyfYZMuNzLggjp6nvy9PsH/BaEq59FlAJN5R0Z3nd/Ujb0+0A w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="270853655"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="270853655"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="932887377"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:05 +0300
Message-Id: <4be86d7a0737b2c49eee460d29d42843418536fe.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/15] drm/i915: combine device info printing
 into one
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We'll be moving info between static and runtime info. Combine the
printing functions into one to keep the output sensible and (mostly)
unchanged in the process.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c      |  3 +--
 drivers/gpu/drm/i915/i915_driver.c       |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c    |  3 +--
 drivers/gpu/drm/i915/intel_device_info.c | 11 ++++-------
 drivers/gpu/drm/i915/intel_device_info.h |  7 +++----
 5 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 94e5c29d2ee3..d131703de3d9 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -66,8 +66,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
 
-	intel_device_info_print_static(INTEL_INFO(i915), &p);
-	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
+	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..563797d5e6e1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -793,8 +793,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 					     INTEL_INFO(dev_priv)->platform),
 			   GRAPHICS_VER(dev_priv));
 
-		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
-		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
+		intel_device_info_print(INTEL_INFO(dev_priv),
+					RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
 		intel_gt_info_print(&to_gt(dev_priv)->info, &p);
 	}
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 32e92651ef7c..d10f4eb0e272 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -646,8 +646,7 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 {
 	struct drm_printer p = i915_error_printer(m);
 
-	intel_device_info_print_static(&error->device_info, &p);
-	intel_device_info_print_runtime(&error->runtime_info, &p);
+	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d98fbbd589aa..7793ce243981 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -88,8 +88,9 @@ const char *intel_platform_name(enum intel_platform platform)
 	return platform_names[platform];
 }
 
-void intel_device_info_print_static(const struct intel_device_info *info,
-				    struct drm_printer *p)
+void intel_device_info_print(const struct intel_device_info *info,
+			     const struct intel_runtime_info *runtime,
+			     struct drm_printer *p)
 {
 	if (info->graphics.rel)
 		drm_printf(p, "graphics version: %u.%02u\n", info->graphics.ver,
@@ -122,12 +123,8 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
-}
 
-void intel_device_info_print_runtime(const struct intel_runtime_info *info,
-				     struct drm_printer *p)
-{
-	drm_printf(p, "rawclk rate: %u kHz\n", info->rawclk_freq);
+	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
 #undef INTEL_VGA_DEVICE
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 23bf230aa104..b2fb9440e952 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -291,10 +291,9 @@ const char *intel_platform_name(enum intel_platform platform);
 void intel_device_info_subplatform_init(struct drm_i915_private *dev_priv);
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv);
 
-void intel_device_info_print_static(const struct intel_device_info *info,
-				    struct drm_printer *p);
-void intel_device_info_print_runtime(const struct intel_runtime_info *info,
-				     struct drm_printer *p);
+void intel_device_info_print(const struct intel_device_info *info,
+			     const struct intel_runtime_info *runtime,
+			     struct drm_printer *p);
 
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
 			     struct drm_printer *p);
-- 
2.34.1

