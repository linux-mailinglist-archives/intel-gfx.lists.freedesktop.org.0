Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0138A84630
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 16:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3316710E9D7;
	Thu, 10 Apr 2025 14:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1qa0cp3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D775510E9D4;
 Thu, 10 Apr 2025 14:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744295057; x=1775831057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O1YY0Fy4d2Vre7eyOrNi8SJsHqzyPYjkkFLslLR1iPU=;
 b=c1qa0cp3HxEOtoISMT1mpkA+Slzfixa4GqRSkV4Oz0jEYeOFWYP8SuEH
 z08SE85H4GM9sufF9KcYs561rscBTrM/hA5SSSMxAyOYXvDXZ4fCFvZVP
 Rn3ytFyVLBuJScywoMApETKNFFVcBDC4lv06KTtNKeCtnMdXqmtdIuMqT
 7hZY+NFWFdz0p/aonHZto054h5NSfligHih47trK0X5OqkzmQj/+bVNS9
 opKPEIexMReimry45eMITkp5ygNgFYpBxY3ZqKekble3bexDl/e9sfKSL
 9UeojxtPmcoPWnEhN73iyIhsH9egxI9l5d94oksHfaj06uJOUZ6htYUbT w==;
X-CSE-ConnectionGUID: F0Uhxky0Q0C4vLjN3ezgrw==
X-CSE-MsgGUID: 4u56r7Q/T1iMPZfQUGl7TQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45832508"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45832508"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:24:16 -0700
X-CSE-ConnectionGUID: MsdhTby2RAS6PIe+5Oip1g==
X-CSE-MsgGUID: 05O4ihIQRMCcK5TzPkS2rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="133036838"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 07:24:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/debugfs: remove i915_display_capabilities
Date: Thu, 10 Apr 2025 17:24:04 +0300
Message-Id: <241c5886cf2e95c694a693bb1b1953f6ae15390e.1744295009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744295009.git.jani.nikula@intel.com>
References: <cover.1744295009.git.jani.nikula@intel.com>
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

Turns out we've added two similar debugfs files. Consolidate on
intel_display_caps as it has more info and a driver independent name.

IGT has already switched over to intel_display_caps in IGT commit
cf837fc17d6c ("lib/dsc: use intel_display_caps instead of
i915_display_capabilities").

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8f1f95637e09..d43ae6729f21 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -610,17 +610,6 @@ static int i915_display_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_display_capabilities(struct seq_file *m, void *unused)
-{
-	struct intel_display *display = node_to_intel_display(m->private);
-	struct drm_printer p = drm_seq_file_printer(m);
-
-	intel_display_device_info_print(DISPLAY_INFO(display),
-					DISPLAY_RUNTIME_INFO(display), &p);
-
-	return 0;
-}
-
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
@@ -817,7 +806,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
 	{"i915_power_domain_info", i915_power_domain_info, 0},
 	{"i915_display_info", i915_display_info, 0},
-	{"i915_display_capabilities", i915_display_capabilities, 0},
 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
-- 
2.39.5

