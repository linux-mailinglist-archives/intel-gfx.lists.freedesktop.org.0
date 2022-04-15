Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44490503051
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8C210E61C;
	Fri, 15 Apr 2022 22:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F93810E603
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 22:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650062430; x=1681598430;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2HKsMJ5jBv2bhu1rlAWA3Ut7jXi2EEt0czOjjIRIt40=;
 b=WnnBC8DKq92VqfAN+gta/QqFkbCgnzWXf+SmD4TQUMRUmaVJwclDcE6g
 IDD/FblIGs2rUDsGDPNhTu0yPXgdSNCBXq3oZB8WxHCgewXGFH94J2Hdt
 wEzrK6RYvmfRLDa+jPiopdzg4e9kDaabSHUaR86yKt8vmkDpnQ/fPlzD8
 cgU0v4v8plJwK1aTuMC6+hOX+25MbGzVXNh3u1JkJuDuV8hldTFYEksI+
 Mr13+FqlYDNJcEnSBOef8wfyAUXKarSabntfoKoEBDaN3VB+EGYWoXgwu
 t8kkPD7yT44CfwfOGudYKkMxi5eN4OK/pN+CiiTopQzQrQ61BbGJHNKCa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="326144497"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="326144497"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="574563716"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri, 15 Apr 2022 15:40:22 -0700
Message-Id: <20220415224025.3693037-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/guc: Enable GuC based workarounds
 for DG2
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

From: John Harrison <John.C.Harrison@Intel.com>

There are some workarounds for DG2 that are implemented in the GuC
firmware. However, the KMD is required to enable these by setting the
appropriate flag as GuC does not know what platform it is running on.
  Wa_16011759253
  Wa_14012630569
  Wa_14013746162

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 14 ++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 185fb4d59791..fd04c4cd9d44 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -292,6 +292,20 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
 		flags |= GUC_WA_POLLCS;
 
+	/* Wa_16011759253:dg2_g10:a0 */
+	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
+		flags |= GUC_WA_GAM_CREDITS;
+
+	/*
+	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
+	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
+	 *
+	 * The same WA bit is used for both and 22011391025 is applicable to
+	 * all DG2.
+	 */
+	if (IS_DG2(gt->i915))
+		flags |= GUC_WA_DUAL_QUEUE;
+
 	/* Wa_22011802037: graphics version 12 */
 	if (GRAPHICS_VER(gt->i915) == 12)
 		flags |= GUC_WA_PRE_PARSER;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index b136d6528fbf..fe5751f67b19 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -98,6 +98,8 @@
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
 #define GUC_CTL_WA			1
+#define   GUC_WA_GAM_CREDITS		BIT(10)
+#define   GUC_WA_DUAL_QUEUE		BIT(11)
 #define   GUC_WA_PRE_PARSER		BIT(14)
 #define   GUC_WA_POLLCS			BIT(18)
 
-- 
2.35.1

