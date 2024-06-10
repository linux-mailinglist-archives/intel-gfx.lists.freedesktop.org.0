Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97660901C1B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20FA889DA5;
	Mon, 10 Jun 2024 07:52:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UClYlgEe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1E089DA5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718005922; x=1749541922;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QWVB+T6h8A5p7lY19H1pnrLpcgeiXW7cO9+v/Gkb8HU=;
 b=UClYlgEe6riM6tEq4jyhPoH5WAGf3EXjVS8ZV7YQf4C5Y0AzxyZvLIpY
 vs6WXh4GgXFOKZ/IWufw8/SpvxS8Y5tnLlwaodATO0hxf0Q406ejIPj3m
 DJsvjGp+mRbyrpFD/675JnyJKf3gnLwwssDDXOPTYCDbyT+E4DBDQq+PQ
 6KrXdI/unulXon2sOVWLhHAxr97RsfNZzhNPRVR0znJXhBxTqTlZjwS0D
 VM6DTY5kJ9+Cy8sDEmyj27e53lcc016YpwtFdoN4pEUhM7ShXRs7+tJDS
 7nJQ3+mQhTvxX8Z/STTff8imDg11Dvrhk5Qg5UDKUIAQG6HR5wOO2zGrr w==;
X-CSE-ConnectionGUID: 5M/r16I7TN6jOPWD9mpvtA==
X-CSE-MsgGUID: 4esWCkSgQWmReJYBeL1+jw==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="25305870"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="25305870"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:52:01 -0700
X-CSE-ConnectionGUID: 3ug9ksndRryflkcT57NL+A==
X-CSE-MsgGUID: ejeXEbG9QV2mxULXxR67qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39417830"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa006.jf.intel.com with ESMTP; 10 Jun 2024 00:52:01 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: [core-for-CI PATCH] Revert "e1000e: move force SMBUS near the end of
 enable_ulp function"
Date: Mon, 10 Jun 2024 13:16:27 +0530
Message-Id: <20240610074627.3762842-1-chaitanya.kumar.borah@intel.com>
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

This reverts commit bfd546a552e140b0a4c8a21527c39d6d21addb28.

The commit seems to cause problems in suspend-resume tests

[212.204897] e1000e 0000:00:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend [e1000e] returns -2
[212.204928] e1000e 0000:00:1f.6: PM: dpm_run_callback(): pci_pm_suspend returns -2
[212.204943] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2
[212.205092] PM: suspend of devices aborted after 302.254 msecs

References: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14904/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11305
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 22 ---------------------
 drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++++++++++++
 2 files changed, 18 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 2e98a2a0bead..f9e94be36e97 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1225,28 +1225,6 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
 	}
 
 release:
-	/* Switching PHY interface always returns MDI error
-	 * so disable retry mechanism to avoid wasting time
-	 */
-	e1000e_disable_phy_retry(hw);
-
-	/* Force SMBus mode in PHY */
-	ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
-	if (ret_val) {
-		e1000e_enable_phy_retry(hw);
-		hw->phy.ops.release(hw);
-		goto out;
-	}
-	phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
-	e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
-
-	e1000e_enable_phy_retry(hw);
-
-	/* Force SMBus mode in MAC */
-	mac_reg = er32(CTRL_EXT);
-	mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
-	ew32(CTRL_EXT, mac_reg);
-
 	hw->phy.ops.release(hw);
 out:
 	if (ret_val)
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index da5c59daf8ba..220d62fca55d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6623,6 +6623,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 ctrl, ctrl_ext, rctl, status, wufc;
 	int retval = 0;
+	u16 smb_ctrl;
 
 	/* Runtime suspend should only enable wakeup for link changes */
 	if (runtime)
@@ -6696,6 +6697,23 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 			if (retval)
 				return retval;
 		}
+
+		/* Force SMBUS to allow WOL */
+		/* Switching PHY interface always returns MDI error
+		 * so disable retry mechanism to avoid wasting time
+		 */
+		e1000e_disable_phy_retry(hw);
+
+		e1e_rphy(hw, CV_SMB_CTRL, &smb_ctrl);
+		smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
+		e1e_wphy(hw, CV_SMB_CTRL, smb_ctrl);
+
+		e1000e_enable_phy_retry(hw);
+
+		/* Force SMBus mode in MAC */
+		ctrl_ext = er32(CTRL_EXT);
+		ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
+		ew32(CTRL_EXT, ctrl_ext);
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.25.1

