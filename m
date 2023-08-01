Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA9476B8CC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 17:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3FA10E406;
	Tue,  1 Aug 2023 15:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588C910E111
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 15:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690904400; x=1722440400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8V/O3EXmn+3W3XjvnFwtQIXb3diGN0xZLnAzgWpLNpw=;
 b=AoZ8YqRh146G/lAxHUV5bWZ912PUzKLmjWwDsM/S1EcUSW++z0Q6cj3r
 bsdsS8mHkOpyJcI4qUwnFm9bdkpqQFJZ74oVnawHaNeopqQwngnVe47FM
 spp7AZOfsJVRdXANvVO2fhQEwLJbuTKCl1sssidppMy6JbrmYVsfG/fCA
 9Q6ol4v4Bkhl+MUHoc9MxaeWkg40poAZvoXntYrRgaxcuC2MrdQM53x2u
 YVouaZo0hWtf4S+Bm/kxDeeoRdzxhBCt3ltUArTX5/5GFfvgwPE+qDOXn
 DByOwUvWNg/EmEcG+l5jVTO7P91UV/20tnJuo8a0QtydGmmVgDZxmN3Mb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="435659015"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="435659015"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 08:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="794237876"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="794237876"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 08:39:57 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 08:32:40 -0700
Message-Id: <20230801153242.2445478-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230801153242.2445478-1-jonathan.cavitt@intel.com>
References: <20230801153242.2445478-1-jonathan.cavitt@intel.com>
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

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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

