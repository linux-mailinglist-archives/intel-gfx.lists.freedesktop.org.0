Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5BB4B11FB
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0F1910E8A5;
	Thu, 10 Feb 2022 15:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9573E10E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508001; x=1676044001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xQXkrqs5Amq812YXaDQLfwKE07r+h3tEbQEb+ynQJP4=;
 b=IBM74eTau36VWjLPM7L4VuqmFkXMQhguToTufW4835MYpF/F/Mlw3iGy
 tonNoPlNgzx5rQsRQ5+AWSXm4zrNyX3YOi3lFUrXV+w8hFu1AOvJDIKIF
 1XunpPiW3d+qd20QVrzuIr0fcLsGfaEJfu3OOMNGm0QWD+kwkfShvuQUC
 T8OftcSVq9SJKySwfXpQhNOiJB0CCuV8cen/zRq9mIWggR2Vuz/2Rm2jP
 JKlvbr+lmr/4aWieEie2OuoEizKOy2A8BC551RlAI1V1a5XUPKJiy2WX6
 h+CO1zZc34NlHXX9Vn1muDK2jMvqayJkYaZT3PQJBQXWPZ6uN2vL0eKL5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="236920778"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="236920778"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="568690069"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:46 +0200
Message-Id: <7af2f698a320c1efb0563f56a432c6d122d40b94.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/14] drm/i915: move
 i915_reset_count()/i915_reset_engine_count() out of i915_drv.h
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It doesn't help much, as i915_drv.h includes i915_gpu_error.h, but it's
a step in the right direction.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 11 -----------
 drivers/gpu/drm/i915/i915_gpu_error.h | 11 +++++++++++
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bc51b2336e05..95091ee4870f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1604,17 +1604,6 @@ void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
 
 int __must_check i915_gem_set_global_seqno(struct drm_device *dev, u32 seqno);
 
-static inline u32 i915_reset_count(struct i915_gpu_error *error)
-{
-	return atomic_read(&error->reset_count);
-}
-
-static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
-					  const struct intel_engine_cs *engine)
-{
-	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
-}
-
 int __must_check i915_gem_init(struct drm_i915_private *dev_priv);
 void i915_gem_driver_register(struct drm_i915_private *i915);
 void i915_gem_driver_unregister(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 5aedf5129814..903d838e2e63 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -210,6 +210,17 @@ struct drm_i915_error_state_buf {
 	int err;
 };
 
+static inline u32 i915_reset_count(struct i915_gpu_error *error)
+{
+	return atomic_read(&error->reset_count);
+}
+
+static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
+					  const struct intel_engine_cs *engine)
+{
+	return atomic_read(&error->reset_engine_count[engine->uabi_class]);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 __printf(2, 3)
-- 
2.30.2

