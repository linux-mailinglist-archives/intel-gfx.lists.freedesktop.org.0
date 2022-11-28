Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80BB63AE1C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 17:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15E910E070;
	Mon, 28 Nov 2022 16:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30D2210E070
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 16:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669654395; x=1701190395;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jHKT6sDnH7yyLAlQOxe0UfUGtTWjIia9fithUiOPdJQ=;
 b=VQF9mE5qOOUTYYzpRBQy8ZW48sBUedydpT3rI56Iq5sJnLiGIIjCPZcU
 5/IHRbULrp1tceoAIYX18M+wjne+uJgA/N94efKAruvfHfSa448BAAXMT
 NgOcDgsJlxrt+dSsXzO4Rx2ECukXHnVRJL720G2cALXFfLe0TL30qMFQe
 IHlMb+0QXp/h+FumY0o+9rwHL669Xk2xuJWpC+keAKNtPdjURZ8O60Bk9
 BSTN3xuWGZlCxbOtuV4qzefIffMtkQ3TQbNeeWBNxQnNQQROP6Ro8rjt/
 Nq/fdRv3/nEUAU0Y085GKq4gfhf9hB9XBY7joJnIW/O6HqTXHjz4UmJdF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379145232"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="379145232"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 08:52:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="768105742"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="768105742"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 08:52:56 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 17:52:09 +0100
Message-Id: <20221128165209.353706-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix exiting context timeout
 calculation
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
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case context is exiting preempt_timeout_ms is used for timeout,
but since introduction of DRM_I915_PREEMPT_TIMEOUT_COMPUTE it increases
to 7.5 seconds. Heartbeat occurs earlier but it is still 2.5s.

Fixes: d7a8680ec9fb21 ("drm/i915: Improve long running compute w/a for GuC submission")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Hi all,

I am not sure what is expected solution here, and if my patch does not
actually reverts intentions of patch d7a8680ec9fb21. Feel free to propose
something better.
Other alternative would be to increase t/o in IGT tests, but I am not sure
if this is good direction.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 49a8f10d76c77b..bbbbcd9e00f947 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1248,6 +1248,10 @@ static unsigned long active_preempt_timeout(struct intel_engine_cs *engine,
 	/* Force a fast reset for terminated contexts (ignoring sysfs!) */
 	if (unlikely(intel_context_is_banned(rq->context) || bad_request(rq)))
 		return INTEL_CONTEXT_BANNED_PREEMPT_TIMEOUT_MS;
+	else if (unlikely(intel_context_is_exiting(rq->context)))
+		return min_t(typeof(unsigned long),
+			     READ_ONCE(engine->props.preempt_timeout_ms),
+			     CONFIG_DRM_I915_PREEMPT_TIMEOUT);
 
 	return READ_ONCE(engine->props.preempt_timeout_ms);
 }
-- 
2.34.1

