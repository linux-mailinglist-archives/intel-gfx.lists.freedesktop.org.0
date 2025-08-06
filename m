Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC0B1CA18
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC3610E7B6;
	Wed,  6 Aug 2025 16:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oIVfMS2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81E2910E7B6;
 Wed,  6 Aug 2025 16:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499354; x=1786035354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CAT0oOKWiAp1nXOLFBbVKZjS4CqWHtLEkWUMtRFf3Ug=;
 b=oIVfMS2ZN5T0MQPVkHeZ8VOstndb7cyijvGnNjQcKNgdmskUEFAZe4Be
 +dDOkGlUXo0FIes5WjHPSR0LvCpbf3u1grEpPwHZOXEjLbJYX0Dvb/Z8b
 Iws6Q3GbqgTHDVBxCLG/K7MaJQGuBiv9YJgjXnalzurQWGlgZOTg6NVW1
 hnFa7RySpXqv+AXxiwBZccq2uDDvyU9L7xXC74JAB/WJWXydAxYZQ19S9
 H4GWY93JyLSpoy8sPeI01SrswIpD5lx+ZzGB8AJyyzYTNtDxSeIyPPuC7
 y/4ov7PpxYNnHDHrIAumoVBY6Ih0ze7gW52rvAlidWCHjJ+DkdOhZUeMy w==;
X-CSE-ConnectionGUID: VOcLxQAdS7+/TW35V49/Jg==
X-CSE-MsgGUID: c4X/FX0iRUSYsqP79lMNEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60455949"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60455949"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:54 -0700
X-CSE-ConnectionGUID: Rx5bD5cFRsmZ9IrBRY4IoQ==
X-CSE-MsgGUID: ea+FBDhkRwWNq/HPUfWYcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164757"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/15] drm/i915/dram: pass display to macros that expect
 display
Date: Wed,  6 Aug 2025 19:55:08 +0300
Message-Id: <ee8bba57924629f97945b9cf05727ae7c0dfb8fd.1754499175.git.jani.nikula@intel.com>
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

Underneath, the HAS_DISPLAY() and DISPLAY_VER() macros really expect
struct intel_display. Switch to it in preparation for removing the
transitional __to_intel_display() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 3eeaabdf59e8..b3c407cc200f 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -710,13 +710,14 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
 
 int intel_dram_detect(struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
 	struct dram_info *dram_info;
 	int ret;
 
 	detect_fsb_freq(i915);
 	detect_mem_freq(i915);
 
-	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
+	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(display))
 		return 0;
 
 	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
@@ -731,7 +732,7 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	 */
 	dram_info->wm_lv_0_adjust_needed = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
 
-	if (DISPLAY_VER(i915) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		ret = xelpdp_get_dram_info(i915, dram_info);
 	else if (GRAPHICS_VER(i915) >= 12)
 		ret = gen12_get_dram_info(i915, dram_info);
-- 
2.39.5

