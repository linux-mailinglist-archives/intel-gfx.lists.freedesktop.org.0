Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2287AB308
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A1110E68D;
	Fri, 22 Sep 2023 13:48:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8A510E66C;
 Fri, 22 Sep 2023 13:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390437; x=1726926437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jstNPVe8AjVxgUirFWcWx+2/RH7eg5kT0nvrKVumZPM=;
 b=fQpIxRCRehOjCLYbvxhaxYV4msNLUqvMyfr3MFC4mpvEpVbdUrAY5sDh
 M1Bqgid/Jbwo26nniGu7HDpsK97gmn0Lqth4ja8h9exdSWJwp4LyCuF8w
 cQSSI4NhAEmQzzaRE18yMD0XRWT2EiwX9Xo+Gf2A1pSnZmSCeyJyE2v1A
 OnqV+jiJq4kEChzWLCiSd+/zW4rz975h2vd0PGamuonH5xjrB9fjHOwkz
 cLP0YYTlc8DcTVBxWb1GzYCYRh6IZ3KzXlv0LQU2bTWZN3AWNsj1jj+tU
 Lr/klBqB3ufravzcL1BVQNbl0XLaGgkfzm83JPa9PxkLQAC1H+OSjgqWy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="467126596"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="467126596"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:47:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="1078376252"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="1078376252"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:47:11 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:47:00 +0100
Message-Id: <20230922134700.235039-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134700.235039-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134700.235039-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Implement fdinfo memory stats
 printing
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use the newly added drm_print_memory_stats helper to show memory
utilisation of our objects in drm/driver specific fdinfo output.

To collect the stats we walk the per memory regions object lists
and accumulate object size into the respective drm_memory_stats
categories.

v2:
 * Only account against the active region.
 * Use DMA_RESV_USAGE_BOOKKEEP when testing for active. (Tejas)

v3:
 * Update commit text. (Aravind)
 * Update to use memory regions uabi names.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> # v1
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com> # v2
---
 drivers/gpu/drm/i915/i915_drm_client.c | 64 ++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index a61356012df8..7efffdaa508d 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -45,6 +45,68 @@ void __i915_drm_client_free(struct kref *kref)
 }
 
 #ifdef CONFIG_PROC_FS
+static void
+obj_meminfo(struct drm_i915_gem_object *obj,
+	    struct drm_memory_stats stats[INTEL_REGION_UNKNOWN])
+{
+	const enum intel_region_id id = obj->mm.region ?
+					obj->mm.region->id : INTEL_REGION_SMEM;
+	const u64 sz = obj->base.size;
+
+	if (obj->base.handle_count > 1)
+		stats[id].shared += sz;
+	else
+		stats[id].private += sz;
+
+	if (i915_gem_object_has_pages(obj)) {
+		stats[id].resident += sz;
+
+		if (!dma_resv_test_signaled(obj->base.resv,
+					    DMA_RESV_USAGE_BOOKKEEP))
+			stats[id].active += sz;
+		else if (i915_gem_object_is_shrinkable(obj) &&
+			 obj->mm.madv == I915_MADV_DONTNEED)
+			stats[id].purgeable += sz;
+	}
+}
+
+static void show_meminfo(struct drm_printer *p, struct drm_file *file)
+{
+	struct drm_memory_stats stats[INTEL_REGION_UNKNOWN] = {};
+	struct drm_i915_file_private *fpriv = file->driver_priv;
+	struct i915_drm_client *client = fpriv->client;
+	struct drm_i915_private *i915 = fpriv->i915;
+	struct drm_i915_gem_object *obj;
+	struct intel_memory_region *mr;
+	struct list_head *pos;
+	unsigned int id;
+
+	/* Public objects. */
+	spin_lock(&file->table_lock);
+	idr_for_each_entry(&file->object_idr, obj, id)
+		obj_meminfo(obj, stats);
+	spin_unlock(&file->table_lock);
+
+	/* Internal objects. */
+	rcu_read_lock();
+	list_for_each_rcu(pos, &client->objects_list) {
+		obj = i915_gem_object_get_rcu(list_entry(pos, typeof(*obj),
+							 client_link));
+		if (!obj)
+			continue;
+		obj_meminfo(obj, stats);
+		i915_gem_object_put(obj);
+	}
+	rcu_read_unlock();
+
+	for_each_memory_region(mr, i915, id)
+		drm_print_memory_stats(p,
+				       &stats[id],
+				       DRM_GEM_OBJECT_RESIDENT |
+				       DRM_GEM_OBJECT_PURGEABLE,
+				       mr->uabi_name);
+}
+
 static const char * const uabi_class_names[] = {
 	[I915_ENGINE_CLASS_RENDER] = "render",
 	[I915_ENGINE_CLASS_COPY] = "copy",
@@ -106,6 +168,8 @@ void i915_drm_client_fdinfo(struct drm_printer *p, struct drm_file *file)
 	 * ******************************************************************
 	 */
 
+	show_meminfo(p, file);
+
 	if (GRAPHICS_VER(i915) < 8)
 		return;
 
-- 
2.39.2

