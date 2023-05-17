Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6264707362
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 22:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D52410E487;
	Wed, 17 May 2023 20:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4A610E475
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 20:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684356951; x=1715892951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CelYkmB1/m4ItmUgogM+FRqPlWoJ6AXltO/8LYu6FVc=;
 b=Q29qxtpWp1uxTdqNtOjc8xGBRKTx8J0F9pNaASblLHIOCP4d5ejeVFoN
 eSR9dvTLtQLZ3rU2oKXGip+hh76gdhyp/srLcsJIQtv51E3IpeyhkG+wx
 Ky9++9eemPBz+yFi+NnvPoluXHJT+EVdcyJ0m/wDxBw9jgmFJ8Y8E233g
 K81jsd6mimovvBqxA8WEPQ0yHi1xpllIySONqV3OFo0l3qApV6oEwTieL
 d5Eo9MIJIYEBjyYQ6GtXzG4ozUZPSF4bLZAzKoHdlPPwU8wF3HILl1HkE
 WDLKhw90gjmjlSTTLiiAiGUDYUzvR77GIQRNJ3dGdYGs4b1fxuVskXsr9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="417535105"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="417535105"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 13:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="948402150"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="948402150"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 13:55:49 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 13:55:38 -0700
Message-Id: <20230517205542.3680895-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230517205542.3680895-1-umesh.nerlige.ramappa@intel.com>
References: <20230517205542.3680895-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 3/7] drm/i915/pmu: Skip sampling engines with
 no enabled counters
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As we have more and more engines do not waste time sampling the ones no-
one is monitoring.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 9edf87ee5d10..6d594f67f365 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -350,6 +350,9 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
+		if (!engine->pmu.enable)
+			continue;
+
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-- 
2.36.1

