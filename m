Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E67939FA8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 13:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD2010E568;
	Tue, 23 Jul 2024 11:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W2i3SVUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC2510E5BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 11:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721733691; x=1753269691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6O41UvG4l7V+t7nRXx40UeYM6U/UCRCgh9M8FQpdwEA=;
 b=W2i3SVUzs7SlG51qXYFM9h9hyuupaw28TofnROtxfIp49uheArpGVWLr
 mQMH7W7TfQ7LFVHdl4nxwqnxRbMkAMLXnFUIdjm7/lfVSuUgggDx1qHrx
 A1PKeW3K1rldjmhU5U7CvO0Z/A+205GJyjefVQjXiX6P+CgBUGTfnLL+s
 OfMP7Nj+rFHQXPGmLJAvBd0tS1d3U/Ys3x7aK9mV62MjrdV/GcAa1hBmJ
 uYQyWy0rr6vIRFB5KdawcFlF5QeJrtPT/g4IOUSy3wPKwu+a6UAhMeZga
 +iCpm0rZ0BWNqtun/jqmg65E+pMsNOBQkRHOoWB6i3ztxb9g52WoFIEPH g==;
X-CSE-ConnectionGUID: Fguvna04SKy5S/4iuHgo5w==
X-CSE-MsgGUID: adaqfvrnT6+cRyRxNhm7hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19225377"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19225377"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:30 -0700
X-CSE-ConnectionGUID: 0QJeYbZoT0OhK5HDl51KPw==
X-CSE-MsgGUID: 0RRvxTSRQhGoIuaUDcqqOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52267433"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 04:21:29 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [RFC PATCH 2/9] drm/i915/gt: Rename "cslises" with "cslice_mask"
Date: Tue, 23 Jul 2024 13:20:39 +0200
Message-ID: <20240723112046.123938-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240723112046.123938-1-andi.shyti@linux.intel.com>
References: <20240723112046.123938-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
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

drm/i915/gt: Rename "cslises" variable to clarify its purpose

The "cslises" variable stores the mask of the CCS engines after
calculating the fused ones and before setting the CCS mode.

Since it represents a mask and not the number of CCS slices,
rename it to reflect its actual purpose to avoid confusion.

No functional changes intended.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 3b740ca25000..ea908dbec2ab 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -889,7 +889,7 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 		 * Store the number of active cslices before
 		 * changing the CCS engine configuration
 		 */
-		gt->ccs.cslices = CCS_MASK(gt);
+		gt->ccs.cslice_mask = CCS_MASK(gt);
 
 		/* Mask off all the CCS engine */
 		info->engine_mask &= ~GENMASK(CCS3, CCS0);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
index 3c62a44e9106..109b13b4017d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
@@ -19,7 +19,7 @@ unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
 
 	/* Build the value for the fixed CCS load balancing */
 	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
-		if (gt->ccs.cslices & BIT(cslice))
+		if (gt->ccs.cslice_mask & BIT(cslice))
 			/*
 			 * If available, assign the cslice
 			 * to the first available engine...
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index cfdd2ad5e954..3c9fae53871a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -212,7 +212,7 @@ struct intel_gt {
 		 * Mask of the non fused CCS slices
 		 * to be used for the load balancing
 		 */
-		intel_engine_mask_t cslices;
+		intel_engine_mask_t cslice_mask;
 	} ccs;
 
 	/*
-- 
2.45.2

