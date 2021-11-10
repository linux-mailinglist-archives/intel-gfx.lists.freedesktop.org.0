Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC8044BE82
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 11:24:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138F36EBA2;
	Wed, 10 Nov 2021 10:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 633A76EBA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 10:24:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="219847125"
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="219847125"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 02:23:59 -0800
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="503911605"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.253.7])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 02:23:57 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 18:23:54 +0800
Message-Id: <20211110102354.5640-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain the HS-TRAIL
 timing
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is to avoid over-specification of the TEOT timing
parameter, which is derived from software in current design.

Supposed that THS-TRAIL and THS-EXIT have the minimum values,
i.e., 60 and 100 in ns. If SW is overriding the HW default,
the TEOT value becomes 150 ns, approximately calculated by
the following formula.

  DIV_ROUND_UP(60/50)*50 + DIV_ROUND_UP(100/50))*50/2, where 50
  is LP Escape Clock time in ns.

The TEOT value 150 ns is larger than the maximum value,
around 136 ns if UI is 1.8ns, (105 ns + 12*UI, defined by MIPI
DPHY specification).

However, the TEOT value will meet the specification if THS-TRAIL
is set to the HW default, instead of software overriding.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 168c84a74d30..0d22d3ed9734 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1957,8 +1957,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 					 HS_PREPARE(prepare_cnt) |
 					 HS_ZERO_OVERRIDE |
 					 HS_ZERO(hs_zero_cnt) |
-					 HS_TRAIL_OVERRIDE |
-					 HS_TRAIL(trail_cnt) |
 					 HS_EXIT_OVERRIDE |
 					 HS_EXIT(exit_zero_cnt));
 
-- 
2.17.1

