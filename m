Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2396B1B2762
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 15:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE766E0DB;
	Tue, 21 Apr 2020 13:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1216E0DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 13:17:04 +0000 (UTC)
IronPort-SDR: eP06wirA65HLGlLHx6L3+gTve+O6yeMpd1oD3RsUiQVIwbZrRsyRclO3IpT5I9QZbfmD61zNbt
 +UoQP0AJlWsQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 06:17:04 -0700
IronPort-SDR: 1745YgjbMgn31NmpEjwF/GlwJMhPirY5ExT1bYBAQLPaQvGSWJ8gJNIuQxLdBGy3AGXV1Vxszc
 9OpPXsqyW6Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="291596026"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 21 Apr 2020 06:17:03 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 6C7868442BD; Tue, 21 Apr 2020 16:16:35 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 16:16:33 +0300
Message-Id: <20200421131633.8246-5-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Split ctx timestamp selftest into
 two
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We use different workarounds for render engine than
for other engines. Split the selftest according to these
types so that we get error rates per workaround.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 32c4096b627b..7daee5ca7d3b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4749,10 +4749,9 @@ static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
 	return err;
 }
 
-static int live_lrc_timestamp(void *arg)
+static int __live_lrc_timestamp(struct intel_gt *gt, bool rcs)
 {
 	struct lrc_timestamp data = {};
-	struct intel_gt *gt = arg;
 	enum intel_engine_id id;
 	const u32 poison[] = {
 		0,
@@ -4774,6 +4773,12 @@ static int live_lrc_timestamp(void *arg)
 		unsigned long heartbeat;
 		int i, err = 0;
 
+		if (rcs && data.engine->class != RENDER_CLASS)
+			continue;
+
+		if (!rcs && data.engine->class == RENDER_CLASS)
+			continue;
+
 		engine_heartbeat_disable(data.engine, &heartbeat);
 
 		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
@@ -4825,6 +4830,20 @@ static int live_lrc_timestamp(void *arg)
 	return 0;
 }
 
+static int live_lrc_timestamp_rcs(void *arg)
+{
+	struct intel_gt *gt = arg;
+
+	return __live_lrc_timestamp(gt, true);
+}
+
+static int live_lrc_timestamp_xcs(void *arg)
+{
+	struct intel_gt *gt = arg;
+
+	return __live_lrc_timestamp(gt, false);
+}
+
 static struct i915_vma *
 create_user_vma(struct i915_address_space *vm, unsigned long size)
 {
@@ -5748,7 +5767,8 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(live_lrc_state),
 		SUBTEST(live_lrc_gpr),
 		SUBTEST(live_lrc_indirect_ctx_bb),
-		SUBTEST(live_lrc_timestamp),
+		SUBTEST(live_lrc_timestamp_rcs),
+		SUBTEST(live_lrc_timestamp_xcs),
 		SUBTEST(live_lrc_garbage),
 		SUBTEST(live_pphwsp_runtime),
 		SUBTEST(live_lrc_isolation),
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
