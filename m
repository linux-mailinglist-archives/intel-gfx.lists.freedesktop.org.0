Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 594FFAEA567
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 20:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29E210E8EF;
	Thu, 26 Jun 2025 18:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m8FEe+n3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2439710E2F0;
 Thu, 26 Jun 2025 18:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750962566; x=1782498566;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Lp4mxzDInK36sHolafKQ+Jk7x1/+l/ov5hQEFwhdZ/8=;
 b=m8FEe+n3ncUm8iLMCuOQFuTO3HkCqnM8xCk76ekBfn+yik8imJZ+mfDi
 megvC8c/NMqHwh9WwxHXBrMDQBxFu3ic+34LdkmO3cHZRQ6ADnx3bWW30
 m7ni/vIeNWuXzBABem3h/BzwbQkx5q72Yf49ptByzRgIIvPWpt5yJ2pbE
 kqzV89p6y4giYD8Uj9k5qzqCPmC1KdEkSOqmlYLxI4I17sDQnSyaJ5DSQ
 zGy+m8m6gKAKixUjt1nORrqNDiTDYbQ6NAD1+P5fcPYuF/sH8fW1iYy2a
 Gm7PCqQUMz0QoR1ODx1mRHRJK93lCYZHcwX3AoHgcVOM84pL2Pbt1kXTx g==;
X-CSE-ConnectionGUID: NUjOwoAFQVqTMTeY5Stwmw==
X-CSE-MsgGUID: 9wbvLYvDQESC8o4ceZH8bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="64332587"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="64332587"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 11:29:25 -0700
X-CSE-ConnectionGUID: l7MvYrgjR++SWmlvxN5XIw==
X-CSE-MsgGUID: m6UrAtI1To6bz4C4N5dCpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="153089697"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 11:29:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/power: use intel_de_wait_for_clear() instead of
 wait_for()
Date: Thu, 26 Jun 2025 21:29:18 +0300
Message-Id: <20250626182918.2185836-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Prefer the register read specific wait function over i915 wait_for_us().

The existing condition is quite complicated. Simplify by checking for
requesters first, and determine timeout based on that. Refresh
requesters in case of timeouts, should one have popped up during the
wait. The downside is that this does not cut the wait short if
requesters show up *during* the wait, but we're talking about 1 ms so
shouldn't be an issue.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c   | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 5c9ca8141fcc..9d310a33e701 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -308,8 +308,8 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	bool disabled;
 	u32 reqs;
+	int ret;
 
 	/*
 	 * Bspec doesn't require waiting for PWs to get disabled, but still do
@@ -320,12 +320,17 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
 	 * Skip the wait in case any of the request bits are set and print a
 	 * diagnostic message.
 	 */
-	wait_for((disabled = !(intel_de_read(display, regs->driver) &
-			       HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
-		 (reqs = hsw_power_well_requesters(display, regs, pw_idx)), 1);
-	if (disabled)
+	reqs = hsw_power_well_requesters(display, regs, pw_idx);
+
+	ret = intel_de_wait_for_clear(display, regs->driver,
+				      HSW_PWR_WELL_CTL_STATE(pw_idx),
+				      reqs ? 0 : 1);
+	if (!ret)
 		return;
 
+	/* Refresh requesters in case they popped up during the wait. */
+	reqs = hsw_power_well_requesters(display, regs, pw_idx);
+
 	drm_dbg_kms(display->drm,
 		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
 		    intel_power_well_name(power_well),
-- 
2.39.5

