Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E487C78F4AE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 23:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D1F10E6EE;
	Thu, 31 Aug 2023 21:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 912 seconds by postgrey-1.36 at gabe;
 Mon, 28 Aug 2023 12:51:11 UTC
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493D510E2CA;
 Mon, 28 Aug 2023 12:51:11 +0000 (UTC)
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.56])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4RZ91p2SjjzLp3f;
 Mon, 28 Aug 2023 20:32:46 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 28 Aug
 2023 20:35:56 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <intel-gvt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, 
 <dri-devel@lists.freedesktop.org>, Zhenyu Wang <zhenyuw@linux.intel.com>,
 Zhi Wang <zhi.a.wang@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 28 Aug 2023 20:35:41 +0800
Message-ID: <20230828123541.361463-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 31 Aug 2023 21:33:53 +0000
Subject: [Intel-gfx] [PATCH -next] drm/i915/gvt: Use list_for_each_entry()
 helper
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
Cc: ruanjinjie@huawei.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert list_for_each() to list_for_each_entry() so that the pos
list_head pointer and list_entry() call are no longer needed, which
can reduce a few lines of code. No functional changed.

Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/gpu/drm/i915/gvt/dmabuf.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 6834f9fe40cf..f136ce140a2b 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -340,13 +340,11 @@ static struct intel_vgpu_dmabuf_obj *
 pick_dmabuf_by_info(struct intel_vgpu *vgpu,
 		    struct intel_vgpu_fb_info *latest_info)
 {
-	struct list_head *pos;
 	struct intel_vgpu_fb_info *fb_info;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj = NULL;
 	struct intel_vgpu_dmabuf_obj *ret = NULL;
 
-	list_for_each(pos, &vgpu->dmabuf_obj_list_head) {
-		dmabuf_obj = list_entry(pos, struct intel_vgpu_dmabuf_obj, list);
+	list_for_each_entry(dmabuf_obj, &vgpu->dmabuf_obj_list_head, list) {
 		if (!dmabuf_obj->info)
 			continue;
 
@@ -369,12 +367,10 @@ pick_dmabuf_by_info(struct intel_vgpu *vgpu,
 static struct intel_vgpu_dmabuf_obj *
 pick_dmabuf_by_num(struct intel_vgpu *vgpu, u32 id)
 {
-	struct list_head *pos;
 	struct intel_vgpu_dmabuf_obj *dmabuf_obj = NULL;
 	struct intel_vgpu_dmabuf_obj *ret = NULL;
 
-	list_for_each(pos, &vgpu->dmabuf_obj_list_head) {
-		dmabuf_obj = list_entry(pos, struct intel_vgpu_dmabuf_obj, list);
+	list_for_each_entry(dmabuf_obj, &vgpu->dmabuf_obj_list_head, list) {
 		if (dmabuf_obj->dmabuf_id == id) {
 			ret = dmabuf_obj;
 			break;
-- 
2.34.1

