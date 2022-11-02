Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA046166A9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 16:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CF010E4D6;
	Wed,  2 Nov 2022 15:57:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131F910E4D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 15:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667404640; x=1698940640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5GhEwrAST1dR48LPDBGI5d2xFcFHvm3znHxSr9Vtjxo=;
 b=ctZjLg7EUcCs+64uWGr+SXNAI6QI7q7Bl8xONdMJOBgHdAIVkKqUTWFb
 BdBk1Edbf7qDU11A5JMzkf584+9/nm3RJfoWDsMKoyw9aoSCiKqRsB5IR
 evlMjz2xBNN9BxqeyOk5ytquT2vlDc7Wq0FiWx9rf7tp6UrV8SXIvBmu3
 IC0eynVmZVsmaRb0kSacdW7XP1mbWr/Kqt55RWEs7tFiGrchcMemnLMza
 fLGjTjBwxNQLUgWsOufRTYr0clK4ZY0q5Bjdkzx3pb9TtOJT9dd4prRtw
 7fk/ZX1Vgj9s7gtYYhWKawQGU4D8K/Lqf5c6XrLm/zlTGx/hE6M8sj7yM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395755858"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="395755858"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 08:57:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879532423"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="879532423"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 08:57:16 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 16:57:09 +0100
Message-Id: <20221102155709.31717-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Reduce oversaturation of
 request smoketesting
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

The goal in launching the request smoketest is to have sufficient tasks
running across the system such that we are likely to detect concurrency
issues. We aim to have 2 tasks using the same engine, gt, device (each
level of locking around submission and signaling) running at the same
time. While tasks may not be running all the time as they synchronise
with the gpu, they will be running most of the time, in which case
having many more tasks than cores available is wasteful (and
dramatically increases the workload causing excess runtime). Aim to
limit the number of tasks such that there is at least 2 running per
engine, spreading surplus cores around the engines (rather than running
a task per core per engine.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index a46350c37e9d..4380473ceb98 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1710,7 +1710,8 @@ static int live_breadcrumbs_smoketest(void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	const unsigned int nengines = num_uabi_engines(i915);
-	const unsigned int ncpus = num_online_cpus();
+	const unsigned int ncpus = /* saturate with nengines * ncpus */
+		max_t(int, 2, DIV_ROUND_UP(num_online_cpus(), nengines));
 	unsigned long num_waits, num_fences;
 	struct intel_engine_cs *engine;
 	struct smoke_thread *threads;
@@ -1782,7 +1783,7 @@ static int live_breadcrumbs_smoketest(void *arg)
 			goto out_flush;
 		}
 		/* One ring interleaved between requests from all cpus */
-		smoke[idx].max_batch /= num_online_cpus() + 1;
+		smoke[idx].max_batch /= ncpus + 1;
 		pr_debug("Limiting batches to %d requests on %s\n",
 			 smoke[idx].max_batch, engine->name);
 
-- 
2.38.0

