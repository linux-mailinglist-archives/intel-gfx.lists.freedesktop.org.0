Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE3E5FC213
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 10:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC0310E3C5;
	Wed, 12 Oct 2022 08:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0D210E3C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 08:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665563659; x=1697099659;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gyPkMqk2vDnkfQkzDdPoW0VbUf2yLdfUS44seW2ZNTk=;
 b=Q6NAGoFp7rbiyAsAyDtp1RFbOYRa7ZVxLRwXXYelcIhXfS1ZyyIuW01U
 J7XljLJO1m5FQGnXiGZJXsUeu+1wXUSoh7lElY8IKCBPSbRBStoXp9zL4
 nHypV1KzjyDAP0lIcGo19qZyGn+U6n+VfBGjDyna63bLq/RjqDitN+bpN
 3yUuT4/FD1I1YtbQPNVMSjuuUsyKWfMpl7NrjR4X4uDrukKJd1dPwy9P+
 /gelsEDG2kQeMvuJvtQml3e5oL4I+ti3jrnp8ESw2YsRDN17BFhRBqdRP
 VzO9qAV5Ohox93cYDuseZ5pPB/B+XQ7m9E6siLRPfC1VqjPTlykvs70se w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="292060572"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="292060572"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 01:34:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="731335319"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="731335319"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 01:34:15 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Oct 2022 14:04:02 +0530
Message-Id: <20221012083402.1069940-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
which really disables the PCIe  power savings and leaves the bridge
at D0 state.

Till we fix all issues related to runtime PM, we need
to keep autosupend control to 'on' on all discrete platforms with lmem.

Fixes: 527bab0473f2 ("drm/i915/rpm: Enable runtime pm autosuspend by default")
Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 6ed5786bcd29..410a5cb58a61 100644
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
+	if (!HAS_LMEM(i915))
+		pm_runtime_allow(kdev);
 
 	/*
 	 * The core calls the driver load handler with an RPM reference held.
-- 
2.25.1

