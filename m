Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 679994AD78D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94A010E607;
	Tue,  8 Feb 2022 11:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7981E10E646
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320248; x=1675856248;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H/KufUBGh0JEjnfVSYmYoZ5lWCs/teO5mEoasu/fe8Q=;
 b=jJYl1JXm1nrywoT35Ih7ZTBBSJxzg7bYDcaq4348Tv7gB9+kyUfiqopk
 xFDNlKSl1svzZlfMpQYpJ6XiPMEfHk8tOferLm3HEQJURvwH3H24ZyM3h
 ynmG9X0PXKP2AxD+PwCTA3o98QM5cCZcqcypjsPxFHCyjovh9kKkEHci9
 ZQyHPwY3sykcr8b4zDOH4VeUp9QigkEB4namGn+erMayCQiGna0MhUDLS
 q2g3yjoTgKl49CsRp4H+RcpiXWovHjSoOvdeISm7ypodOrxLOaEz8lWRT
 J9AHHSNACYhtAi0xhunIrzwCHFINViHdoESGM62vPZgunyoNb9s8O9Vkn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232496014"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232496014"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915369"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:53 +0200
Message-Id: <20220208113656.179823-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 23/26] drm/i915: Remove the aliasing of power
 domain enum values
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

Aliasing the intel_display_power_domain enum values was required because
of the u64 power domain mask size limit. This makes the dmesg/debugfs
printouts of the domain names somewhat unclear, for instance domain
names for port D are shown on D12+ platforms where the corresponding
port is called TC1. Make this clearer by removing the aliasing which is
possible after a previous patch converting the mask to a bitmap.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 84 +++++++++++++------
 .../drm/i915/display/intel_display_power.h    | 26 ++----
 2 files changed, 67 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2816c3b1faef0..f6a6e15eca9b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -77,12 +77,22 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "PORT_DDI_LANES_E";
 	case POWER_DOMAIN_PORT_DDI_LANES_F:
 		return "PORT_DDI_LANES_F";
-	case POWER_DOMAIN_PORT_DDI_LANES_G:
-		return "PORT_DDI_LANES_G";
-	case POWER_DOMAIN_PORT_DDI_LANES_H:
-		return "PORT_DDI_LANES_H";
-	case POWER_DOMAIN_PORT_DDI_LANES_I:
-		return "PORT_DDI_LANES_I";
+	case POWER_DOMAIN_PORT_DDI_LANES_TC1:
+		return "PORT_DDI_LANES_TC1";
+	case POWER_DOMAIN_PORT_DDI_LANES_TC2:
+		return "PORT_DDI_LANES_TC2";
+	case POWER_DOMAIN_PORT_DDI_LANES_TC3:
+		return "PORT_DDI_LANES_TC3";
+	case POWER_DOMAIN_PORT_DDI_LANES_TC4:
+		return "PORT_DDI_LANES_TC4";
+	case POWER_DOMAIN_PORT_DDI_LANES_TC5:
+		return "PORT_DDI_LANES_TC5";
+	case POWER_DOMAIN_PORT_DDI_LANES_TC6:
+		return "PORT_DDI_LANES_TC6";
+	case POWER_DOMAIN_PORT_DDI_LANES_D_XELPD:
+		return "PORT_DDI_LANES_D_XELPD";
+	case POWER_DOMAIN_PORT_DDI_LANES_E_XELPD:
+		return "PORT_DDI_LANES_E_XELPD";
 	case POWER_DOMAIN_PORT_DDI_IO_A:
 		return "PORT_DDI_IO_A";
 	case POWER_DOMAIN_PORT_DDI_IO_B:
@@ -95,12 +105,22 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "PORT_DDI_IO_E";
 	case POWER_DOMAIN_PORT_DDI_IO_F:
 		return "PORT_DDI_IO_F";
