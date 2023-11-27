Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8E07FA974
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 20:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED9D10E3DA;
	Mon, 27 Nov 2023 19:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F03E10E3DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 19:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701111650; x=1732647650;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eh/qfzLP7SKRgbAY2VrGhh7AFhJtIVjHpQho9Gt5cv8=;
 b=nsU/iJVfMBz9ZC5SDx9AmHRZrNQgP3rRa/GyMmgwOC+Xa5Ba4g5AsYnG
 NLXzg1dN5H8Spjx9OlI3SISYV34Y0t1KIrcSuwqUKAAV+lS2pUu2/ulR7
 Od+D8RmKKGR3Dt21WXsqGgcw9vIgl9LCxsiAw7ssSDHC1EkvyO+3r0msu
 D/mLhhre5TqB6GHsSzGkrAzIqT12nF+qwPdS08V2FC2lKDTTdTnAmLesj
 YfrgLWcY5xGECxpvq9NVKKJkZYrk2NYZY/ERi3DUiCxNxNa4FEceqx8ox
 zqibM/uDLCSx2hFMqib3v0QfV4tylbOIayTdfswB25+nu+vkSih7eK2Lb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="377797046"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="377797046"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 11:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="802737199"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="802737199"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.131])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 11:00:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Nov 2023 11:00:44 -0800
Message-ID: <20231127190043.4099109-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Drop Wa_22014600077
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround has been dropped from all DG2 variants in the latest
workaround database update.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9bc0654efdc0..4cbf9e512645 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2357,14 +2357,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			   0, true);
 	}
 
-	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
-		/* Wa_22014600077:dg2 */
-		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
-			   0 /* Wa_14012342262 write-only reg, so skip verification */,
-			   true);
-	}
-
 	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
 	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/*
-- 
2.41.0

