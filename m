Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA5A6476ED
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 21:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84FBE10E4EE;
	Thu,  8 Dec 2022 20:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 738F210E4D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 20:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670529693; x=1702065693;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uqsZbYCSIFpGliD4WVHVYsXx/J8cWHL7XHf5jgRzkB4=;
 b=h6i38n9BXk+MR5iHGONIvlVNaGtmTORTKA+7KQjWvwZyftNSrWQaQ0eb
 vCi1UBJQatZhSOnWbypMlF5iTCwNVN1rDYZog+hTWu3isLrAEbZixaEdw
 q0gwYsZVUDfCeQKcz7+IZOvuDBfwSAu2DhdJjM/H3PB4qpIkidy954Yoq
 CNIA2ZX8Vu5RR1DkO3upRVcMUr7R3tpJa8lORRha291QF0zbnc5nQyUby
 VprhmIy323Vdg/x2ax/8fdm3AU74yXIIspWhZUaUF/r2IGSG4uegvrGCN
 LntyIO3SAmpt8jbgKpC0q30WErwphF1X84g9iGk+vSyIlxQz7XDcZRvaP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="317301832"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317301832"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597480206"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="597480206"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 12:01:15 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:05:20 -0800
Message-Id: <20221208200521.2928378-6-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
References: <20221208200521.2928378-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 5/6] drm/i915/gsc: Disable GSC engine and power
 well if FW is not selected
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
index 64685393f031..8dee9e62a73e 100644
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
 
 /*
-- 
2.37.3

