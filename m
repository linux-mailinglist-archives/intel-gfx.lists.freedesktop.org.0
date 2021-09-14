Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B253A40BAF3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 00:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996706E828;
	Tue, 14 Sep 2021 22:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC7B6E828
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 22:07:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="307697683"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="307697683"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 15:07:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="508325453"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 15:07:56 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 15:07:44 -0700
Message-Id: <20210914220744.16042-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915: Update memory bandwidth parameters
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

Earlier while calculating derated bw we would use 90% of the calculated
bw. Starting ADL-P we use a non standard derating. Updating the formulae
to reflect the same.

Bspec: 64631

v2: Use the new derating value only for ADL-P(MattR)

Fixes: 4d32fe2f14a7 ("drm/i915/adl_p: Update memory bandwidth parameters")
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e91e0e0191fb..4b94256d7319 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -222,31 +222,42 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
 
 struct intel_sa_info {
 	u16 displayrtids;
-	u8 deburst, deprogbwlimit;
+	u8 deburst, deprogbwlimit, derating;
 };
 
 static const struct intel_sa_info icl_sa_info = {
 	.deburst = 8,
 	.deprogbwlimit = 25, /* GB/s */
 	.displayrtids = 128,
+	.derating = 10,
 };
 
 static const struct intel_sa_info tgl_sa_info = {
 	.deburst = 16,
 	.deprogbwlimit = 34, /* GB/s */
 	.displayrtids = 256,
+	.derating = 10,
 };
 
 static const struct intel_sa_info rkl_sa_info = {
 	.deburst = 16,
 	.deprogbwlimit = 20, /* GB/s */
 	.displayrtids = 128,
+	.derating = 10,
 };
 
 static const struct intel_sa_info adls_sa_info = {
 	.deburst = 16,
 	.deprogbwlimit = 38, /* GB/s */
 	.displayrtids = 256,
+	.derating = 10,
+};
+
+static const struct intel_sa_info adlp_sa_info = {
+	.deburst = 16,
+	.deprogbwlimit = 38, /* GB/s */
+	.displayrtids = 256,
+	.derating = 20,
 };
 
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
@@ -302,7 +313,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 			bw = icl_calc_bw(sp->dclk, clpchgroup * 32 * num_channels, ct);
 
 			bi->deratedbw[j] = min(maxdebw,
-					       bw * 9 / 10); /* 90% */
+					       bw * (100 - sa->derating) / 100);
 
 			drm_dbg_kms(&dev_priv->drm,
 				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
@@ -400,7 +411,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 
 	if (IS_DG2(dev_priv))
 		dg2_get_bw_info(dev_priv);
-	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv))
+		icl_get_bw_info(dev_priv, &adlp_sa_info);
+	else if (IS_ALDERLAKE_S(dev_priv))
 		icl_get_bw_info(dev_priv, &adls_sa_info);
 	else if (IS_ROCKETLAKE(dev_priv))
 		icl_get_bw_info(dev_priv, &rkl_sa_info);
-- 
2.20.1