-	case POWER_DOMAIN_PORT_DDI_IO_G:
-		return "PORT_DDI_IO_G";
-	case POWER_DOMAIN_PORT_DDI_IO_H:
-		return "PORT_DDI_IO_H";
-	case POWER_DOMAIN_PORT_DDI_IO_I:
-		return "PORT_DDI_IO_I";
+	case POWER_DOMAIN_PORT_DDI_IO_TC1:
+		return "PORT_DDI_IO_TC1";
+	case POWER_DOMAIN_PORT_DDI_IO_TC2:
+		return "PORT_DDI_IO_TC2";
+	case POWER_DOMAIN_PORT_DDI_IO_TC3:
+		return "PORT_DDI_IO_TC3";
+	case POWER_DOMAIN_PORT_DDI_IO_TC4:
+		return "PORT_DDI_IO_TC4";
+	case POWER_DOMAIN_PORT_DDI_IO_TC5:
+		return "PORT_DDI_IO_TC5";
+	case POWER_DOMAIN_PORT_DDI_IO_TC6:
+		return "PORT_DDI_IO_TC6";
+	case POWER_DOMAIN_PORT_DDI_IO_D_XELPD:
+		return "PORT_DDI_IO_D_XELPD";
+	case POWER_DOMAIN_PORT_DDI_IO_E_XELPD:
+		return "PORT_DDI_IO_E_XELPD";
 	case POWER_DOMAIN_PORT_DSI:
 		return "PORT_DSI";
 	case POWER_DOMAIN_PORT_CRT:
@@ -125,12 +145,22 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUX_E";
 	case POWER_DOMAIN_AUX_F:
 		return "AUX_F";
-	case POWER_DOMAIN_AUX_G:
-		return "AUX_G";
-	case POWER_DOMAIN_AUX_H:
-		return "AUX_H";
-	case POWER_DOMAIN_AUX_I:
-		return "AUX_I";
+	case POWER_DOMAIN_AUX_USBC1:
+		return "AUX_USBC1";
+	case POWER_DOMAIN_AUX_USBC2:
+		return "AUX_USBC2";
+	case POWER_DOMAIN_AUX_USBC3:
+		return "AUX_USBC3";
+	case POWER_DOMAIN_AUX_USBC4:
+		return "AUX_USBC4";
+	case POWER_DOMAIN_AUX_USBC5:
+		return "AUX_USBC5";
+	case POWER_DOMAIN_AUX_USBC6:
+		return "AUX_USBC6";
+	case POWER_DOMAIN_AUX_D_XELPD:
+		return "AUX_D_XELPD";
+	case POWER_DOMAIN_AUX_E_XELPD:
+		return "AUX_E_XELPD";
 	case POWER_DOMAIN_AUX_IO_A:
 		return "AUX_IO_A";
 	case POWER_DOMAIN_AUX_TBT_C:
@@ -141,12 +171,18 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUX_TBT_E";
 	case POWER_DOMAIN_AUX_TBT_F:
 		return "AUX_TBT_F";
-	case POWER_DOMAIN_AUX_TBT_G:
-		return "AUX_TBT_G";
-	case POWER_DOMAIN_AUX_TBT_H:
-		return "AUX_TBT_H";
-	case POWER_DOMAIN_AUX_TBT_I:
-		return "AUX_TBT_I";
+	case POWER_DOMAIN_AUX_TBT1:
+		return "AUX_TBT1";
+	case POWER_DOMAIN_AUX_TBT2:
+		return "AUX_TBT2";
+	case POWER_DOMAIN_AUX_TBT3:
+		return "AUX_TBT3";
+	case POWER_DOMAIN_AUX_TBT4:
+		return "AUX_TBT4";
+	case POWER_DOMAIN_AUX_TBT5:
+		return "AUX_TBT5";
+	case POWER_DOMAIN_AUX_TBT6:
+		return "AUX_TBT6";
 	case POWER_DOMAIN_GMBUS:
 		return "GMBUS";
 	case POWER_DOMAIN_INIT:
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 5ede1146b1582..3c555cb05c9c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -48,18 +48,15 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_LANES_D,
 	POWER_DOMAIN_PORT_DDI_LANES_E,
 	POWER_DOMAIN_PORT_DDI_LANES_F,
-	POWER_DOMAIN_PORT_DDI_LANES_G,
-	POWER_DOMAIN_PORT_DDI_LANES_H,
-	POWER_DOMAIN_PORT_DDI_LANES_I,
 
