Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D20AA048BF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 18:59:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE86E10E012;
	Tue,  7 Jan 2025 17:59:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cKje8MgF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1DD10E012
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 17:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736272764; x=1767808764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ryJJLmi7Ac0ziXm55zTatDVC88Nl2Tri9wYGvbshIGs=;
 b=cKje8MgF0ehhzJ/fX7r6E+G5R4OxSCZtnwqhIec5UH05ZlZemVr+RXrW
 kRvFriFJqiLLzL/FNdnBQ17cAnsAvXnsT9VON+yqw2mo5NFB8COMpCZrD
 XVaMhbEWlYkuQ+2EcTi22qH/KwA398yG/TJsyuV3u1uvn/RLXcALxdQqp
 uogVZS//0mRIR0vhYwvaIQP9AJwTeW5IaX64lVNVRFLcqLXdtvGLN1pEd
 EXa+RApFj/zS0+dt+xSssPh7te6AX6wn2mN25/0qpDxOOxwTsMuEDchoN
 /0CDWsvp/grjctkTrJ0nxmnEjwZv/uBg3xE3myIoFfIlHeOJnj1xbdf8l Q==;
X-CSE-ConnectionGUID: QYjS8yXxTGqQSlTe429byQ==
X-CSE-MsgGUID: xdSXuGw1S0aY8fLLqh9AQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36628176"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="36628176"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:59:23 -0800
X-CSE-ConnectionGUID: vZspkUgFTL6mNtnUuZC1LA==
X-CSE-MsgGUID: JqvEiCh0S5ySYzVtOjhdtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="102660433"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:59:20 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH v2] drm/i915/display: Don't update DBUF_TRACKER_STATE_SERVICE
Date: Tue,  7 Jan 2025 23:27:03 +0530
Message-Id: <20250107175703.1667934-1-ravi.kumar.vodapalli@intel.com>
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

DBUF_TRACKER_STATE_SERVICE is set only during initialization.
We see that it was done for TGL (display version 12) and DG2,
because the field didn't actually have 0x8 as default value,
so the driver had to take care of it.

According to the BSpec.
The most compeling reason why we should not program
that field for other display versions that is not part of the
official programming sequence in BSpec, and doing so could affect
future platforms if the default is changed for some reason.

So we need to check for
1. display version 12
2. DG2.
Other platforms unless stated should use their default value

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..9c20459053fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
-		return;
-
 	for_each_dbuf_slice(display, slice)
 		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_TRACKER_STATE_SERVICE_MASK,
@@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(display);
 
-	if (DISPLAY_VER(display) >= 12)
+	if (DISPLAY_VER(display) == 12 || display->platform.dg2)
 		gen12_dbuf_slices_config(display);
 
 	/* 5. Enable DBUF. */
-- 
2.25.1

