Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F199616A5D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:15:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13B610E542;
	Wed,  2 Nov 2022 17:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20D710E52C
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667409340; x=1698945340;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xOJVSjFCW5pYttOqm1ugB5fhe93Fo9BNDrOK5IvuOos=;
 b=JH7IYSEUKoxz1xY2W+p9r7rB5kEzuvtYYc+Zm9pV3z24DFGoEIVObfDs
 ppFl0ImRucoSJWhkCRkRDwnhBO3+cV4cH07863XB/5RJw+Lr9XTG19kEJ
 i58owM8iDp2GH0WbAwCbHmX7j89cNwvbrJ0m3kx8BVGY4Bhav+No7fun4
 51REa0YmVwik+vIuDrF8Iwr7r5ECWHvni8G+L8Fv2Oy70CEGK8Z9k1IoE
 XhRaH7V/YC84rnWt2IyEDm+OWV4c3JVKkf4S2D0ssVusIIPudXORp84v9
 J3rmNi13HJ9ZsA/T0+DpzRbES8Qp3NlrR+MMlUlSadM8hV/5TeU9HBxkI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296918903"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296918903"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636857835"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636857835"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:15:25 +0200
Message-Id: <20221102171530.3261282-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221102171530.3261282-1-imre.deak@intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Move the POWER_DOMAIN_AUX_IO_A
 definition to its logical place
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

Move the definition of the AUX_IO_A power domain, requiring only the
corresponding AUX_IO_A power well to be enabled, before all the
AUX_<port> power domains, which require both the AUX_IO_<port> and the
DC_OFF power wells to be enabled.

No functional change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.h     | 5 +++--
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 6 +++---
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e2da91c2a9638..da0047359446e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -129,6 +129,8 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUDIO_MMIO";
 	case POWER_DOMAIN_AUDIO_PLAYBACK:
 		return "AUDIO_PLAYBACK";
+	case POWER_DOMAIN_AUX_IO_A:
+		return "AUX_IO_A";
 	case POWER_DOMAIN_AUX_A:
 		return "AUX_A";
 	case POWER_DOMAIN_AUX_B:
@@ -153,8 +155,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUX_USBC5";
 	case POWER_DOMAIN_AUX_USBC6:
 		return "AUX_USBC6";
-	case POWER_DOMAIN_AUX_IO_A:
-		return "AUX_IO_A";
 	case POWER_DOMAIN_AUX_TBT1:
 		return "AUX_TBT1";
 	case POWER_DOMAIN_AUX_TBT2:
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index c847aab7b2f88..fd68d43bfe322 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -76,6 +76,9 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_VGA,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUDIO_PLAYBACK,
+
+	POWER_DOMAIN_AUX_IO_A,
+
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
@@ -90,8 +93,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_USBC5,
 	POWER_DOMAIN_AUX_USBC6,
 
-	POWER_DOMAIN_AUX_IO_A,
-
 	POWER_DOMAIN_AUX_TBT1,
 	POWER_DOMAIN_AUX_TBT2,
 	POWER_DOMAIN_AUX_TBT3,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index dc04afc6cc8ff..43454022e6a66 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -518,8 +518,8 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
-	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_IO_A,
+	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
@@ -658,8 +658,8 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_e,	POWER_DOMAIN_PORT_DDI_IO_E);
 I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
 
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
-	POWER_DOMAIN_AUX_A,
-	POWER_DOMAIN_AUX_IO_A);
+	POWER_DOMAIN_AUX_IO_A,
+	POWER_DOMAIN_AUX_A);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
-- 
2.37.1

