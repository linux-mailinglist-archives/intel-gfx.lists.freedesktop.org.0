Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454BFAE7F69
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598D310E6D5;
	Wed, 25 Jun 2025 10:33:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AxW1BR3R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C85610E0D3;
 Wed, 25 Jun 2025 10:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847614; x=1782383614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n8qwKqGbM6yvQsmFKmW4/su7UIpEYTH4JIfmm0ENnsQ=;
 b=AxW1BR3RonYnhfkhV6WL5HLuXEbQ7ad2CaTbNV1eBugpNbLIbRveE04o
 3nbAPFNOzjlUaaY6nh5YRqNxlq1o2c6hPYxU0VaeywBvFtL0cW5HuUx2Z
 czrpnRdUG9HDz0PJFz2uxJis/4CZHs7AQnsfYF4OxfRjjltT9Auykw+f4
 WWJIZ79Y1nksipJ4KYwPSN6aiKV6r/KfSM5lmLrukEB3rKa6JtMGJKQIp
 Rzzrz5A1VFiPGL7nPW+DUWBispBa4E5EQGWhheHNYmQaybFw5tMtl8AQS
 Tsth7KSHAtwnDvR8q0kQDbYMtS05yCOAJb1d5R/r7+d4peofZNLHf5kI2 g==;
X-CSE-ConnectionGUID: QYGAeSVHT2CzGkt1Phuajw==
X-CSE-MsgGUID: ptkcdOG8QRWZo5Pw7RhDCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830314"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830314"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:34 -0700
X-CSE-ConnectionGUID: jgA2WAEgTdyhz3HJsE8etg==
X-CSE-MsgGUID: Iddp47h/QVOS+YOmpIba5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151799030"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 11/16] drm/i915/cdclk: abstract intel_cdclk_bw_min_cdclk()
Date: Wed, 25 Jun 2025 13:32:29 +0300
Message-Id: <d07499174ebe55fa8fb98d4cb5ff541b6f5ec95b.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Add intel_cdclk_bw_min_cdclk() helper to avoid looking at struct
intel_cdclk_state internals outside of intel_cdclk.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 5942a3bae32c..d29a755612de 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1468,12 +1468,12 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	 * requirements. This can reduce back and forth
 	 * display blinking due to constant cdclk changes.
 	 */
-	if (new_min_cdclk <= cdclk_state->bw_min_cdclk)
+	if (new_min_cdclk <= intel_cdclk_bw_min_cdclk(cdclk_state))
 		return 0;
 
 	drm_dbg_kms(display->drm,
 		    "new bandwidth min cdclk (%d kHz) > old min cdclk (%d kHz)\n",
-		    new_min_cdclk, cdclk_state->bw_min_cdclk);
+		    new_min_cdclk, intel_cdclk_bw_min_cdclk(cdclk_state));
 	*need_cdclk_calc = true;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 1fc82844458b..baec4042e4b6 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3844,3 +3844,8 @@ int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe
 {
 	return cdclk_state->min_cdclk[pipe];
 }
+
+int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->bw_min_cdclk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index ef6ad9d04c20..fe1a1f1c1900 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -99,5 +99,6 @@ void intel_cdclk_debugfs_register(struct intel_display *display);
 
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
+int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.39.5

