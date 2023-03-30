Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 552F46CF84D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25F010EC94;
	Thu, 30 Mar 2023 00:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A104710EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136864; x=1711672864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1phlpWwA7X7CjtHodxaQogAKXJhRp8HyJVCs0dPxQ2Y=;
 b=U4zNqGYcWqdGMX4kWQPM0+TYKJEoUxBvjPTEAb2AVgYZaEQ850a1ppnl
 BdUrQpRkO8nduDIx7WHRmHo4qac1kl1ybipoxFwNOgEZs7RKfcuhcFQyh
 0/NL6ndkZFqIGyY8IYSVKnG8LRqoYa49ANkdZGxG725zpGBr3546Ku2fL
 15oM11qEm1b3kujZrFVa9QNuNcqtkqT1yYpv9emYuRvBfcWMWC9LWQlkr
 EL6cEbnhWycie1a5WcQGOjOvL7O5ZN6VfwCNNQLFut6ieJAHOhR+9kvZB
 M/idwsy68vYxN8aF0oB5FnfeCUEAtnbfmGi7o6Q2Lt/U9kJBX/hH75m9D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310370"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310370"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668669"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668669"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:40:56 -0700
Message-Id: <20230330004103.1295413-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/pmu: Skip sampling engines with no
 enabled counters
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
---
 drivers/gpu/drm/i915/i915_pmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index e274dba58629..6abd5042dea3 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -339,6 +339,9 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
+		if (!engine->pmu.enable)
+			continue;
+
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-- 
2.36.1

