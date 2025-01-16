Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0657A13443
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 08:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C8C10E0F0;
	Thu, 16 Jan 2025 07:39:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtH4j4qd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828B010E912
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 07:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737013185; x=1768549185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nLqPyIdlt2XlofwOknV35bid7LkbJDnZhoBggoix10U=;
 b=CtH4j4qdP95DXUFxOPOPXsgHkAD/9ifWNLWz0UJwZIglg5OfahDmryeJ
 vtnUHfMpXpVxfvUGYV37BO+r8Y+87upN3aUhAkR0foIJlx6C1dq8YHRlM
 oLAUXetcf1SezAoO2w1JNR8eAv3rKq69l/TxCskcyQ5jaMz7NANznVUqX
 xhKwLSdG9/Zsl/YKTADp+bE8WyTYhe2wgz2ExnzsGR5MhHwgIwFNYpRCL
 7Db+Vs0WyY6VWYzgKgeoJ3E81PZj17SWT5fk0Fpforz2uc3bWwkShaTog
 H3U/hR+INMGog+IEpUJ4JnDBUGcpOAxTyIZGO5cR+PHMx6NPhgoCbEF/I A==;
X-CSE-ConnectionGUID: fN4IMXWLRc2pwjFqqSu8QA==
X-CSE-MsgGUID: AwBF31jMRGyOm7PKHsytmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="40197411"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="40197411"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:39:45 -0800
X-CSE-ConnectionGUID: xo5jp5btTUW2CUtwNXxA9A==
X-CSE-MsgGUID: pNUXQQhYQeyAfGUWU+IswA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="136243645"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:39:43 -0800
From: Ranu Maurya <ranu.maurya@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: sai.teja.pottumuttu@intel.com, balasubramani.vivekanandan@intel.com,
 ranu.maurya@intel.com
Subject: [PATCH v2] drm/i915: Add Wa_22010465259 in its respective WA list
Date: Thu, 16 Jan 2025 13:08:28 +0530
Message-Id: <20250116073828.2431313-1-ranu.maurya@intel.com>
X-Mailer: git-send-email 2.25.1
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

Add Wa_22010465259 which points to an existing WA, but
was missing from the comment list. While at it, update
the other WAs and their applicable platforms as well.

Signed-off-by: Ranu Maurya <ranu.maurya@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 570c91878189..4cf4fa1f1a92 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -691,16 +691,17 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 	struct drm_i915_private *i915 = engine->i915;
 
 	/*
-	 * Wa_1409142259:tgl,dg1,adl-p
+	 * Wa_1409142259:tgl,dg1,adl-p,adl-n
 	 * Wa_1409347922:tgl,dg1,adl-p
 	 * Wa_1409252684:tgl,dg1,adl-p
 	 * Wa_1409217633:tgl,dg1,adl-p
 	 * Wa_1409207793:tgl,dg1,adl-p
-	 * Wa_1409178076:tgl,dg1,adl-p
-	 * Wa_1408979724:tgl,dg1,adl-p
-	 * Wa_14010443199:tgl,rkl,dg1,adl-p
-	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p
-	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p
+	 * Wa_1409178076:tgl,dg1,adl-p,adl-n
+	 * Wa_1408979724:tgl,dg1,adl-p,adl-n
+	 * Wa_14010443199:tgl,rkl,dg1,dg2,adl-p,adl-n
+	 * Wa_14010698770:tgl,rkl,dg1,dg2,adl-s,adl-p,adl-n
+	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p,adl-n
+	 * Wa_22010465259:tgl,rkl,dg1,adl-s,adl-p,adl-n
 	 */
 	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
 		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
-- 
2.25.1

