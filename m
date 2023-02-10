Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA4D6915BC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 01:42:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7496710EC1F;
	Fri, 10 Feb 2023 00:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CD910EC17;
 Fri, 10 Feb 2023 00:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675989733; x=1707525733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sMybT8oi7wszvjd2ky9EJasI8bH71Athddp+fgc93+0=;
 b=B4AbFYuja1qmX0b00jTaYCtXi7oGz5SWUfao2WxcifcI3DZQqOFq3ERB
 x28LK0nGa5TTk7PnalK+hMwnWaG6Gk/4mDW6g0Ts4egvjWWOVy2cMBllU
 gns2RKe2D+NRQXcPkKiwOPdGnlNi+kJcQ4C3kWYIX/EImeqpeiOLJigA7
 WFdUhJUBMBRfh6xGwChkiWq4Kxi9ah5mmAOdaKIL+2AIrg0EpVwp5dSwX
 QQnxX4y8euDdwv/pIwZT+X+rR9/TDOkAnGHqGl0gvMbhJ++8AUumQf/h4
 NXOWY1UOGEZ4bkfkiG4qIu2Pl/iPPWbSsib0dC7BV8Rr7Oz1/Hi5lbgHx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="327990107"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="327990107"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 16:42:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="913342502"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="913342502"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 09 Feb 2023 16:42:12 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Feb 2023 16:42:08 -0800
Message-Id: <20230210004209.1877143-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230210004209.1877143-1-alan.previn.teres.alexis@intel.com>
References: <20230210004209.1877143-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 7/8] drm/i915/pxp: On MTL,
 KCR enabling doesn't wait on tee component
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On legacy platforms, KCR HW enabling is done at the time the mei
component interface is bound. It's also disabled during unbind.
However, for MTL onwards, we don't depend on a tee component
to start sending GSC-CS firmware messages.

Thus, immediately enable (or disable) KCR HW on PXP's init,
fini and resume.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    | 19 +++++++++++++++----
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c |  3 ++-
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index c25e9ff16b57..425e552e335d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -119,6 +119,7 @@ static void destroy_vcs_context(struct intel_pxp *pxp)
 static void pxp_init_full(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = pxp->ctrl_gt;
+	intel_wakeref_t wakeref;
 	int ret;
 
 	/*
@@ -140,10 +141,15 @@ static void pxp_init_full(struct intel_pxp *pxp)
 	if (ret)
 		return;
 
-	if (HAS_ENGINE(pxp->ctrl_gt, GSC0))
+	if (HAS_ENGINE(pxp->ctrl_gt, GSC0)) {
 		ret = intel_pxp_gsccs_init(pxp);
-	else
+		if (!ret) {
+			with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref)
+				intel_pxp_init_hw(pxp);
+		}
+	} else {
 		ret = intel_pxp_tee_component_init(pxp);
+	}
 	if (ret)
 		goto out_context;
 
@@ -239,15 +245,20 @@ int intel_pxp_init(struct drm_i915_private *i915)
 
 void intel_pxp_fini(struct drm_i915_private *i915)
 {
+	intel_wakeref_t wakeref;
+
 	if (!i915->pxp)
 		return;
 
 	i915->pxp->arb_is_valid = false;
 
-	if (HAS_ENGINE(i915->pxp->ctrl_gt, GSC0))
+	if (HAS_ENGINE(i915->pxp->ctrl_gt, GSC0)) {
+		with_intel_runtime_pm(&i915->pxp->ctrl_gt->i915->runtime_pm, wakeref)
+			intel_pxp_fini_hw(i915->pxp);
 		intel_pxp_gsccs_fini(i915->pxp);
-	else
+	} else {
 		intel_pxp_tee_component_fini(i915->pxp);
+	}
 
 	destroy_vcs_context(i915->pxp);
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 4f836b317424..1a04067f61fc 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -43,8 +43,9 @@ void intel_pxp_resume_complete(struct intel_pxp *pxp)
 	 * The PXP component gets automatically unbound when we go into S3 and
 	 * re-bound after we come out, so in that scenario we can defer the
 	 * hw init to the bind call.
+	 * NOTE: GSC-CS backend doesn't rely on components.
 	 */
-	if (!pxp->pxp_component)
+	if (!HAS_ENGINE(pxp->ctrl_gt, GSC0) && !pxp->pxp_component)
 		return;
 
 	intel_pxp_init_hw(pxp);
-- 
2.39.0

