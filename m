Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCF479DAA0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 23:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134D110E00E;
	Tue, 12 Sep 2023 21:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ACE010E00E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 21:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694553772; x=1726089772;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qlgmtRTogPNVNBt5UUvJK1/Jxd7bPT0KR9YAc5teFV4=;
 b=j/DkyUKgywB9RK95o2LB8p2eSokfRbOeoBONZMNScffMBnw6h4J56/19
 Kc4TYdM5XL/BF/De4tIqESS1O+ZrswiwJg7Z0yzHwLeoI1X/JBV2j5gUZ
 eU5hyCK0vqs0hDl4PL9AsYaIj26bS44DyACVrXY0J/CMVDREovZ2Cj2vQ
 kU8X6VHDnRMzh3Jvv/4RVlhA3B+HwA+kGLl9pOQqF+3drcXW3jFXts/k9
 8csFS8QGFb25UgaGPdDhSnk+LvkpdC5ynTGAFNqEYtg7zEw3xb17fwaKf
 t4jrmHkwLq9rQ/R5yGEvdH4UM78cylt6qznwN+WqPI62Olz06ZqijjSp/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="444935229"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="444935229"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 14:22:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="1074699976"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="1074699976"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 14:22:50 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Tue, 12 Sep 2023 14:22:47 -0700
Message-Id: <20230912212247.1828681-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/pmu: Move execlist stats initialization to
 execlist specific setup
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

engine->stats is a union of execlist and guc stat objects. When execlist
specific fields are initialized, the initial state of guc stats is
affected. This results in bad busyness values when using GuC mode. Move
the execlist initialization from common code to execlist specific code.

Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 1 -
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index dfb69fc977a0..84a75c95f3f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -558,7 +558,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id,
 		DRIVER_CAPS(i915)->has_logical_contexts = true;
 
 	ewma__engine_latency_init(&engine->latency);
-	seqcount_init(&engine->stats.execlists.lock);
 
 	ATOMIC_INIT_NOTIFIER_HEAD(&engine->context_status_notifier);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 4d05321dc5b5..e8f42ec6b1b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3548,6 +3548,8 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	logical_ring_default_vfuncs(engine);
 	logical_ring_default_irqs(engine);
 
+	seqcount_init(&engine->stats.execlists.lock);
+
 	if (engine->flags & I915_ENGINE_HAS_RCS_REG_STATE)
 		rcs_submission_override(engine);
 
-- 
2.38.1

