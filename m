Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6894A349924
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09FA76EE31;
	Thu, 25 Mar 2021 18:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B1DA6EE12
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:36 +0000 (UTC)
IronPort-SDR: m8vkMlpGsglR9gFNRiWOGHi+Tl6+hvKDv8WJ+n2hP6zcbLtxjXsRAVrLCwXry+ANM7MYYziaHb
 BT1P/hpG/j/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112571"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112571"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:35 -0700
IronPort-SDR: sIzrRjA41tuW67SS6RSReh1u7IaqEfoHPfXiw/xLiy/GK8qSAOV2s9XZGJxY7j2Pzv0ERXoZcr
 FGO2umqAV3cg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176740"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:12 -0700
Message-Id: <20210325180720.401410-43-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 42/50] drm/i915/bigjoiner: Avoid
 dsc_compute_config for uncompressed bigjoiner
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Animesh Manna <animesh.manna@intel.com>

For uncompressed big joiner DSC engine will not be used so will avoid
compute config of DSC.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab9b36a14809..9a661ed06ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1418,9 +1418,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		/* Optimize for slow and wide. */
 		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
 
-	/* enable compression if the mode doesn't fit available BW */
+	/*
+	 * Pipe joiner needs compression upto display12 due to BW limitation. DG2
+	 * onwards pipe joiner can be enabled without compression.
+	 */
 	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
-	if (ret || intel_dp->force_dsc_en || pipe_config->bigjoiner) {
+	if (ret || intel_dp->force_dsc_en || (!(DISPLAY_VER(i915) == 13) &&
+	    pipe_config->bigjoiner)) {
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits);
 		if (ret < 0)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
