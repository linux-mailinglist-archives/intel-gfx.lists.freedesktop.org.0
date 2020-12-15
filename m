Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6152DB60A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 22:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65EED89CA4;
	Tue, 15 Dec 2020 21:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEC089CA4
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 21:49:06 +0000 (UTC)
IronPort-SDR: jyb/1fRoU+WHdCAID3KYceEbKK7d11gMG7x+zKs8nBGy5MCZgHB3XXsIoDPv0x4bG0v0X/h3GH
 jbrpdB6k3oAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="172388346"
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="172388346"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 13:49:06 -0800
IronPort-SDR: 7ZmcLsC/Yi1xpGEQ4+FkPQCD6sGhSeT2PinRDlJfQYmNnCjQMNqbhGzK0h2IFpNTBfm734FvUj
 5NiB1/pBKopQ==
X-IronPort-AV: E=Sophos;i="5.78,422,1599548400"; d="scan'208";a="368466008"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 13:49:05 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Tue, 15 Dec 2020 13:49:01 -0800
Message-Id: <20201215214901.10038-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201215214901.10038-1-umesh.nerlige.ramappa@intel.com>
References: <20201215214901.10038-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] i915/perf: Add removed OA formats back for
 TGL
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

When defining OA formats for TGL, some formats were left out. Add them
back and clean up the uapi comments to reflect available formats.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 12 +++++-------
 include/uapi/drm/i915_drm.h      | 24 ++++++++++++++----------
 2 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index afa92cf075c4..659fcc9ae819 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -310,14 +310,12 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A45_B8_C8]              = { 5, 256, INTEL_IVYBRIDGE, INTEL_HASWELL },
 	[I915_OA_FORMAT_B4_C8_A16]              = { 6, 128, INTEL_IVYBRIDGE, INTEL_HASWELL },
 
-	/* haswell+ upto but not including tigerlake */
-	[I915_OA_FORMAT_C4_B8]                  = { 7, 64, INTEL_IVYBRIDGE, INTEL_TIGERLAKE - 1 },
+	/* haswell+ */
+	[I915_OA_FORMAT_C4_B8]                  = { 7, 64, INTEL_HASWELL, INTEL_MAX_PLATFORMS - 1 },
 
-	/* gen8+ upto but not including tigerlake */
-	[I915_OA_FORMAT_A12]                    = { 0, 64, INTEL_BROADWELL, INTEL_TIGERLAKE - 1 },
-	[I915_OA_FORMAT_A12_B8_C8]              = { 2, 128, INTEL_BROADWELL, INTEL_TIGERLAKE - 1 },
-
-	/* gen8+ */
+	/* broadwell+ */
+	[I915_OA_FORMAT_A12]                    = { 0, 64, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },
+	[I915_OA_FORMAT_A12_B8_C8]              = { 2, 128, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8]     = { 5, 256, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },
 };
 
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 6edcb2b6c708..933511c2892e 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1951,20 +1951,24 @@ struct drm_i915_gem_userptr {
 };
 
 enum drm_i915_oa_format {
-	I915_OA_FORMAT_A13 = 1,	    /* HSW only */
-	I915_OA_FORMAT_A29,	    /* HSW only */
-	I915_OA_FORMAT_A13_B8_C8,   /* HSW only */
-	I915_OA_FORMAT_B4_C8,	    /* HSW only */
-	I915_OA_FORMAT_A45_B8_C8,   /* HSW only */
-	I915_OA_FORMAT_B4_C8_A16,   /* HSW only */
-	I915_OA_FORMAT_C4_B8,	    /* HSW+ */
-
-	/* Gen8+ */
+	/* haswell */
+	I915_OA_FORMAT_A13 = 1,
+	I915_OA_FORMAT_A29,
+	I915_OA_FORMAT_A13_B8_C8,
+	I915_OA_FORMAT_B4_C8,
+	I915_OA_FORMAT_A45_B8_C8,
+	I915_OA_FORMAT_B4_C8_A16,
+
+	/* haswell+ */
+	I915_OA_FORMAT_C4_B8,
+
+	/* broadwell+ */
 	I915_OA_FORMAT_A12,
 	I915_OA_FORMAT_A12_B8_C8,
 	I915_OA_FORMAT_A32u40_A4u32_B8_C8,
 
-	I915_OA_FORMAT_MAX	    /* non-ABI */
+	/* non-ABI */
+	I915_OA_FORMAT_MAX
 };
 
 enum drm_i915_perf_property_id {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
