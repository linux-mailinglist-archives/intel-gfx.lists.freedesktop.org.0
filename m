Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAFB77FD4A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 19:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F3810E53B;
	Thu, 17 Aug 2023 17:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4616E10E53B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 17:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692294807; x=1723830807;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nla7x+i2yEuNuUTBclE48tGbhFENfyfZZWYTBxSzUS8=;
 b=lqDsDVX9Khv4CU1Q2Mesuqqt9TfWEltAo51HpSrsSna6npF+kRj3DqFv
 0YU9N2u9xyKKh6IklwXejIORFGbMJeNqfohwhTyCSWZZk7MzJm22t0DLM
 bBGv33M2gDDpCAPmAYUpyLC0ecT/HDXti/STayFfr9jTHAClzIWtiE5nZ
 a2r1vBrvEC0HmtE9B+FU9kti9I/Bmbpt3O2M+MmNg52K2y8Po+VcLT6ar
 frnOJKyo8ylB4X+xm0fZ9iJescWPgAKhQC+Nw7cXhgCNtLemnahq9x5Lp
 XYS2hRyaaATfaxILkCzJ4BADGX+m6koPwB0lyI13UD/+FkmBEoL3vyfp1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403867481"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403867481"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 10:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="1065372314"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="1065372314"
Received: from cszukala-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.212.20.127])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 10:53:25 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 14:53:12 -0300
Message-ID: <20230817175312.295559-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Remove unused
 POWER_DOMAIN_MODESET
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

That power domain became unused after commit 41b4c7fe72b6 ("drm/i915:
Disable DC states for all commits").

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c     | 2 --
 drivers/gpu/drm/i915/display/intel_display_power.h     | 1 -
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 9 ---------
 3 files changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 71d70bd9fd82..68cf5e6b0b46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -186,8 +186,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "GMBUS";
 	case POWER_DOMAIN_INIT:
 		return "INIT";
-	case POWER_DOMAIN_MODESET:
-		return "MODESET";
 	case POWER_DOMAIN_GT_IRQ:
 		return "GT_IRQ";
 	case POWER_DOMAIN_DC_OFF:
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d3b5d04b7b07..d6c2a5846bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -108,7 +108,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_TBT6,
 
 	POWER_DOMAIN_GMBUS,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_TC_COLD_OFF,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5ad04cd42c15..0f1b93d139ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -332,7 +332,6 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
 I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
 	SKL_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUX_A,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
@@ -437,7 +436,6 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
 	BXT_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_GMBUS,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
@@ -519,7 +517,6 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
 	GLK_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_GMBUS,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_GT_IRQ,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
@@ -685,7 +682,6 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
 I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
 	ICL_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUX_A,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
@@ -861,7 +857,6 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
@@ -1058,7 +1053,6 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
 	RKL_PW_3_POWER_DOMAINS,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
@@ -1141,7 +1135,6 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
@@ -1311,7 +1304,6 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
@@ -1426,7 +1418,6 @@ I915_DECL_PW_DOMAINS(xehpd_pwdoms_dc_off,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
-	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_INIT);
 
-- 
2.41.0

