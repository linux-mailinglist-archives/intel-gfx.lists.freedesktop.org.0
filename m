Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB6E71A381
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 17:59:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5E810E57B;
	Thu,  1 Jun 2023 15:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE99E10E579;
 Thu,  1 Jun 2023 15:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685635159; x=1717171159;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ve9QZGbTxSNuzHx5RHAUSBeYPL5PLRlJC2UXzEzmSRQ=;
 b=Cfgyl9SA4FOnknsi8hVLJCp46IAiFuzbGutLV3x6x0QkMSEu67btKm41
 v05dw0FQ0iDKcIaNKRwhqnSOfZR9UskmblLrfimBsHNH6eW1ooT+AFNlI
 3czQfJRlPPE0R2bEdA1p0JVj4T/PFG/5EBE1D1GvRtTYVq1keZYabgLoa
 jIh61otRGEA319npJF0PaAuUsf4WHeb5WmZ1ANtVybMpsyVqN5Y2q7Sy1
 6+FCxdqLjrBkuwoNF8aRLzCWQhxJIoI8K/4DNrZ8tTf/kqLJLPJCNiOWM
 i3/NSqB7szEFXgfy95whUOfClC8xnSMt6Q/J+TnCmgFA3Y1tnJAecpphC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358022459"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="358022459"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 08:59:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="701605223"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="701605223"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga007.jf.intel.com with ESMTP; 01 Jun 2023 08:59:18 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 08:59:17 -0700
Message-Id: <20230601155917.2402415-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp/mtl: intel_pxp_init_hw needs
 runtime-pm inside pm-complete
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

In the case of failed suspend flow or cases where the kernel does not go
into full suspend but goes from suspend_prepare back to resume_complete,
we get called for a pm_complete but without runtime_pm guaranteed.

Thus, ensure we take the runtime_pm when calling intel_pxp_init_hw
from within intel_pxp_resume_complete.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 1a04067f61fc..1d184dcd63c7 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -36,6 +36,8 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
 
 void intel_pxp_resume_complete(struct intel_pxp *pxp)
 {
+	intel_wakeref_t wakeref;
+
 	if (!intel_pxp_is_enabled(pxp))
 		return;
 
@@ -48,7 +50,8 @@ void intel_pxp_resume_complete(struct intel_pxp *pxp)
 	if (!HAS_ENGINE(pxp->ctrl_gt, GSC0) && !pxp->pxp_component)
 		return;
 
-	intel_pxp_init_hw(pxp);
+	with_intel_runtime_pm(&pxp->ctrl_gt->i915->runtime_pm, wakeref)
+		intel_pxp_init_hw(pxp);
 }
 
 void intel_pxp_runtime_suspend(struct intel_pxp *pxp)

base-commit: a66da4c33d8ede541aea9ba6d0d73b556a072d54
-- 
2.39.0

