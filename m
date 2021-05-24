Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 166CC38F23E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 19:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614336E8D9;
	Mon, 24 May 2021 17:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043976E8D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 17:27:09 +0000 (UTC)
IronPort-SDR: gxAWM2yZkOs4d65aw2+hu9HmriW4DN5yjTgjnjc4Iou2+d7793t8MYQe1j2rin2wyPafiRifey
 /CpMGISxq5pw==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="202028980"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="202028980"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 10:27:07 -0700
IronPort-SDR: o721mmgWDEFrmKIK+/sxHIlg8FJcENmxOBXwg1/Vj/yD6WkgyGOFoGekTgq5f6zY9P3Siu0de5
 1zIPK3mjRK+g==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="475979183"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 10:27:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 20:27:02 +0300
Message-Id: <20210524172703.2113058-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210524172703.2113058-1-imre.deak@intel.com>
References: <20210524172703.2113058-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/adlp: Fix GEM VM asserts for DPT
 VMs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An object mapped via DPT can have remapped and rotated VMA instances
besides the normal VMA instance, similarly to GGTT VMA instances.
Adjust the corresponding VMA lookup asserts.

While at it also check if a DPT VM is passed incorrectly to
i915_vm_to_ppgtt().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.h | 3 ++-
 drivers/gpu/drm/i915/i915_vma.c     | 2 +-
 drivers/gpu/drm/i915/i915_vma.h     | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index ca00b45827b74..50a98ce39f74b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -359,6 +359,7 @@ struct i915_ppgtt {
 
 #define i915_is_ggtt(vm) ((vm)->is_ggtt)
 #define i915_is_dpt(vm) ((vm)->is_dpt)
+#define i915_is_ggtt_or_dpt(vm) (i915_is_ggtt(vm) || i915_is_dpt(vm))
 
 int __must_check
 i915_vm_lock_objects(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww);
@@ -393,7 +394,7 @@ static inline struct i915_ppgtt *
 i915_vm_to_ppgtt(struct i915_address_space *vm)
 {
 	BUILD_BUG_ON(offsetof(struct i915_ppgtt, vm));
-	GEM_BUG_ON(i915_is_ggtt(vm));
+	GEM_BUG_ON(i915_is_ggtt_or_dpt(vm));
 	return container_of(vm, struct i915_ppgtt, vm);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index a6cd0fa628477..b319fd3f91cc3 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -274,7 +274,7 @@ i915_vma_instance(struct drm_i915_gem_object *obj,
 {
 	struct i915_vma *vma;
 
-	GEM_BUG_ON(view && !i915_is_ggtt(vm));
+	GEM_BUG_ON(view && !i915_is_ggtt_or_dpt(vm));
 	GEM_BUG_ON(!atomic_read(&vm->open));
 
 	spin_lock(&obj->vma.lock);
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 8df784a026d21..2a108e66cd495 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -158,7 +158,7 @@ i915_vma_compare(struct i915_vma *vma,
 {
 	ptrdiff_t cmp;
 
-	GEM_BUG_ON(view && !i915_is_ggtt(vm));
+	GEM_BUG_ON(view && !i915_is_ggtt_or_dpt(vm));
 
 	cmp = ptrdiff(vma->vm, vm);
 	if (cmp)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
