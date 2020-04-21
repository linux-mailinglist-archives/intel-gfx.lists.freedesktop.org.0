Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E231B29A9
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E04C6E0FC;
	Tue, 21 Apr 2020 14:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CA96E0FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:30:04 +0000 (UTC)
IronPort-SDR: xDsaPjYnratc1lJpNV4MW43YhdIEEwiAj7U6FFX4QuxSEiRBhYtLEJ54LtJ1qCBX+ueU1PXFV9
 e8J3d24XgZHg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 07:30:03 -0700
IronPort-SDR: JEL++3l1EBHAJ2ZG2WB0BvlEff3SW1tGuz+FTIjBORVr74Gg6ATQhjzol0FaROP2A+UcVSZzoY
 cQ+xQsrShUzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="291615204"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 21 Apr 2020 07:30:02 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 50529843785; Tue, 21 Apr 2020 17:29:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Apr 2020 17:29:32 +0300
Message-Id: <20200421142932.8401-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <158747615980.19285.17681670652527012229@build.alporthouse.com>
References: <158747615980.19285.17681670652527012229@build.alporthouse.com>
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
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 32c4096b627b..dd260496876c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4749,10 +4749,9 @@ static int __lrc_timestamp(const struct lrc_timestamp *arg, bool preempt)
 	return err;
 }
 
-static int live_lrc_timestamp(void *arg)
+static int __live_lrc_timestamp(struct intel_gt *gt, unsigned long class_filter)
 {
 	struct lrc_timestamp data = {};
-	struct intel_gt *gt = arg;
 	enum intel_engine_id id;
 	const u32 poison[] = {
 		0,
@@ -4774,6 +4773,9 @@ static int live_lrc_timestamp(void *arg)
 		unsigned long heartbeat;
 		int i, err = 0;
 
+		if (!(class_filter & BIT(data.engine->class)))
+			continue;
+
 		engine_heartbeat_disable(data.engine, &heartbeat);
 
 		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
@@ -4825,6 +4827,20 @@ static int live_lrc_timestamp(void *arg)
 	return 0;
 }
 
+static int live_lrc_timestamp_rcs(void *arg)
+{
+	struct intel_gt *gt = arg;
+
+	return __live_lrc_timestamp(gt, BIT(RENDER_CLASS));
+}
+
+static int live_lrc_timestamp_xcs(void *arg)
+{
+	struct intel_gt *gt = arg;
+
+	return __live_lrc_timestamp(gt, ~BIT(RENDER_CLASS));
+}
+
 static struct i915_vma *
 create_user_vma(struct i915_address_space *vm, unsigned long size)
 {
@@ -5748,7 +5764,8 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
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
