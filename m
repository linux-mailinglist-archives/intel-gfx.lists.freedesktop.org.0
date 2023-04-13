Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBE86E1597
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 22:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6C610EC25;
	Thu, 13 Apr 2023 20:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4E510EC26
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 20:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681416274; x=1712952274;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TIPLS8SWnUVzjVmSAmTj+Ptcp/kXQnm244iexAsQTlQ=;
 b=LOzQ0CB+4rIw9l6oG48KOq8QIXbkgOTTelRO+m4izgEXaXU1DSgB/oWc
 i4XytnCHGuFQhlTfSA3NXB+eGrnuoGeuQ7h5ugsy7hbWw8dxTStm0eFam
 co+gDGeiLAzDczIO6S2OGTYwMxxLEcxVUPvPuBv1a1S6YRMg/4ZZ6JHF4
 LsKVBeN8bFsD3TJyq67DycoIIJEjXJdpIajK40BXc5q2I7Xo3/F4+FTRj
 6GQZfth2p9/JcK2V4GwCiwgY0GvTFlb2GWDuv5adeLXr7LYDh7q73KcYJ
 rfYXfx8Ycj40Zd762FX6JrR0f81eP8S2yOb3Eab87tS+xJcL7MoJNcNEL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="409472863"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="409472863"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 13:04:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="800924238"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="800924238"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 13:04:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 13:03:49 -0700
Message-Id: <20230413200349.3492571-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Avoid out-of-bounds access when
 loading HuC
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When HuC is loaded by GSC, there is no header definition for the kernel
to look at and firmware is just handed to GSC. However when reading the
version, it should still check the size of the blob to guarantee it's not
incurring into out-of-bounds array access.

If firmware is smaller than expected, the following message is now
printed:

	# echo boom > /lib/firmware/i915/dg2_huc_gsc.bin
	# dmesg | grep -i huc
	[drm] GT0: HuC firmware i915/dg2_huc_gsc.bin: invalid size: 5 < 184
	[drm] *ERROR* GT0: HuC firmware i915/dg2_huc_gsc.bin: fetch failed -ENODATA
	...

Even without this change the size, header and signature are still
checked by GSC when loading, so this only avoids the out-of-bounds array
access.

Fixes: a7b516bd981f ("drm/i915/huc: Add fetch support for gsc-loaded HuC binary")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 1ac6f9f340e3..a82a53dbbc86 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -489,12 +489,25 @@ static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw, int e)
 	}
 }
 
-static int check_gsc_manifest(const struct firmware *fw,
+static int check_gsc_manifest(struct intel_gt *gt,
+			      const struct firmware *fw,
 			      struct intel_uc_fw *uc_fw)
 {
 	u32 *dw = (u32 *)fw->data;
-	u32 version_hi = dw[HUC_GSC_VERSION_HI_DW];
-	u32 version_lo = dw[HUC_GSC_VERSION_LO_DW];
+	u32 version_hi, version_lo;
+	size_t min_size;
+
+	/* Check the size of the blob before examining buffer contents */
+	min_size = sizeof(u32) * (HUC_GSC_VERSION_LO_DW + 1);
+	if (unlikely(fw->size < min_size)) {
+		gt_warn(gt, "%s firmware %s: invalid size: %zu < %zu\n",
+			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
+			fw->size, min_size);
+		return -ENODATA;
+	}
+
+	version_hi = dw[HUC_GSC_VERSION_HI_DW];
+	version_lo = dw[HUC_GSC_VERSION_LO_DW];
 
 	uc_fw->file_selected.ver.major = FIELD_GET(HUC_GSC_MAJOR_VER_HI_MASK, version_hi);
 	uc_fw->file_selected.ver.minor = FIELD_GET(HUC_GSC_MINOR_VER_HI_MASK, version_hi);
@@ -665,7 +678,7 @@ static int check_fw_header(struct intel_gt *gt,
 		return 0;
 
 	if (uc_fw->loaded_via_gsc)
-		err = check_gsc_manifest(fw, uc_fw);
+		err = check_gsc_manifest(gt, fw, uc_fw);
 	else
 		err = check_ccs_header(gt, fw, uc_fw);
 	if (err)
-- 
2.39.0

