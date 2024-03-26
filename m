Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FD388C22C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 13:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEE410E7C2;
	Tue, 26 Mar 2024 12:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b2gplSbW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E466910E7C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711456478; x=1742992478;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jHYXzZpWxhW5++2O7+R0fMRkARj5fCc5IWtS+XtdTRY=;
 b=b2gplSbWhTjAidkrnk8rCBXrxexjLY0syTszfFqgySdcjilaD6u5xBWB
 o1fEKY86obUUQBYyoZ5oeXzyjDkV9uAMNMBwYXfky3XuHsqJn68V1dYfX
 ZQ/BdZkexbnsmoB44fBQZ8e8TAX28O/2U2NEctncBCSla6au91Ar8VHpH
 D6uJsZ2xU7dS6sj543vY0GdKO7zTx3SudfU5XYK3Wgdc8KC37AK4pElTs
 pr9JOwsf5jUFONfefkL86MP1WhKBvhHvH/o8OB3ngHsGKeZ48sSe+/0K1
 eo0X20/xR2YQYEKzOOIXAK+6qC397kkGbwuZVigjFjaQLEG3pwBoRFVmW w==;
X-CSE-ConnectionGUID: wjQBOBJTQ6+WldAKR0RKBA==
X-CSE-MsgGUID: CXHq1mNvRbGsgTaMkY02uw==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17136593"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="17136593"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:34:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16001131"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:34:36 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ashutosh.dixit@intel.com, anshuman.gupta@intel.com,
 janusz.krzysztofik@intel.com
Subject: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during driver
 unbind
Date: Tue, 26 Mar 2024 18:18:38 +0530
Message-Id: <20240326124838.3049215-1-badal.nilawar@intel.com>
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

i915_hwmon and its resources are managed resources of i915 dev.
During i915 driver unregister flow the function i915_hwmon_unregister()
explicitly makes i915_hwmon resource NULL. This happen before
hwmon is actually unregistered. Doing so may cause UAF if hwmon
sysfs is being accessed:

<7> [518.386591] i915 0000:03:00.0: [drm] intel_gt_set_wedged called from intel_gt_set_wedged_on_fini+0xd/0x30 [i915]
<7> [518.471128] i915 0000:03:00.0: [drm:drm_client_release] drm_fb_helper
<4> [518.501476] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b6dbf: 0000 [#1] PREEMPT SMP NOPTI
<4> [518.512264] CPU: 6 PID: 679 Comm: prometheus-node Tainted: G     U             6.9.0-rc1-CI_DRM_14482-g4a8fabcf2f1a+ #1
<4> [518.522951] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.4221.A00.2305271351 05/27/2023
<4> [518.536217] RIP: 0010:hwm_energy+0x2b/0x100 [i915]
<4> [518.541159] Code: 48 89 e5 41 57 41 56 41 55 41 54 53 48 89 fb 48 83 e4 f0 48 83 ec 10 4c 8b 77 08 4c 8b 2f 8b 7f 34 48 89 74 24 08 85 ff 78 2b <45> 8b bd 54 02 00 00 49 8b 7e 18 e8 35 e4 ea ff 49 89 c4 48 85 c0
<4> [518.559746] RSP: 0018:ffffc900077efd00 EFLAGS: 00010202
<4> [518.564943] RAX: 0000000000000000 RBX: ffff8881e3078428 RCX: 0000000000000000
<4> [518.572025] RDX: 0000000000000001 RSI: ffffc900077efda0 RDI: 000000006b6b6b6b
<4> [518.579107] RBP: ffffc900077efd40 R08: ffffc900077efda0 R09: 0000000000000001
<4> [518.586186] R10: 0000000000000001 R11: ffff88810c19aa00 R12: ffff888243e1a010
<4> [518.593264] R13: 6b6b6b6b6b6b6b6b R14: 6b6b6b6b6b6b6b6b R15: ffff8881e3078428
<4> [518.600343] FS:  00007f9def400700(0000) GS:ffff88888d100000(0000) knlGS:0000000000000000
<4> [518.608373] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [518.614077] CR2: 0000564f19bff288 CR3: 0000000119f94000 CR4: 0000000000f50ef0
<4> [518.621158] PKRU: 55555554
<4> [518.623858] Call Trace:
<4> [518.626303]  <TASK>
<4> [518.628400]  ? __die_body+0x1a/0x60
<4> [518.631881]  ? die_addr+0x38/0x60
<4> [518.635182]  ? exc_general_protection+0x1a1/0x400
<4> [518.639862]  ? asm_exc_general_protection+0x26/0x30
<4> [518.644710]  ? hwm_energy+0x2b/0x100 [i915]
<4> [518.649007]  hwm_read+0x9a/0x310 [i915]
<4> [518.652953]  hwmon_attr_show+0x36/0x140
<4> [518.656775]  dev_attr_show+0x15/0x60

Fixes: b3b088e28183 ("drm/i915/hwmon: Add HWMON infrastructure")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/10366
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 drivers/gpu/drm/i915/i915_hwmon.c  | 5 -----
 2 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4b9233c07a22..a95b455964b7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -660,8 +660,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_driver_unregister(gt);
 
-	i915_hwmon_unregister(dev_priv);
-
 	i915_perf_unregister(dev_priv);
 	i915_pmu_unregister(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index c9169e56b9a1..91f171752d34 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -841,8 +841,3 @@ void i915_hwmon_register(struct drm_i915_private *i915)
 			ddat_gt->hwmon_dev = hwmon_dev;
 	}
 }
-
-void i915_hwmon_unregister(struct drm_i915_private *i915)
-{
-	fetch_and_zero(&i915->hwmon);
-}
-- 
2.25.1

