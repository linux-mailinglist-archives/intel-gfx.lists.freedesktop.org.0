Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9110375A8C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7BBE6ECF8;
	Thu,  6 May 2021 18:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE43B6E50C;
 Thu,  6 May 2021 18:57:09 +0000 (UTC)
IronPort-SDR: zhKnJInjwH1CPEJWzu2k6MkIrZ4SJFfklHbSPQxk7fRz8vCNPnLxR8buTSKjbB+XiJTngMny9a
 Njn68yDITQlw==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196530982"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196530982"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:09 -0700
IronPort-SDR: ydu9xTX2cPhLpUUFuUd0PFGplGDIXcp0f//5BUr3nD9CtxHkJPfwss7itTVTnHGwclFITJleIq
 dmhrWam+2C9g==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583364"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:08 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:13:18 -0700
Message-Id: <20210506191451.77768-5-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 04/97] drm/i915/guc: skip disabling CTBs
 before sanitizing the GuC
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

If we're about to sanitize the GuC, something might have going wrong
beforehand, so we should avoid trying to talk to it. Even if GuC is
still running fine, the sanitize will reset its internal state and clear
the CTB registration, so there is still no need to explicitly do so.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2469
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 6abb8f2dc33d..892c1315ce49 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -504,7 +504,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 
 	ret = intel_guc_sample_forcewake(guc);
 	if (ret)
-		goto err_communication;
+		goto err_log_capture;
 
 	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_enable(guc);
@@ -529,8 +529,6 @@ static int __uc_init_hw(struct intel_uc *uc)
 	/*
 	 * We've failed to load the firmware :(
 	 */
-err_communication:
-	guc_disable_communication(guc);
 err_log_capture:
 	__uc_capture_load_err_log(uc);
 err_out:
@@ -558,9 +556,6 @@ static void __uc_fini_hw(struct intel_uc *uc)
 	if (intel_uc_uses_guc_submission(uc))
 		intel_guc_submission_disable(guc);
 
-	if (guc_communication_enabled(guc))
-		guc_disable_communication(guc);
-
 	__uc_sanitize(uc);
 }
 
@@ -577,7 +572,6 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
 	if (!intel_guc_is_ready(guc))
 		return;
 
-	guc_disable_communication(guc);
 	__uc_sanitize(uc);
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
