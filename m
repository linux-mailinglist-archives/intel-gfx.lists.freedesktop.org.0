Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56266627DA7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5BE10E194;
	Mon, 14 Nov 2022 12:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD88D10E095
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428593; x=1699964593;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=agXE+fGsaMGgc7X7TKO0+5hdljsT2WatALP1dwsOgeQ=;
 b=b3rNpUiFCrqfUUBsbMAm897lQLaBK0Lwta3yyONT3kZShokWych2NrtU
 fLh9T8HSzi8zt4FYymjRClMOoe/PA+ln+6XTiNGi/BCgotd2mhF9a1jXJ
 fLLBM1siMlnplqrUkqCCdMxj2hjJw9q7U/eeLBcJ86VsGbb6Z+/+97vXw
 9C8avSxJgTUR2zEKt0d+dTlG5bnlrbZLZiIOakl6u6z9Y6SzZS851QvOG
 SUrJLmvip6uAoOLfjaoJnNDyd7OUDmbX+Ubg9CsEwBG3YydQe+wGwCHzf
 KD9GsbKrnfQLrVtz1Z7+LuGfBGmmss/ZgVc1BEpvtiXPh6s2tNgvc8EtP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664121"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664121"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539843"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539843"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:58 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:45 +0200
Message-Id: <20221114122251.21327-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 3/9] drm/i915: Move the POWER_DOMAIN_AUX_IO_A
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
index 1874339e59457..b95c0c2e932fc 100644
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
index 1e77e52c87fec..b853ce2a6e592 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -77,6 +77,9 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_VGA,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUDIO_PLAYBACK,
+
+	POWER_DOMAIN_AUX_IO_A,
+
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
@@ -91,8 +94,6 @@ enum intel_display_power_domain {
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

