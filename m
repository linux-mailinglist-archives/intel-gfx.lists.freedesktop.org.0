Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 687F05B7446
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCECA10E771;
	Tue, 13 Sep 2022 15:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3414810E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082549; x=1694618549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zwm0cflx4rRzBaeo2K4jHOVDUAkgjCAw0Na93+sxBEc=;
 b=Af2lr4UGmlgwyixGYZgWS1yRHxXtjvA+nrDhHrr7EuxqorItOpWWp6BP
 SaNVb9GroUsvR94Zv7r7TeMglOS0lGNPUUen1Ke18Xwp7jVv1tnJC3/IW
 Lek+JP0qwq94fa5MvUuj2evK18JFtbND1sm9pfOsceJPlkXOGJ2YlYWGx
 gzinJSG2O67V/4yDr5juJlEDufmoXCyT5tREv4DDdQZLy8pqs+AfBhJvu
 KF+22jRdYF7w3QSvzyEthAh7HsWY6W0Ov7sLCXvNuF1E9ztBYbucidkCw
 R4DkgMj4vvb8zSKlUimg7Mz+0acZ79PBRikavp70Cld/uzSLZU3YlAeEl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298963991"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="298963991"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="593977936"
Received: from abaczek-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.8.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:25 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 17:21:50 +0200
Message-Id: <8b7781f7dbaf2791156491b76d5faa7852e5cbbb.1663081418.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1663081418.git.karolina.drobnik@intel.com>
References: <cover.1663081418.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/4] drm/i915/selftest: Always cancel
 semaphore on error
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>,
 Ramalingam C <ramalingam.c@intel.com>, Chris Wilson <chris.p.wilson@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

Ensure that we always signal the semaphore when timing out, so that if it
happens to be stuck waiting for the semaphore we will quickly recover
without having to wait for a reset.

Reported-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 8320eab7ac36..71e664fc87e9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1460,18 +1460,17 @@ static int __lrc_isolation(struct intel_engine_cs *engine, u32 poison)
 	}
 
 	err = poison_registers(B, poison, sema);
-	if (err) {
-		WRITE_ONCE(*sema, -1);
-		i915_request_put(rq);
-		goto err_result1;
-	}
-
-	if (i915_request_wait(rq, 0, HZ / 2) < 0) {
-		i915_request_put(rq);
+	if (err == 0 && i915_request_wait(rq, 0, HZ / 2) < 0) {
+		pr_err("%s(%s): wait for results timed out\n",
+		       __func__, engine->name);
 		err = -ETIME;
-		goto err_result1;
 	}
+
+	/* Always cancel the semaphore wait, just in case the GPU gets stuck */
+	WRITE_ONCE(*sema, -1);
 	i915_request_put(rq);
+	if (err)
+		goto err_result1;
 
 	err = compare_isolation(engine, ref, result, A, poison);
 
-- 
2.25.1

