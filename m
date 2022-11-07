Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A4A61FA99
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 17:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6535C10E457;
	Mon,  7 Nov 2022 16:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F26410E43E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 16:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667840087; x=1699376087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=81eA7FwHzBE47tAnEc6557m6D/8Rdi/OPbzBV+WCCsI=;
 b=ckWzghTlbvcCqOjCSqtx1SdGTgib6ra/a5IjMpPmS+XTRKy43sSawyTM
 Al+IhjFzUbUr09yhpoeDeZ5zj77ByYqSNxpXTaKhsqaSSn0e29dA4H5YY
 55BVgsdhT8WmSeq4hJhwti/HWHq4uDGsq01UX1V2jqbj+VerHgRxR723j
 fotRMx0SwFXGN//9QUo8aWytrnby7P3rolimOJAQkhI9EJ3CeUyKVX3iu
 GEND3VzQJiPJItYQouFFwWBsIvcD0YTSQzyJSBYlhTTg8+oIgQL4eNpzI
 4YmBaJ9NjSgg+y/RR8jaJBGr/UWIa6LwDMkyZHWlg1GLjSs/7uAvrdU6g w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="297957277"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="297957277"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 08:54:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="778559335"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="778559335"
Received: from pmesquit-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.49])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 08:54:32 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 16:54:13 +0000
Message-Id: <20221107165414.56970-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ttm: fix uaf with
 lmem_userfault_list handling
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the fault handler, make sure we check if the BO maps lmem after
we schedule the migration, since the current resource might change from
lmem to smem, if the pages are in the non-cpu visible portion of lmem.
This then leads to adding the object to the lmem_userfault_list even
though the current resource is no longer lmem. If we then destroy the
object, the list might still contain a link to the now free object, since
we only remove it if the object is still in lmem.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7469
Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 25129af70f70..9421dc4dc98f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1048,9 +1048,6 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		return VM_FAULT_SIGBUS;
 	}
 
-	if (i915_ttm_cpu_maps_iomem(bo->resource))
-		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
-
 	if (!i915_ttm_resource_mappable(bo->resource)) {
 		int err = -ENODEV;
 		int i;
@@ -1078,6 +1075,9 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
 		}
 	}
 
+	if (i915_ttm_cpu_maps_iomem(bo->resource))
+		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
+
 	if (drm_dev_enter(dev, &idx)) {
 		ret = ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
 					       TTM_BO_VM_NUM_PREFAULT);
-- 
2.38.1

