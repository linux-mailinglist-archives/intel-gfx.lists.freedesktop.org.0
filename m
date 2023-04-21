Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2706EA0EA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 03:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEEB10ED75;
	Fri, 21 Apr 2023 01:15:34 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D03710E308;
 Fri, 21 Apr 2023 01:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682039732; x=1713575732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZnlFMrm3vSe/fgzpcy4mVJfRTwg0AFpN2wuu12IUBAg=;
 b=jXeWBCp8xq4KGeTJz//1m8dLvUTXiVXtegIGeoSr3Brty2xW/JGBG7F6
 exAn4PW9DpNH3/STaeDXNlhjT5gic8EVpLbsXKSatce7xR+QP98jBoXBk
 zdzMYqiDpHczbeRhVPQCQT3gQS04x2GpzBi1Zk8bcjBW7o3lfuiMdrW+i
 14PRSJrwjqAt2HpodgGDFSFqxg+FvglCa8KUVZMe8c04J0i1f8v81fmhh
 oOTjGyRpM6VGklsWse3J9WB+7mCApCjVhHu4v28pQ4RrUDDOuxGhsrnfy
 5qjJXc6c1ZbXeD4PBx8Z2KxF/wlTwgHZ52zMDn4nkhIoBJrN6YaRZmizM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="343380936"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="343380936"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 18:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="692114481"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="692114481"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga002.jf.intel.com with ESMTP; 20 Apr 2023 18:15:30 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 20 Apr 2023 18:15:20 -0700
Message-Id: <20230421011525.3282664-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230421011525.3282664-1-John.C.Harrison@Intel.com>
References: <20230421011525.3282664-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/guc: Decode another GuC load
 failure case
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

Explain another potential firmware failure mode and early exit the
long wait if hit.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c       | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
index bcb1129b36102..dabeaf4f245f3 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_errors_abi.h
@@ -44,6 +44,7 @@ enum intel_guc_load_status {
 enum intel_bootrom_load_status {
 	INTEL_BOOTROM_STATUS_NO_KEY_FOUND                 = 0x13,
 	INTEL_BOOTROM_STATUS_AES_PROD_KEY_FOUND           = 0x1A,
+	INTEL_BOOTROM_STATUS_PROD_KEY_CHECK_FAILURE       = 0x2B,
 	INTEL_BOOTROM_STATUS_RSA_FAILED                   = 0x50,
 	INTEL_BOOTROM_STATUS_PAVPC_FAILED                 = 0x73,
 	INTEL_BOOTROM_STATUS_WOPCM_FAILED                 = 0x74,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
index 6fda3aec5c66a..0ff088a5e51a8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
@@ -129,6 +129,7 @@ static inline bool guc_load_done(struct intel_uncore *uncore, u32 *status, bool
 	case INTEL_BOOTROM_STATUS_RC6CTXCONFIG_FAILED:
 	case INTEL_BOOTROM_STATUS_MPUMAP_INCORRECT:
 	case INTEL_BOOTROM_STATUS_EXCEPTION:
+	case INTEL_BOOTROM_STATUS_PROD_KEY_CHECK_FAILURE:
 		*success = false;
 		return true;
 	}
@@ -219,6 +220,11 @@ static int guc_wait_ucode(struct intel_guc *guc)
 			guc_info(guc, "firmware signature verification failed\n");
 			ret = -ENOEXEC;
 			break;
+
+		case INTEL_BOOTROM_STATUS_PROD_KEY_CHECK_FAILURE:
+			guc_info(guc, "firmware production part check failure\n");
+			ret = -ENOEXEC;
+			break;
 		}
 
 		switch (ukernel) {
-- 
2.39.1

