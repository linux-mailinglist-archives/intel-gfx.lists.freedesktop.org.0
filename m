Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0066B4EB20C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DD510F0D7;
	Tue, 29 Mar 2022 16:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B6E10F11B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572364; x=1680108364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KN134w2CsUWdHaIlMWX5D6CxMthAUIhi2OJY8rxzRQM=;
 b=fMnKmNLo+qQ8yu+aF+sabmVp1rXvOGZIQYSvQWZEio4RyI9J00QK5bj8
 bWs5Fqmu22dHMeJhYnPxvkTuRkfzqDzb4LtwwKwhseif+CsiaHMM2/ex6
 Uu6NJYDI9o5zoeI3rMpuAKFLxKK8Lrtzj7HJaY1lOQeY4N4mR5RYmpZpX
 fn8+pYzjri0Avhip8JP/JOoXX04OkRuuEqU3nZS3GcAc3B8vmPiriFtz0
 qIomBWC2f0W9ZIUt5/MSwE16HghIVIRqBlSwZoc6dtCdQ0Q1R9DkqAkIN
 Zz0ayLuUxHNY24a1CNUvAsSYo7k6lQmA4wmFQIm0wdEVmmRv8+1EYJF6j Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239237132"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239237132"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521513996"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:33 +0300
Message-Id: <20220329164336.1199359-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/18] drm/i915: Remove the aliasing of power
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 84 +++++++++++++------
 .../drm/i915/display/intel_display_power.h    | 26 ++----
 2 files changed, 67 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 5915d70eaf00b..7065b6265ea20 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -80,12 +80,22 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -98,12 +108,22 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -128,12 +148,22 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -144,12 +174,18 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
index 2ea30a4cfaa89..b58c5bada6d85 100644
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
2.30.2