-	POWER_DOMAIN_PORT_DDI_LANES_TC1 = POWER_DOMAIN_PORT_DDI_LANES_D, /* tgl+ */
+	POWER_DOMAIN_PORT_DDI_LANES_TC1,
 	POWER_DOMAIN_PORT_DDI_LANES_TC2,
 	POWER_DOMAIN_PORT_DDI_LANES_TC3,
 	POWER_DOMAIN_PORT_DDI_LANES_TC4,
 	POWER_DOMAIN_PORT_DDI_LANES_TC5,
 	POWER_DOMAIN_PORT_DDI_LANES_TC6,
 
-	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD = POWER_DOMAIN_PORT_DDI_LANES_TC5, /* XELPD */
+	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD,
 	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD,
 
 	POWER_DOMAIN_PORT_DDI_IO_A,
@@ -68,18 +65,15 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_IO_D,
 	POWER_DOMAIN_PORT_DDI_IO_E,
 	POWER_DOMAIN_PORT_DDI_IO_F,
-	POWER_DOMAIN_PORT_DDI_IO_G,
-	POWER_DOMAIN_PORT_DDI_IO_H,
-	POWER_DOMAIN_PORT_DDI_IO_I,
 
-	POWER_DOMAIN_PORT_DDI_IO_TC1 = POWER_DOMAIN_PORT_DDI_IO_D, /* tgl+ */
+	POWER_DOMAIN_PORT_DDI_IO_TC1,
 	POWER_DOMAIN_PORT_DDI_IO_TC2,
 	POWER_DOMAIN_PORT_DDI_IO_TC3,
 	POWER_DOMAIN_PORT_DDI_IO_TC4,
 	POWER_DOMAIN_PORT_DDI_IO_TC5,
 	POWER_DOMAIN_PORT_DDI_IO_TC6,
 
-	POWER_DOMAIN_PORT_DDI_IO_D_XELPD = POWER_DOMAIN_PORT_DDI_IO_TC5, /* XELPD */
+	POWER_DOMAIN_PORT_DDI_IO_D_XELPD,
 	POWER_DOMAIN_PORT_DDI_IO_E_XELPD,
 
 	POWER_DOMAIN_PORT_DSI,
@@ -94,18 +88,15 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_D,
 	POWER_DOMAIN_AUX_E,
 	POWER_DOMAIN_AUX_F,
-	POWER_DOMAIN_AUX_G,
-	POWER_DOMAIN_AUX_H,
-	POWER_DOMAIN_AUX_I,
 
-	POWER_DOMAIN_AUX_USBC1 = POWER_DOMAIN_AUX_D, /* tgl+ */
+	POWER_DOMAIN_AUX_USBC1,
 	POWER_DOMAIN_AUX_USBC2,
 	POWER_DOMAIN_AUX_USBC3,
 	POWER_DOMAIN_AUX_USBC4,
 	POWER_DOMAIN_AUX_USBC5,
 	POWER_DOMAIN_AUX_USBC6,
 
-	POWER_DOMAIN_AUX_D_XELPD = POWER_DOMAIN_AUX_USBC5, /* XELPD */
+	POWER_DOMAIN_AUX_D_XELPD,
 	POWER_DOMAIN_AUX_E_XELPD,
 
 	POWER_DOMAIN_AUX_IO_A,
@@ -113,11 +104,8 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_TBT_D,
 	POWER_DOMAIN_AUX_TBT_E,
 	POWER_DOMAIN_AUX_TBT_F,
-	POWER_DOMAIN_AUX_TBT_G,
-	POWER_DOMAIN_AUX_TBT_H,
-	POWER_DOMAIN_AUX_TBT_I,
 
-	POWER_DOMAIN_AUX_TBT1 = POWER_DOMAIN_AUX_TBT_D, /* tgl+ */
+	POWER_DOMAIN_AUX_TBT1,
 	POWER_DOMAIN_AUX_TBT2,
 	POWER_DOMAIN_AUX_TBT3,
 	POWER_DOMAIN_AUX_TBT4,
-- 
2.27.0

