Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 268BF7A0022
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F1B10E559;
	Thu, 14 Sep 2023 09:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67A310E559
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694684107; x=1726220107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Ewnt1M86Bepu38wNj/pLseuM1jnxPq/gGrWTfL90cQ=;
 b=eMMY6qZcPvCrPfRC+zOLMGN416Z/bWm72F5Fu+X+N3pM4mcYGHZJH2L1
 yROimCcgxPVzRQqeWxT78w08sC30/Hyfe+ZOcSoEgiV3OOE/FmMAB8Ktt
 mrwgQIprAxm9EVjJqM+KXhKm/z0HcsQ+LCwEesVs7eZ8SCMna08xv4xC6
 82cwrj7iTzFWnGXr4+oM4hwPAcX9ZFec7skUFK4Y1ODPNbzQQyAIaCpVB
 z13AcSlRuF2qnSV6QZJiWvMNRcV362pIRm8HJTF4mGyxOIXAR6cQt0kEQ
 Fs4mdasnDmMoxkJMaFVXYnnyF3Jf2QfgIu7iF8xubGzTkX0OJK5jmyiZA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="409856677"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="409856677"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="773825316"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="773825316"
Received: from haslam-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:35:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 12:34:57 +0300
Message-Id: <a7d53a403822b43c7d78689a10480b47ccc0534d.1694684044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694684044.git.jani.nikula@intel.com>
References: <cover.1694684044.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/fbc: replace GEM_BUG_ON() to
 drm_WARN_ON()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid using GEM_BUG_ON() in display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 817e5784660b..1cb9eec29640 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -333,12 +333,14 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
 
-	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
-					 i915_gem_stolen_node_offset(&fbc->compressed_fb),
-					 U32_MAX));
-	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
-					 i915_gem_stolen_node_offset(&fbc->compressed_llb),
-					 U32_MAX));
+	drm_WARN_ON(&i915->drm,
+		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
+					  i915_gem_stolen_node_offset(&fbc->compressed_fb),
+					  U32_MAX));
+	drm_WARN_ON(&i915->drm,
+		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
+					  i915_gem_stolen_node_offset(&fbc->compressed_llb),
+					  U32_MAX));
 	intel_de_write(i915, FBC_CFB_BASE,
 		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
 	intel_de_write(i915, FBC_LL_BASE,
-- 
2.39.2

