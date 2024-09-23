Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9638997F033
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5AA10E468;
	Mon, 23 Sep 2024 18:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFLLXk/U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C51610E450;
 Mon, 23 Sep 2024 18:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727115134; x=1758651134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KnZKSK5V4knuVONOEVEuaTL7cpEcJbDMM29OhsypUj0=;
 b=eFLLXk/U/WHwe+6nDI9yZKPTpZd0zxXU6zLNJ8recfrPJfazKL+RnhqT
 4K+hl4k4+s30a16hmv4HH71aYFwW2925e8l6WG5I+S4OLOnCnvrn18TmS
 6QDt2wiYnuLwGS+BSmy5lOi5wP+mMRE+u56P5tniRS1wORZ/SG8mCX0gM
 +wvVE84XpSkzuEei+stUBaPslF5dPtX5qk1H+5mZAEZIRFs4Lty80gUTg
 y3JpcnGnPp3QxTYOZrrx0nh4ln0xZh+8EA0oiy8qoLRN6zxVM6RIXOFD8
 DaTyHQnbwh9sCLu58fwRSyZN9MFbQZPUU2kVMnfBWP5f4OLMjkKDsJoF7 w==;
X-CSE-ConnectionGUID: A/ljvvuTSZGA1KF+PDePpw==
X-CSE-MsgGUID: sb18tsLwRQ6b/u9yU/P53g==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29866348"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="29866348"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:12 -0700
X-CSE-ConnectionGUID: W5croTkITb63lquRt6gcpA==
X-CSE-MsgGUID: dIXGM1DDQuee53+f5ZtCqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="70734476"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:12:10 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 15/16] drm/i915/display: Consider ultrajoiner for computing
 maxdotclock
Date: Mon, 23 Sep 2024 23:43:35 +0530
Message-ID: <20240923181336.3303940-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Use the check for ultrajoiner while computing maxdotclock.

v2: Add Check for HAS_UNCOMPRESSED_JOINER. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 22ff3e225140..4c31d398ca4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8189,8 +8189,10 @@ static int max_dotclock(struct drm_i915_private *i915)
 {
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
-	/* icl+ might use joiner */
-	if (HAS_BIGJOINER(i915))
+	if (HAS_ULTRAJOINER(i915))
+		max_dotclock *= 4;
+
+	else if (HAS_UNCOMPRESSED_JOINER(i915) || HAS_BIGJOINER(i915))
 		max_dotclock *= 2;
 
 	return max_dotclock;
-- 
2.45.2

