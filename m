Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949ECA60764
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 03:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294BD10E2D5;
	Fri, 14 Mar 2025 02:13:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GCt2E8hw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F254D10E268
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 02:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741918378; x=1773454378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JVkg6c/JmVFLzs12mF15ZIrjc9SAYg5qvcmIiyB4f2Q=;
 b=GCt2E8hwgw7u0pTCogBnpnVHmUJHHYZgXkX7+qIk52RoiqvsyhEr25IV
 q/UN41VVR7s9gKsgkIY/WUZ5joQDFx4ZfZrj5RuPeDsYdHkVYnCzAfya4
 5/Gz+71F/bO3e7VtkkB7W6IohR6vTJrwE2GE2k7WsBl5MMZrMsebYe66m
 e3CIoH7/eUVZu+BS1djp5y+KPpOsTPNbQffDqXSQcZuGAmbRocUcG8otr
 kXNiWZdFKwVNYnjawWIAWHu6ssjKTskRwWsVrGe+FBmqxvAoA/aI+3Rrh
 0IKJfdOHt2woGJwbPfuycT7li9G5b2hzI4Kk6V4f92ZMuMROZN/gUaRBw A==;
X-CSE-ConnectionGUID: pGU/+IyrS0O/VQlAqoh4mw==
X-CSE-MsgGUID: 9TOpYCJCRVWt/kWBHEcv9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65520046"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65520046"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:54 -0700
X-CSE-ConnectionGUID: o1gVRHTuSpynz5A7lXtjug==
X-CSE-MsgGUID: 3nv9ixBJQ86jYVLUTK2TzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126009303"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 19:12:53 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH 4/4] drm/i915/gt: Use proper sleeping functions for timeouts
 shorter than 20ms
Date: Fri, 14 Mar 2025 03:12:24 +0100
Message-ID: <20250314021225.11813-5-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250314021225.11813-1-andi.shyti@linux.intel.com>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

msleep is very unprecise for timeouts shorter than 20
milliseconds and most probably will sleep longer. Use
uslee_range() instead.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 3 ++-
 drivers/gpu/drm/i915/gt/selftest_tlb.c | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 908483ab0bc8..99de5d85a096 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -60,7 +60,8 @@ int live_rc6_manual(void *arg)
 
 	/* Force RC6 off for starters */
 	__intel_rc6_disable(rc6);
-	msleep(1); /* wakeup is not immediate, takes about 100us on icl */
+	/* wakeup is not immediate, takes about 100us on icl */
+	usleep_range(1000, 2000);
 
 	res[0] = rc6_residency(rc6);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 3941f2d6fa47..69ed946a39e5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -143,7 +143,7 @@ pte_tlbinv(struct intel_context *ce,
 	if (ce->engine->class == OTHER_CLASS)
 		msleep(200);
 	else
-		msleep(10);
+		usleep_range(10000, 20000);
 
 	if (va == vb) {
 		if (!i915_request_completed(rq)) {
-- 
2.47.2

