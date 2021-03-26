Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93A934A5F5
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 11:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F976E12E;
	Fri, 26 Mar 2021 10:58:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6DBC6E12E;
 Fri, 26 Mar 2021 10:58:09 +0000 (UTC)
IronPort-SDR: f4xc08Ugx2B8uwyywRBkDS2ZFWhV+a+Upbrt7DZkcPlrowXq2xwRGWpL7JguOs1kWvG7kLlTep
 O9MoFEBUlhDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178673454"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="178673454"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 03:58:08 -0700
IronPort-SDR: ODl213jGKttC7IdceiUB+8Tpq4C/XRFnYIelrYir3HLmNHFz7JoZg248JXNlal3zpSZbZiDH71
 bTAQ2w7INB8w==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="409850619"
Received: from andrewdo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.247.55])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 03:58:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 26 Mar 2021 10:57:59 +0000
Message-Id: <20210326105759.2387104-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Take request reference before arming
 the watchdog timer
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reference needs to be taken before arming the timer. Luckily, given the
default timer period of 20s, the potential to hit the race is extremely
unlikely.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 9b4d0598ee94 ("drm/i915: Request watchdog infrastructure")
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
Test-with: 20210318162400.2065097-1-tvrtko.ursulin@linux.intel.com
---
 drivers/gpu/drm/i915/i915_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 9165971c3c47..bec9c3652188 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -350,6 +350,8 @@ static void __rq_arm_watchdog(struct i915_request *rq)
 	if (!ce->watchdog.timeout_us)
 		return;
 
+	i915_request_get(rq);
+
 	hrtimer_init(&wdg->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	wdg->timer.function = __rq_watchdog_expired;
 	hrtimer_start_range_ns(&wdg->timer,
@@ -357,7 +359,6 @@ static void __rq_arm_watchdog(struct i915_request *rq)
 					   NSEC_PER_USEC),
 			       NSEC_PER_MSEC,
 			       HRTIMER_MODE_REL);
-	i915_request_get(rq);
 }
 
 static void __rq_cancel_watchdog(struct i915_request *rq)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
