Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ABF3D9D2B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 07:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065056EA47;
	Thu, 29 Jul 2021 05:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA536E159
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 05:41:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199987836"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="199987836"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 22:41:23 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="567114082"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 22:41:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 22:41:17 -0700
Message-Id: <20210729054118.2458523-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729054118.2458523-1-matthew.d.roper@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/gen12: Update shadowed register
 table
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The bspec lists many shadowed registers (i.e., registers for which we
don't need to grab forcewake when writing) that we weren't tracking in
the driver.  Although we may not actually use all of these registers
right now, it's best to just match the bspec list exactly.

Note that the bspec also lists registers that are shadowed for various
HW-internal accesses; we can ignore those and just list the ones that
are shadowed for accesses from the IA/CPU.

Bspec: 52077
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 31e0456dce5a..42acf106a6df 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -984,23 +984,28 @@ static const struct i915_range gen11_shadowed_regs[] = {
 
 static const struct i915_range gen12_shadowed_regs[] = {
 	{ .start =   0x2030, .end =   0x2030 },
-	{ .start =   0x2550, .end =   0x2550 },
+	{ .start =   0x2510, .end =   0x2550 },
 	{ .start =   0xA008, .end =   0xA00C },
+	{ .start =   0xA188, .end =   0xA188 },
+	{ .start =   0xA278, .end =   0xA278 },
+	{ .start =   0xA540, .end =   0xA56C },
+	{ .start =   0xC4C8, .end =   0xC4C8 },
+	{ .start =   0xC4D4, .end =   0xC4D4 },
+	{ .start =   0xC600, .end =   0xC600 },
 	{ .start =  0x22030, .end =  0x22030 },
-	{ .start =  0x22550, .end =  0x22550 },
+	{ .start =  0x22510, .end =  0x22550 },
 	{ .start = 0x1C0030, .end = 0x1C0030 },
-	{ .start = 0x1C0550, .end = 0x1C0550 },
+	{ .start = 0x1C0510, .end = 0x1C0550 },
 	{ .start = 0x1C4030, .end = 0x1C4030 },
-	{ .start = 0x1C4550, .end = 0x1C4550 },
+	{ .start = 0x1C4510, .end = 0x1C4550 },
 	{ .start = 0x1C8030, .end = 0x1C8030 },
-	{ .start = 0x1C8550, .end = 0x1C8550 },
+	{ .start = 0x1C8510, .end = 0x1C8550 },
 	{ .start = 0x1D0030, .end = 0x1D0030 },
-	{ .start = 0x1D0550, .end = 0x1D0550 },
+	{ .start = 0x1D0510, .end = 0x1D0550 },
 	{ .start = 0x1D4030, .end = 0x1D4030 },
-	{ .start = 0x1D4550, .end = 0x1D4550 },
+	{ .start = 0x1D4510, .end = 0x1D4550 },
 	{ .start = 0x1D8030, .end = 0x1D8030 },
-	{ .start = 0x1D8550, .end = 0x1D8550 },
-	/* TODO: Other registers are not yet used */
+	{ .start = 0x1D8510, .end = 0x1D8550 },
 };
 
 static const struct i915_range xehp_shadowed_regs[] = {
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
