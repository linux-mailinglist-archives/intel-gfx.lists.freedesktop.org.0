Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF75454636D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 12:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4459810E052;
	Fri, 10 Jun 2022 10:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5FB410E052
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 10:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654856438; x=1686392438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FYCxi358F1u+QpiCVfPHg/D+aDeF35YknMStPYkJUpk=;
 b=jahab1TCA7ZVCWQ/tOaDKnKTjFpPbLzrWFABcgOe3Ngchv2cEqgrbTEj
 oTiAGCxArc5CahOC+lMWbvlEgR/bThn4QqNocm74kG1Lg9vDV72ZxGrEc
 GlvCvRWEJyOVotl1Qh4+JQxm55tVAsdjY/PynQ95L0ib19lk88vWZjRe9
 BcFUXcEPwH0Y8M3GXi2DsgAuuI8MYSUIPmnKHBNY//A87NiRFU3P4NjI1
 T/cp/s7AshahpiPUBulavBkBKPF7cdSOPVJUtm0aLUWS7CemwOkaWSPpu
 W1Smm8Ow3oasi2gG8ZN88arrw8Ub6A5NEWqhp8MrnGqQjnYcRafXtEH1k Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="277620366"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="277620366"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 03:20:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="649763125"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 03:20:29 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 12:20:21 +0200
Message-Id: <20220610102021.29519-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: fix
 parallel_ordering with no-reloc
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure to allocate ahnd so that spinner starts with no-reloc
execbuf otherwise this will fail on platforms with relocation disabled.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6117
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_exec_balancer.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index 186975c46..636c96f9e 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -3108,6 +3108,7 @@ static void parallel_ordering(int i915, unsigned int flags)
 		unsigned int count;
 		int i = 0, fence = 0;
 		uint32_t batch[16];
+		uint64_t ahnd;
 		struct drm_i915_gem_execbuffer2 execbuf;
 		struct drm_i915_gem_exec_object2 obj[32];
 		igt_spin_t *spin;
@@ -3162,7 +3163,9 @@ static void parallel_ordering(int i915, unsigned int flags)
 
 		/* Block parallel submission */
 		spin_ctx = ctx_create_engines(i915, siblings, count);
+		ahnd = get_simple_ahnd(i915, spin_ctx->id);
 		spin = __igt_spin_new(i915,
+				      .ahnd = ahnd,
 				      .ctx = spin_ctx,
 				      .engine = 0,
 				      .flags = IGT_SPIN_FENCE_OUT |
-- 
2.35.1

