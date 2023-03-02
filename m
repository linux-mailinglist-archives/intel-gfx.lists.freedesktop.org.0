Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 977416AC399
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 15:43:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C7A10E246;
	Mon,  6 Mar 2023 14:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 339 seconds by postgrey-1.36 at gabe;
 Thu, 02 Mar 2023 11:59:05 UTC
Received: from out-8.mta0.migadu.com (out-8.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED94910E111
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 11:59:05 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1677758002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=R+FdjYwjTIiZWh/4rjUriZ8U6SsI4yJTAnV6fEgVezk=;
 b=xWjTz3sW5v0NYdpVSQBxyYdOmQV8qT47leCscXVc8psi1ZFPH3GFUS9IQlKLoGSMABxErz
 QmfV5ggeL8rFkQ+2SHyGbu82mOgYozb5hx3hM4NozlRSd2XOxJ3Uvq0IZ8ncBS0V+5s0nn
 kx2aPQMpKcdv7+o1KT7XnyhDrh+89DY=
From: Cai Huoqing <cai.huoqing@linux.dev>
To: cai.huoqing@linux.dev
Date: Thu,  2 Mar 2023 19:53:18 +0800
Message-Id: <20230302115318.79487-1-cai.huoqing@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Mon, 06 Mar 2023 14:43:47 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: Make use of idr_find and
 idr_for_each_entry in dmabuf
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
Cc: dri-devel@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch uses the already existing IDR mechanism to simplify
and improve the dmabuf code.

Using 'vgpu.object_idr' directly instead of 'dmabuf_obj_list_head'
or 'dmabuf.list', because the dmabuf_obj can be found by 'idr_find'
or 'idr_for_each_entry'.

Signed-off-by: Cai Huoqing <cai.huoqing@linux.dev>
---
 drivers/gpu/drm/i915/gvt/dmabuf.c | 69 +++++++------------------------
 drivers/gpu/drm/i915/gvt/dmabuf.h |  1 -
 drivers/gpu/drm/i915/gvt/gvt.h    |  1 -
 drivers/gpu/drm/i915/gvt/vgpu.c   |  1 -
 4 files changed, 16 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 6834f9fe40cf..7933bd843ae8 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -133,21 +133,15 @@ static void dmabuf_gem_object_free(struct kref *kref)
 	struct intel_vgpu_dmabuf_obj *obj =
 		container_of(kref, struct intel_vgpu_dmabuf_obj, kref);
 	struct intel_vgpu *vgpu = obj->vgpu;
-	struct list_head *pos;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj;
+	int id;
 
-	if (vgpu && test_bit(INTEL_VGPU_STATUS_ACTIVE, vgpu->status) &&
-	    !list_empty(&vgpu->dmabuf_obj_list_head)) {
-		list_for_each(pos, &vgpu->dmabuf_obj_list_head) {
-			dmabuf_obj = list_entry(pos, struct intel_vgpu_dmabuf_obj, list);
-			if (dmabuf_obj == obj) {
-				list_del(pos);
-				idr_remove(&vgpu->object_idr,
-					   dmabuf_obj->dmabuf_id);
-				kfree(dmabuf_obj->info);
-				kfree(dmabuf_obj);
-				break;
-			}
+	if (vgpu && test_bit(INTEL_VGPU_STATUS_ACTIVE, vgpu->status)) {
+		idr_for_each_entry(&vgpu->object_idr, dmabuf_obj, id) {
+			idr_remove(&vgpu->object_idr, id);
+			kfree(dmabuf_obj->info);
+			kfree(dmabuf_obj);
+			break;
 		}
 	} else {
 		/* Free the orphan dmabuf_objs here */
@@ -340,13 +334,11 @@ static struct intel_vgpu_dmabuf_obj *
 pick_dmabuf_by_info(struct intel_vgpu *vgpu,
 		    struct intel_vgpu_fb_info *latest_info)
 {
-	struct list_head *pos;
 	struct intel_vgpu_fb_info *fb_info;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj = NULL;
-	struct intel_vgpu_dmabuf_obj *ret = NULL;
+	int id;
 
-	list_for_each(pos, &vgpu->dmabuf_obj_list_head) {
-		dmabuf_obj = list_entry(pos, struct intel_vgpu_dmabuf_obj, list);
+	idr_for_each_entry(&vgpu->object_idr, dmabuf_obj, id) {
 		if (!dmabuf_obj->info)
 			continue;
 
@@ -357,31 +349,11 @@ pick_dmabuf_by_info(struct intel_vgpu *vgpu,
 		    (fb_info->drm_format_mod == latest_info->drm_format_mod) &&
 		    (fb_info->drm_format == latest_info->drm_format) &&
 		    (fb_info->width == latest_info->width) &&
-		    (fb_info->height == latest_info->height)) {
-			ret = dmabuf_obj;
-			break;
-		}
-	}
-
-	return ret;
-}
-
-static struct intel_vgpu_dmabuf_obj *
-pick_dmabuf_by_num(struct intel_vgpu *vgpu, u32 id)
-{
-	struct list_head *pos;
-	struct intel_vgpu_dmabuf_obj *dmabuf_obj = NULL;
-	struct intel_vgpu_dmabuf_obj *ret = NULL;
-
-	list_for_each(pos, &vgpu->dmabuf_obj_list_head) {
-		dmabuf_obj = list_entry(pos, struct intel_vgpu_dmabuf_obj, list);
-		if (dmabuf_obj->dmabuf_id == id) {
-			ret = dmabuf_obj;
-			break;
-		}
+		    (fb_info->height == latest_info->height))
+			return dmabuf_obj;
 	}
 
-	return ret;
+	return dmabuf_obj;
 }
 
 static void update_fb_info(struct vfio_device_gfx_plane_info *gvt_dmabuf,
@@ -477,11 +449,6 @@ int intel_vgpu_query_plane(struct intel_vgpu *vgpu, void *args)
 
 	update_fb_info(gfx_plane_info, &fb_info);
 
-	INIT_LIST_HEAD(&dmabuf_obj->list);
-	mutex_lock(&vgpu->dmabuf_lock);
-	list_add_tail(&dmabuf_obj->list, &vgpu->dmabuf_obj_list_head);
-	mutex_unlock(&vgpu->dmabuf_lock);
-
 	gvt_dbg_dpy("vgpu%d: %s new dmabuf_obj ref %d, id %d\n", vgpu->id,
 		    __func__, kref_read(&dmabuf_obj->kref), ret);
 
@@ -508,7 +475,7 @@ int intel_vgpu_get_dmabuf(struct intel_vgpu *vgpu, unsigned int dmabuf_id)
 
 	mutex_lock(&vgpu->dmabuf_lock);
 
-	dmabuf_obj = pick_dmabuf_by_num(vgpu, dmabuf_id);
+	dmabuf_obj = idr_find(&vgpu->object_idr, dmabuf_id);
 	if (dmabuf_obj == NULL) {
 		gvt_vgpu_err("invalid dmabuf id:%d\n", dmabuf_id);
 		ret = -EINVAL;
@@ -570,23 +537,19 @@ int intel_vgpu_get_dmabuf(struct intel_vgpu *vgpu, unsigned int dmabuf_id)
 
 void intel_vgpu_dmabuf_cleanup(struct intel_vgpu *vgpu)
 {
-	struct list_head *pos, *n;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj;
+	int id;
 
 	mutex_lock(&vgpu->dmabuf_lock);
-	list_for_each_safe(pos, n, &vgpu->dmabuf_obj_list_head) {
-		dmabuf_obj = list_entry(pos, struct intel_vgpu_dmabuf_obj, list);
+	idr_for_each_entry(&vgpu->object_idr, dmabuf_obj, id) {
 		dmabuf_obj->vgpu = NULL;
 
-		idr_remove(&vgpu->object_idr, dmabuf_obj->dmabuf_id);
-		list_del(pos);
-
+		idr_remove(&vgpu->object_idr, id);
 		/* dmabuf_obj might be freed in dmabuf_obj_put */
 		if (dmabuf_obj->initref) {
 			dmabuf_obj->initref = false;
 			dmabuf_obj_put(dmabuf_obj);
 		}
-
 	}
 	mutex_unlock(&vgpu->dmabuf_lock);
 }
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.h b/drivers/gpu/drm/i915/gvt/dmabuf.h
index 3dcdb6570eda..93c0e00bdab9 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.h
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.h
@@ -57,7 +57,6 @@ struct intel_vgpu_dmabuf_obj {
 	__u32 dmabuf_id;
 	struct kref kref;
 	bool initref;
-	struct list_head list;
 };
 
 int intel_vgpu_query_plane(struct intel_vgpu *vgpu, void *args);
diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 2d65800d8e93..1100c789f207 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -211,7 +211,6 @@ struct intel_vgpu {
 
 	struct dentry *debugfs;
 
-	struct list_head dmabuf_obj_list_head;
 	struct mutex dmabuf_lock;
 	struct idr object_idr;
 	struct intel_vgpu_vblank_timer vblank_timer;
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 08ad1bd651f1..0a511cfef067 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -329,7 +329,6 @@ int intel_gvt_create_vgpu(struct intel_vgpu *vgpu,
 	vgpu->sched_ctl.weight = conf->weight;
 	mutex_init(&vgpu->vgpu_lock);
 	mutex_init(&vgpu->dmabuf_lock);
-	INIT_LIST_HEAD(&vgpu->dmabuf_obj_list_head);
 	INIT_RADIX_TREE(&vgpu->page_track_tree, GFP_KERNEL);
 	idr_init_base(&vgpu->object_idr, 1);
 	intel_vgpu_init_cfg_space(vgpu, 1);
-- 
2.34.1

