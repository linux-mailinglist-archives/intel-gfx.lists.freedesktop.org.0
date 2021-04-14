Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA4035F833
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:52:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CAB6E95A;
	Wed, 14 Apr 2021 15:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB906E958
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:52:19 +0000 (UTC)
IronPort-SDR: ejcQkwrcsL6uF/WYq3UNt5Nzv2vaR0bpJU6ygeydcCBETzDd/lat3u/Qcm9iropaaKkRqU7AeJ
 Ts5N//YpRbOA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181791638"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="181791638"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:17 -0700
IronPort-SDR: pps4HBrsitEq7erEJerSkFJw7yukZb09xMDvMyORsQpbErf3b5s3wSAbM00alYwHc8/EJpsExA
 YYVn3Hl/alzA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="399226526"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 18:52:00 +0300
Message-Id: <20210414155208.3161335-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414155208.3161335-1-imre.deak@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/adl_p: Add PCI Devices IDs
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
index ebd0dd1c35b33..2448be8c72f89 100644
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
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
