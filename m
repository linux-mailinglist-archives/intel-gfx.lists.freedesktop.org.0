Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BC85A233D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 10:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4BA10E770;
	Fri, 26 Aug 2022 08:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F63E10E764
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 08:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661503124; x=1693039124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PSTxVXgTSEkiUzol8nbuqxYrC/AI1G3bjwmQA7Bnr34=;
 b=mM7yESSsjwl654+J4E53VMFHkkNWALy560fNt5nz7FKX9QHRTgdFdzvy
 RaSEiVd0lTddHhn4KilMdlqglbX2PTZ91fLU+gYCngu0zpcyy4+RERsPQ
 e7bjze3cxWRIgzrSl9VcTX1/LcWgoIT2+OMZAxOsc2v2YDvVTHvmTeDES
 ZOY0/7P2tiM4suWF1363EbFeNiMSuV1qo4kbuAo7J+QJx4D06uGV1oHJ2
 kE6dOpfvIORZikaQGiCzrA2mNZ2U7D+d76WN79t3kIzHnXgtMZIxo9XN1
 TKN38KfJ/7OIW27+OJAPJ87ACLySWwPKoNuNXwoDaI5x83RZIpGh4mY7j w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="356174957"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="356174957"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="938679112"
Received: from plomuzio-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.203])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:38:17 +0300
Message-Id: <34f33c4035dbbd0a82f0183c4a7e5b24c48c28d0.1661503049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661503049.git.jani.nikula@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/fence: replace BUG_ON() with
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

