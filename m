Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 701DA797FCD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 02:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DA510E84A;
	Fri,  8 Sep 2023 00:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161E210E84A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 00:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694133618; x=1725669618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OxiBPxahRjbFA8h9HkFKULcHrBTo6dup+ehUD2ix1hE=;
 b=WpHmi2ORzG+BLXxe8nwj+RZFpute+aHpBfI9RDJuOKkfq/AMLM237pjt
 2sD+oAbVctnuJa+q5A6FrJrPYS6bhUYTYXQfc05S7DxNcAHRvv5DW0mhf
 YAtf9VyWtVOM/NghaQgDaOENYuQFh+wfdgP7EQJS6UnZO6v+AT2AFJBLY
 bDYqVGeb+lTSEsNpbYgpm15rPFs3PSmHDM6qgslrqU/VB+xfmH3FQr4pf
 tDkmIfkv1MqGJK4wuFM6M3pOQqt9tyuOhtF79tNtVtvGSn94tfv8JpOty
 Cn7guvw/pe1C8PD7Y3VRWEkdZVGWn869r77vJhj3acNeJMkxLjvE2Et1k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="443945603"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="443945603"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 17:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="777310550"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="777310550"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 17:40:17 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 17:29:35 -0700
Message-Id: <20230908002937.1660911-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230908002937.1660911-1-jonathan.cavitt@intel.com>
References: <20230908002937.1660911-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 1/3] drm/i915: Reserve some kernel space per
 vm
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 tomasz.mistat@intel.com, jonathan.cavitt@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reserve a page in each vm for kernel space to use for things
such as workarounds.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 7 +++++++
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index c8568e5d11479..6680fefcf8858 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -230,6 +230,7 @@ static void gen8_ppgtt_cleanup(struct i915_address_space *vm)
 				     gen8_pd_top_count(vm), vm->top);
 
 	free_scratch(vm);
+	drm_mm_remove_node(&vm->rsvd);
 }
 
 static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
@@ -1011,6 +1012,12 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
 	ppgtt->vm.foreach = gen8_ppgtt_foreach;
 	ppgtt->vm.cleanup = gen8_ppgtt_cleanup;
 
+
+	ppgtt->vm.rsvd.start = ppgtt->vm.total - SZ_4K;
+	ppgtt->vm.rsvd.size = SZ_4K;
+	ppgtt->vm.rsvd.color = I915_COLOR_UNEVICTABLE;
+	GEM_BUG_ON(drm_mm_reserve_node(&ppgtt->vm.mm, &ppgtt->vm.rsvd));
+
 	err = gen8_init_scratch(&ppgtt->vm);
 	if (err)
 		goto err_put;
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 4d6296cdbcfdd..368d8ed98d0e9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -246,6 +246,7 @@ struct i915_address_space {
 	struct work_struct release_work;
 
 	struct drm_mm mm;
+	struct drm_mm_node rsvd;
 	struct intel_gt *gt;
 	struct drm_i915_private *i915;
 	struct device *dma;
-- 
2.25.1

