Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2E05B98DB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 12:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4600810EAD3;
	Thu, 15 Sep 2022 10:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEDD10EAD3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 10:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663238005; x=1694774005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fVad8l3kkqvbIK9x30WYmALqpRQlbA6phN5UkhAqv+c=;
 b=cbDtUMw6Jp8t6Ytq0IjDEodEpIVRVSci8IIZHeLY52qJTzlOmQVbmCkV
 4T93GucLMBZYkzszCVXWcXdmHS2MrYN/XC9HNKaqX9uyxKyXm0syVhnA1
 EgXPaSk7+paQ5RiHIwL+rnFaBoSdfrE6Wf4PO5bim9tJ0mKB0PHkFzDrf
 +ZqcoNVa5uDJcyVIf1WFq5aT1sX/h1TNXSF2ShdkhLAxKs/adUJqpNBkP
 Gxe4aYJ8xddRMHqM3MJ8PQjRtvNU8LN2THj8VPduMs41ub/z7niddeLd2
 AVoATKv/fOTBG2ipGlt+zLL4yqCQkhH4i79d6TsibZfUXedySdzV71OfN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="281707353"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="281707353"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 03:33:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="617223382"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 03:33:23 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Sep 2022 16:03:11 +0530
Message-Id: <20220915103311.5634-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220915103311.5634-1-anshuman.gupta@intel.com>
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map against rpm
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If i915 gem obj lies in lmem, then i915_gem_object_pin_map
need to grab a rpm wakeref to make sure gfx PCIe endpoint
function stays in D0 state during any access to mapping
returned by i915_gem_object_pin_map().
Subsequently i915_gem_object_upin_map will put the wakref as well.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c       |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.h       |  5 +++++
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 14 ++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_pages.c        |  8 ++++++++
 4 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 85482a04d158..f291f990838d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -95,6 +95,7 @@ void i915_gem_object_init(struct drm_i915_gem_object *obj,
 	mutex_init(&obj->mm.get_page.lock);
 	INIT_RADIX_TREE(&obj->mm.get_dma_page.radix, GFP_KERNEL | __GFP_NOWARN);
 	mutex_init(&obj->mm.get_dma_page.lock);
+	mutex_init(&obj->wakeref_lock);
 }
 
 /**
@@ -110,6 +111,7 @@ void __i915_gem_object_fini(struct drm_i915_gem_object *obj)
 {
 	mutex_destroy(&obj->mm.get_page.lock);
 	mutex_destroy(&obj->mm.get_dma_page.lock);
+	mutex_destroy(&obj->wakeref_lock);
 	dma_resv_fini(&obj->base._resv);
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 7317d4102955..b31ac6e4c272 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -501,6 +501,11 @@ static inline void i915_gem_object_flush_map(struct drm_i915_gem_object *obj)
  */
 static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
 {
+	mutext_lock(obj->wakeref_lock);
+	if (!--obj->wakeref_count)
+		intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, obj->wakeref);
+	mutext_unlock(obj->wakeref_lock);
+
 	i915_gem_object_unpin_pages(obj);
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 9f6b14ec189a..34aff95a1984 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -657,6 +657,20 @@ struct drm_i915_gem_object {
 
 		void *gvt_info;
 	};
+
+	/**
+	 * wakeref to protect the i915 lmem iomem mappings.
+	 * We don't pin_map an object partially that makes easy
+	 * to track the wakeref cookie, if wakeref is already held
+	 * then we don't need to grab it again for other pin_map.
+	 * first pin_map will grab the wakeref and last unpin_map
+	 * will put the wakeref.
+	 */
+	intel_wakeref_t wakeref;
+	unsigned int wakeref_count;
+
+	/** protects the wakeref_count wakeref cookie against multiple pin_map and unpin_map */
+	struct mutex wakeref_lock;
 };
 
 static inline struct drm_i915_gem_object *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 4df50b049cea..b638b5413280 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -370,6 +370,14 @@ void *i915_gem_object_pin_map(struct drm_i915_gem_object *obj,
 
 	assert_object_held(obj);
 
+	if (i915_gem_object_is_lmem(obj)) {
+		mutex_lock(&obj->wakeref_lock);
+		if (!obj->wakeref_count++)
+			obj->wakeref =
+				intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+		mutex_unlock(&obj->wakeref_lock);
+	}
+
 	pinned = !(type & I915_MAP_OVERRIDE);
 	type &= ~I915_MAP_OVERRIDE;
 
-- 
2.26.2

