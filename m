Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D72644FFF2D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FB910E470;
	Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4940010E432
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878057; x=1681414057;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3Hbuy/kPXBrJJ/ALPowTKTLpT/W2tGqTmPysaJ+0cWQ=;
 b=Sypgxq192U0P0fJRNRH2M5C4T5Od+7kXOSBtHJJ9Pxdd3RuruImv48gs
 6YPHs1CDofMiNEXwciLv9IVlDXgzmQA/9Kt8E/KK9YVwSrp/l+VoRRaWK
 EtPVz+oZ8WD8QSDe1V9Qla4iF1YJnSRV0h7RwFl+gmH+b1PqojjGOxtUx
 AHcMc6bxNta0G/BbvSQtZidgCwEcTumK6FeQfahH/i0WPyMVEezT+q7ay
 /kyJGZ3FAVp1Fy7gbHRdGjs1PrmnNpGzaCaO5QYkS7/ElJ859yABS86RR
 w7mEb2C/q5NXayYL/wePvvlqPBX+R1EKPYgDXXaXO0jSGJzssp0gWD7Uy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045082"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045082"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290479"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:36 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:23 -0700
Message-Id: <20220413192730.3608660-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/guc: Update to GuC version 70.1.1
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

From: John Harrison <John.C.Harrison@Intel.com>

Update to the latest GuC firmware release.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 32 ++++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index bb864655c495..cb5dd16421d0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -53,22 +53,22 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * firmware as TGL.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
-	fw_def(DG2,          0, guc_def(dg2,  69, 0, 3)) \
-	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
-	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3)) \
-	fw_def(DG1,          0, guc_def(dg1,  69, 0, 3)) \
-	fw_def(ROCKETLAKE,   0, guc_def(tgl,  69, 0, 3)) \
-	fw_def(TIGERLAKE,    0, guc_def(tgl,  69, 0, 3)) \
-	fw_def(JASPERLAKE,   0, guc_def(ehl,  69, 0, 3)) \
-	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  69, 0, 3)) \
-	fw_def(ICELAKE,      0, guc_def(icl,  69, 0, 3)) \
-	fw_def(COMETLAKE,    5, guc_def(cml,  69, 0, 3)) \
-	fw_def(COMETLAKE,    0, guc_def(kbl,  69, 0, 3)) \
-	fw_def(COFFEELAKE,   0, guc_def(kbl,  69, 0, 3)) \
-	fw_def(GEMINILAKE,   0, guc_def(glk,  69, 0, 3)) \
-	fw_def(KABYLAKE,     0, guc_def(kbl,  69, 0, 3)) \
-	fw_def(BROXTON,      0, guc_def(bxt,  69, 0, 3)) \
-	fw_def(SKYLAKE,      0, guc_def(skl,  69, 0, 3))
+	fw_def(DG2,          0, guc_def(dg2,  70, 1, 1)) \
+	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 70, 1, 1)) \
+	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  70, 1, 1)) \
+	fw_def(DG1,          0, guc_def(dg1,  70, 1, 1)) \
+	fw_def(ROCKETLAKE,   0, guc_def(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_def(tgl,  70, 1, 1)) \
+	fw_def(JASPERLAKE,   0, guc_def(ehl,  70, 1, 1)) \
+	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  70, 1, 1)) \
+	fw_def(ICELAKE,      0, guc_def(icl,  70, 1, 1)) \
+	fw_def(COMETLAKE,    5, guc_def(cml,  70, 1, 1)) \
+	fw_def(COMETLAKE,    0, guc_def(kbl,  70, 1, 1)) \
+	fw_def(COFFEELAKE,   0, guc_def(kbl,  70, 1, 1)) \
+	fw_def(GEMINILAKE,   0, guc_def(glk,  70, 1, 1)) \
+	fw_def(KABYLAKE,     0, guc_def(kbl,  70, 1, 1)) \
+	fw_def(BROXTON,      0, guc_def(bxt,  70, 1, 1)) \
+	fw_def(SKYLAKE,      0, guc_def(skl,  70, 1, 1))
 
 #define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
 	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
-- 
2.35.1

