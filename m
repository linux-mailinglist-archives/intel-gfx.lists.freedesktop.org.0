Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB03645936
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 12:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2489210E040;
	Wed,  7 Dec 2022 11:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2770889ECB;
 Wed,  7 Dec 2022 11:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670413664; x=1701949664;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tAfgwi9IzldEkQbiFY4gRB19ljCnoG8emOaELAjSZWA=;
 b=AGf75P/T5wpwabSquEfV0zoVkuv9lE4Y6GgjNJLnZaIsvm5enGm+CQB0
 XX+NMadK4wI5oz5w7d5FhBF6c9pUBcasl0syjopYLJeBZb2nj+k42Ka/O
 VOo/p1SFcmPB1z9q1Vz/N3zu8isOiQeiQTgmu0SmuqN7Bmx9Tp5tFIPWN
 POcudzs1q3T3TqFVgmOqfyYZ923k5zd7l/Wx5Tcub2xGXwP9c+DVVV/sw
 EA/Fq1yecMUyLH01FTIu25sYxS9h6zYB04JWGLU335mggPKbiyPZkdHQ/
 4vc9DoWMdWWg8dmX8jEylRTh+ypYMy6ZqAHFjJQ5X48uFZR3yfb8XeFHS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="379038801"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="379038801"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 03:47:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="710038376"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="710038376"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 03:47:40 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Wed,  7 Dec 2022 12:47:30 +0100
Message-Id: <20221207114730.77304-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence: adjust
 timeout according to engines
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With introduction of long running compute context preemption timeouts
in some engines (rcs and ccs) can be quite big (by default 7.5s).
Keeping spinner timeout to at least twice bigger than engines preemption
timeout should allow to finish the test without -ETIME error.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 tests/i915/gem_ctx_persistence.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index a844439de19..9fb52818616 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -1173,6 +1173,14 @@ static void many_contexts(int i915, const intel_ctx_cfg_t *cfg)
 	gem_sync(i915, spin->handle);
 	igt_spin_reset(spin);
 
+	for_each_ctx_cfg_engine(i915, cfg, e) {
+		int t = 0;
+
+		gem_engine_property_scanf(i915, e->name,
+					  "preempt_timeout_ms", "%d", &t);
+		timeout = max_t(int64_t, timeout, 2000000ll * t);
+	}
+
 	igt_until_timeout(30) {
 		for_each_ctx_cfg_engine(i915, cfg, e) {
 			const intel_ctx_t *ctx;
-- 
2.34.1

