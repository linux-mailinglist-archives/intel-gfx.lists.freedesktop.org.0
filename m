Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018C6799C7D
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 05:59:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F55110E0FC;
	Sun, 10 Sep 2023 03:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DACDD10E075;
 Sun, 10 Sep 2023 03:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694318328; x=1725854328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8kgE2vDd4envF6ybBIHG4KsloqsYw8n65ahuHXkC8AA=;
 b=dX78x3rJlD+0IT55PdlSKy+MMoR6JQxQtrzRSgafPZKB0s9u7Lz4OPXs
 KZGlFs5GbxYkA4re0VJzRNw8PnrPICisiTvsUITxYFDb+YKY6LOj7gUMI
 SSt0KZbW1dEfjrL4Dl5haMD4nDsaA0uz44z7gkloOEm/pRVsi0sseOPsD
 +4CzOKaaiHRhSXYmdYW60O7FXW+YZAxXpwBSU6NL6aFXgnJ7VICMLV0ak
 Hmi+wu6D320ydRfpL38X3vsbMoj96VSwhftIMZVo1UQMLPs/vE3WtJ6eB
 rvz5OkfhRi6ffP2BzqSksGRQH4iO5sWKwspQvVf890Ys16G0bmnIQOdyj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="381684300"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="381684300"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2023 20:58:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="736377110"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="736377110"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2023 20:58:48 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Sep 2023 20:58:44 -0700
Message-Id: <20230910035846.493766-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/guc: Flush context destruction
 worker at suspend
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
Cc: , Alan Previn <alan.previn.teres.alexis@intel.com>,
	dri-devel@lists.freedesktop.org,
	Rodrigo Vivi <rodrigo.vivi@intel.com>, intel.com@freedesktop.org,
	Mousumi Jana <mousumi.jana@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When suspending, flush the context-guc-id
deregistration worker at the final stages of
intel_gt_suspend_late when we finally call gt_sanitize
that eventually leads down to __uc_sanitize so that
the deregistration worker doesn't fire off later as
we reset the GuC microcontroller.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Tested-by: Mousumi Jana <mousumi.jana@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 +++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc.c             | 2 ++
 3 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index cabdc645fcdd..0ed44637bca0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1578,6 +1578,11 @@ static void guc_flush_submissions(struct intel_guc *guc)
 	spin_unlock_irqrestore(&sched_engine->lock, flags);
 }
 
+void intel_guc_submission_flush_work(struct intel_guc *guc)
+{
+	flush_work(&guc->submission_state.destroyed_worker);
+}
+
 static void guc_flush_destroyed_contexts(struct intel_guc *guc);
 
 void intel_guc_submission_reset_prepare(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index c57b29cdb1a6..b6df75622d3b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -38,6 +38,8 @@ int intel_guc_wait_for_pending_msg(struct intel_guc *guc,
 				   bool interruptible,
 				   long timeout);
 
+void intel_guc_submission_flush_work(struct intel_guc *guc);
+
 static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
 {
 	return guc->submission_supported;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 98b103375b7a..eb3554cb5ea4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -693,6 +693,8 @@ void intel_uc_suspend(struct intel_uc *uc)
 		return;
 	}
 
+	intel_guc_submission_flush_work(guc);
+
 	with_intel_runtime_pm(&uc_to_gt(uc)->i915->runtime_pm, wakeref) {
 		err = intel_guc_suspend(guc);
 		if (err)
-- 
2.39.0

