Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071CA14CB86
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 14:39:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8406F55A;
	Wed, 29 Jan 2020 13:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25DF6F563
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 13:39:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 05:39:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="314307282"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jan 2020 05:39:20 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 91E9784411F; Wed, 29 Jan 2020 15:39:16 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 15:39:12 +0200
Message-Id: <20200129133912.810-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Park faster to alleviate kept
 forcewake
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
Cc: Stable <stable@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

To avoid context corruption on some gens, we need to hold forcewake
for long periods of time. This leads to increased energy expenditure
for mostly idle workloads.

To combat the increased power consumption, park GPU more hastily.

As the HW isn't so quick to end up in rc6, this software mechanism
supplements it. So we can apply it, across all gens.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Testcase: igt/i915_pm_rc6_residency/rc6-idle
References: "Add RC6 CTX corruption WA"
Cc: Stable <stable@vger.kernel.org>    # v4.19+
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c  | 2 +-
 drivers/gpu/drm/i915/intel_lrc.c | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index c7d05ac7af3c..6ddc75098b28 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -197,7 +197,7 @@ void i915_gem_park(struct drm_i915_private *i915)
 		return;
 
 	/* Defer the actual call to __i915_gem_park() to prevent ping-pongs */
-	mod_delayed_work(i915->wq, &i915->gt.idle_work, msecs_to_jiffies(100));
+	mod_delayed_work(i915->wq, &i915->gt.idle_work, 1);
 }
 
 void i915_gem_unpark(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/intel_lrc.c b/drivers/gpu/drm/i915/intel_lrc.c
index 13e97faabaa7..284ffdfd8840 100644
--- a/drivers/gpu/drm/i915/intel_lrc.c
+++ b/drivers/gpu/drm/i915/intel_lrc.c
@@ -388,7 +388,12 @@ execlists_user_begin(struct intel_engine_execlists *execlists,
 inline void
 execlists_user_end(struct intel_engine_execlists *execlists)
 {
+	struct intel_engine_cs *engine =
+		container_of(execlists, typeof(*engine), execlists);
+
 	execlists_clear_active(execlists, EXECLISTS_ACTIVE_USER);
+
+	mod_delayed_work(engine->i915->wq, &engine->i915->gt.retire_work, 0);
 }
 
 static inline void
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
