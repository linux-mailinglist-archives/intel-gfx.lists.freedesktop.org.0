Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A9E6A6D82
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 14:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8DC10E269;
	Wed,  1 Mar 2023 13:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3784310E269
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677678873; x=1709214873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VbsjrisKw7rYLPvjRZBCE8a3WaAJMm5GmZ2WRgVh8vc=;
 b=n4U0hruGyIRCxKaHkrDeahxz2wdUSkxAWhyE1jYLf1AWTJGwu6bcQUPb
 CTTTPeFA1bAVQ7fkVMuC8iQkA9F/gLc0ACynYhGCLKe5SSnGEoE6yJ8V4
 LaWG/gyvJipJwAfOS9BBpQTLuVZNHL+j3oc1Pxciklimqtgc9RvlcSY7E
 fFRTOV82oN4z72VJPTiJh3Cmt2je/cKQTUklpoZNRdwUhE1ykPBNpesCF
 di3xHs3gPRZE5Ti6nZiymf8mQqyPWlNHqaolOgh8Va1mVpsB8VWBS71S9
 ZczGL56yfwYgxfYiRuPPS+BhzEVK2uxgZd3c9pUhN5A2FtWNaeanUORUJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="333139391"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="333139391"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="667875549"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="667875549"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 15:54:16 +0200
Message-Id: <b01f9bf0afa9abaece5d0f76aecde69e2679f662.1677678803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1677678803.git.jani.nikula@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/pm: drop intel_pm_setup()
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

All the init in intel_pm_setup() is related to runtime pm. Move them to
intel_runtime_pm_init_early(), and remove intel_pm_setup().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c      | 1 -
 drivers/gpu/drm/i915/intel_pm.c         | 6 ------
 drivers/gpu/drm/i915/intel_pm.h         | 1 -
 drivers/gpu/drm/i915/intel_runtime_pm.c | 2 ++
 4 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8bc76dede332..171ff4edabd6 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -250,7 +250,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	/* This must be called before any calls to HAS_PCH_* */
 	intel_detect_pch(dev_priv);
 
-	intel_pm_setup(dev_priv);
 	intel_irq_init(dev_priv);
 	intel_init_display_hooks(dev_priv);
 	intel_init_clock_gating_hooks(dev_priv);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ddf004e5bb4b..8b02af531e82 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -899,9 +899,3 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
 	}
 }
-
-void intel_pm_setup(struct drm_i915_private *dev_priv)
-{
-	dev_priv->runtime_pm.suspended = false;
-	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
-}
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index eab60df0c6bb..1dd464d2d186 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -15,6 +15,5 @@ struct intel_plane_state;
 void intel_init_clock_gating(struct drm_i915_private *dev_priv);
 void intel_suspend_hw(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
-void intel_pm_setup(struct drm_i915_private *dev_priv);
 
 #endif /* __INTEL_PM_H__ */
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 129746713d07..cf5122299b6b 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -652,6 +652,8 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 
 	rpm->kdev = kdev;
 	rpm->available = HAS_RUNTIME_PM(i915);
+	rpm->suspended = false;
+	atomic_set(&rpm->wakeref_count, 0);
 
 	init_intel_runtime_pm_wakeref(rpm);
 	INIT_LIST_HEAD(&rpm->lmem_userfault_list);
-- 
2.39.1

