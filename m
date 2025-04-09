Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D28A827A8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C9910E8EC;
	Wed,  9 Apr 2025 14:24:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emev7K8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A550F10E8EC;
 Wed,  9 Apr 2025 14:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208649; x=1775744649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=52rZAs5G8ASFzC8zhup4DPqWCAoDXYg/wesxxcHjn1A=;
 b=emev7K8EojhWDj5YPmgUGV9fUe0b11eilk7G4ktQWVLtT8xxwwOYzaVH
 LIIguyJti3LAq+9ghCnf4snD3h3qJF64kSZ4yOk6FMBgFeE+GEiktf8EB
 F1hlERBxL1gd53FR3ZDUwZE57C5bMgBX1eSfw6mFmKrnJV2nfRoX4Lg4n
 vkPeLzddcqlT7WHs1pw1XgSebya0MVUDc+RRjikswgG/9g3r37tZxz595
 FFyYELzqet+gGuojVMxwtUlPACkHsQhAijOBWw2alsijgDaXakJlLtwgi
 ocMSw5EBaDfjzMTM+aGkNxd7z/pzVIDne+E011Kh/aj42p+aOiR/pZwC3 w==;
X-CSE-ConnectionGUID: Z627NZp0Tre4CTr0r8A1kw==
X-CSE-MsgGUID: iLu+5p/FSzOsmBu2MWDnOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49534311"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49534311"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:24:08 -0700
X-CSE-ConnectionGUID: NImHE5C8Q7ySu+JS4rI3fA==
X-CSE-MsgGUID: gnyLYAg+RbWtyQp3+bgV6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133591108"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:24:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 3/5] drm/i915: stop recording IER in error capture
Date: Wed,  9 Apr 2025 17:23:45 +0300
Message-Id: <d91b9668369bec152cea2576c45acf15db809df5.1744208554.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744208554.git.jani.nikula@intel.com>
References: <cover.1744208554.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

With pre-ilk GEN2_IER capture moved to gtier[0], the remaining IER
aren't all that relevant. Stop capturing them.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 8 --------
 drivers/gpu/drm/i915/i915_gpu_error.h | 1 -
 2 files changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 64c760e7b7ee..50cd0c433e6d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -729,7 +729,6 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
 static void err_print_gt_display(struct drm_i915_error_state_buf *m,
 				 struct intel_gt_coredump *gt)
 {
-	err_printf(m, "IER: 0x%08x\n", gt->ier);
 	err_printf(m, "DERRMR: 0x%08x\n", gt->derrmr);
 }
 
@@ -1775,13 +1774,6 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
 
 	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)
 		gt->derrmr = intel_uncore_read(uncore, DERRMR);
-
-	if (GRAPHICS_VER(i915) >= 8)
-		gt->ier = intel_uncore_read(uncore, GEN8_DE_MISC_IER);
-	else if (IS_VALLEYVIEW(i915))
-		gt->ier = intel_uncore_read(uncore, VLV_IER);
-	else if (HAS_PCH_SPLIT(i915))
-		gt->ier = intel_uncore_read(uncore, DEIER);
 }
 
 /* Capture all other registers that GuC doesn't capture. */
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 749e1c55613e..ac55603a81d7 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -146,7 +146,6 @@ struct intel_gt_coredump {
 	/* Generic register state */
 	u32 eir;
 	u32 pgtbl_er;
-	u32 ier;
 	u32 gtier[6], ngtier;
 	u32 forcewake;
 	u32 error; /* gen6+ */
-- 
2.39.5

