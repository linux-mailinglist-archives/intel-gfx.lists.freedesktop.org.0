Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BEE69928C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 12:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4FE10ED43;
	Thu, 16 Feb 2023 10:59:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D0C10ED42;
 Thu, 16 Feb 2023 10:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676545179; x=1708081179;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/CcC0aOeeAtqrOsPao/E+8cmDCKIM6s5J/aBXV6fZRc=;
 b=YOd5oEjHsZbpTwrSBFC34yseSXvmok4GErqCgzQySB8ubLtkB8ie/Kf5
 De5QXzG1zWq60hnQ4a9oOAd3/MQKcyIENZFtPa27SCBTFTOcajczxZJje
 kh6qtQUXND9/KEAC48o2NDg5fqL/rcvf3knwbFlAlKCO67fwjvUdflyWY
 iBbVHhmMUAeBz5pFBtTlB0jmHW0UYI+8nHGzjuwAVddqLGcdmNVxAOvHX
 LeaFavkFZ/hPeNg5O828M468+ixDEKHvzDKX5cGmR7qzezCmV9idFA1fq
 KSSzj2CXEfLE6zrEPGQGXQu0uCU5Z2WUb1rBAW01EIsqkcJ+PYgWRx75S A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="311317620"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="311317620"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:59:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="812917926"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="812917926"
Received: from murrayal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.229.164])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:59:37 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 16 Feb 2023 10:59:21 +0000
Message-Id: <20230216105921.624960-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230216105921.624960-1-tvrtko.ursulin@linux.intel.com>
References: <20230216105921.624960-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 9/9] drm/i915: Wait boost requests waited upon by
 others
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

Use the newly added dma-fence API to apply waitboost not only requests
which have been marked with I915_WAIT_PRIORITY by i915, but which may be
waited upon by others (such as for instance buffer sharing in multi-GPU
scenarios).

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 488b180f8821..e24fac5c1567 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -2042,7 +2042,8 @@ long i915_request_wait_timeout(struct i915_request *rq,
 	 * but at a cost of spending more power processing the workload
 	 * (bad for battery).
 	 */
-	if (flags & I915_WAIT_PRIORITY && !i915_request_started(rq))
+	if (((flags & I915_WAIT_PRIORITY) || dma_fence_wait_count(&rq->fence))
+	    && !i915_request_started(rq))
 		intel_rps_boost(rq);
 
 	wait.tsk = current;
-- 
2.34.1

