Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9686E6F14
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A6110E1FE;
	Tue, 18 Apr 2023 22:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD12610E07B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681855565; x=1713391565;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ons8xBClW240OsJqsEc6XRz4AzLqtWUQLa8ovoLCxcc=;
 b=Z0ZpNRNuoyOujJNLu040isY+mOqDXEB9DNuHa1Z20+ZaO6vUbwaW8kV1
 RsFhlh4nmFZVlTZQgk9oyB9QXTsUJGr+3hNjy3fiPpSxhsUPnObXXhPdA
 UBikm82bUwqEqlq8MHoSAcyOBZQFfIM3AysrDCV1UKxos4rEX0W7URXAw
 VoHm1qqfL9V6dJvJ0s5Debnz7a++a5MBIPfPN64W/9EoPV9k2TqRlxg35
 i91D1/BBwVEv4lT3Y3orn7Qxzf3+PHBBJ3IyRNek1peYXEvL2NAwC6u7h
 L4UEtVvZJSpcer7o3AYzuNRBeRVZDjlDHrwLQOdrrp7wqMo+fEdOkQPcg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334101438"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334101438"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684761347"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684761347"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:05:59 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 15:04:44 -0700
Message-Id: <20230418220446.2205509-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/mtl: Re-use ADL-P's "DC off"
 power well
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

As with ADL-P, MTL's "DC off" power well should be a dependency of the
PGC and PGD power wells, not the entire PG2 well.  In fact, the DC5/DC6
requirements between the two platforms are the same, so the Xe_LPD "DC
off" well definition can just be re-used for Xe_LPD+.

Bspec: 49193
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power_map.c   | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5906b62e79f1..100582f10590 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1456,15 +1456,6 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_pw_2,
 	XELPDP_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_INIT);
 
-I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
-	XELPDP_PW_2_POWER_DOMAINS,
-	POWER_DOMAIN_AUDIO_MMIO,
-	POWER_DOMAIN_MODESET,
-	POWER_DOMAIN_AUX_A,
-	POWER_DOMAIN_AUX_B,
-	POWER_DOMAIN_DC_OFF,
-	POWER_DOMAIN_INIT);
-
 I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc1,
 	POWER_DOMAIN_AUX_USBC1,
 	POWER_DOMAIN_AUX_TBT1);
@@ -1483,12 +1474,6 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc4,
 
 static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("DC_off", &xelpdp_pwdoms_dc_off,
-				.id = SKL_DISP_DC_OFF),
-		),
-		.ops = &gen9_dc_off_power_well_ops,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("PW_2", &xelpdp_pwdoms_pw_2,
 				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
@@ -1545,6 +1530,7 @@ static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
 static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xelpd_power_wells_dc_off),
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
 };
 
-- 
2.34.1

