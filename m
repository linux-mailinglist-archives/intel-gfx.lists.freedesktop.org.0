Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B569D627DA5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EB610E0EA;
	Mon, 14 Nov 2022 12:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4B710E095
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428594; x=1699964594;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PvGyy6xMAqsgNojR72wZTkXUBqZ82XXKN8jaMzN5C3Q=;
 b=Tpiln4dq6VAS7HSf7HarO4SpIRYCYE4hjslccYVuZwlpqCkQCTXQKkw8
 mON9PT7jtgWnhcPPtrEvcU2xNlXWYxGzqkPqHg+7jrHnO3oH2WPU1s+uj
 Mhaxi2UcrOjG8kKoHvebrqISRONpIuAqBYj3sA33XdlzjsRfwKmcK5tFq
 YbMfqc2lt+Fpx1p4q6nrSLFTJcU9ffKU2Jy/zrw350kJCHYv3IlKF3Kih
 E+74Y3VvvfHtuz1dvJPMqrmguealira/nDkosfYeYU5sVV5AogvOUSCVn
 ZEIZvJSaMCSTWRI7g6jgIdsm6BlMpuaekQCoQHG7tOZkLn/vDFy7E/fBw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664136"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664136"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539869"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539869"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:49 +0200
Message-Id: <20221114122251.21327-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 7/9] drm/i915: Add missing DC_OFF power
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

