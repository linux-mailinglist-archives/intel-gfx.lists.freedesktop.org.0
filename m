Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BCE6F5369
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5031510E232;
	Wed,  3 May 2023 08:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B7C10E21F;
 Wed,  3 May 2023 08:36:08 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org, cgroups@vger.kernel.org,
 intel-xe@lists.freedesktop.org
Date: Wed,  3 May 2023 10:34:59 +0200
Message-Id: <20230503083500.645848-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503083500.645848-1-maarten.lankhorst@linux.intel.com>
References: <20230503083500.645848-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 3/4] drm/ttm: Handle -EAGAIN in
 ttm_resource_alloc as -ENOSPC.
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
Cc: Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This allows the drm cgroup controller to return no space is available..

XXX: This is a hopeless simplification that changes behavior, and
returns -ENOSPC even if we could evict ourselves from the current
cgroup.

Ideally, the eviction code becomes cgroup aware, and will force eviction
from the current cgroup or its parents.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index bd5dae4d1624..e057d5d8f09a 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -731,6 +731,8 @@ static int ttm_bo_mem_force_space(struct ttm_buffer_object *bo,
 		ret = ttm_resource_alloc(bo, place, mem);
 		if (likely(!ret))
 			break;
+		if (ret == -EAGAIN)
+			return -ENOSPC;
 		if (unlikely(ret != -ENOSPC))
 			return ret;
 		ret = ttm_mem_evict_first(bdev, man, place, ctx,
@@ -783,7 +785,7 @@ int ttm_bo_mem_space(struct ttm_buffer_object *bo,
 
 		type_found = true;
 		ret = ttm_resource_alloc(bo, place, mem);
-		if (ret == -ENOSPC)
+		if (ret == -ENOSPC || ret == -EAGAIN)
 			continue;
 		if (unlikely(ret))
 			goto error;
-- 
2.34.1

