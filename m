Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBB328E72F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 21:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B9F6EB39;
	Wed, 14 Oct 2020 19:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1266EB37
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:20:51 +0000 (UTC)
IronPort-SDR: GFliv7ctRGcs0wu+PLUv+skbXc8a3azv+SJ6ShVd+mX7EX6QoEskeDNhSCEgEkQ/OPJpeqqkK/
 KyXnLPraKbsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="183703012"
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="183703012"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:43 -0700
IronPort-SDR: Q5PytgSGP0iuYw7qGGTQwYNMn2crXd2UBhf1Ncc66SqKaeZetvyqjS+Bz437D/1WNHR7blzgTF
 z+iibsjZG1Sw==
X-IronPort-AV: E=Sophos;i="5.77,375,1596524400"; d="scan'208";a="345781232"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 12:20:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 12:19:28 -0700
Message-Id: <20201014191937.1266226-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014191937.1266226-1-lucas.demarchi@intel.com>
References: <20201014191937.1266226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 02/11] drm/i915/cnl: skip PW_DDI_F on certain skus
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

The skus guarded by IS_CNL_WITH_PORT_F() have port F and thus they need
those power wells. The others don't have those. Up to now we were
just overriding the number of power wells on !IS_CNL_WITH_PORT_F(),
relying on those power wells to be the last ones. Now that we have logic
in place to skip power wells by id, use it instead.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 19 +++++++------------
 .../drm/i915/display/intel_display_power.h    |  2 ++
 2 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 5b7f2b67791e..7437c7a79e5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3650,7 +3650,7 @@ static const struct i915_power_well_desc cnl_power_wells[] = {
 		.name = "DDI F IO power well",
 		.domains = CNL_DISPLAY_DDI_F_IO_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
+		.id = CNL_DISP_PW_DDI_F_IO,
 		{
 			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = CNL_PW_CTL_IDX_DDI_F,
@@ -3660,7 +3660,7 @@ static const struct i915_power_well_desc cnl_power_wells[] = {
 		.name = "AUX F",
 		.domains = CNL_DISPLAY_AUX_F_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
+		.id = CNL_DISP_PW_DDI_F_AUX,
 		{
 			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = CNL_PW_CTL_IDX_AUX_F,
@@ -4640,17 +4640,12 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 		err = set_power_wells(power_domains, tgl_power_wells);
 	} else if (IS_GEN(dev_priv, 11)) {
 		err = set_power_wells(power_domains, icl_power_wells);
-	} else if (IS_CANNONLAKE(dev_priv)) {
+	} else if (IS_CNL_WITH_PORT_F(dev_priv)) {
 		err = set_power_wells(power_domains, cnl_power_wells);
-
-		/*
-		 * DDI and Aux IO are getting enabled for all ports
-		 * regardless the presence or use. So, in order to avoid
-		 * timeouts, lets remove them from the list
-		 * for the SKUs without port F.
-		 */
-		if (!IS_CNL_WITH_PORT_F(dev_priv))
-			power_domains->power_well_count -= 2;
+	} else if (IS_CANNONLAKE(dev_priv)) {
+		err = set_power_wells_mask(power_domains, cnl_power_wells,
+					   BIT_ULL(CNL_DISP_PW_DDI_F_IO) |
+					   BIT_ULL(CNL_DISP_PW_DDI_F_AUX));
 	} else if (IS_GEMINILAKE(dev_priv)) {
 		err = set_power_wells(power_domains, glk_power_wells);
 	} else if (IS_BROXTON(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 54c20c76057e..824590c5401f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -101,6 +101,8 @@ enum i915_power_well_id {
 	SKL_DISP_PW_MISC_IO,
 	SKL_DISP_PW_1,
 	SKL_DISP_PW_2,
+	CNL_DISP_PW_DDI_F_IO,
+	CNL_DISP_PW_DDI_F_AUX,
 	ICL_DISP_PW_3,
 	SKL_DISP_DC_OFF,
 };
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
