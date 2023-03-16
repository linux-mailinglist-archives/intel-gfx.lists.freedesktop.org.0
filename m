Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FEC6BDA1C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 21:26:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95ADF10E365;
	Thu, 16 Mar 2023 20:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5521610E365
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 20:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678998390; x=1710534390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NyiwAU35LZq/iAPrIeDaLFLqXhgg+c5+gfQVbWU7eWg=;
 b=Mz0uKh7Tp3DPv0nqpTdJCBVmJ5O1Eq3vLCoE+xJRKK8gORaDJ77iC80Z
 tt4qul7+T9I/37jsXjPhHdnFv8JzIi5hSJRMG5vXHNUiukkuL5L3ysVPe
 I1XTPhOKxOK5cTzZa8DQT9nBqYbm6bAyuByH4PqYMmX+yASDNjGPVNm1h
 R4i3bbUnU7FhCZhyifAkTrxpP0i4QegMjDvQBOAbCWDTBYy1F50SIZYB2
 XtWa34ZoYncetOHmAJlt/ST09XYSO2sIzMi7dt8GNS0RFyrUTGVhxfGcZ
 ptrJ6ilzwMDYiy/y0fO5R5kmED2oydIjLjGsWbYmG17D98DpEc16RcGdv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340475488"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340475488"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680031881"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="680031881"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:27 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:25:46 -0700
Message-Id: <20230316202549.1764024-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/mtl: Re-use ADL-P's "DC off" power
 well
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
Cc: lucas.demarchi@intel.com
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
---
 .../drm/i915/display/intel_display_power_map.c   | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index d9e02cc9cf3c..452b6cbdfd98 100644
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
+	I915_PW_DESCRIPTORS(xelpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
 };
 
-- 
2.34.1

