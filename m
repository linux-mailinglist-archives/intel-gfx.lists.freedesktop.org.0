Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 401C45BB5DC
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 05:15:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4705010E02B;
	Sat, 17 Sep 2022 03:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9753310E02B
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 03:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663384505; x=1694920505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wJuxIlQlWK9P7zHeC9b+Cl9K3Z5pl3tn2Q7Gaop6EDA=;
 b=PJL0WxL4wW+PDqRemxp+2E6hN8q+drXCZQjIblFFJX876XEXN0cpBJZR
 5eytj6ZLFjkUfN9VqOn1vCGpvizgd+kBycx4j5KfZarFVv4dWou4wNKlL
 gZf+dPSRGOkn4JeAPgfzD3Yaag5SMNOB/h1LT4vuaiorne5m7v67p2blR
 QbbfiG3pd2NVfSbuxXbQeg7Ulvv7erBBDuoZzeCd0sDQDYVlvBz61dDMz
 09PmIRHEERT+MdzVqKIatZxJ12YouAmLCHICKgWx7EjgY1TxXxCNurUS1
 uFMd07hpZWiJprKMvKUIFr29pgjoUeqsgWCAxla2u+8slOZL+MCtKbb1u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="299941306"
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="299941306"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 20:15:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,322,1654585200"; d="scan'208";a="648483420"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 20:15:05 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 20:15:01 -0700
Message-Id: <20220917031501.1916123-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: Fix perf_limit_reasons debugfs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Register GT0_PERF_LIMIT_REASONS (0x1381a8) is available only for Gen11+.

On Gen < 5 igt@debugfs_test@read_all_entries results in the following oops:

<1> [88.829420] BUG: unable to handle page fault for address: ffffc90000bb81a8
<1> [88.829438] #PF: supervisor read access in kernel mode
<1> [88.829447] #PF: error_code(0x0000) - not-present page

Bspec: 20008
Fixes: fe5979665f64 ("drm/i915/debugfs: Add perf_limit_reasons in debugfs")
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 68310881a793..e7f057821cd0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -660,6 +660,9 @@ static int perf_limit_reasons_get(void *data, u64 *val)
 	struct intel_gt *gt = data;
 	intel_wakeref_t wakeref;
 
+	if (GRAPHICS_VER(gt->i915) < 11)
+		return 0;
+
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
 		*val = intel_uncore_read(gt->uncore, intel_gt_perf_limit_reasons_reg(gt));
 
@@ -671,6 +674,9 @@ static int perf_limit_reasons_clear(void *data, u64 val)
 	struct intel_gt *gt = data;
 	intel_wakeref_t wakeref;
 
+	if (GRAPHICS_VER(gt->i915) < 11)
+		return 0;
+
 	/*
 	 * Clear the upper 16 "log" bits, the lower 16 "status" bits are
 	 * read-only. The upper 16 "log" bits are identical to the lower 16
-- 
2.34.1

