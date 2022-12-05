Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A64642366
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 08:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22EF10E102;
	Mon,  5 Dec 2022 07:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FCB510E0F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 07:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670224018; x=1701760018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qizcLxjsH8ZEZUZdjGaIM9pc3t01D+upriUrs4KEls4=;
 b=PMb4b0wVEk5vU2kNb867K2Fr8FKEcccZFmFN0Tb4lHxvG1OZMVc/TS6Z
 80jw4Rw+kCgxfzmAfH7Wt/qjKv8gsaRBPBiLVKbkzz80D/k9U9WZi3XhD
 TEsQLJ+5htSp+NGoeXhpwJLoEBZKnGVC0vKZiJK0OsFbipoJN/36T4/M0
 Q7rQS1v84JuSZ4imV0tTaN/tZDkW/NPX1d2MN/4QmGE5DiLZbXyP7RGMl
 H9sgKYsfcuoD7M8gnrnPpVHraFb+MW4yZnI4FEz4BzF5TMjAJmOMzOWEP
 CAGe6Xs0LHWCRjXaii1qpInq4pO6ML0p2/2SPu7mlmRYg0Xk65VlXybO7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="317423666"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="317423666"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 23:06:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="676489337"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="676489337"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 04 Dec 2022 23:06:55 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 12:35:39 +0530
Message-Id: <20221205070543.2510309-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221205070543.2510309-1-suraj.kandpal@intel.com>
References: <20221205070543.2510309-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/gsc: Disable GSC engine and
 power well if FW is not selected
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jonathan Cavitt <jonathan.cavitt@intel.com>

The GSC CS is only used for communicating with the GSC FW, so no need to
initialize it if we're not going to use the FW. If we're not using
neither the engine nor the microcontoller, then we can also disable the
power well.

IMPORTANT: lack of GSC FW breaks media C6 due to opposing requirements
between CS setup and forcewake idleness. See in-code comment for detail.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: John C Harrison <John.C.Harrison@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/intel_uncore.c       |  3 +++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index c33e0d72d670..99c4b866addd 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -894,6 +894,24 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
 	engine_mask_apply_compute_fuses(gt);
 	engine_mask_apply_copy_fuses(gt);
 
+	/*
+	 * The only use of the GSC CS is to load and communicate with the GSC
+	 * FW, so we have no use for it if we don't have the FW.
+	 *
+	 * IMPORTANT: in cases where we don't have the GSC FW, we have a
+	 * catch-22 situation that breaks media C6 due to 2 requirements:
+	 * 1) once turned on, the GSC power well will not go to sleep unless the
+	 *    GSC FW is loaded.
+	 * 2) to enable idling (which is required for media C6) we need to
+	 *    initialize the IDLE_MSG register for the GSC CS and do at least 1
+	 *    submission, which will wake up the GSC power well.
+	 */
+	if (__HAS_ENGINE(info->engine_mask, GSC0) && !intel_uc_wants_gsc_uc(&gt->uc)) {
+		drm_notice(&gt->i915->drm,
+			   "No GSC FW selected, disabling GSC CS and media C6\n");
+		info->engine_mask &= ~BIT(GSC0);
+	}
+
 	return info->engine_mask;
 }
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index c1befa33ff59..e63d957b59eb 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2701,6 +2701,9 @@ void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 		if (fw_domains & BIT(domain_id))
 			fw_domain_fini(uncore, domain_id);
 	}
+
+	if ((fw_domains & BIT(FW_DOMAIN_ID_GSC)) && !HAS_ENGINE(gt, GSC0))
+		fw_domain_fini(uncore, FW_DOMAIN_ID_GSC);
 }
 
 static void driver_flr(struct intel_uncore *uncore)
-- 
2.25.1

