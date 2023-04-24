Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D336ED5C6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 22:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF6D10E5E8;
	Mon, 24 Apr 2023 20:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9992310E5E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 20:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682366530; x=1713902530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EdthozqNevhiHU0488yqIoJsEwIAI4k0bPNP8yjB1gU=;
 b=BHlHJ70gQcV+G7OT8E1Ml/XBJX3yyCQd3Ed6iOK8ybrFpsG/nehcpoml
 rI0PdiS849tQyQai4M86NJ4sMuD0p8A42HmQXQ1NcYMZXgUt/W7CwxJIP
 Im99Nu3n/vxKobDcRXBAI/t3r80cF5OXCUmn/Y2Pz3rG9JRhGkuk8tw/f
 G3OaCS5WSqesoo6R0YjHRYxUBtqayZ/SupAPFTjn/LjfqrS1CYeemnAPe
 wHwTZ5dJ1UktwIKfF64K7mAm4MPStoEG6+BoB0ProUWHnpzJq2CUthrV8
 zWsYFYQFoF9oi7UxC/5PIcqwOaPHy25mMgCalEGB8tFD1aXR42E9STsTK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="411830610"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="411830610"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 13:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687013959"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="687013959"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 13:02:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Apr 2023 23:02:05 +0300
Message-Id: <20230424200205.1732941-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adlp+: Disable DC5/6 states for TC
 port DDI/AUX and for combo port AUX
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On ADLP+ Bspec allows DC5/6 to be enabled while power well 2 is enabled.
Since the AUX and DDI power wells (except for port A/B) are also backed
by power well 2, this would suggest that DC5/6 can be enabled while any
of these AUX or DDI port functionalities are used. As opposed to this
AUX transfers will time out on ADLP TypeC ports while DC6 is enabled.

Until the restriction for DC5/6 is clarified in Bspec let's assume that
the intention is to allow for using these power states while pipe A/B is
enabled, but only for combo ports which can be used with eDP outputs.
Similarly assume that AUX transaction initiated by the driver on any port
requires DC states to be disabled.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Fixes: 88c487938414 ("drm/i915: Use separate "DC off" power well for ADL-P and DG2")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 100582f105905..ca448359a8226 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1251,22 +1251,11 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
 	POWER_DOMAIN_INIT);
 
-#define XELPD_PW_2_POWER_DOMAINS \
-	XELPD_PW_B_POWER_DOMAINS, \
-	XELPD_PW_C_POWER_DOMAINS, \
-	XELPD_PW_D_POWER_DOMAINS, \
-	POWER_DOMAIN_PORT_DDI_LANES_C, \
-	POWER_DOMAIN_PORT_DDI_LANES_D, \
-	POWER_DOMAIN_PORT_DDI_LANES_E, \
+#define XELPD_DC_OFF_PORT_POWER_DOMAINS \
 	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
-	POWER_DOMAIN_VGA, \
-	POWER_DOMAIN_AUDIO_PLAYBACK, \
-	POWER_DOMAIN_AUX_IO_C, \
-	POWER_DOMAIN_AUX_IO_D, \
-	POWER_DOMAIN_AUX_IO_E, \
 	POWER_DOMAIN_AUX_C, \
 	POWER_DOMAIN_AUX_D, \
 	POWER_DOMAIN_AUX_E, \
@@ -1279,6 +1268,20 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	POWER_DOMAIN_AUX_TBT3, \
 	POWER_DOMAIN_AUX_TBT4
 
+#define XELPD_PW_2_POWER_DOMAINS \
+	XELPD_PW_B_POWER_DOMAINS, \
+	XELPD_PW_C_POWER_DOMAINS, \
+	XELPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_PORT_DDI_LANES_C, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_C, \
+	POWER_DOMAIN_AUX_IO_D, \
+	POWER_DOMAIN_AUX_IO_E, \
+	XELPD_DC_OFF_PORT_POWER_DOMAINS
+
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
 	XELPD_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_INIT);
@@ -1301,6 +1304,7 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
  */
 
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
+	XELPD_DC_OFF_PORT_POWER_DOMAINS,
 	XELPD_PW_C_POWER_DOMAINS,
 	XELPD_PW_D_POWER_DOMAINS,
 	POWER_DOMAIN_PORT_DSI,
-- 
2.37.2

