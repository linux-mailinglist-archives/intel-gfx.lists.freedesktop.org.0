Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F77FA11B54
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 08:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0056C10E4F5;
	Wed, 15 Jan 2025 07:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NsqRY/kU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A3B110E4F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 07:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736927589; x=1768463589;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x9i49ZZ6GBR0IwU/b94jbP9sYm/2p+hRyKZOm1EWKJM=;
 b=NsqRY/kU4somcX2vfw4/1oqMhvtaKVtBYEpV3SZczJmhrNP/Qp8tYLAR
 1ZBD8UFAErIDNeFiexP+h7JxMwmetxW5Ug0VRvqPYIFMKxv9BtYFtdco2
 8sX472JheAF6VIQkL3IikN+xrSR+JG+BKK6/cCS75x4svUdAw2L85bfov
 916InWZXXlBUthnygr2bjKrthb1Y8HldIB5mQZbnX2JpkWCEPck1yWBwy
 jSNZzQkhi3rtmhAqfGv6ZYwwxEkBOAqT8bCSzcVPqcLLPtpYW0QptCx17
 1sS/0fS80XTUgKO93W+MGtmyJzmaHy0ze/r65S3LmU0Pr/gqe0JAKskUH Q==;
X-CSE-ConnectionGUID: E6BIbSDuQU2IP6GogGXfSA==
X-CSE-MsgGUID: Q+bYlTXaTI6/lXUdjv1dqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="47914216"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="47914216"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 23:53:09 -0800
X-CSE-ConnectionGUID: oTGgXCvARliNW6uGhWJtuA==
X-CSE-MsgGUID: bUHUVR2/TlmvvoqEDvPIrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128306813"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 23:53:07 -0800
From: Ranu Maurya <ranu.maurya@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: sai.teja.pottumuttu@intel.com, balasubramani.vivekanandan@intel.com,
 ranu.maurya@intel.com
Subject: [PATCH] drm/i915: Add Wa_22010465259 in its respective WA list
Date: Wed, 15 Jan 2025 13:22:02 +0530
Message-Id: <20250115075202.2356395-1-ranu.maurya@intel.com>
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

Add Wa_22010465259 which points to an existing WA, but was missing
from the comment list. While at it, update the other WAs and their
applicable platforms as well.

Signed-off-by: Ranu Maurya <ranu.maurya@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 570c91878189..277a4df31071 100644
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
+	 * Wa_14010443199:tgl,rkl,dg1,adl-p,adl-n
+	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p,adl-n
+	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p,adl-n
+	 * Wa_22010465259:tgl,rkl,dg1,adl-s,adl-p,adl-n
 	 */
 	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
 		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
-- 
2.25.1

