Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F10A13919A8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA256ED17;
	Wed, 26 May 2021 14:15:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A4C6ED16;
 Wed, 26 May 2021 14:15:33 +0000 (UTC)
IronPort-SDR: 6FYxz3CLp+shakdG3jOzkLOVszkNXT96AsaK49CRNS8W767MUdijdg0nMAafHp5kIGQSdAKmyr
 sXHS+8WfznTQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223660544"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223660544"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:15:06 -0700
IronPort-SDR: K04Sj+G0N+nAnBWMevWaZGlo6JAEF8KnufYWJnNMkSVffRenyk36j/lSXGvdd0JEq0WPww7wBU
 /KvGLJZaOJiA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547206258"
Received: from wardmich-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.209.181])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:15:04 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:14:45 +0100
Message-Id: <20210526141456.2334192-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
References: <20210526141456.2334192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/12] drm/i915: Take rcu_read_lock for querying
 fence's driver/timeline names
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
Cc: dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

The name very often may be freed independently of the fence, with the
only protection being RCU. To be safe as we read the names, hold RCU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_sw_fence.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index 2744558f3050..dfabf291e5cd 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -430,11 +430,13 @@ static void timer_i915_sw_fence_wake(struct timer_list *t)
 	if (!fence)
 		return;
 
+	rcu_read_lock();
 	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%ps)\n",
 		  cb->dma->ops->get_driver_name(cb->dma),
 		  cb->dma->ops->get_timeline_name(cb->dma),
 		  cb->dma->seqno,
 		  i915_sw_fence_debug_hint(fence));
+	rcu_read_unlock();
 
 	i915_sw_fence_set_error_once(fence, -ETIMEDOUT);
 	i915_sw_fence_complete(fence);
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
