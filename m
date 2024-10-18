Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3601C9A477B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 21:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9435B10E385;
	Fri, 18 Oct 2024 19:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d04+DLEw";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3E110E23A
 for <Intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2024 19:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729281564; x=1760817564;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mbMMSsVyiqeAZalv7KQh9NFFA+c97pKuofh+RB20YlM=;
 b=d04+DLEwSXnXcjQPfy+OWr03LfruGEkuy4TqQdrfABuFSL6HIjX3bQnW
 8ffXQitvPcfjlg4kU7gONhKItpMdOubMlC6cDk6W+IYz/iGpOO+eMMbY2
 6aUHC885LUzIkZbZXiCeKT0tVtrp5yeWQjjs5T9r6lfBxRkTitlwxRhX8
 OpzbOYOoUROpRb5RswPWj5A271TpAGuEQBv2kt3NaLspNLsYq4mwSbQ8C
 +AEubzELiDiPTQ5dpN5yf9YO/0s/fZN/ZkyxzfpzQ1d30zvEYCmCLRm+j
 03ZnnSO4pmJCGG/1z3LZ+xh8JioDkApLsMpLWTXH8wfcHxh8g0i2Fo6uI g==;
X-CSE-ConnectionGUID: wqLpVlB1SLSaUUwVYxHBSg==
X-CSE-MsgGUID: 8V4qVgxTT3eOJrQrz5Pm/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="31689720"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="31689720"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 12:59:24 -0700
X-CSE-ConnectionGUID: KcjfJ2mNT+m7mW0Py9FEJw==
X-CSE-MsgGUID: raEvDrA9QeKl4ozvH51SXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="82921033"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 12:59:24 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/display: Fuse bit for power management disable
 removed
Date: Fri, 18 Oct 2024 12:59:19 -0700
Message-Id: <20241018195919.2044576-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
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

Starting with Display 13 the fuse bit to disable Display PM has been
removed.

v2: Bit removed starting with Display13 (MattR)
BSPEC: 69464
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index aa22189e3853..1ec72ac2320a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1659,8 +1659,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
 			display_runtime->has_hdcp = 0;
 
-		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			display_runtime->fbc_mask = 0;
+		if (DISPLAY_VER(i915) < 13) {
+			if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
+				display_runtime->fbc_mask = 0;
+		}
 
 		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			display_runtime->has_dmc = 0;
-- 
2.25.1

