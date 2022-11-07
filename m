Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4058461FB2A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC06B10E4FE;
	Mon,  7 Nov 2022 17:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFFDC10E4F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841787; x=1699377787;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PvGyy6xMAqsgNojR72wZTkXUBqZ82XXKN8jaMzN5C3Q=;
 b=kA20yqPbmtVycl4ZTAP7ueXcWBglopzrWDB2N+DibGMVlx7Lv4on5P/t
 KmFj5DzIf3A2DW5vn7lRILZIS6Ic558mqKmywljufVe1rQvqEFqRL7deJ
 uQRMli1WGAQIuNsqDIl8P2n6Y/W0NGT9izIwmMT/f5dThA+Wsbfx/tS3v
 OjULwukdOJSreqalRZjTXAGTqa7jspPjGIBg9N9kB2XVtI/0pkPOX+21i
 xHPAjPSRZJamsLCNlUmOFrR7vnfatliW1ldyS+q0zUsKnor63x5Zp7awN
 G5zFWn7Z8ivbICP1HXofe8Ce33PIfjnbDiQuHrsu51F3Qicf6oXIT+iSZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247206"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247206"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248484"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248484"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:29 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:14 +0200
Message-Id: <20221107170917.3566758-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Add missing DC_OFF power
 domain->well mappings
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

Add the missing DC_OFF power domain -> DC_OFF power well mappings on all
platforms. This didn't cause a problem as the DC_OFF power domain is
only used on JSL, where the mapping was already correct.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index aa9d1ae9e8a26..f5d66ca85b19b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -333,6 +333,7 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_a_e,
@@ -437,6 +438,7 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
 	POWER_DOMAIN_GMBUS,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
@@ -518,6 +520,7 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
 	POWER_DOMAIN_GMBUS,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_a,	POWER_DOMAIN_PORT_DDI_IO_A);
@@ -858,6 +861,7 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(tgl_pwdoms_ddi_io_tc1,	POWER_DOMAIN_PORT_DDI_IO_TC1);
@@ -1054,6 +1058,7 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc rkl_power_wells_main[] = {
@@ -1136,6 +1141,7 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
@@ -1300,6 +1306,7 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 static const struct i915_power_well_desc xelpd_power_wells_main[] = {
@@ -1421,6 +1428,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc1,
-- 
2.37.1

