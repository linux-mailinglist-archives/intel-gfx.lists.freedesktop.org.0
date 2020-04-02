Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7229A19BF33
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 12:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2BD6EA3E;
	Thu,  2 Apr 2020 10:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A919D6EA3E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 10:19:48 +0000 (UTC)
IronPort-SDR: ysPATAIH+gICh6wGfJPm5JBI8gfmP+OnudK27Rwdi/OH8ldfh+9pFuafLN6PNLBR210sdtzb2G
 yR+gN8WIoX/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:19:48 -0700
IronPort-SDR: VN2mThAJdXgeDVIDY8WA0Hy6u3LOYlQ0RwNyz8MRUnudtAuvX1zqFJg4AYElBPtf+WXauqUi0U
 amTDGyV8oRqw==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="449575139"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:19:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 12:19:06 +0200
Message-Id: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/i915: Suppress page allocation warnings
 on engine park
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On memory constrained systems it may happen that no pages are available
for serving object creation attempt during engine park.  Since we can
and we do ignore that failure, let's suppress possible warnings from
page allocator to avoid confusion and make CI happy.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
index 3be679741d22..99626fd02963 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
@@ -186,7 +186,7 @@ static bool switch_to_kernel_context(struct intel_engine_cs *engine)
 	flags = __timeline_mark_lock(ce);
 	GEM_BUG_ON(atomic_read(&ce->timeline->active_count) < 0);
 
-	rq = __i915_request_create(ce, GFP_NOWAIT);
+	rq = __i915_request_create(ce, GFP_NOWAIT | __GFP_NOWARN);
 	if (IS_ERR(rq))
 		/* Context switch failed, hope for the best! Maybe reset? */
 		goto out_unlock;
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
