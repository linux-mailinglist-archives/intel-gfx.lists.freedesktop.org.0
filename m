Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 574DB61FB29
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 341E210E4FB;
	Mon,  7 Nov 2022 17:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB58410E4F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841786; x=1699377786;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r71vNBN03LIVB6wnqV9QXXNTheuJEPBjeFhgZWFfXdw=;
 b=TyHIAte8CsVm1wbAqzNyrZ3IeCiXntjjryPMkraK9BesTTWH22nrSOgk
 EE1z1pnsxgGevYN2icLS0KO7qr8GnIYCBGU02ajjeuVp1p9RdsHwvtFmc
 f3jnzyYGk4/owhkY6WHvdSTAvVwDmoAwEJlpbCQGec+KwYO+AAui7tZD4
 NlNvfavXepbKuYRBANnXcGfRHqVMBLJojQYc8Wd094rb1YXktq5bsAEJN
 sgPQLNM327VgNpXosKTNjeixFqk6nf8hecLY6ViX/VoIH9eI4J7FBJAS+
 3zsaoxmrDOocI3qJSGiVd8I5knz9+gNzrz+3xyhYf1yDiwg+uHkuJPhp7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247187"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247187"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248468"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248468"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:28 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:13 +0200
Message-Id: <20221107170917.3566758-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Add missing AUX_IO_A power
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

BXT and GLK were missing the AUX_IO_A power domain -> PHY A common power
well mapping, add these now. This didn't cause a problem as the
AUX_IO_A and DDI_LANES_A power domains are acquired together.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index b82c0d0a80c5f..aa9d1ae9e8a26 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -441,6 +441,7 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
 
 I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
 	POWER_DOMAIN_PORT_DDI_LANES_A,
+	POWER_DOMAIN_AUX_IO_A,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_INIT);
 
@@ -525,6 +526,7 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_ddi_io_c,	POWER_DOMAIN_PORT_DDI_IO_C);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
 	POWER_DOMAIN_PORT_DDI_LANES_A,
+	POWER_DOMAIN_AUX_IO_A,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_INIT);
 
-- 
2.37.1

