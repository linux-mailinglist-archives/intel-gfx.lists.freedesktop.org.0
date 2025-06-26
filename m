Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC689AEA669
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E07210E8E4;
	Thu, 26 Jun 2025 19:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gaLavPkA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D90110E8E4;
 Thu, 26 Jun 2025 19:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750966000; x=1782502000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+/rtzYaFDYQ2b/UjMDyi33QM1P2Qkc9pqYRx4Nhuk4s=;
 b=gaLavPkAEGrIKSUivkSQzTFM/pAT6DPNxHnFBV6zk35CLxVIrIgWqCQb
 BHAKptjdjx4+mDols4q+4kb74mnQBBt36x5VvHBRvagLJzdYDpPPZCyyk
 BH0LuRASBWYiI1LtqX/nqZ66QFW/y0AZPy4cuiguVDERaPV8Gpd0S1il5
 kvF/nnYXVN0IoRQga98wXmeCcCnIDOcede5Vn7uYWs8hQuAnUTjDiqfzK
 ZQMNBIbuDcyNaPSFNbCQyoqvtdcj/RXrNFecRYb+O84h6wFOufeD2TNQF
 /jgk6rCBwRFLfIny0SMePEu/Q1zqy2CT7JUgCIlyqQRKUZhO/jgj1YOwp A==;
X-CSE-ConnectionGUID: v0TQExjFTJ6azRtMWnQurA==
X-CSE-MsgGUID: 5VyEl5nAQP6VXRpejGt8GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53240493"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53240493"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:26:39 -0700
X-CSE-ConnectionGUID: VJ0vQlr4QC6WJ7RzHvq6AA==
X-CSE-MsgGUID: novVRqx0R8y18Rlp0e/JNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="158344798"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:26:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [PATCH v2] drm/i915/power: use intel_de_wait_for_clear() instead of
 wait_for()
Date: Thu, 26 Jun 2025 22:26:32 +0300
Message-Id: <20250626192632.2330349-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250626182918.2185836-1-jani.nikula@intel.com>
References: <20250626182918.2185836-1-jani.nikula@intel.com>
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

v2: Refresh requesters only if there were none before (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c  | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 4a876fa815bd..48cac225a809 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -320,8 +320,8 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	bool disabled;
 	u32 reqs;
+	int ret;
 
 	/*
 	 * Bspec doesn't require waiting for PWs to get disabled, but still do
@@ -332,12 +332,18 @@ static void hsw_wait_for_power_well_disable(struct intel_display *display,
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
+	if (!reqs)
+		reqs = hsw_power_well_requesters(display, regs, pw_idx);
+
 	drm_dbg_kms(display->drm,
 		    "%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\n",
 		    intel_power_well_name(power_well),
-- 
2.39.5

