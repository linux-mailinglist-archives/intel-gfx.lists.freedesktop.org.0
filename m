Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EBF887550
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 23:59:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE4310F076;
	Fri, 22 Mar 2024 22:59:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ElNK416y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5CF10F076
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 22:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711148371; x=1742684371;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IYh0MZN0TejAGJnBO9IwoF9kNF62ebW9Pvr5eVWgaxs=;
 b=ElNK416y1GjGnLMSg6JS7HY7ry2K3MSWhdJkY5j0bVgVWPXiOMAqLx+R
 xlhtk3gLEoPnCt0bme6OzQaKGvha2TTQ/LjvIUmADuIZIF+LVJpEmFJzz
 +SGY65lGTlnpNUsVyjGnYsdFLyi2b6llZ11bChPICemg4jf+eDzLECvl8
 fz5ZcJgz1qlcez+UWU86yGP9UmEBYxiY/pAEaSex6C3FsOccor75qnFlk
 kaEczM7uROF+5UGVQFZV6oLk3zVlcH3nwBbgairoT7UfualI4OYSExoJn
 9rPjAWDnhqPhJrwAclRRComkkAw69nu0JwGQmED4wgj/meiq1F6T3IOhV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="6407151"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; 
   d="scan'208";a="6407151"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 15:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="19744965"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 15:59:30 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [CI] drm/i915/huc: pick the DG2 HuC up from the CI folder
Date: Fri, 22 Mar 2024 15:59:23 -0700
Message-ID: <20240322225923.370069-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

This is to test the new HuC release before overwriting the existing one.
This patch is for testing only and it should not be merged.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index d80278eb45d7..19895872f7e8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -112,7 +112,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 
 #define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp, huc_gsc) \
 	fw_def(METEORLAKE,   0, huc_gsc(mtl)) \
-	fw_def(DG2,          0, huc_gsc(dg2)) \
+	fw_def(DG2,          0, huc_gsc(../intel-ci/i915/dg2)) \
 	fw_def(ALDERLAKE_P,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(ALDERLAKE_S,  0, huc_raw(tgl)) \
-- 
2.43.0

