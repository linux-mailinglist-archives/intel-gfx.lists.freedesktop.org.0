Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F41717A1100
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 00:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 630D810E59B;
	Thu, 14 Sep 2023 22:31:55 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C6710E599;
 Thu, 14 Sep 2023 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694730713; x=1726266713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8LRTBrkELzbQdCwFp24o3sgNyJSrjRoMd1mmpSbMvaM=;
 b=XMfSFf9zHASDwV7BMKWSOjSr/XgjOpgCFUqTvoIvhY1K6hUWMy4cGLeI
 orInKawxmbDiT3OEEK8JZQ2SW2h3uf8Ljcxg2fUbay8y4Tp0N3m1gsTHN
 0TXufN+s+a+Rr9luZx5RKqXvjVVtLlvsISFHv25YxOCySF8mTrWajeUj+
 RMU+w5Wy8Gl9CIzQqs+7+gzC0a9TpEiylBQ8vLfZpYg/G5/6hUhT3yqKi
 UJAI0aAkzOYMKkrfqpUoKovvWjlQor/zJzcCLsmgVbTjNoIdtTpdOVTxl
 6UGZFl9u3EVrPcKVwNSNEI55odPzbkHKQCtrj+Pzf6IHsej2k2r41mOlT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="382913333"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="382913333"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 15:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="744717706"
X-IronPort-AV: E=Sophos;i="6.02,147,1688454000"; d="scan'208";a="744717706"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga002.jf.intel.com with ESMTP; 14 Sep 2023 15:29:11 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 14 Sep 2023 15:28:12 -0700
Message-ID: <20230914222813.278774-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230914222813.278774-1-John.C.Harrison@Intel.com>
References: <20230914222813.278774-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Update 'recommended' version
 to 70.11.0 for DG2/ADL-P/MTL
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The latest GuC has new features and new workarounds that we wish to
enable. So let the universe know that it is useful to update their
firmware.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 32e27e9a2490f..a40f96c98308b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -88,9 +88,9 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 6, 6)) \
-	fw_def(DG2,          0, guc_maj(dg2,  70, 5, 1)) \
-	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 5, 1)) \
+	fw_def(METEORLAKE,   0, guc_maj(mtl,  70, 11, 0)) \
+	fw_def(DG2,          0, guc_maj(dg2,  70, 11, 0)) \
+	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 11, 0)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
 	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 5, 1)) \
-- 
2.41.0

