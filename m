Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3295AB1CA1F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD73B10E7C0;
	Wed,  6 Aug 2025 16:56:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAaeGN+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E767D10E7BF;
 Wed,  6 Aug 2025 16:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499382; x=1786035382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CGuafBaGro14B+roINML81oSv12F/0r/srBkdCnthqQ=;
 b=bAaeGN+wvqFpoz8rkDEDS6QbFbBrjNM5bC/J7Mqk0ffVkb1Wly4JlflA
 eJkiVePNlibPfQwRHmHoQ/05CU6qMJOnrJrdaLnmV5slO3frQ9EFz2lie
 1MoJ3hqDviAf4FkgACs/5W239G046cemo6GcmiNbwuxv16xGrROVGFotG
 Yb684nZ5oHBJ63TNylC+2Nx+NFPJTlzD1DIuLd9xjOmTzhcbQNHD6+6vf
 B76ts5Eic6L+BCUW8mxrs02NZVDTE1rcGb2f87uML4diT4UWEqJA9yofl
 FberOZJN+YGVZpoqeamjC2GfzLurcfzEHZd5kpASOx4qPpUn0fEE1ym/n Q==;
X-CSE-ConnectionGUID: OEkfgr/SR8m84dFV+1esKQ==
X-CSE-MsgGUID: 2B+8htHVTnSMPl7SW1xeLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60456009"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60456009"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:19 -0700
X-CSE-ConnectionGUID: ySIMMG5DQQqZO5jfB+JmXw==
X-CSE-MsgGUID: AG1m6mu9S9qRe4HnWHFGPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164855"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/15] drm/i915/uncore: pass display to
 HAS_FPGA_DBG_UNCLAIMED()
Date: Wed,  6 Aug 2025 19:55:13 +0300
Message-Id: <e8cda779e192095dfa35d618f88bf7bfa526ac06.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Underneath, HAS_FPGA_DBG_UNCLAIMED() really expects struct
intel_display. Switch to it in preparation for removing the transitional
__to_intel_display() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c           | 3 ++-
 drivers/gpu/drm/i915/selftests/intel_uncore.c | 8 +++++---
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index c8e29fd72290..4ccba7c8ffb3 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2502,6 +2502,7 @@ static int sanity_check_mmio_access(struct intel_uncore *uncore)
 int intel_uncore_init_mmio(struct intel_uncore *uncore)
 {
 	struct drm_i915_private *i915 = uncore->i915;
+	struct intel_display *display = i915->display;
 	int ret;
 
 	ret = sanity_check_mmio_access(uncore);
@@ -2536,7 +2537,7 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
 	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.read_fw_domains);
 	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.write_fw_domains);
 
-	if (HAS_FPGA_DBG_UNCLAIMED(i915))
+	if (HAS_FPGA_DBG_UNCLAIMED(display))
 		uncore->flags |= UNCORE_HAS_FPGA_DBG_UNCLAIMED;
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
index 41eaa9b7f67d..58bcbdcef563 100644
--- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
+++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
@@ -277,13 +277,15 @@ static int live_forcewake_domains(void *arg)
 #define FW_RANGE 0x40000
 	struct intel_gt *gt = arg;
 	struct intel_uncore *uncore = gt->uncore;
+	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = i915->display;
 	unsigned long *valid;
 	u32 offset;
 	int err;
 
-	if (!HAS_FPGA_DBG_UNCLAIMED(gt->i915) &&
-	    !IS_VALLEYVIEW(gt->i915) &&
-	    !IS_CHERRYVIEW(gt->i915))
+	if (!HAS_FPGA_DBG_UNCLAIMED(display) &&
+	    !IS_VALLEYVIEW(i915) &&
+	    !IS_CHERRYVIEW(i915))
 		return 0;
 
 	/*
-- 
2.39.5

