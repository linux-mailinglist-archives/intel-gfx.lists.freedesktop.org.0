Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A716F7E38B3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 11:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8409610E506;
	Tue,  7 Nov 2023 10:18:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC60510E503
 for <Intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 10:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699352295; x=1730888295;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5CRMsZ/Xo77x8MpOTWT2wIbKnZJOTNjBNZ7D9PYtkWk=;
 b=GGZUpAaFqoRQO9rFrFn3EPiWzxWRgLKcoZwTqwDvEi5tQsNYWkPxT7oV
 Ylfe63Mf0pkjmP0RdP0ktBxkQ3/DWd2m5C746rLRHsjObJnsLW68nVYfO
 QVYzLdT08DoWQlX9aut2/sYOh8MA4jby+rpypFB9QvjN1yv8RTNO79/aa
 UMEwD848VsU2GxyfuTgLIsbrDa7nkm79VXOagariJbrDijBRCAy4mh9pe
 PdPWDWqUkG3acqA8ZplGx71X3BdXWdWV62AUXG/ry1DZ1MdA3BzU84vmF
 1YpAkMJ3CReIu5Yrzv1uGWGUVgid6qbwPHXXozHfRRC0r5e9M+qoFF1dT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="8127415"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; 
   d="scan'208";a="8127415"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 02:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="739083096"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="739083096"
Received: from nchauh1x-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.235.212])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 02:18:14 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 10:18:03 +0000
Message-Id: <20231107101806.608990-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
References: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/6] drm/i915: Track page table backing store usage
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

Account page table backing store against the owning client memory usage
stats.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 4fbed27ef0ec..3bef6d0769c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -63,6 +63,9 @@ struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz)
 	if (!IS_ERR(obj)) {
 		obj->base.resv = i915_vm_resv_get(vm);
 		obj->shares_resv_from = vm;
+
+		if (vm->fpriv)
+			i915_drm_client_add_object(vm->fpriv->client, obj);
 	}
 
 	return obj;
@@ -84,6 +87,9 @@ struct drm_i915_gem_object *alloc_pt_dma(struct i915_address_space *vm, int sz)
 	if (!IS_ERR(obj)) {
 		obj->base.resv = i915_vm_resv_get(vm);
 		obj->shares_resv_from = vm;
+
+		if (vm->fpriv)
+			i915_drm_client_add_object(vm->fpriv->client, obj);
 	}
 
 	return obj;
-- 
2.39.2

