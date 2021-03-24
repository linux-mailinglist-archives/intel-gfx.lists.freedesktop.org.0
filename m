Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 468F13477FA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 13:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D896EB0C;
	Wed, 24 Mar 2021 12:13:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF186E9EF;
 Wed, 24 Mar 2021 12:13:50 +0000 (UTC)
IronPort-SDR: TtVJ0ouwOTSiaV5c2TGCOT5pRL5ckszzXZ+aK+qBHNS0GmtDpGo4OS5jEZQ4L2biQKKwvCwGV/
 t5X/KirGwTbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="188386169"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="188386169"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 05:13:49 -0700
IronPort-SDR: gPgxocTk6WZ6+eqIGPs/wkFJw4njIqTDLx59a0//F+/c6MU8F3VEH2l7hGYfJsDawa6N5V3zBY
 JDsxLkvTPJNw==
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="391277133"
Received: from adizdarx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.248.133])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 05:13:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 24 Mar 2021 12:13:31 +0000
Message-Id: <20210324121335.2307063-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
References: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Restrict sentinel requests further
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

Because in cases where we end up with a stream of cancelled requests we
want to turn of request coalescing so they each will get individually
skipped by the execlists_schedule_in (which is called per ELSP port, not
per request).

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
