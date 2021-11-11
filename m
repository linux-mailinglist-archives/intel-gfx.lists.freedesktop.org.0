Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ADD44D4DA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 11:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08CC06EA5D;
	Thu, 11 Nov 2021 10:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105176EA5D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 10:13:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="212921476"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="212921476"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 02:13:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="492488458"
Received: from pbohlinb-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.33.242])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 02:13:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Nov 2021 12:13:04 +0200
Message-Id: <20211111101304.13094-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111101304.13094-1-jani.nikula@intel.com>
References: <20211111101304.13094-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/driver: add i915_driver_ prefix to
 functions
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

Add the i915_driver_ prefix to the switcheroo functions in
i915_driver.[ch].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c     | 5 +++--
 drivers/gpu/drm/i915/i915_driver.h     | 4 ++--
 drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 20dd4b1bcc7d..8cb01e18a2b9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1219,7 +1219,8 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	return ret;
 }
 
-int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state)
+int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
+				   pm_message_t state)
 {
 	int error;
 
@@ -1378,7 +1379,7 @@ static int i915_drm_resume_early(struct drm_device *dev)
 	return ret;
 }
 
-int i915_resume_switcheroo(struct drm_i915_private *i915)
+int i915_driver_resume_switcheroo(struct drm_i915_private *i915)
 {
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index e99c00fb6312..9ef8db4aa0a6 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -18,7 +18,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent);
 void i915_driver_remove(struct drm_i915_private *i915);
 void i915_driver_shutdown(struct drm_i915_private *i915);
 
-int i915_resume_switcheroo(struct drm_i915_private *i915);
-int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
+int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
+int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
 
 #endif /* __I915_DRIVER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index 7f06f5ad0749..23777d500cdf 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -25,12 +25,12 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
 		/* i915 resume handler doesn't set to D0 */
 		pci_set_power_state(pdev, PCI_D0);
-		i915_resume_switcheroo(i915);
+		i915_driver_resume_switcheroo(i915);
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_ON;
 	} else {
 		drm_info(&i915->drm, "switched off\n");
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
-		i915_suspend_switcheroo(i915, pmm);
+		i915_driver_suspend_switcheroo(i915, pmm);
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_OFF;
 	}
 }
-- 
2.30.2

