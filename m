Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B85939FB5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C2310E578;
	Tue, 23 Jul 2024 11:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWJNBSjD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14DBB10E57D
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733722; x=1753269722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=My1eKJlOqoONfqwGbzmsKY/Kbpabs5JNodHFdHUj7lI=;
 b=TWJNBSjD6YuvU7vb9PzgIwF8AD7+gn4ErpWv4MW82opRqk/wHZJMyP/d
 UZgKWFERurMFZjL/bSTg2TZrEysw3jbHi3NGg46gyoRICrwSfw4FtVcq7
 umh2Sxx+CSteRCJ+0qXbdmK0rYpmOyvPmEdmqj8sJFK9mkLnAnO6CE4iH
 QjUqbRz6vaOqdKDyECNd0inmKQDNegSyIfcYYAafFVlJEZvpPwniZMxwW
 nzpowxJlW4RFsQZNoHhVsxPQZOZC1vmvgB09FoEjjLsOP7ZT07rAqOcKa
 QmVsK1Fm4Njp9787aVlvyM4FlS+81EXOM75r90LJOvktAxUEjg1wqWSle w==;
X-CSE-ConnectionGUID: BTaibsXKTaOotR+x/jEKkA==
X-CSE-MsgGUID: 7i6yTia8Q7KhweJYR/F7gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="18965162"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="18965162"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:22:02 -0700
X-CSE-ConnectionGUID: Jhq9Mw6QR/O6JdF17bQoLg==
X-CSE-MsgGUID: d0/4NUTqTMChLEb0PQCmBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52814838"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:22:00 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 9/9] drm/i915/gt: Document CCS mode load balancing
Date: Tue, 23 Jul 2024 13:20:46 +0200
Message-ID: <20240723112046.123938-10-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
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

Add documentation for how to set the static CCS load balancing.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 Documentation/gpu/i915.rst                  |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 56 +++++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index ad59ae579237..7e4f0d5a4cec 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -341,6 +341,9 @@ for execution also include a list of all locations within buffers that
 refer to GPU-addresses so that the kernel can edit the buffer correctly.
 This process is dubbed relocation.
 
+.. kernel-doc:: drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
+   :doc: CCS load balancing
+
 Locking Guidelines
 ------------------
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 7773a04981a4..2babd91d4c0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -165,6 +165,62 @@ static ssize_t num_cslices_show(struct device *dev,
 }
 static DEVICE_ATTR_RO(num_cslices);
 
+/**
+ * DOC: CCS Load Balancing
+ *
+ * CCS load balancing involves distributing the commands submitted to the
+ * compute engine across the various CCS slices.
+ *
+ * The initial design was aimed at automatic load balancing, but it was found
+ * that static load balancing performed better. Static load balancing allows
+ * users to set the desired balancing mode, also referred to as "CCS mode." This
+ * approach enables users to determine how the CCS workload is distributed
+ * among the slices.
+ *
+ * The possible modes for CCS balancing depend on the total number of slices,
+ * which currently does not exceed 4, and applies to DG2 and ATS-M platforms.
+ * (PVC also has more than 1 CCS engine, but the mode is set through an
+ * execbuffer setting.)
+ *
+ * Given a maximum mode of 4, the CCS mode can be set to 1, 2, or 4. Each mode
+ * corresponds to the number of CCS engines exposed to userspace, and the load
+ * is balanced as follows:
+ *
+ * CCS mode 1:
+ *   - slices 0, 1, 2, 3: ccs0
+ *
+ * CCS mode 2:
+ *   - slice 0, 2: ccs0
+ *   - slice 1, 3: ccs1
+ *
+ * CCS mode 4:
+ *   - slice 0: ccs0
+ *   - slice 1: ccs1
+ *   - slice 2: ccs2
+ *   - slice 3: ccs3
+ *
+ * At boot time, the default mode set is '1'.
+ *
+ * Two interfaces are generated for the CCS engine:
+ *
+ * - ccs_mode: This read-write interface, generated only for DG2 and ATSM,
+ *   shows the current CCS mode when read and sets the CCS mode when written to.
+ *
+ *   Setting the CCS mode is only possible when no one is using i915, i.e.,
+ *   when no client is keeping the interface open. This is to ensure a
+ *   consistent engine topology view among different clients and to guarantee
+ *   that no task is impacted by a runtime CCS mode change.
+ *
+ *   Writing to this interface can fail, returning the following error codes:
+ *
+ *   - -EINVAL for attempting to set an invalid mode: when the mode is '0',
+ *     exceeds the number of available slices, or is not a power of 2.
+ *
+ *   - -EBUSY when other clients are attached to i915.
+ *
+ * - num_cslices, read-only: Shows the maximum number of slices and,
+ *   consequently, the highest mode that can be set.
+ */
 static ssize_t ccs_mode_show(struct device *dev,
 			     struct device_attribute *attr, char *buff)
 {
-- 
2.45.2

