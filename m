Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AC35BCD38
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 866AA10E64D;
	Mon, 19 Sep 2022 13:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233C610E4F1;
 Tue, 13 Sep 2022 02:48:56 +0000 (UTC)
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MRSX53gN9znVGr;
 Tue, 13 Sep 2022 10:46:13 +0800 (CST)
Received: from cgs.huawei.com (10.244.148.83) by
 kwepemi500012.china.huawei.com (7.221.188.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 13 Sep 2022 10:48:52 +0800
From: Gaosheng Cui <cuigaosheng1@huawei.com>
To: <evan.quan@amd.com>, <alexander.deucher@amd.com>,
 <christian.koenig@amd.com>, <Xinhui.Pan@amd.com>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <patrik.r.jakobsson@gmail.com>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <zackr@vmware.com>, <linux-graphics-maintainer@vmware.com>,
 <lijo.lazar@amd.com>, <matthew.brost@intel.com>, <John.C.Harrison@Intel.com>, 
 <daniele.ceraolospurio@intel.com>, <cuigaosheng1@huawei.com>
Date: Tue, 13 Sep 2022 10:48:47 +0800
Message-ID: <20220913024847.552254-7-cuigaosheng1@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913024847.552254-1-cuigaosheng1@huawei.com>
References: <20220913024847.552254-1-cuigaosheng1@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.244.148.83]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 19 Sep 2022 13:29:09 +0000
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: remove unused
 i915_gem_lmem_obj_ops declaration
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_lmem_obj_ops has been removed since
commit 213d50927763 ("drm/i915/ttm: Introduce a TTM i915
gem object backend"), so remove it.

Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index 1b88ea13435c..5a7a14e85c3f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -12,8 +12,6 @@ struct drm_i915_private;
 struct drm_i915_gem_object;
 struct intel_memory_region;
 
-extern const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops;
-
 void __iomem *
 i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
 			    unsigned long n,
-- 
2.25.1

