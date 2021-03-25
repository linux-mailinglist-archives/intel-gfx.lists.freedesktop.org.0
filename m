Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C16C349901
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E33B56EE1C;
	Thu, 25 Mar 2021 18:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4426EE05
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:31 +0000 (UTC)
IronPort-SDR: jO+8Ek7Vurj+7Wz4S9wgDGMtt9LfhtKahqnkktv+8p34pNKDay1vTgyRafya5Ft1eoYmNZigJ5
 poB/c0iEoStw==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112533"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112533"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:30 -0700
IronPort-SDR: 4qH+ni/uq7JlFbYmRswzvRB4cmBRjWkrrES2ym+UmJYkx59KsFMvCyz390heDW+BYW83dIANbv
 9SDtzXJ1UQSQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176602"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:48 -0700
Message-Id: <20210325180720.401410-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 18/50] drm/i915/adl_p: Add PCI Devices IDs
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clinton Taylor <Clinton.A.Taylor@intel.com>

Add 18 known PCI device IDs

Bspec: 55376
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 include/drm/i915_pciids.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index ebd0dd1c35b3..2448be8c72f8 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -645,4 +645,25 @@
 	INTEL_VGA_DEVICE(0x4692, info), \
 	INTEL_VGA_DEVICE(0x4693, info)
 
+/* ADL-P */
+#define INTEL_ADLP_IDS(info) \
+	INTEL_VGA_DEVICE(0x46A0, info), \
+	INTEL_VGA_DEVICE(0x46A1, info), \
+	INTEL_VGA_DEVICE(0x46A2, info), \
+	INTEL_VGA_DEVICE(0x46A3, info), \
+	INTEL_VGA_DEVICE(0x46A6, info), \
+	INTEL_VGA_DEVICE(0x46A8, info), \
+	INTEL_VGA_DEVICE(0x46AA, info), \
+	INTEL_VGA_DEVICE(0x462A, info), \
+	INTEL_VGA_DEVICE(0x4626, info), \
+	INTEL_VGA_DEVICE(0x4628, info), \
+	INTEL_VGA_DEVICE(0x46B0, info), \
+	INTEL_VGA_DEVICE(0x46B1, info), \
+	INTEL_VGA_DEVICE(0x46B2, info), \
+	INTEL_VGA_DEVICE(0x46B3, info), \
+	INTEL_VGA_DEVICE(0x46C0, info), \
+	INTEL_VGA_DEVICE(0x46C1, info), \
+	INTEL_VGA_DEVICE(0x46C2, info), \
+	INTEL_VGA_DEVICE(0x46C3, info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
