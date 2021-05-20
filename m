Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E83B438B88B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 22:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BCD6F549;
	Thu, 20 May 2021 20:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C456F549
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 20:41:25 +0000 (UTC)
IronPort-SDR: FCsIGer+K5IFqW02TzIsk8ppcb3FJodRuDCRv6DUXZAphEnx4sQ+fe2MfwlOZssoHlUbYvVuFm
 78uTzNByyRjw==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="286863993"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="286863993"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 13:41:24 -0700
IronPort-SDR: nybkdvweQif+yP7Htba93wbAusOLxiOzTH3aEGE80RWQPlFHTqfW9bGJJ3eIcxjQRlH0AzqFee
 1jmeQcTkaGZg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="545119042"
Received: from ffong-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.32.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 13:41:23 -0700
Date: Thu, 20 May 2021 13:42:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210520204211.enfizf4ujczfffz6@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210520183608.30558-1-anusha.srivatsa@intel.com>
 <20210520183608.30558-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210520183608.30558-2-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: s/DRM_ERROR/drm_err
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 20, 2021 at 11:36:07AM -0700, Anusha Srivatsa wrote:
>Use new format of debug messages across intel_csr.
>
>While at it, change some function definitions which now
>need dev_priv for drm_err and drm_info etc.
>
>v2: use container_of() (Jani)
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Suggested-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

`git show -U0 --word-diff=color`  + `git grep`  say you covered them
all, but you also need to fix checkpatch (it's a great idea to run it
locally when doing changes like this:

	dim checkpatch origin/drm-tip

With checkpatch fixed,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 39 ++++++++++++++----------
> 1 file changed, 23 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 560574dd929a..d71758cd0b18 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -400,6 +400,8 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 	u32 mmio_count, mmio_count_max;
> 	u8 *payload;
>
>+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+
> 	BUILD_BUG_ON(ARRAY_SIZE(dmc->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
> 		     ARRAY_SIZE(dmc->mmioaddr) < DMC_V1_MAX_MMIO_COUNT);
>
>@@ -439,28 +441,28 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 		header_len_bytes = dmc_header->header_len;
> 		dmc_header_size = sizeof(*v1);
> 	} else {
>-		DRM_ERROR("Unknown DMC fw header version: %u\n",
>+		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
> 			  dmc_header->header_ver);
> 		return 0;
> 	}
>
> 	if (header_len_bytes != dmc_header_size) {
>-		DRM_ERROR("DMC firmware has wrong dmc header length "
>+		drm_err(&i915->drm, "DMC firmware has wrong dmc header length "
> 			  "(%u bytes)\n", header_len_bytes);
> 		return 0;
> 	}
>
> 	/* Cache the dmc header info. */
> 	if (mmio_count > mmio_count_max) {
>-		DRM_ERROR("DMC firmware has wrong mmio count %u\n", mmio_count);
>+		drm_err(&i915->drm, "DMC firmware has wrong mmio count %u\n", mmio_count);
> 		return 0;
> 	}
>
> 	for (i = 0; i < mmio_count; i++) {
> 		if (mmioaddr[i] < DMC_MMIO_START_RANGE ||
> 		    mmioaddr[i] > DMC_MMIO_END_RANGE) {
>-			DRM_ERROR("DMC firmware has wrong mmio address 0x%x\n",
>-				  mmioaddr[i]);
>+			drm_err(&i915->drm, "DMC firmware has wrong mmio address 0x%x\n",
>+				mmioaddr[i]);
> 			return 0;
> 		}
> 		dmc->mmioaddr[i] = _MMIO(mmioaddr[i]);
>@@ -476,14 +478,14 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 		goto error_truncated;
>
> 	if (payload_size > dmc->max_fw_size) {
>-		DRM_ERROR("DMC FW too big (%u bytes)\n", payload_size);
>+		drm_err(&i915->drm, "DMC FW too big (%u bytes)\n", payload_size);
> 		return 0;
> 	}
> 	dmc->dmc_fw_size = dmc_header->fw_size;
>
> 	dmc->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
> 	if (!dmc->dmc_payload) {
>-		DRM_ERROR("Memory allocation failed for dmc payload\n");
>+		drm_err(&i915->drm, "Memory allocation failed for dmc payload\n");
> 		return 0;
> 	}
>
>@@ -493,7 +495,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 	return header_len_bytes + payload_size;
>
> error_truncated:
>-	DRM_ERROR("Truncated DMC firmware, refusing.\n");
>+	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
> 	return 0;
> }
>
>@@ -507,6 +509,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
> 	u32 num_entries, max_entries, dmc_offset;
> 	const struct intel_fw_info *fw_info;
>
>+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+
> 	if (rem_size < package_size)
> 		goto error_truncated;
>
>@@ -515,7 +519,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
> 	} else if (package_header->header_ver == 2) {
> 		max_entries = PACKAGE_V2_MAX_FW_INFO_ENTRIES;
> 	} else {
>-		DRM_ERROR("DMC firmware has unknown header version %u\n",
>+		drm_err(&i915->drm, "DMC firmware has unknown header version %u\n",
> 			  package_header->header_ver);
> 		return 0;
> 	}
>@@ -529,8 +533,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
> 		goto error_truncated;
>
> 	if (package_header->header_len * 4 != package_size) {
>-		DRM_ERROR("DMC firmware has wrong package header length "
>-			  "(%u bytes)\n", package_size);
>+		drm_err(&i915->drm, "DMC firmware has wrong package header length "
>+			"(%u bytes)\n", package_size);
> 		return 0;
> 	}
>
>@@ -543,8 +547,8 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
> 	dmc_offset = find_dmc_fw_offset(fw_info, num_entries, si,
> 					package_header->header_ver);
> 	if (dmc_offset == DMC_DEFAULT_FW_OFFSET) {
>-		DRM_ERROR("DMC firmware not supported for %c stepping\n",
>-			  si->stepping);
>+		drm_err(&i915->drm, "DMC firmware not supported for %c stepping\n",
>+			si->stepping);
> 		return 0;
> 	}
>
>@@ -552,7 +556,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
> 	return package_size + dmc_offset * 4;
>
> error_truncated:
>-	DRM_ERROR("Truncated DMC firmware, refusing.\n");
>+	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
> 	return 0;
> }
>
>@@ -561,14 +565,17 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
> 			    struct intel_css_header *css_header,
> 			    size_t rem_size)
> {
>+
>+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+
> 	if (rem_size < sizeof(struct intel_css_header)) {
>-		DRM_ERROR("Truncated DMC firmware, refusing.\n");
>+		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
> 		return 0;
> 	}
>
> 	if (sizeof(struct intel_css_header) !=
> 	    (css_header->header_len * 4)) {
>-		DRM_ERROR("DMC firmware has wrong CSS header length "
>+		drm_err(&i915->drm, "DMC firmware has wrong CSS header length "
> 			  "(%u bytes)\n",
> 			  (css_header->header_len * 4));
> 		return 0;
>-- 
>2.25.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
