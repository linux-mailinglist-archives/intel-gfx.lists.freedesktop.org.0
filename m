Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CFD691F8D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 14:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919A310E82D;
	Fri, 10 Feb 2023 13:07:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6535810E278;
 Fri, 10 Feb 2023 13:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676034424; x=1707570424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/CcC0aOeeAtqrOsPao/E+8cmDCKIM6s5J/aBXV6fZRc=;
 b=VMCwUOqVkNZXPC2VY+/qzaK/tM6tZzHfyWmhnYnkPQMEGSXROZj8vpbk
 Cu3UrUNKUF/VPCdJf69ZrgfWbnpEn49QJn+v7DmJIoMK8E0kb14o4KF5K
 xKxo6rYtfBW5NDJIUThl3XBQ3kcJPnH5irVag7u7HRwrYob839e3vIoUl
 GUFv4i5w20SZgNr75Ava64TB2cp8GVjKbj6ToMKnOOBlLE6PONL/OAhgM
 VxjYdrTMk/tGnpjidt0Uj6jXoY+QRdQpv0xp2vFOl64IbF4eULmhvPy1u
 DUrEReNjsx4eWw7ZQGxsW7snP0oP2XNdNwdVcpE4CBCnrYuth5S1C9hLE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="329045895"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="329045895"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:07:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="731711317"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="731711317"
Received: from athornbe-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.209.249])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:07:03 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 10 Feb 2023 13:06:47 +0000
Message-Id: <20230210130647.580135-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
References: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 5/5] drm/i915: Wait boost requests waited upon by
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

