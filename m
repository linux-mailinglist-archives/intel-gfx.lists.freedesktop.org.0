Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A89B727F98E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 08:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C65C6E84D;
	Thu,  1 Oct 2020 06:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B8F6E84D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 06:39:43 +0000 (UTC)
IronPort-SDR: fpDwXOR/GchEwQ1kn6nOQmbbJS3P4/71d2Xs6CIw5k54axA8fkmDSKJoeX5jn0+73dD5ugdRy4
 ECL4Nx93VLFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="224255929"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="224255929"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 23:39:41 -0700
IronPort-SDR: GEjk8O3VBapSzszS/wDdMI55DRAoTHdIzgi3CddGLgv+pYtBACKW+FoRXJX36ETig5YlUJ8KWX
 TtJ34R3K9IAA==
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="457985132"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 23:39:41 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 23:39:16 -0700
Message-Id: <20201001063917.3133475-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/2] drm/i915: don't conflate is_dgfx with fake lmem
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When using fake lmem for tests, we are overriding the setting in
device info for dgfx devices. Current users of IS_DGFX() except one are
correct. However, as we add support for DG1, we are going to use it in
additional places to trigger dgfx-only code path.

In future if we need we can use HAS_LMEM() instead of IS_DGFX() in the
places that make sense to also contemplate fake lmem use.

v2: update gen8_gmch_probe() to use HAS_LMEM(): we need to steal the
mappable aperture later(which is fine since it doesn't exist on "DGFX"),
and use it as a substitute for LMEMBAR. The !mappable aperture property
is also useful since it exercises some other parts of the code too.
(Matthew Auld)

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.c      | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 81c05f551b9c..188a5f70177d 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -835,7 +835,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	u16 snb_gmch_ctl;
 
 	/* TODO: We're not aware of mappable constraints on gen8 yet */
-	if (!IS_DGFX(i915)) {
+	if (!HAS_LMEM(i915)) {
 		ggtt->gmadr = pci_resource(pdev, 2);
 		ggtt->mappable_end = resource_size(&ggtt->gmadr);
 	}
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 45e719c79183..3f6ed142198c 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -840,9 +840,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		    i915->params.fake_lmem_start) {
 			mkwrite_device_info(i915)->memory_regions =
 				REGION_SMEM | REGION_LMEM | REGION_STOLEN;
-			mkwrite_device_info(i915)->is_dgfx = true;
 			GEM_BUG_ON(!HAS_LMEM(i915));
-			GEM_BUG_ON(!IS_DGFX(i915));
 		}
 	}
 #endif
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
