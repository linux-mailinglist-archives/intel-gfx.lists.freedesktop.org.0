Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD874522664
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 23:33:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030EF10E277;
	Tue, 10 May 2022 21:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D1510E277;
 Tue, 10 May 2022 21:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652218436; x=1683754436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gQjUa14is2CyA6aL4DZCAMxYlPhFqzuQk6NgkxtmASI=;
 b=eAoVSt1Wn38iOYON2dVr9isbRuIrX44zZtk2phn9V3YhIFoCJeIL2Sm4
 d0dt9KPnjQqY1QVekQGG2jaXduuGd7r29XZj4luTyDHif8wAeH99s9pka
 Ano3k2yUobOR0pAVL8ejxS8YdS2aVMoXjk1gELEtSXLHUyZmVSM43DH0h
 A3s+9RcYNxe1MxglLIwWmR2qqdgOViv3hHy3YiwSTxAKnyw1z7P4WdglW
 I00LVOxjaRU2OVvhqZKoxzJDXl8MvGsC6lHSeiR05xs6F+K8f/RC0mvQv
 D6FUDhqYJ73U7iu9udLBBNpbhLpAosHb0mVsrPwL/nBZhHNi6QU1nq2QM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="251557374"
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="251557374"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 14:33:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="565851393"
Received: from brauta-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.50.37])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 14:33:41 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Tue, 10 May 2022 23:33:04 +0200
Message-Id: <20220510213304.101055-4-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220510213304.101055-1-andi.shyti@linux.intel.com>
References: <20220510213304.101055-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/gt: Skip TLB invalidation if
 the engine is not awake
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to check if the engine is awake first before invalidating
its cache.

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 034182f85501b..de26fbe6b71dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1219,6 +1219,9 @@ void intel_gt_invalidate_tlbs(struct intel_gt *gt)
 		const unsigned int timeout_ms = 4;
 		struct reg_and_bit rb;
 
+		if (!intel_engine_pm_is_awake(engine))
+			continue;
+
 		rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
 		if (!i915_mmio_reg_offset(rb.reg))
 			continue;
-- 
2.36.0

