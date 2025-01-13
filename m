Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDD6A0B435
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2549410E62F;
	Mon, 13 Jan 2025 10:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JrSMQByv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49BDF10E62E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736763107; x=1768299107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=23p7VnlvVyeBclFC97YSLtj75yNZ/wvlmqcvIjSrjiY=;
 b=JrSMQByvl/bIUetQWYzFtFUdAE/nHZrJ9J7yBUH/OuI+NoJ6p0L49gtB
 CNuAZTgPSTssWb/ay0wLBd1KT+oHVPO54m+JeiRpJ6pBkeS25/B9DG+1/
 7sHmDftxNoJ09BFnX9kKwtcJ0dp6vuXwEsyur6BNHwQAPgla0NnCEGhoo
 xi/BxFaaBhSp04WmGvMS7jdGFRbytjnF64SE8/K9n0qfT3m2/OwoRFfQr
 YieOGsxCJRionijgd8DpXs+3X982NIXj911lV8u0aBCK++8O2MXSueWhb
 3YM9JoFFqbmEvCB+3Srhn/lQ5qzso4DSqilPd5Htvk3wu/8eIlc49/83/ g==;
X-CSE-ConnectionGUID: ESqsU/uZTci8hySxogFhSw==
X-CSE-MsgGUID: qSilfo2jSvuhmeP2USIpBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="40696341"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40696341"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:11:26 -0800
X-CSE-ConnectionGUID: iWXqsi9wToiH/XfaHcIIZA==
X-CSE-MsgGUID: 3q50GUuzSAqUTpO2LwbcYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127689550"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:11:23 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH 1/2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
Date: Mon, 13 Jan 2025 15:29:11 +0530
Message-Id: <20250113095912.356147-2-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250113095912.356147-1-sk.anirban@intel.com>
References: <20250113095912.356147-1-sk.anirban@intel.com>
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

Fix the frequency calculation by ensuring it uses the raw frequency only.
Update live_rps_power test to use the correct frequency values for logging
and comparison.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..32a4b0aa710a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1115,7 +1115,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
 	for (i = 0; i < 5; i++)
 		x[i] = __measure_power(5);
 
-	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
+	*freq = (*freq + read_cagf(rps)) / 2;
 
 	/* A simple triangle filter for better result stability */
 	sort(x, 5, sizeof(*x), cmp_u64, NULL);
-- 
2.34.1

