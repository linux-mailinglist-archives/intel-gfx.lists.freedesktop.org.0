Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C14A136A6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 10:32:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA0010E910;
	Thu, 16 Jan 2025 09:32:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUaMq6bA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBC410E90C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737019942; x=1768555942;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7/zokV/b5Vn8UOKp2IrPOJBvLZnxBv2MRoUcW8e/+vQ=;
 b=NUaMq6bADzU9A0kdlMMMRtfYWzlv7dGtMJjZXK9wUoxw3dJDzcTZ9ctA
 lPIsXqiq13mRVY8MYNTqfABVR2+7rMPi9A2aRJagJPvK8uwcDDOuCiDhp
 vEE/ka6cvgsM3LFbpwH2izBVANgTHl9OuCi7I7xqVzGE7Hse/8YroCvsg
 +PXJVnyEbqrjYklN2qGzPyOH/t7ZVrsC48Lf0f7hfM77c6DuR0e7rTXCB
 RtqO7meeE6mjwNdOuPb/mvl6PcRfKyEzIVFE2t8/Zrhy8KOEH8V0L3qNi
 feyAiLsXZC4ZTFz6wfAlOwCaDLM2d4NvCLpjqhZUv00q4s7iZrZZqZj5l A==;
X-CSE-ConnectionGUID: Fr0lewnMS+mT13XOHnQAsQ==
X-CSE-MsgGUID: uPtH/xtlRiylKj2DEoVrrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37550144"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37550144"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 01:32:22 -0800
X-CSE-ConnectionGUID: 8sRj0cRFTl6aW8qj/sZc+g==
X-CSE-MsgGUID: TzgFvoT6RLCN0370GzsVvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105971785"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.61])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 01:32:20 -0800
From: Ranu Maurya <ranu.maurya@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: sai.teja.pottumuttu@intel.com, balasubramani.vivekanandan@intel.com,
 ranu.maurya@intel.com
Subject: [PATCH v3] drm/i915: Add Wa_22010465259 in its respective WA list
Date: Thu, 16 Jan 2025 15:01:15 +0530
Message-Id: <20250116093115.2437154-1-ranu.maurya@intel.com>
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

v1: Initial commit.
v2: Add DG2 platform to Wa_22010465259.
v3: Removed DG2 platform to Wa_22010465259 since it
    was for preproduction.

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

