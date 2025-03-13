Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 166D5A5F74C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09F610E8AB;
	Thu, 13 Mar 2025 14:09:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UXQERbhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730C810E8A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874972; x=1773410972;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O0YcsJEmtsT0aEL0HTzjQgbqkacRWcNHMGEFOo9z+ys=;
 b=UXQERbhgxbGATfqSadHGtYB03zmbSpUgYr6XATgKrnZ/V0HufySEKZCB
 2qkrmSkedtz8PMKeIa9AdbVYrEAnQuaaT6dSPCVBCaP9ZC/1gQAkjQK0k
 rOJ3nDsqrC9QOZYIH1oz9Ja8DEUZnJVAPnq1acuxMfPM57a+G7XI9qlp+
 rfClK8olcRI9vtzSmZVbTlAc5cswECPEoIE6G/YGI50VfBQE7HMgTR5/k
 9yQTqVZFsHMNS9YUNAOP8jr1UcPnyyIhrNY4YN0A4HwrD3SAbYR0k36LB
 4UWkjkQyOQ9cS1o7ANefJ/V8DpGBYCVHaCyO+oS9rGbAZrkHi+OwzmoiL g==;
X-CSE-ConnectionGUID: yFtSqAf5ScGb3g0Qh+RV3w==
X-CSE-MsgGUID: TOJwQkXeS1e4e1eQksu3YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42855011"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42855011"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:09:04 -0700
X-CSE-ConnectionGUID: DpsMgldCRuu6FOkdTSnTtA==
X-CSE-MsgGUID: QJr0bdW8Qzaez6TgrpwQpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138441"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:09:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:09:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/10] drm/i915: Lookup the memory region first in the BIOS FB
 takeover
Date: Thu, 13 Mar 2025 16:08:36 +0200
Message-ID: <20250313140838.29742-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
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

When doing the BIOS FB takeover let's look up the appropriate
memory region first. If it doesn't exist there's not much point
in doing the PTE read/etc either.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 5f75ef4ba3b1..d522da7000ff 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -75,6 +75,15 @@ initial_plane_phys_lmem(struct intel_display *display,
 	dma_addr_t dma_addr;
 	u32 base;
 
+	mem_type = initial_plane_memory_type(i915);
+	mem = intel_memory_region_by_type(i915, mem_type);
+	if (!mem) {
+		drm_dbg_kms(display->drm,
+			    "Initial plane memory region (type %s) not initialized\n",
+			    intel_memory_type_str(mem_type));
+		return false;
+	}
+
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
 
 	dma_addr = intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_local);
@@ -91,15 +100,6 @@ initial_plane_phys_lmem(struct intel_display *display,
 		return false;
 	}
 
-	mem_type = initial_plane_memory_type(i915);
-	mem = intel_memory_region_by_type(i915, mem_type);
-	if (!mem) {
-		drm_dbg_kms(display->drm,
-			    "Initial plane memory region (type %s) not initialized\n",
-			    intel_memory_type_str(mem_type));
-		return false;
-	}
-
 	/*
 	 * On lmem we don't currently expect this to
 	 * ever be placed in the stolen portion.
@@ -133,6 +133,15 @@ initial_plane_phys_smem(struct intel_display *display,
 	dma_addr_t dma_addr;
 	u32 base;
 
+	mem_type = initial_plane_memory_type(i915);
+	mem = intel_memory_region_by_type(i915, mem_type);
+	if (!mem) {
+		drm_dbg_kms(display->drm,
+			    "Initial plane memory region (type %s) not initialized\n",
+			    intel_memory_type_str(mem_type));
+		return false;
+	}
+
 	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
 
 	dma_addr = intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_local);
@@ -149,15 +158,6 @@ initial_plane_phys_smem(struct intel_display *display,
 		return false;
 	}
 
-	mem_type = initial_plane_memory_type(i915);
-	mem = intel_memory_region_by_type(i915, mem_type);
-	if (!mem) {
-		drm_dbg_kms(display->drm,
-			    "Initial plane memory region (type %s) not initialized\n",
-			    intel_memory_type_str(mem_type));
-		return false;
-	}
-
 	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
 		drm_err(display->drm,
 			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
-- 
2.45.3

