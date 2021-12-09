Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1812346EE87
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6621910E83F;
	Thu,  9 Dec 2021 16:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBAD589E5B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 12:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639051626; x=1670587626;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X0F8C1F5odHZ3V3wWxMxaqqsNgGvOlyLyUDGHLO1mt8=;
 b=AGtuXxq4rY6hjCsdWMUJLiFihliFyZ3aAwGvCbH347bnVVz4cylxYpYl
 QB/pgis71ex3k/ofblx08CDiRuN+RRPQBXlYhuNlUUYbt61mIvMFAfFQU
 vLniHzzOY+5WQZnjkIo3JwV7eKNbNfuA4N11E0KsC6iSMCVMeMNN8FBky
 JCLRcMwTNr5G7VzHfr+cDUA1JMc8N//HC3+QUHVix95x618zKQaCpYd1R
 gWSQd79xjCMhzyyBKvdE7MyGC/41v4hunLWGNC3T0KkM4cLdd9e7Epatg
 AIhglgDVbAy2DnZSnpovrSYysimZBkUDt11kXstnbYupX1p9KM8MChqGv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="262188336"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="262188336"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 04:07:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="516273470"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 09 Dec 2021 04:07:04 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 17:31:34 +0530
Message-Id: <20211209120134.4057906-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: prepare reset based on reset domain
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

Most code paths does full reset with preparing all
engines for reset except below two :

1. Single engine reset needs to prepare engines for
reset based on its reset domain. In __intel_engine
_reset_bh is a place needs loop over to do engine
prepare for all engines which are in same reset
domain before triggering reset.

2. enable_error_interrupt() in drivers/gpu/drm/i915/
gt/intel_execlists_submission.c needs similar change.

whenever there is full reset done, engine prepare for
all engines are already being called right now before
actual reset triggered, except above two scenario
seeking single engine reset.

Note: Requirement of this change is occurred recently
because whenever engine does reset, all engines in
same reset domain gets reset and in case engine goes
for reset before stopping CS or applying required W/A,
there are high chances of hang/crash. reset_prepare_
engine takes care of it.

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c |  9 +++++++++
 drivers/gpu/drm/i915/gt/intel_reset.c                | 12 ++++++++++--
 drivers/gpu/drm/i915/gt/intel_reset.h                |  1 +
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index a69df5e9e77a..668e7ba5b254 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2806,6 +2806,15 @@ static void enable_error_interrupt(struct intel_engine_cs *engine)
 		drm_err(&engine->i915->drm,
 			"engine '%s' resumed still in error: %08x\n",
 			engine->name, status);
+		if (engine->reset_domain) {
+			struct intel_engine_cs *nengine;
+			enum intel_engine_id id;
+
+			for_each_engine(nengine, engine->gt, id)
+				if (nengine->reset_domain ==
+				    engine->reset_domain)
+					reset_prepare_engine(nengine);
+		}
 		__intel_gt_reset(engine->gt, engine->mask);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 63199f0550e6..454d6ab1d9f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -705,7 +705,7 @@ int intel_reset_guc(struct intel_gt *gt)
  * Ensure irq handler finishes, and not run again.
  * Also return the active request so that we only search for it once.
  */
-static void reset_prepare_engine(struct intel_engine_cs *engine)
+void reset_prepare_engine(struct intel_engine_cs *engine)
 {
 	/*
 	 * During the reset sequence, we must prevent the engine from
@@ -1167,7 +1167,15 @@ int __intel_engine_reset_bh(struct intel_engine_cs *engine, const char *msg)
 	if (!intel_engine_pm_get_if_awake(engine))
 		return 0;
 
-	reset_prepare_engine(engine);
+	if (engine->reset_domain) {
+		struct intel_engine_cs *nengine;
+		enum intel_engine_id id;
+
+		for_each_engine(nengine, gt, id)
+			if (nengine->reset_domain ==
+			    engine->reset_domain)
+				reset_prepare_engine(nengine);
+	}
 
 	if (msg)
 		drm_notice(&engine->i915->drm,
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/gt/intel_reset.h
index adc734e67387..7abd5d49f0e5 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset.h
@@ -28,6 +28,7 @@ void intel_gt_handle_error(struct intel_gt *gt,
 			   const char *fmt, ...);
 #define I915_ERROR_CAPTURE BIT(0)
 
+void reset_prepare_engine(struct intel_engine_cs *engine);
 void intel_gt_reset(struct intel_gt *gt,
 		    intel_engine_mask_t stalled_mask,
 		    const char *reason);
-- 
2.31.1

