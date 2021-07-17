Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C65F3CC157
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 07:14:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9126EA17;
	Sat, 17 Jul 2021 05:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DCA6EA17
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 05:14:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="191188872"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="191188872"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="563335074"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 22:14:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 22:14:25 -0700
Message-Id: <20210717051426.4120328-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210717051426.4120328-1-matthew.d.roper@intel.com>
References: <20210717051426.4120328-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/rkl: Wa_1408330847 no longer
 applies to RKL
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

RKL doesn't have PSR2 support, so PSR2-related workarounds no longer
apply.

Bspec: 53273
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d436490ab28c..0a3d42c8d47d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -592,9 +592,8 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		val |= EDP_PSR2_SU_SDP_SCANLINE;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
-		/* WA 1408330847 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
-		    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
+		/* Wa_1408330847 */
+		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
 			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
 				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
@@ -1339,10 +1338,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
 
-	/* WA 1408330847 */
+	/* Wa_1408330847 */
 	if (intel_dp->psr.psr2_sel_fetch_enabled &&
-	    (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
-	     IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0)))
+	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
