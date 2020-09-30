Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2CF27ECC7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31282899B7;
	Wed, 30 Sep 2020 15:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC20899B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:30:52 +0000 (UTC)
IronPort-SDR: 4hnGMTPtnxuGcVg5l2L3u1xsMMC2Dk6ZxH0gTjjL9XHpo6wGe8R72nV2emAfAWOxCYcf/9NIT/
 Qf5A6xWldwmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="161698164"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="161698164"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:30:49 -0700
IronPort-SDR: hYCKj0+lz8OM/Kh4Uaf/tGKPAuqGZTe9/li23D+rp69fObA5FGga86Th59UPLmFeDebLOA5Ckv
 0HdPHHdMtjNw==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="339132290"
Received: from jjgryzlo-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.212.105.223])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:30:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 08:30:15 -0700
Message-Id: <20200930153016.105711-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: don't conflate is_dgfx with fake lmem
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
device info for dgfx devices. Current users of IS_DGFX() are correct,
but as we add support for DG1, we are going to use it in additional
places to trigger dgfx-only code path.

In future if we need we can use HAS_LMEM() instead of IS_DGFX() in the
places that make sense to also contemplate fake lmem use.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 2 --
 1 file changed, 2 deletions(-)

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
