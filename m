Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63357380D60
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B65B6F37F;
	Fri, 14 May 2021 15:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2766F385
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:20 +0000 (UTC)
IronPort-SDR: uRRsVM/Fzor7EM9RgQGRo+5iqkQ8lOKwfTlHD7z3e+QL87GY+G87PgmP6+030pwTNPOjQmHNY9
 ChzGF2vI9DtQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243930"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243930"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
IronPort-SDR: vkyrzY/bzZcSYwEV7+/kR8kT67DiktrwJJ2DeqLC4HAgQJ0igswFmX2DT2vNQ+Syv6iJdq6R3j
 gAbqmXVileDA==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796585"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:06 -0700
Message-Id: <20210514153711.2359617-15-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 14/19] drm/i915/bigjoiner: Avoid dsc_compute_config
 for uncompressed bigjoiner
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

From: Animesh Manna <animesh.manna@intel.com>

For uncompressed big joiner DSC engine will not be used so will avoid
compute config of DSC.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 75f4c56757e3..16cdec9a4aa3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1371,9 +1371,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	 */
 	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
 
-	/* enable compression if the mode doesn't fit available BW */
+	/*
+	 * Pipe joiner needs compression upto display12 due to BW limitation. DG2
+	 * onwards pipe joiner can be enabled without compression.
+	 */
 	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
-	if (ret || intel_dp->force_dsc_en || pipe_config->bigjoiner) {
+	if (ret || intel_dp->force_dsc_en || (DISPLAY_VER(i915) < 13 &&
+					      pipe_config->bigjoiner)) {
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
 						  conn_state, &limits);
 		if (ret < 0)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
