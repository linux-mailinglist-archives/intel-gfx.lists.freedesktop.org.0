Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E848B40351
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE9D10E6FB;
	Tue,  2 Sep 2025 13:31:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aBicPTay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98AA410E700;
 Tue,  2 Sep 2025 13:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819904; x=1788355904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2vcrn72ztHSyZy+/5NXPN7evfKbf4XesMMM1ckd0hug=;
 b=aBicPTay/v3FBstuqmBkUoLG4pMlNZbBPvrUSaxdhSPuPu6H6STBh/yp
 h/b2IALHLaCkL/3GhQqxqDACGCOLYBvRoaA2N5YUs5bGUziviB1fRbgQu
 8xDdDk5UrXklsjFz3XZ2tf5DB0/SSoWFGMrYOrmaKAuIZuLuvqfRsrFhy
 TbcOriiRXXCXoAdKIDZk9+C2nL+aJe/UTD8guDUY4fo2rYOp2lCoFWX3Z
 aTy9aQ1czsNVbQ/MjUhbGN/OON6GOdcwgXyhZbc1G4C0pSyD5vxv8BcGb
 DbEu9JQ0fZoza3MgMHKJ3oxtQ8vFh8BnheConyRlxXuxalYrMGA8c7Kn2 g==;
X-CSE-ConnectionGUID: 32TKyDx9Qa2/ePdPEahd9Q==
X-CSE-MsgGUID: gVGFW848RPWzdRFci1EJHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736442"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736442"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:44 -0700
X-CSE-ConnectionGUID: LaPqUfAASG+9xnb1cy4wHQ==
X-CSE-MsgGUID: fN/TZoVwTo+uUBiQcairsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587388"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/8] drm/i915/dram: Print memory details even if something
 went wrong
Date: Tue,  2 Sep 2025 16:31:13 +0300
Message-ID: <20250902133113.18778-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
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

Print the memory details even if the detection failed in some way
but we continued the driver initialization anyway. It'll be easier
to debug issues if we at least know what the final results were.

And while at it also print the number of PSF GV points. Previously
we only printed the QGV points.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 38b7dd20b18d..149527827624 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -757,14 +757,15 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
 		    intel_dram_type_str(dram_info->type));
 
-	/* TODO: Do we want to abort probe on dram detection failures? */
-	if (ret)
-		return 0;
-
-	drm_dbg_kms(&i915->drm, "Num qgv points %u\n", dram_info->num_qgv_points);
-
 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
 
+	drm_dbg_kms(&i915->drm, "Num QGV points %u\n", dram_info->num_qgv_points);
+	drm_dbg_kms(&i915->drm, "Num PSF GV points %u\n", dram_info->num_psf_gv_points);
+
+	/* TODO: Do we want to abort probe on dram detection failures? */
+	if (ret)
+		return 0;
+
 	return 0;
 }
 
-- 
2.49.1

