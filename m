Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C2F706A38
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 15:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E1210E426;
	Wed, 17 May 2023 13:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C454710E426
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 13:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684331561; x=1715867561;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tBGP8g+HNEZf16a5v9ZiJ73PZqElfwo/KafYTm+1+O4=;
 b=S8BUc/Aqtfy934WHVtXrQY0MZSDH3QqyEycoQ8opDOage5bBaCWJDkyW
 hoBq7/2QY37kWo0Blt6LpPdDXInFuwa4fMnRXU8XI/ljPiejbexN5O8SC
 J/JFfAI+XXiiLbWXJg1tSJZosA7K3i2Vu0yQPzmd4rEv+IOWcSFcnwh27
 np2Y5LD3e8Sb5a9aUrEWUHut5EibYSbO+QUYgCtN+C4NDyKjzT6cytJi3
 mz7VvuZSvwrjZy25UZSbgxqb87YDaINhbGVZ3KgHa2BZ/nnUfRNwN/nvN
 FgROLtn5Y4okzppQ7KP62w8VX7xAb3vNCd2y7XA3WCrDVhWij7zjypPkt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="417420461"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="417420461"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="679273728"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="679273728"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga006.jf.intel.com with ESMTP; 17 May 2023 06:52:39 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 19:27:54 +0530
Message-Id: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for compute
 contexts
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@intel.com>

Allow compute contexts to submit the maximal amount of work without
blocking userspace.

The original size for user LRC ring's (SZ_16K) was chosen to minimise
memory consumption, without being so small as to frequently stall in the
middle of workloads. With the main consumers being GL / media pipelines
of 2 or 3 batches per frame, we want to support ~10 requests in flight
to allow for the application to control throttling without stalling
within a frame.

v2:
  - cover with else part

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5402a7bbcb1d..9a9ff84c90d7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -964,7 +964,11 @@ static int intel_context_set_gem(struct intel_context *ce,
 	RCU_INIT_POINTER(ce->gem_context, ctx);
 
 	GEM_BUG_ON(intel_context_is_pinned(ce));
-	ce->ring_size = SZ_16K;
+
+	if (ce->engine->class == COMPUTE_CLASS)
+		ce->ring_size = SZ_512K;
+	else
+		ce->ring_size = SZ_16K;
 
 	i915_vm_put(ce->vm);
 	ce->vm = i915_gem_context_get_eb_vm(ctx);
-- 
2.25.1

