Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6236172088
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 15:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1756ECC6;
	Thu, 27 Feb 2020 14:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101F46ECC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 14:44:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 06:44:21 -0800
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="411037625"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 06:44:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 16:44:07 +0200
Message-Id: <20200227144408.24345-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227144408.24345-1-jani.nikula@intel.com>
References: <20200227144408.24345-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gvt: make intel_gvt_active
 internal to intel_gvt
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Nobody else uses it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h  | 5 -----
 drivers/gpu/drm/i915/intel_gvt.c | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a306ebe44a08..e57d7122cd2b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1750,11 +1750,6 @@ void i915_driver_remove(struct drm_i915_private *i915);
 int i915_resume_switcheroo(struct drm_i915_private *i915);
 int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
 
-static inline bool intel_gvt_active(struct drm_i915_private *dev_priv)
-{
-	return dev_priv->gvt;
-}
-
 int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file_priv);
 
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index 28753cf227a2..21b91313cc5d 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -125,6 +125,11 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
+static inline bool intel_gvt_active(struct drm_i915_private *dev_priv)
+{
+	return dev_priv->gvt;
+}
+
 /**
  * intel_gvt_driver_remove - cleanup GVT components when i915 driver is
  *			     unbinding
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
