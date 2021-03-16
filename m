Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB4D33D92E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 17:23:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7EF6E41D;
	Tue, 16 Mar 2021 16:23:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37F289CA2;
 Tue, 16 Mar 2021 16:23:40 +0000 (UTC)
IronPort-SDR: BsD0FRzdWXv+GL5sijwv6FHxroBaeQc+6qbN3e2QRqxYSFg7IMLrHku0wUhI6wNdR71lnO2fYV
 dZBdKJtw83mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="209231224"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="209231224"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:23:40 -0700
IronPort-SDR: g444deZpES3Yg2GqcrUzmUQ1Iu+fTR92R9TmruZ4K5U6XKmNMoSbZvBeQBMXmQJeZSka07ohcn
 4nZEOlIaVL6g==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="412274165"
Received: from lmirensk-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.195.153])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:23:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 16 Mar 2021 16:23:22 +0000
Message-Id: <20210316162326.1994039-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210316162326.1994039-1-tvrtko.ursulin@linux.intel.com>
References: <20210316162326.1994039-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Restrict sentinel requests further
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Disallow sentinel requests follow previous sentinels to make request
cancellation work better when faced with a chain of requests which have
all been marked as in error.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 4c2acb5a6c0a..4b870eca9693 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -896,7 +896,7 @@ static bool can_merge_rq(const struct i915_request *prev,
 	if (__i915_request_is_complete(next))
 		return true;
 
-	if (unlikely((i915_request_flags(prev) ^ i915_request_flags(next)) &
+	if (unlikely((i915_request_flags(prev) | i915_request_flags(next)) &
 		     (BIT(I915_FENCE_FLAG_NOPREEMPT) |
 		      BIT(I915_FENCE_FLAG_SENTINEL))))
 		return false;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
