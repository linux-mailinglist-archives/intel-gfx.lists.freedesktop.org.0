Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8473B2D8D8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 11:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AFC10E252;
	Wed, 20 Aug 2025 09:45:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a9FVxN04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F39F10E252
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 09:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755683101; x=1787219101;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w2H80F4eqKty3qvqL+zXC+wGxOsjQTL8ohefq+bAPck=;
 b=a9FVxN04q0DBlEpKVH122+CC2CHB99izutxaR85vMi1CoTIoyYeRkmwI
 ivxQEx4T38c6UdWhQcZ09hoo+4pBNYurvbxXSexhlbwoFaA8ZvaASNN/H
 ux9NEWq7uSjkmMALD5zONdEOWTOWAtMcrnoNFXdsk8XL3pSpseh3NbfU4
 lOtsP+nEVjuAXLF1iuZHGPsU8r2692/zP25VAqmsGUhRZvcul1cYxFgna
 Y2NwMhyEcZGWzkxkXLNxV0JGqDuqo/m10tcht0FFOTJiTk/hA3pWPEiBV
 Zuf6Rhops4xqyHOQKGzhN/2VzBQ/h78UL8uqZzKo9raCx2UlgccxMcikC A==;
X-CSE-ConnectionGUID: CgLnmu2EQZyE9D06VO4Thg==
X-CSE-MsgGUID: RDF/klzWSbeO4B4sOI6GQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="68215006"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="68215006"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:45:00 -0700
X-CSE-ConnectionGUID: z8zaCrvHRJSZCeq6l3+w2w==
X-CSE-MsgGUID: LWiP9iOoTJO0CLVXT7lZow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168490865"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.190.216.83])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:44:58 -0700
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: badal.nilawar@intel.com, anshuman.gupta@intel.com, riana.tauro@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/selftests: Add RPS debug info for power test failure
Date: Wed, 20 Aug 2025 15:15:28 +0530
Message-ID: <20250820094527.467883-2-sk.anirban@intel.com>
X-Mailer: git-send-email 2.43.0
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

Add debug logging to show RPS frequency configuration when the
live_rps_power selftest fails to conserve power at lower frequencies.
This helps diagnose frequency scaling issues by showing max_freq,
rp0_freq, and max_freq_softlimit values.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 73bc91c6ea07..4012213ab1b7 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1216,6 +1216,11 @@ int live_rps_power(void *arg)
 		if (11 * min.power > 10 * max.power) {
 			pr_err("%s: did not conserve power when setting lower frequency!\n",
 			       engine->name);
+			pr_debug("%s: RPS Debug - max_freq:%u:%uMHz, rp0_freq:%u:%uMHz, max_freq_softlimit:%u:%uMHz\n",
+				 engine->name, rps->max_freq, intel_gpu_freq(rps, rps->max_freq),
+				 rps->rp0_freq, intel_gpu_freq(rps, rps->rp0_freq),
+				 rps->max_freq_softlimit, intel_gpu_freq(rps,
+				 rps->max_freq_softlimit));
 			err = -EINVAL;
 			break;
 		}
-- 
2.43.0

