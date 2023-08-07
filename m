Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2197723B7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 14:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A0B10E288;
	Mon,  7 Aug 2023 12:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21F810E2BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 12:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691410835; x=1722946835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gLOcs6A9EtjcSQWqM240nM2QxV+XpGOde5Mu39UQPO4=;
 b=bncewtCABGQE3St/9L1U56jU5MYgYulA7GoZuEMvi6EfPtTvd+BaFR8r
 wsdbAr5+xT5SW2q4Kmj4irKtzM942uN7WZWSS4dz+JpYO48v+ziq2TeYm
 CkkpmfarfjIpWUSNw3h1sBk8Ek8vY9iotNmYkB4B+VPAvZ6OwUjfI9aU9
 Ly1nVRLo/4mrfkxmzpOeFw5mjBle1p3b6FC+SSvBPBvBm9WcvTyqEFaRr
 9qrTCK8ijol1o9cZx13jYm1+X5IF/3AdUwhCd7roO9tStbCM+Fo0qjpXN
 N269zqnlRJMGMVYCRtgXyHAkhQDqIuggbw4WI37Rn/8rEFvshr4/EyyE3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="374205380"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="374205380"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="680786554"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="680786554"
Received: from tleistix-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.195])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 05:20:17 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Mon,  7 Aug 2023 14:19:55 +0200
Message-Id: <20230807121957.598420-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230807121957.598420-1-andi.shyti@linux.intel.com>
References: <20230807121957.598420-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/3] drm/i915/gt: Simplify shmem_create_from_object
 map_type selection
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

The object pin created for shmem_create_from_object is just a
single use mapping with the sole purpose of reading the contents
of the whole object in bulk. And the whole source object is also
even a throw-away.  Ergo, the additional logic required by
i915_coherent_map_type can be safely dropped and simplified.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230801153242.2445478-2-jonathan.cavitt@intel.com
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 449c9ed443822..bccc3a1200bc6 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -33,7 +33,6 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
 
 struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	enum i915_map_type map_type;
 	struct file *file;
 	void *ptr;
@@ -44,7 +43,7 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 		return file;
 	}
 
-	map_type = i915_coherent_map_type(i915, obj, true);
+	map_type = i915_gem_object_is_lmem(obj) ? I915_MAP_WC : I915_MAP_WB;
 	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
 	if (IS_ERR(ptr))
 		return ERR_CAST(ptr);
-- 
2.40.1

