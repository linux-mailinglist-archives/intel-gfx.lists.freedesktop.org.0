Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B257704D70
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 14:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBD810E345;
	Tue, 16 May 2023 12:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82E410E346
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684238913; x=1715774913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L18fKW9ORMGsf3jN7+YLUGx4TJDG/SDqh2vOowYSGAM=;
 b=ZdKVqSb/HGbU6O9mBpK7+vpOAcoMXM2B6fV0fsj/IoWuDLmELeOZXgwM
 k3g+jUAX89GvAOJFZfYt3r36oUJLQMfLxVeecTAilr4KQU2Obpg1j+HVg
 M1WLzt8msY2N1SX4pkoy2odbcVkFuq9BP0+oswMH9SHAYPGG/hsxleZVC
 3ZxtwSXUg+1RotmW59cqTbAmiqaQIv9lJECU/ANJKG7mv5+X2Pp051T6W
 tc8rwrYwsstPPciSV4vqt+RFGQHb13H+7ua6nQNVKiRofyiyLPVix4xYR
 54Db8Mews7abAH9xrU/wM9uhOmkuP7FKWf3X7t/cvML5cptVw1CcaL9gs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="350295031"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="350295031"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 05:08:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678828223"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="678828223"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga006.jf.intel.com with ESMTP; 16 May 2023 05:08:31 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 17:43:45 +0530
Message-Id: <20230516121345.1036399-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Use large rings for compute
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

Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 5402a7bbcb1d..0edb7be6fa5e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -965,6 +965,8 @@ static int intel_context_set_gem(struct intel_context *ce,
 
 	GEM_BUG_ON(intel_context_is_pinned(ce));
 	ce->ring_size = SZ_16K;
+	if (ce->engine->class == COMPUTE_CLASS)
+		ce->ring_size = SZ_512K;
 
 	i915_vm_put(ce->vm);
 	ce->vm = i915_gem_context_get_eb_vm(ctx);
-- 
2.25.1

