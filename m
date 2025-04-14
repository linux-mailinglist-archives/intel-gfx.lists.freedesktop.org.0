Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B410A87F06
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 13:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5419310E595;
	Mon, 14 Apr 2025 11:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qu/M++j6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F1010E587;
 Mon, 14 Apr 2025 11:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744630208; x=1776166208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5aarBBibO8SqHPs36G31NNSRSfOFJDC2AdSz/S7UXuw=;
 b=Qu/M++j6Mmo6SbN7a6xwPbaU/uLygfHfDdveZ3pCF49q9JuDCxoABblW
 1DsicBcbEswxXOULlWyNu15ziwluicqIrhVPrWPkPZBNBMj/qUVSF3O17
 +FwZWTtI8kMa0dBIhtQHOjL7J4a44Lr3u7oHNUYvji3TuM5vijPzgIM4O
 gLyeU97FZ2//xEafvJQ6GIjtK98Tcl0/SQ8MB/hoPVAIW30FgZksHVzyd
 n+EN7iO5xtkX8aaw+4hSTL3m0YzrSDxVgmNVCxjzoqb588DndgdY9vap7
 Q7SMQP4jW/Z4EG6bJs5Z/HfBaagf0s3CFFHe9usn6BvtzyJZ1xL8RGZM3 w==;
X-CSE-ConnectionGUID: nPFD2NuRS3K8PWRTkQUdSA==
X-CSE-MsgGUID: nVIw4VQXQ7yNayIlYo5ELQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57481061"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57481061"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:08 -0700
X-CSE-ConnectionGUID: BzigFp9sRfqVhrn4tbeRLQ==
X-CSE-MsgGUID: p3VfueFjR462BmisAff7IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129761691"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 04:30:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI v3 3/6] drm/i915: stop recording IER in error capture
Date: Mon, 14 Apr 2025 14:29:45 +0300
Message-Id: <6f1130a3d0d13e08a73ba381225ab978b22a9345.1744630147.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
References: <cover.1744630147.git.jani.nikula@intel.com>
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

