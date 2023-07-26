Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56E6763BE4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 18:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DD310E496;
	Wed, 26 Jul 2023 16:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F7010E496
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 16:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690387273; x=1721923273;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ck+d+y3rlUzvBH+6MvLbvoJ/+J3Zc1H2QJkYwH6/7A4=;
 b=SnmzKd1rtVN/juS0BqSoGs2OnL42GFZ0Ke1mSGl2dqJujb4rI5CgcxLY
 AUMx1qh9gavoAnmjBwAnXAj7lT6Jf42QbM0/WFy+vdo7JgbSIuKnCx61o
 78WNXtnU/vXKhD5IWsUjEXqU13Q/v/uXuZg7tFLiSwXHytFNTAjCxekBb
 88GpSKB3cp0a3Bf9VOt4PS0TSHmaYisx9WyixCM9JlGoOxD+neyJZ6oiC
 oGnwvoF7/N7KbYQW0qzsiEdFI6+1few3g0ycgSIo8sxQ7lsnC0+aum9hE
 2mWwcvc/SWikNQX6BOrgCqhDI8EhW0QuBVMtuxK1U8PbKTv7qNkUBYl73 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="347669978"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="347669978"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 09:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="816741529"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="816741529"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 09:01:11 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jul 2023 08:53:54 -0700
Message-Id: <20230726155356.1652979-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Simplify
 shmem_create_from_object map_type selection
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 jonathan.cavitt@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The object pin created for shmem_create_from_object is just a
single use mapping with the sole purpose of reading the contents
of the whole object in bulk. And the whole source object is also
even a throw-away.  Ergo, the additional logic required by
i915_coherent_map_type can be safely dropped and simplified.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 449c9ed44382..bccc3a1200bc 100644
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
2.25.1

