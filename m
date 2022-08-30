Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B28A5A5F81
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 11:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54A910E02E;
	Tue, 30 Aug 2022 09:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0081610E029
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 09:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661852077; x=1693388077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b4tKhL95xF1aKRCELJzKrs10vKJqRXk5tnncqYqPnJU=;
 b=n8AS9nxuq7jyjbmhIznEb56LPo+4fwfhsfBBrsrnKO/u1zfIDMdZG825
 cbANFYFi3umOV6553guGRNK1VqF5wHneWOa2eIDuP9FmynEKwk17U9BZW
 XtRHIYOFQ4zZFv7k/JIBHqI4HjeqT+7mTpXG9FyVBKSkCTrNT2HKjctmA
 fUK/U0dqBM1paXQTDFWgfuthnOnQu58YOz62B5dt2qh9epdl4tkVHv6J5
 lVEfyl0cTqTIq+4xkQfxr1PD5vSbATgYIAB9sdlYo2dZ8peNrf4ebsC4S
 Cx4/+rKOt+nA2dOjd3o8RVlJAuRSY/LC+bGqNaSH+KXyxawASmYpf9Ttj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295132410"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="295132410"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="679969527"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 02:34:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 12:34:11 +0300
Message-Id: <20220830093411.1511040-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220830093411.1511040-1-jani.nikula@intel.com>
References: <20220830093411.1511040-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/fence: replace BUG_ON() with
 BUILD_BUG_ON()
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

Avoid BUG_ON(). Since __i915_sw_fence_init() is always called via a
wrapper macro, we can replace it with a compile time BUILD_BUG_ON().

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_sw_fence.c | 2 --
 drivers/gpu/drm/i915/i915_sw_fence.h | 6 +++++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index ae984c66c48a..6fc0d1b89690 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -241,8 +241,6 @@ void __i915_sw_fence_init(struct i915_sw_fence *fence,
 			  const char *name,
 			  struct lock_class_key *key)
 {
-	BUG_ON(!fn);
-
 	__init_waitqueue_head(&fence->wait, name, key);
 	fence->fn = fn;
 #ifdef CONFIG_DRM_I915_SW_FENCE_CHECK_DAG
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
index a7c603bc1b01..619fc5a22f0c 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence.h
@@ -48,11 +48,15 @@ void __i915_sw_fence_init(struct i915_sw_fence *fence,
 do {								\
 	static struct lock_class_key __key;			\
 								\
+	BUILD_BUG_ON((fn) == NULL);				\
 	__i915_sw_fence_init((fence), (fn), #fence, &__key);	\
 } while (0)
 #else
 #define i915_sw_fence_init(fence, fn)				\
-	__i915_sw_fence_init((fence), (fn), NULL, NULL)
+do {								\
+	BUILD_BUG_ON((fn) == NULL);				\
+	__i915_sw_fence_init((fence), (fn), NULL, NULL);	\
+} while (0)
 #endif
 
 void i915_sw_fence_reinit(struct i915_sw_fence *fence);
-- 
2.34.1

