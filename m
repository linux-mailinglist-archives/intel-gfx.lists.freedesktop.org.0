Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBD49CF0E0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 17:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA9B10E0ED;
	Fri, 15 Nov 2024 16:01:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaMSWHHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA1210E0ED;
 Fri, 15 Nov 2024 16:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686490; x=1763222490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ug++sS9rj9nF1Dvu5/mwNdQeqr//RhiXelmvU/bM+G8=;
 b=WaMSWHHhznuABN+0aTbAuPhJuivHcNuEv51Vf1fRZI4lldwUtPJ8aTDg
 8HBjG7qETjZYNumLW/Z84Ac6cpPIU/4R2G42nQRlgVR2YqWe40S34LfZD
 8+6OTSfhS5bll5QK8APGComN+kJeIF/pWjOnIQCPCXVj3FhimcY4XD02m
 FrL2ybqmbRJxZzHMuHdxFo0sPZtMSbEXax5o1OYOxRGGaGS1QZYbAFPt/
 mr47QvTFH8uRwOeYn3zTM9wqKvzARScZ3jZolNyCqwZQ6esk3oQJ0WAPy
 7xQviuxhV+O1cAFlm6nRHJmSH9UIrwW8LUxIRGutYdKFnO0m26yTXQjk0 Q==;
X-CSE-ConnectionGUID: DoPuoFcYQJa5tq0J294bGw==
X-CSE-MsgGUID: MgeA+IZ7TkS8Bfr20NR0Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31456782"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31456782"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:01:30 -0800
X-CSE-ConnectionGUID: +hXS9Ec9Tsm2BdkBgkx4Xw==
X-CSE-MsgGUID: cANoJN/UTFigRDZUp0aJlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88760628"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Nov 2024 08:01:28 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/6] drm/i915/wm: Refactor dpkgc value prepration
Date: Fri, 15 Nov 2024 21:31:12 +0530
Message-Id: <20241115160116.1436521-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241115160116.1436521-1-suraj.kandpal@intel.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
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

Refactor the value getting prepped to be written into the PKG_C_LATENCY
register by ORing the REG_FIELD_PREP values instead of having val
getiing operated on twice.
We dont need the clear and val variables to be initialized. Lets also
group all the initialized variable together.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a49e8915346e..6d5f64ed52ed 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2858,7 +2858,7 @@ static void
 skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 {
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;
-	u32 clear = 0, val = 0;
+	u32 clear, val;
 
 	if (DISPLAY_VER(i915) < 20)
 		return;
@@ -2871,9 +2871,9 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
 			i915->display.sagv.block_time_us;
 	}
 
-	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
-	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
+	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
+	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
 }
-- 
2.34.1

