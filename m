Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 586964859A9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B2710E4A2;
	Wed,  5 Jan 2022 19:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD16310E49D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412685; x=1672948685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7wFJ9kAyEI/nTcg7Fr/pshXfziUYP7/Fyk7L0YzF5gA=;
 b=MrqoRrnxst8BB8YjmnLnJkZxRlIiAKsiRo2BVJZFyJYjEDO/7TC0AQkV
 bzZF+PycsN+e+FJq73npR3UsNvHI1P790+nlsHRvOi45oXuRcHhNsV7Q/
 JgWwLJDngLkYEy6nqgyMTBE3YI6VuXai5iYNFXOMNYNrkElVqZu/TV9g9
 jTVs61zA1NoP4KfkS4p6Bmc5V2bMB+cfvlDHTcVLJKujgK7XOgIS6Dpqs
 rldUyBGjF+TcnThLlkdjpZq24UHR3FJEpM0ciC7/qFoSZr+uX3FF2qg+E
 9QtqWOYC6jsS2/+JAC5AprM8G8WuZlIxxdLtAzZ3KmfMsBPDKogV3mgOa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="328874029"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="328874029"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="470693881"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:30 +0200
Message-Id: <e746652a16700d93f5e1c8459e38a41f042694f4.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/21] drm/i915: move
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It doesn't help much, as i915_drv.h includes i915_gpu_error.h, but it's
a step in the right direction.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 11 -----------
 drivers/gpu/drm/i915/i915_gpu_error.h | 11 +++++++++++
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index aabd4a563a00..784a01dbdf60 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1643,17 +1643,6 @@ static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
 	drain_workqueue(i915->wq);
 }
 
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
 /* i915_gem_tiling.c */
 static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
 {
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

