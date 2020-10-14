Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 968EC28E732
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 21:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85336EB36;
	Wed, 14 Oct 2020 19:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA71A6EB37
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:20:50 +0000 (UTC)
IronPort-SDR: QvJ8giF5Mg4kY9/WeDGtdS5no7aoiqLtpHgtp2uLBksD3F3Ua5JVmi2+R7XbLfWR2RKCCyWD5c
 legX5fJ5RjqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="183703013"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="183703013"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:44 -0700
IronPort-SDR: n1eBI+K8/uO1AQTzoxRPrqVall9pbpxQKzIsXj0G/xIbP33ofOy+k8MqL4tGhsOuz+xvHQCt9e
 UECaznQuP/mQ==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="345781236"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:19:29 -0700
Message-Id: <20201014191937.1266226-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014191937.1266226-1-lucas.demarchi@intel.com>
References: <20201014191937.1266226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 03/11] drm/i915/dg1: Add DG1 power wells
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

TGL power wells can be re-used for DG1 with the exception of the fake
power well for TC_COLD.

v2: use logic to skip power wells while copying instead of duplicating
the definition of TGL power wells (Matt Roper)

Bspec: 49182

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 7 +++++--
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7437c7a79e5f..4934c89882b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4150,7 +4150,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.name = "TC cold off",
 		.domains = TGL_TC_COLD_OFF_POWER_DOMAINS,
 		.ops = &tgl_tc_cold_off_ops,
-		.id = DISP_PW_ID_NONE,
+		.id = TGL_DISP_PW_TC_COLD_OFF,
 	},
 	{
 		.name = "AUX A",
@@ -4634,7 +4634,10 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 	 * The enabling order will be from lower to higher indexed wells,
 	 * the disabling order is reversed.
 	 */
-	if (IS_ROCKETLAKE(dev_priv)) {
+	if (IS_DG1(dev_priv)) {
+		err = set_power_wells_mask(power_domains, tgl_power_wells,
+					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
+	} else if (IS_ROCKETLAKE(dev_priv)) {
 		err = set_power_wells(power_domains, rkl_power_wells);
 	} else if (IS_GEN(dev_priv, 12)) {
 		err = set_power_wells(power_domains, tgl_power_wells);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 824590c5401f..4aa0a09cf14f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -105,6 +105,7 @@ enum i915_power_well_id {
 	CNL_DISP_PW_DDI_F_AUX,
 	ICL_DISP_PW_3,
 	SKL_DISP_DC_OFF,
+	TGL_DISP_PW_TC_COLD_OFF,
 };
 
 #define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
