Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E55FED37
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 13:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE6910E1ED;
	Fri, 14 Oct 2022 11:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D7810E1ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 11:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665747239; x=1697283239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kwswd1u67ukpz7gOwOtHHQdRtwn/fYcqw9yf8RLyEqo=;
 b=fZflcr3ZjPg4HEC1/bYJAyvJzXyoeBkVAbzQTLchHKSKA+BQ5iVUZQq9
 AskyD+u771xXkVrk90eHreBeGpfbBfsHR2HAgGcEpA6FM0G8acTZVMcca
 wcO280LveNwTcU5v3279yPSgKadkhBxqCq9Y7JhI+uPsjTDXCh9CMfuEf
 CADJXz53PV10lEWfhVmyzcB4uziqoswE/uI3Uutpg9bGcABDW3ZZ+e2FB
 QnKZvFzz5gBp279TXvMfD+hH9gp39TNTtoTzU6rmIY4au4Y+qVzRzr8pI
 ovcUj85rEX4bbdbOgk6H9qjZO3lg4VPgLXlc9U7R2QavYRLnriqn35W+N w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="391660090"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="391660090"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 04:33:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="802601606"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="802601606"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 04:33:55 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 17:02:58 +0530
Message-Id: <20221014113258.1284226-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012083402.1069940-1-anshuman.gupta@intel.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dgfx: Keep PCI autosuspend control
 'on' by default on all dGPU
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
Cc: matthew.auld@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DGFX platforms has lmem and cpu can access the lmem objects
via mmap and i915 internal i915_gem_object_pin_map() for
i915 own usages. Both of these methods has pre-requisite
requirement to keep GFX PCI endpoint in D0 for a supported
iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)

Both DG1/DG2 have a known hardware bug that violates the PCIe specs
and support the iomem read write transaction over PCIe bus despite
endpoint is D3 state.
Due to above H/W bug, we had never observed any issue with i915 runtime
PM versus lmem access.
But this issue becomes visible when PCIe gfx endpoint's upstream
bridge enters to D3, at this point any lmem read/write access will be
returned as unsupported request. But again this issue is not observed
on every platform because it has been observed on few host machines
DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
which really disables the PCIe  power savings and leaves the bridge
at D0 state.

We need a unique interface to read/write from lmem with runtime PM
wakeref protection something similar to intel_uncore_{read, write},
keep autosuspend control to 'on' on all discrete platforms,
until we have a unique interface to read/write from lmem.

This just change the default autosuspend setting of i915 on dGPU,
user can still change it to 'auto'.

v2:
- Modified the commit message and subject with more information.
- Changed the Fixes tag to LMEM support commit. [Joonas]
- Changed !HAS_LMEM() Cond to !IS_DGFX(). [Rodrigo]

Fixes: b908be543e44 ("drm/i915: support creating LMEM objects")
Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..744cca507946 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 		pm_runtime_use_autosuspend(kdev);
 	}
 
-	/* Enable by default */
-	pm_runtime_allow(kdev);
+	/*
+	 *  FIXME: Temp hammer to keep autosupend disable on lmem supported platforms.
+	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
+	 *  function will be unsupported in case PCIe endpoint function is in D3.
+	 *  Let's keep i915 autosuspend control 'on' till we fix all known issue
+	 *  with lmem access in D3.
+	 */
+	if (!IS_DGFX(i915))
+		pm_runtime_allow(kdev);
 
 	/*
 	 * The core calls the driver load handler with an RPM reference held.
-- 
2.25.1

