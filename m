Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0106D188ED3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 21:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C526E219;
	Tue, 17 Mar 2020 20:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7896E219
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 20:17:02 +0000 (UTC)
IronPort-SDR: OnopI12jy3PsO5UW+WMEdxqpeZ3bItBGMvUHD5p7ZI8fT3nPECUIczJunKAN//pNpFS9ddsiA3
 Afn57Vv5qoiQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 13:17:02 -0700
IronPort-SDR: E2wFrEIehIeqWbllCQfcEYYvpXhqzwamRkLJks+A6Z3gzU7avrLAKuZxqP4eEGjBqGUk1MGp7x
 vZ/Tv4wZ/Zzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,565,1574150400"; d="scan'208";a="233610178"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga007.jf.intel.com with ESMTP; 17 Mar 2020 13:17:02 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Mar 2020 13:12:04 -0700
Message-Id: <20200317201204.5937-1-swathi.dhanavanthri@intel.com>
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
 include/drm/i915_pciids.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1d2c12219f44..c299e26c99c5 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -599,6 +599,10 @@
 	INTEL_VGA_DEVICE(0x9A60, info), \
 	INTEL_VGA_DEVICE(0x9A68, info), \
 	INTEL_VGA_DEVICE(0x9A70, info), \
-	INTEL_VGA_DEVICE(0x9A78, info)
+	INTEL_VGA_DEVICE(0x9A78, info), \
+	INTEL_VGA_DEVICE(0x9AC9, info), \
+	INTEL_VGA_DEVICE(0x9AF8, info), \
+	INTEL_VGA_DEVICE(0x9AC0, info), \
+	INTEL_VGA_DEVICE(0x9AD9, info)
 
 #endif /* _I915_PCIIDS_H */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
