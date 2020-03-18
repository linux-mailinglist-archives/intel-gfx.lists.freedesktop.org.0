Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A7118A7FA
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 23:17:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F9A6E975;
	Wed, 18 Mar 2020 22:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E12D86E975
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 22:17:37 +0000 (UTC)
IronPort-SDR: A8ZAIcKPIFU/MsC1/t4p35U6C5I6bq6ZvyRuBoZkhG9Hx3fcvPWSPNBqiydRBhDK45ZC9Z/3dn
 zPv4L+zvjoog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 15:17:37 -0700
IronPort-SDR: lINiAuI6amFM6CY7GWejozSCILDAbuYLRBPjY0pBGSUKcCbuRXRdpVj641H5q5fwzHSJ+ofXeZ
 xzWISAoINY6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="355838912"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2020 15:17:37 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 15:12:40 -0700
Message-Id: <20200318221240.8180-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add new PCI IDs to TGL
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

Adding 4 new PCI IDs to TGL
Bspec: 44455

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 include/drm/i915_pciids.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1d2c12219f44..662d8351c87a 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -593,12 +593,16 @@
 
 /* TGL */
 #define INTEL_TGL_12_IDS(info) \
-	INTEL_VGA_DEVICE(0x9A49, info), \
 	INTEL_VGA_DEVICE(0x9A40, info), \
+	INTEL_VGA_DEVICE(0x9A49, info), \
 	INTEL_VGA_DEVICE(0x9A59, info), \
 	INTEL_VGA_DEVICE(0x9A60, info), \
 	INTEL_VGA_DEVICE(0x9A68, info), \
 	INTEL_VGA_DEVICE(0x9A70, info), \
-	INTEL_VGA_DEVICE(0x9A78, info)
+	INTEL_VGA_DEVICE(0x9A78, info), \
+	INTEL_VGA_DEVICE(0x9AC0, info), \
+	INTEL_VGA_DEVICE(0x9AC9, info), \
+	INTEL_VGA_DEVICE(0x9AD9, info), \
+	INTEL_VGA_DEVICE(0x9AF8, info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
