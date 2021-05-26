Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 689FA39228C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 00:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99BC6EDDD;
	Wed, 26 May 2021 22:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623766E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 22:09:15 +0000 (UTC)
IronPort-SDR: 4lJClC0po1gljaadpruJxTMkbIUDQofjT5KpQAfsrHg8jcLCgxYg04P6mU6ae3h+9QiLqq0g5b
 QQnIDzxakVfA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202600423"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202600423"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 15:08:55 -0700
IronPort-SDR: dgSBo2Vc6Nm+A4vMC3tc21R4+LbibXmk98d+3Cfrzuby6xIRW0b+uafwogoM4xSik7NO6wUHCF
 w/p76mJth/og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633689123"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2021 15:08:54 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:08:47 -0700
Message-Id: <20210526220853.4550-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210526220853.4550-1-anusha.srivatsa@intel.com>
References: <20210526220853.4550-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/dmc: s/DRM_ERROR/drm_err
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use new format of debug messages across intel_csr.

While at it, change some function definitions which now
need dev_priv for drm_err and drm_info etc.

v2: use container_of() (Jani)
v3: Indentation fixes. (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Suggested-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 50 ++++++++++++------------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 560574dd929a..5e9c0b509034 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -395,6 +395,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size)
 {
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
 	u32 mmio_count, mmio_count_max;
@@ -439,28 +440,28 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		header_len_bytes = dmc_header->header_len;
 		dmc_header_size = sizeof(*v1);
 	} else {
-		DRM_ERROR("Unknown DMC fw header version: %u\n",
-			  dmc_header->header_ver);
+		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
+			dmc_header->header_ver);
 		return 0;
 	}
 
 	if (header_len_bytes != dmc_header_size) {
-		DRM_ERROR("DMC firmware has wrong dmc header length "
-			  "(%u bytes)\n", header_len_bytes);
+		drm_err(&i915->drm, "DMC firmware has wrong dmc header length "
+			"(%u bytes)\n", header_len_bytes);
 		return 0;
 	}
 
 	/* Cache the dmc header info. */
 	if (mmio_count > mmio_count_max) {
-		DRM_ERROR("DMC firmware has wrong mmio count %u\n", mmio_count);
+		drm_err(&i915->drm, "DMC firmware has wrong mmio count %u\n", mmio_count);
 		return 0;
 	}
 
 	for (i = 0; i < mmio_count; i++) {
 		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
 		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
-			DRM_ERROR("DMC firmware has wrong mmio address 0x%x\n",
-				  mmioaddr[i]);
+			drm_err(&i915->drm, "DMC firmware has wrong mmio address 0x%x\n",
+				mmioaddr[i]);
 			return 0;
 		}
 		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
@@ -476,16 +477,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		goto error_truncated;
 
 	if (payload_size > dmc->max_fw_size) {
-		DRM_ERROR("DMC FW too big (%u bytes)\n", payload_size);
+		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
 		return 0;
 	}
 	dmc->dmc_fw_size = dmc_header->fw_size;
 
 	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
-	if (!dmc->dmc_payload) {
-		DRM_ERROR("Memory allocation failed for dmc payload\n");
+	if (!dmc->dmc_payload)
 		return 0;
-	}
 
 	payload = (u8 *)(dmc_header) + header_len_bytes;
 	memcpy(dmc->dmc_payload, payload, payload_size);
@@ -493,7 +492,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 	return header_len_bytes + payload_size;
 
 error_truncated:
-	DRM_ERROR("Truncated DMC firmware, refusing.\n");
+	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
 	return 0;
 }
 
@@ -503,6 +502,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 		     const struct stepping_info *si,
 		     size_t rem_size)
 {
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
 	u32 package_size = sizeof(struct intel_package_header);
 	u32 num_entries, max_entries, dmc_offset;
 	const struct intel_fw_info *fw_info;
@@ -515,8 +515,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 	} else if (package_header->header_ver == 2) {
 		max_entries = PACKAGE_V2_MAX_FW_INFO_ENTRIES;
 	} else {
-		DRM_ERROR("DMC firmware has unknown header version %u\n",
-			  package_header->header_ver);
+		drm_err(&i915->drm, "DMC firmware has unknown header version %u\n",
+			package_header->header_ver);
 		return 0;
 	}
 
@@ -529,8 +529,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 		goto error_truncated;
 
 	if (package_header->header_len * 4 != package_size) {
-		DRM_ERROR("DMC firmware has wrong package header length "
-			  "(%u bytes)\n", package_size);
+		drm_err(&i915->drm, "DMC firmware has wrong package header length "
+			"(%u bytes)\n", package_size);
 		return 0;
 	}
 
@@ -543,8 +543,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 	dmc_offset = find_dmc_fw_offset(fw_info, num_entries, si,
 					package_header->header_ver);
 	if (dmc_offset == DMC_DEFAULT_FW_OFFSET) {
-		DRM_ERROR("DMC firmware not supported for %c stepping\n",
-			  si->stepping);
+		drm_err(&i915->drm, "DMC firmware not supported for %c stepping\n",
+			si->stepping);
 		return 0;
 	}
 
@@ -552,7 +552,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 	return package_size + dmc_offset * 4;
 
 error_truncated:
-	DRM_ERROR("Truncated DMC firmware, refusing.\n");
+	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
 	return 0;
 }
 
@@ -561,22 +561,24 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 			    struct intel_css_header *css_header,
 			    size_t rem_size)
 {
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+
 	if (rem_size < sizeof(struct intel_css_header)) {
-		DRM_ERROR("Truncated DMC firmware, refusing.\n");
+		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
 		return 0;
 	}
 
 	if (sizeof(struct intel_css_header) !=
 	    (css_header->header_len * 4)) {
-		DRM_ERROR("DMC firmware has wrong CSS header length "
-			  "(%u bytes)\n",
-			  (css_header->header_len * 4));
+		drm_err(&i915->drm, "DMC firmware has wrong CSS header length "
+			"(%u bytes)\n",
+			(css_header->header_len * 4));
 		return 0;
 	}
 
 	if (dmc->required_version &&
 	    css_header->version != dmc->required_version) {
-		DRM_INFO("Refusing to load DMC firmware v%u.%u,"
+		drm_info(&i915->drm, "Refusing to load DMC firmware v%u.%u,"
 			 " please use v%u.%u\n",
 			 DMC_VERSION_MAJOR(css_header->version),
 			 DMC_VERSION_MINOR(css_header->version),
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
