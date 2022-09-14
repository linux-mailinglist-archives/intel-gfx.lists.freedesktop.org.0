Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 800895B8C9D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 18:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100A610E00D;
	Wed, 14 Sep 2022 16:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084FC10E00D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 16:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663172043; x=1694708043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xMCx/5OIzfUFvDjudgV9Xbbl1NqR5QlcQG9JTfVERZY=;
 b=TMJlNmquPdYNH+OVGHpNrJU+I5eHabUMRDYtSYVT0cUe8Xbg0+g3ai4Z
 2GD1zvENAPSEeaKoSjYSOttzVhb9J72cq/o5UtJczOo00ZpV35MAMo2Qs
 aOC9RUB3qAIkYqV3v7107mzL54n1pviGloEyZqp3POLrjlxKIGCn8k064
 +lzV3ocB/rIn/L8DJFAzZGl6shobec55kTnkkkIsy+iHgAkHZxGteMsaA
 6sHKaKl/qdc5jozIy0feQdcdgEdfsr+dYcmS84zI6SYgzFMUI3+HTvV8s
 7afjmiPJ0b3o6kMUIeHF5TL+QoIGTTiBgsNQbuT/qirBzicpuwhCZ0IeT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="296060042"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="296060042"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:13:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="706005397"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:13:39 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 21:43:29 +0530
Message-Id: <20220914161329.2604-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220914141553.16864-1-anshuman.gupta@intel.com>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/DG{1,
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

Both DG1/DG2 have a hardware bug that violates the PCIe specs
and support the iomem read write transaction over PCIe bus despite
endpoint is D3 state.
Due to above H/W bug, we had never observed any issue with i915 runtime
PM versus lmem access.
But this issue becomes visible when PCIe gfx endpoint's upstream
bridge enters to D3, at this point any lmem read/write access will be
returned as unsupported request. But again this issue is not observed
on every platform because it has been observed on few host machines
DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
which really disables the PCIe poer power savings and leaves the bridge
at D0 state.

TODO:
With respect to i915_gem_object_pin_map(), every caller
has to grab a wakeref if gem object lies in lmem.

Till we fix all issues related to runtime PM, we need
to keep runtime PM disable on both DG1 and DG2.

V2:
- Keep a smaller FIXME code comment for both DG1/DG2.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..4a7d226b074f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -931,6 +931,14 @@ static const struct intel_device_info dg1_info = {
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
 	.__runtime.ppgtt_size = 47,
+
+	/*
+	 *  FIXME: Temporary hammer to disable rpm.
+	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
+	 *  function will be unsupported in case PCIe endpoint function is in D3.
+	 *  Let's disable i915 rpm till we fix all known issue with lmem access in D3.
+	 */
+	.has_runtime_pm = 0,
 };
 
 static const struct intel_device_info adl_s_info = {
@@ -1076,6 +1084,13 @@ static const struct intel_device_info dg2_info = {
 	XE_LPD_FEATURES,
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	/*
+	 *  FIXME: Temporary hammer to disable rpm.
+	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
+	 *  function will be unsupported in case PCIe endpoint function is in D3.
+	 *  Let's disable i915 rpm till we fix all known issue with lmem access in D3.
+	 */
+	.has_runtime_pm = 0,
 	.require_force_probe = 1,
 };
 
-- 
2.26.2

