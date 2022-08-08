Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE73E58C68D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 12:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BC62AAF5;
	Mon,  8 Aug 2022 10:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1888A3F8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 10:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659954975; x=1691490975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zGwEKB3HRJUfVsC+7FQcM66KV7+3yY03zVD3yNpDUxM=;
 b=dTuIh1Ej8QKQ8M86UKj1kh7x/fPRsadHN5Qfd2hAJL6aWgFHgzHzhrrz
 Hzz7ZZJF0HdS2Ojs4Amom64oJEKM3qqTxPnddAEx8+egU11EC5DkjKF5k
 BNnR5Z7tow3yR7OsjEqopkFDViXgHccqoTQaoYUUj147nyxC4xtui2+2R
 1HHZzi6WxicC6et86iTjsrtYLezWC6ruNVLfY5lW64IOOcqBxfBbHUMHK
 /qfmLLzC2IHw8feRwiM8eA12oA8mGSKHIlaEhO7aGPXRU7c25zzqUNjgm
 FWVy82oq766ojQuK9a0IYlaYH+OB7sgOLnGHqgd+yfOdM4SNmiVwwoqe+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="354559022"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="354559022"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:36:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="632839293"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:36:12 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Aug 2022 16:05:55 +0530
Message-Id: <20220808103555.345-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220808103555.345-1-anshuman.gupta@intel.com>
References: <20220808103555.345-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Avoid parent bridge rpm on
 mmap mappings
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
Cc: daniel@ffwll.ch, chris.p.wilson@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per PCIe Spec Section 5.3,
When a Type 1 Function associated with a Switch/Root
Port (a “virtual bridge”) is in a non-D0 power state,
it will emulate the behavior of a conventional PCI bridge
in its handling of Memory, I/O, and Configuration
Requests and Completions. All Memory and I/O requests
flowing Downstream are terminated as Unsupported Requests.

Due to above limitations when Intel DGFX Cards graphics
PCI func's upstream bridge(referred as VSP) enters to D3,
all mmap memory mapping associated with lmem objects
reads 0xff, therefore avoiding VSP runtime suspend
accordingly.

This will make sure that user can read valid data from lmem,
while DGFX Card graphics PCI func is in D3 state.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 11 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  |  8 ++++++
 drivers/gpu/drm/i915/intel_runtime_pm.c  | 35 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h  |  2 ++
 4 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index 0c5c43852e24..968bed5b56d3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -845,6 +845,10 @@ static void vm_open(struct vm_area_struct *vma)
 	struct drm_i915_gem_object *obj = mmo->obj;
 
 	GEM_BUG_ON(!obj);
+
+	if (i915_gem_object_is_lmem(obj))
+		intel_runtime_pm_get_vsp(to_i915(obj->base.dev));
+
 	i915_gem_object_get(obj);
 }
 
@@ -854,6 +858,10 @@ static void vm_close(struct vm_area_struct *vma)
 	struct drm_i915_gem_object *obj = mmo->obj;
 
 	GEM_BUG_ON(!obj);
+
+	if (i915_gem_object_is_lmem(obj))
+		intel_runtime_pm_put_vsp(to_i915(obj->base.dev));
+
 	i915_gem_object_put(obj);
 }
 
@@ -972,6 +980,9 @@ int i915_gem_mmap(struct file *filp, struct vm_area_struct *vma)
 		return PTR_ERR(anon);
 	}
 
+	if (i915_gem_object_is_lmem(obj))
+		intel_runtime_pm_get_vsp(to_i915(obj->base.dev));
+
 	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP | VM_IO;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 5a5cf332d8a5..bcacd95fdbc1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1101,6 +1101,10 @@ static void ttm_vm_open(struct vm_area_struct *vma)
 		i915_ttm_to_gem(vma->vm_private_data);
 
 	GEM_BUG_ON(!obj);
+
+	if (i915_gem_object_is_lmem(obj))
+		intel_runtime_pm_get_vsp(to_i915(obj->base.dev));
+
 	i915_gem_object_get(obj);
 }
 
@@ -1110,6 +1114,10 @@ static void ttm_vm_close(struct vm_area_struct *vma)
 		i915_ttm_to_gem(vma->vm_private_data);
 
 	GEM_BUG_ON(!obj);
+
+	if (i915_gem_object_is_lmem(obj))
+		intel_runtime_pm_put_vsp(to_i915(obj->base.dev));
+
 	i915_gem_object_put(obj);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..a5557918674f 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -646,3 +646,38 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 
 	init_intel_runtime_pm_wakeref(rpm);
 }
+
+void intel_runtime_pm_get_vsp(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev), *vsp;
+
+	if (!IS_DGFX(i915))
+		return;
+
+	vsp = pci_upstream_bridge(pdev);
+	if (!vsp) {
+		drm_err(&i915->drm, "Failed to get the PCI upstream bridge\n");
+		return;
+	}
+
+	pci_dbg(vsp, "get runtime usage count\n");
+	pm_runtime_get_sync(&vsp->dev);
+}
+
+void intel_runtime_pm_put_vsp(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev), *vsp;
+
+	if (!IS_DGFX(i915))
+		return;
+
+	vsp = pci_upstream_bridge(pdev);
+	if (!vsp) {
+		drm_err(&i915->drm, "Failed to get the PCI upstream bridge\n");
+		return;
+	}
+
+	pci_dbg(vsp, "put runtime usage count\n");
+	pm_runtime_mark_last_busy(&vsp->dev);
+	pm_runtime_put(&vsp->dev);
+}
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index d9160e3ff4af..b86843bf4f5d 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -173,6 +173,8 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_enable(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_disable(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm);
+void intel_runtime_pm_get_vsp(struct drm_i915_private *i915);
+void intel_runtime_pm_put_vsp(struct drm_i915_private *i915);
 
 intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
 intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm);
-- 
2.26.2

