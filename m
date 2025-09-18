Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F22F7B29ED9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FD010E423;
	Mon, 18 Aug 2025 10:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZNajySn8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0BA10E41A;
 Mon, 18 Aug 2025 10:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755511671; x=1787047671;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=17bb6MntNBKQ4FYyHdX0ocT3Ocu0p/s+VxWm9hdcQcg=;
 b=ZNajySn8Kje09KmssfOnsVOfI66j/ODYeC62jEYytn7F6/X5O6PBzYPX
 rJx3sk52+44tZ149CKpnZV0yNkpTm6yjls1nPQC1+Dr4WFTYpwQkMpOJp
 w1HOm65QeXdZwOfLIg9fAk750jo0ZCSYdmwwMw2FzTMrmKLoRbF79uYeK
 WWZ2nMdDMU969LxNeklffdTl+tvUr6MX7Fd0WeAdTU+A+igB3G1n6CHVw
 EqSqh4EdfeC+N6idKVX08CWzcpXFCg/P63WoO5LABWhTDEXadAyooDUJ7
 c0RlXWk6sRCU9JUWF6NtvwSWTCqSOnznEwymagdpuKzO7kcFcOOwnDMhl Q==;
X-CSE-ConnectionGUID: +Y8dAIxlRsaeQ5F4HLGNVQ==
X-CSE-MsgGUID: UC6EjmODRVaazpFVqfuliQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69105561"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69105561"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:50 -0700
X-CSE-ConnectionGUID: IYDkBzGYQjCcKf/FAsSZ5Q==
X-CSE-MsgGUID: xG1RvZ/RQYuSc0ahWu+uMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171778836"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [CI 3/5] drm/i915/rps: use intel_fsb_freq() and intel_mem_freq()
Date: Mon, 18 Aug 2025 13:07:26 +0300
Message-ID: <6f3b703f7cb5605bf139cbe27697c1d4ffe7e719.1755511595.git.jani.nikula@intel.com>
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

The rps init only happens once, so it's not important to use the cached
versions, and we can drop the dependency on them.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0b35fdd461d4..006042e0b229 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -9,6 +9,7 @@
 
 #include "display/intel_display.h"
 #include "display/intel_display_rps.h"
+#include "soc/intel_dram.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -276,20 +277,24 @@ static void gen5_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
+	unsigned int fsb_freq, mem_freq;
 	u8 fmax, fmin, fstart;
 	u32 rgvmodectl;
 	int c_m, i;
 
-	if (i915->fsb_freq <= 3200000)
+	fsb_freq = intel_fsb_freq(i915);
+	mem_freq = intel_mem_freq(i915);
+
+	if (fsb_freq <= 3200000)
 		c_m = 0;
-	else if (i915->fsb_freq <= 4800000)
+	else if (fsb_freq <= 4800000)
 		c_m = 1;
 	else
 		c_m = 2;
 
 	for (i = 0; i < ARRAY_SIZE(cparams); i++) {
 		if (cparams[i].i == c_m &&
-		    cparams[i].t == DIV_ROUND_CLOSEST(i915->mem_freq, 1000)) {
+		    cparams[i].t == DIV_ROUND_CLOSEST(mem_freq, 1000)) {
 			rps->ips.m = cparams[i].m;
 			rps->ips.c = cparams[i].c;
 			break;
-- 
2.47.2

