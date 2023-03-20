Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE186C1787
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 16:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D569010E5C4;
	Mon, 20 Mar 2023 15:14:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB0810E2D9;
 Mon, 20 Mar 2023 15:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679325272; x=1710861272;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wEJa0GP3/V393lo37hu+c7/l6uvFaV1Uh+P3Q5auMJA=;
 b=YVU5RG74+pQXoeemrIZaY8ao/S2BOpm0YAcHhN6xzVnLi646mP5AU2uj
 JfjvevIwEgr1k2yMndo+MPXt2fOAOwOVGYUltkrCxFMsM1V94IBWVMkdI
 Udl9YNz/wxHJ2nj9wBEzxWXulKBNLxrDc37AwCdWnwSFZslNh2vXpogaw
 F6wwg1Hl7zVrn8NLvhYjbqzIpMXH4esNF5+8WmMFMYwH6IXWAhu6CN6ei
 LnaP9ktQ4HcTWeZpPPXreH60a60cJXTUOGcITjN+f7sRlxlhq2XO2Tu8d
 8K4R+QFtFy22e38Gcptvymvr2DrlLLQYaHQ6NWgDvzyWANsxZrvA3kaca Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="322529499"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="322529499"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 08:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770231521"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="770231521"
Received: from sbrieffi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.210.83])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 08:14:29 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 20 Mar 2023 15:14:23 +0000
Message-Id: <20230320151423.1708436-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix context runtime accounting
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When considering whether to mark one context as stopped and another as
started we need to look at whether the previous and new _contexts_ are
different and not just requests. Otherwise the software tracked context
start time was incorrectly updated to the most recent lite-restore time-
stamp, which was in some cases resulting in active time going backward,
until the context switch (typically the hearbeat pulse) would synchronise
with the hardware tracked context runtime. Easiest use case to observe
this behaviour was with a full screen clients with close to 100% engine
load.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: bb6287cb1886 ("drm/i915: Track context current active time")
Cc: <stable@vger.kernel.org> # v5.19+
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 1bbe6708d0a7..750326434677 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2018,6 +2018,8 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 	 * inspecting the queue to see if we need to resumbit.
 	 */
 	if (*prev != *execlists->active) { /* elide lite-restores */
+		struct intel_context *prev_ce = NULL, *active_ce = NULL;
+
 		/*
 		 * Note the inherent discrepancy between the HW runtime,
 		 * recorded as part of the context switch, and the CPU
@@ -2029,9 +2031,15 @@ process_csb(struct intel_engine_cs *engine, struct i915_request **inactive)
 		 * and correct overselves later when updating from HW.
 		 */
 		if (*prev)
-			lrc_runtime_stop((*prev)->context);
+			prev_ce = (*prev)->context;
 		if (*execlists->active)
-			lrc_runtime_start((*execlists->active)->context);
+			active_ce = (*execlists->active)->context;
+		if (prev_ce != active_ce) {
+			if (prev_ce)
+				lrc_runtime_stop(prev_ce);
+			if (active_ce)
+				lrc_runtime_start(active_ce);
+		}
 		new_timeslice(execlists);
 	}
 
-- 
2.37.2

