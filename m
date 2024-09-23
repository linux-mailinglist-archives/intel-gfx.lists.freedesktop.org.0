Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DBA97EE0F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DEA810E425;
	Mon, 23 Sep 2024 15:25:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ggTjwiZq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7A410E41B;
 Mon, 23 Sep 2024 15:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105099; x=1758641099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7vuhyj4veHwH0xdFxLlDPcBUuP5lbuYNE3XmAVk43ZM=;
 b=ggTjwiZqxyf69jQiitCs30NQ0q/MWR1LeZkEyYP1w15H05hcuOh3cvuf
 JVn8MFZQWNAVW25eCdTYFeM5ARsrQqO2pt/+9wELDDBrCELEYCXPPMDBk
 /GG1E4c5YeswIzvMSuOqdHgyhgf3Xo2GnIbGJKs+5ycCR8gTG9FF76amP
 w7dZjW9fPkTjf+U5j2POmN1V6iVFmwTPQLymjgAe3v1S/CJY1FRme+H9f
 5FIQ0cFlkA/lklZ8Th1kO8/r9ner8HEKxLTegOxXGrGvys8vQs0gCZCcm
 KrDs3CDSApuT9ZcMgO4uzqW6AqzFo0G2oUBPGOUV5qTHA89CAJRFxECve w==;
X-CSE-ConnectionGUID: 7yPsnCEBR325g44YR4RPKw==
X-CSE-MsgGUID: f3jCNGKMRL61ZZe2469pyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013436"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013436"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:24:59 -0700
X-CSE-ConnectionGUID: +l9U3A+TS06OFkAzzh3c7w==
X-CSE-MsgGUID: kUoHc9+LQJyNUU2zv0W75w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239554"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:24:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:24:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 1/6] drm/i915/bios: Use drm_dbg_kms() consistently
Date: Mon, 23 Sep 2024 18:24:48 +0300
Message-ID: <20240923152453.11230-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
References: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the few oddball drm_dbg() calls in VBT related code
with drm_dbg_kms() as that is what we generally use for all
display code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index daa4b9535123..b00aad23d6c2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1706,8 +1706,8 @@ parse_mipi_config(struct intel_display *display,
 		return;
 	}
 
-	drm_dbg(display->drm, "Found MIPI Config block, panel index = %d\n",
-		panel_type);
+	drm_dbg_kms(display->drm, "Found MIPI Config block, panel index = %d\n",
+		    panel_type);
 
 	/*
 	 * get hold of the correct configuration block and pps data as per
@@ -2067,8 +2067,8 @@ parse_mipi_sequence(struct intel_display *display,
 		return;
 	}
 
-	drm_dbg(display->drm, "Found MIPI sequence block v%u\n",
-		sequence->version);
+	drm_dbg_kms(display->drm, "Found MIPI sequence block v%u\n",
+		    sequence->version);
 
 	seq_data = find_panel_sequence_block(display, sequence, panel_type, &seq_size);
 	if (!seq_data)
@@ -2114,7 +2114,7 @@ parse_mipi_sequence(struct intel_display *display,
 
 	fixup_mipi_sequences(display, panel);
 
-	drm_dbg(display->drm, "MIPI related VBT parsing complete\n");
+	drm_dbg_kms(display->drm, "MIPI related VBT parsing complete\n");
 	return;
 
 err:
@@ -2771,9 +2771,9 @@ static bool child_device_size_valid(struct intel_display *display, int size)
 	expected_size = child_device_expected_size(display->vbt.version);
 	if (expected_size < 0) {
 		expected_size = sizeof(struct child_device_config);
-		drm_dbg(display->drm,
-			"Expected child device config size for VBT version %u not known; assuming %d\n",
-			display->vbt.version, expected_size);
+		drm_dbg_kms(display->drm,
+			    "Expected child device config size for VBT version %u not known; assuming %d\n",
+			    display->vbt.version, expected_size);
 	}
 
 	/* Flag an error for unexpected size, but continue anyway. */
@@ -3143,14 +3143,14 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 		goto err_unmap_oprom;
 
 	if (sizeof(struct vbt_header) > size) {
-		drm_dbg(display->drm, "VBT header incomplete\n");
+		drm_dbg_kms(display->drm, "VBT header incomplete\n");
 		goto err_unmap_oprom;
 	}
 
 	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
 	if (vbt_size > size) {
-		drm_dbg(display->drm,
-			"VBT incomplete (vbt_size overflows)\n");
+		drm_dbg_kms(display->drm,
+			    "VBT incomplete (vbt_size overflows)\n");
 		goto err_unmap_oprom;
 	}
 
-- 
2.44.2

