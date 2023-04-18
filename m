Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C766E65A4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 15:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DD410E749;
	Tue, 18 Apr 2023 13:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C0010E749
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681823747; x=1713359747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tKnVymfMLEMFzZUDRAEWcUP0I/R/1a4NUD0BFaMGjwE=;
 b=l1NoPvgFvI1gv19MwcAiTV77pIm/x/kZanTrqCF1yWLya5/QsGnR7Drk
 ExBtwlUXmfovbXcTK4+JhkEP/vAp3Ew5r8meD8uSwgsc4up0YkBW8lZP3
 M39wCxnMh35MPXhNVYpy2uOEvhT2h8e4GCq+m6Dnt7qCZoqoQ1c+cVw6N
 LkaSHPnyzDpo2QIlhnZLsDWwMJq8vmvX41K7R3Kdwnzrdtz0VVyrN0c1/
 94M9fKpdi+SPHl1YskeOLb+vqwmyzuoDQCLg2IOn2tYYGEme6Gx8EyliB
 AhVifw03IfJ2KQi8/o6nkC16i7CmM4JxcCpRHrQ44NpH1t71zOdjaJeND Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="410385547"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="410385547"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 06:15:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684577722"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684577722"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 18 Apr 2023 06:15:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 18:44:25 +0530
Message-Id: <20230418131425.1285088-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230403080154.1239873-1-suraj.kandpal@intel.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5] drm/i915/display: Increase AUX timeout for
 Type-C
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
Workaround: Increase the timeout.

---v2
-change style on how we mention WA [Ankit]
-fix bat error by creating new func that is only called for aux power
well scenarios so we can avoid null pointer error as it is called
everywhere.

--v3
-Add non-default enable_timeout to power well descriptor which avoids
adding more platform checks [Imre]

--v4
-Remove Bspec link from top to bottom remove WA link from commit put it
on comment [Jani]
-enable_timeout in ms and add .fixed_enable_delay too [Imre]

--v5
-move power_wells instead of duplicating them [Imre]

Bspec: 55480

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c  | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 6645eb1911d8..b4070845cd53 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1378,6 +1378,11 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
 			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
 			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
+		),
+		.ops = &icl_aux_power_well_ops,
+		.fixed_enable_delay = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
 			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
 			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
@@ -1385,6 +1390,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 		),
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
+		/* WA_14017248603: adlp */
+		.enable_timeout = 500,
 	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 62bafcbc7937..930a42c825c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -253,6 +253,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
+	int timeout = power_well->desc->enable_timeout ? : 1;
 
 	/*
 	 * For some power wells we're not supposed to watch the status bit for
@@ -266,7 +267,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 
 	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
 	if (intel_de_wait_for_set(dev_priv, regs->driver,
-				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
+				  HSW_PWR_WELL_CTL_STATE(pw_idx), timeout)) {
 		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
 			    intel_power_well_name(power_well));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index ba7cb977e7c7..e494df379e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -110,6 +110,8 @@ struct i915_power_well_desc {
 	 * Thunderbolt mode.
 	 */
 	u16 is_tc_tbt:1;
+	/* Enable timeout if greater than the default 1ms */
+	u16 enable_timeout;
 };
 
 struct i915_power_well {
-- 
2.25.1

