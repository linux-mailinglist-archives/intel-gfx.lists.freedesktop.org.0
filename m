Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 767D26E6F13
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F074410E1AE;
	Tue, 18 Apr 2023 22:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D412010E1FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681855565; x=1713391565;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k3SQW8TVxQkWa3+pJqsZu6KfI/Imocqc3m3Lpkz0MG8=;
 b=AgS3lUOOGj6lC6Nc2lLY6B/Um4NeDbQhQFps5cT0LrlmIvHKyCyaEb4Y
 MLzZoKZI8XI7INjfVtaGoRkaS1+bsBq7gCQV710S8LuiQWdnV9tlpQ2Ju
 kLr8UTKrYlkcHvrzctm3GGbN2aWfpeS/76b4pQc+DnQthlE0TOSKiMtRe
 ex/RKcJKvRA5XLnf1KflBSegw7KtEP7gdpCXu6jMkj/4cin99Kit75YtS
 rZlNBc4T0+Jp99dAexD7GYoRHYdA0xLUfzt9T9is9bfT5h1EybfKuqjrF
 kDsN5xPpHHQ/JyoVRxIQm4ensd6tRUi4c/xmX6CA69UGWHneHD8sFUNjz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334101440"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334101440"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684761345"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684761345"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:05:59 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 15:04:43 -0700
Message-Id: <20230418220446.2205509-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Use separate "DC off" power
 well for ADL-P and DG2
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

From: Matt Roper <matthew.d.roper@intel.com>

Although ADL-P and DG2 both use the same general power well setup, the
DC5/DC6 requirements are slightly different which means each platform
should have its own "DC off" power well.

DG2 (i.e., Xe_HPD IP) requires that DC5 be disabled whenever PG2 is
active.  However ADL-P (i.e., Xe_LPD IP) only requires DC5/DC6 to be
disabled when the PGC or PGD subwells are active; we should be able to
remain in these DC states when PGB and general PG2 functionality is in
use.

v2: Use dc_of as power well name.
    Move xehpd power domain definitions near power well definition.(Imre)

Bspec: 49193
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 41 +++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d8..5906b62e79f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1301,7 +1301,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
  */
 
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
-	XELPD_PW_2_POWER_DOMAINS,
+	XELPD_PW_C_POWER_DOMAINS,
+	XELPD_PW_D_POWER_DOMAINS,
 	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUX_A,
@@ -1310,14 +1311,18 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc xelpd_power_wells_main[] = {
+static const struct i915_power_well_desc xelpd_power_wells_dc_off[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &xelpd_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
 		),
 		.ops = &gen9_dc_off_power_well_ops,
-	}, {
+	}
+};
+
+static const struct i915_power_well_desc xelpd_power_wells_main[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("PW_2", &xelpd_pwdoms_pw_2,
 				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
@@ -1400,6 +1405,34 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 static const struct i915_power_well_desc_list xelpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xelpd_power_wells_dc_off),
+	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
+};
+
+I915_DECL_PW_DOMAINS(xehpd_pwdoms_dc_off,
+	XELPD_PW_2_POWER_DOMAINS,
+	POWER_DOMAIN_PORT_DSI,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_AUX_A,
+	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
+	POWER_DOMAIN_INIT);
+
+static const struct i915_power_well_desc xehpd_power_wells_dc_off[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &xehpd_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
+		.ops = &gen9_dc_off_power_well_ops,
+	}
+};
+
+static const struct i915_power_well_desc_list xehpd_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xehpd_power_wells_dc_off),
 	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
 };
 
@@ -1624,6 +1657,8 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 
 	if (DISPLAY_VER(i915) >= 14)
 		return set_power_wells(power_domains, xelpdp_power_wells);
+	else if (IS_DG2(i915))
+		return set_power_wells(power_domains, xehpd_power_wells);
 	else if (DISPLAY_VER(i915) >= 13)
 		return set_power_wells(power_domains, xelpd_power_wells);
 	else if (IS_DG1(i915))
-- 
2.34.1

