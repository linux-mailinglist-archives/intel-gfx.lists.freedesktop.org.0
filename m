Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 196FFB29ED8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB0B10E421;
	Mon, 18 Aug 2025 10:07:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5hAribm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B1110E421;
 Mon, 18 Aug 2025 10:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755511665; x=1787047665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Eb+Rq/mZCeHqWxnwpE44HrDKtCHb4+4zRq3FFrHOlaU=;
 b=X5hAribm9OSV71ro9GxAcRGzCrS4AZ7bTd/IzY/hRtgItunUOUKZXbR0
 VzokcUZpue+cnY5XkC//DqLjKTyCS1FkhJBvhqLaBYbPdS8dn0bHpL5SU
 7XF2R/0WSnubAreWAD7ekKKUnxI1Y2+OV0K9kB+Loj00a5oaYDbc75iwg
 rSflrxg9nkQ7Ugr4MOL0WNbT8laLfPPZMvOueRI26pFZKVJvGx9wh9CTy
 E7gcsFtfQeoeNcXEqm0H76bU8W/ZHQo7W+GgjFvXr1d0McgD8+0SvssA4
 Ggp7o/q0vX5daOfUQFWjvcWGzR+L3a6igtBREvm6SuUKQmEhpUZM6tqhC g==;
X-CSE-ConnectionGUID: AL5UgcXUQgaVHPMTqo7Yaw==
X-CSE-MsgGUID: NKJzulqqQUCLyq9gk4RCAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69105549"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69105549"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:44 -0700
X-CSE-ConnectionGUID: 88xVSkzzRE6M0SaNy6/DJg==
X-CSE-MsgGUID: vnaPlNBISv61KmNQuuytJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171778819"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [CI 2/5] drm/i915/dram: add intel_mem_freq()
Date: Mon, 18 Aug 2025 13:07:25 +0300
Message-ID: <602103b290a92ba26d581eeb595ba5e707eb5bc4.1755511595.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755511595.git.jani.nikula@intel.com>
References: <cover.1755511595.git.jani.nikula@intel.com>
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

Add a more generic intel_mem_freq() function instead of platform
specific ones. Expose it for future use outside of intel_dram.c.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++++++++-----
 drivers/gpu/drm/i915/soc/intel_dram.h |  1 +
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 366891cda6b9..02b8fa784525 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -136,16 +136,23 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
 	return 0;
 }
 
-static void detect_mem_freq(struct drm_i915_private *i915)
+unsigned int intel_mem_freq(struct drm_i915_private *i915)
 {
 	if (IS_PINEVIEW(i915))
-		i915->mem_freq = pnv_mem_freq(i915);
+		return pnv_mem_freq(i915);
 	else if (GRAPHICS_VER(i915) == 5)
-		i915->mem_freq = ilk_mem_freq(i915);
+		return ilk_mem_freq(i915);
 	else if (IS_CHERRYVIEW(i915))
-		i915->mem_freq = chv_mem_freq(i915);
+		return chv_mem_freq(i915);
 	else if (IS_VALLEYVIEW(i915))
-		i915->mem_freq = vlv_mem_freq(i915);
+		return vlv_mem_freq(i915);
+	else
+		return 0;
+}
+
+static void detect_mem_freq(struct drm_i915_private *i915)
+{
+	i915->mem_freq = intel_mem_freq(i915);
 
 	if (IS_PINEVIEW(i915))
 		i915->is_ddr3 = pnv_is_ddr3(i915);
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 09a7a581d949..5ba75e279e84 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -34,6 +34,7 @@ struct dram_info {
 void intel_dram_edram_detect(struct drm_i915_private *i915);
 int intel_dram_detect(struct drm_i915_private *i915);
 unsigned int intel_fsb_freq(struct drm_i915_private *i915);
+unsigned int intel_mem_freq(struct drm_i915_private *i915);
 const struct dram_info *intel_dram_info(struct drm_device *drm);
 
 #endif /* __INTEL_DRAM_H__ */
-- 
2.47.2

