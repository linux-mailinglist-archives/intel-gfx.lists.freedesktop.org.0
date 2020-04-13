Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0111A6A53
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 18:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC8B289FCC;
	Mon, 13 Apr 2020 16:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8153889EB7;
 Mon, 13 Apr 2020 14:06:07 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B91073424AE328FD0861;
 Mon, 13 Apr 2020 22:06:02 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.487.0; Mon, 13 Apr 2020
 22:05:56 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <zhenyuw@linux.intel.com>, <zhi.a.wang@intel.com>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <intel-gvt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Date: Mon, 13 Apr 2020 22:32:24 +0800
Message-ID: <20200413143224.22806-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 13 Apr 2020 16:55:00 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: Use ARRAY_SIZE instead of
 hardcoded size
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the following coccicheck warning:

drivers/gpu/drm/i915/gvt/vgpu.c:127:30-31: WARNING: Use ARRAY_SIZE

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/gpu/drm/i915/gvt/vgpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 1d5ff88078bd..7d361623ff67 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -124,7 +124,7 @@ int intel_gvt_init_vgpu_types(struct intel_gvt *gvt)
 	 */
 	low_avail = gvt_aperture_sz(gvt) - HOST_LOW_GM_SIZE;
 	high_avail = gvt_hidden_sz(gvt) - HOST_HIGH_GM_SIZE;
-	num_types = sizeof(vgpu_types) / sizeof(vgpu_types[0]);
+	num_types = ARRAY_SIZE(vgpu_types);
 
 	gvt->types = kcalloc(num_types, sizeof(struct intel_vgpu_type),
 			     GFP_KERNEL);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
