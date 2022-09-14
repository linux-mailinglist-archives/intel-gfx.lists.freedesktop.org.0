Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3725B8A28
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 16:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928FC10E928;
	Wed, 14 Sep 2022 14:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2FF10E934
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 14:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663164973; x=1694700973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U/NCyOPd1bCxyWeTW3Ve9PlP2m7MwkNeqPZnx+B0vKI=;
 b=OuHkm7tHTcdsrLCfPuO9sQWqeG8nNxYrrAr/7RIwmYZtSvQyP+EWQNVM
 4y4O6XkMY9ZLngOECuas9Xsmv3vf1lrnL0qZssS9XGZbQZM7P/mEFsgLd
 kh3p0Kus9RSmHufOPknJFHZWzsgWi6TS897LbTekGbUrTkE9zsO6552dI
 Qtbu/XsokX79/m0rSYbn2oK/hfk7BmbX4fwI9kTBowokwru7Ssi3Noe5C
 HZI6A5OXahBziVMG5aeSaH1B43X1YWldowRWrp5AmzKPzpdvNISejBEFx
 7GC7VOavgWENL5CPekQzxuFI+Q1MMgAjGWb84lLk7i3kNena50+cEwnzs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="299797710"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299797710"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:16:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="720600881"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:16:09 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 19:45:53 +0530
Message-Id: <20220914141553.16864-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: Matthew Auld <matthew.auld@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG1 and DG2 has lmem, and cpu can access the lmem objects
via mmap and i915 internal i915_gem_object_pin_map() for
i915 own usages. Both of these methods has pre-requisite
requirement to keep GFX PCI endpoint in D0 for a supported
iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)

TODO:
With respect to i915_gem_object_pin_map(), every caller
has to grab a wakeref if gem object lies in lmem.

Till we fix all issues related to runtime PM, we need
to keep runtime PM disable on both DG1 and DG2.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..f31d7f5399cc 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -931,6 +931,26 @@ static const struct intel_device_info dg1_info = {
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
 	.__runtime.ppgtt_size = 47,
+
+	/*
+	 *  FIXME: Temporary hammer to disable rpm.
+	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
+	 *  function will be unsupported in case PCIe endpoint function is in D3.
+	 *  But both DG1/DG2 has a hardware bug that violates the PCIe specs
+	 *  and supports the iomem read write transaction over PCIe bus despite
+	 *  endpoint is D3 state.
+	 *  Due to above H/W bug, we had never observed any issue with i915 runtime
+	 *  PM versus lmem access.
+	 *  But this issue gets discover when PCIe gfx endpoint's upstream
+	 *  bridge enters to D3, at this point any lmem read/write access will be
+	 *  returned as unsupported request. But again this issue is not observed
+	 *  on every platform because it has been observed on few host machines
+	 *  DG1/DG2 endpoint's upstream bridge does not binds with pcieport driver.
+	 *  which really disables the PCIe power savings and leaves the bridge to D0
+	 *  state.
+	 *  Let's disable i915 rpm till we fix all known issue with lmem access in D3.
+	 */
+	.has_runtime_pm = 0,
 };
 
 static const struct intel_device_info adl_s_info = {
@@ -1076,6 +1096,7 @@ static const struct intel_device_info dg2_info = {
 	XE_LPD_FEATURES,
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.has_runtime_pm = 0,
 	.require_force_probe = 1,
 };
 
-- 
2.26.2

