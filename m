Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A968B37672B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 16:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9EE6EE3C;
	Fri,  7 May 2021 14:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68AB16E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 14:43:29 +0000 (UTC)
IronPort-SDR: GRNm1wusQhLoF3JTbidt5XPO8I60GMz+akfAj1VXrPyVyp2wIxIEfcCFIfbFl00DgflZnA5uc9
 z9L0ySGpLe0g==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="219642892"
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="219642892"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 07:43:28 -0700
IronPort-SDR: pKkt4LOEDRn2fGOXgx0uCJuUJwWflYQuEyAqTuAHRiMV5eQUfgjjXQ2NpAqb135qmgTOs+3rzy
 TFvJY4FKHFqQ==
X-IronPort-AV: E=Sophos;i="5.82,280,1613462400"; d="scan'208";a="434928595"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.26.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 07:43:27 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 16:42:51 +0200
Message-Id: <20210507144251.376538-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Do release kernel context if
 breadcrumb measure fails
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

Commit fb5970da1b42 ("drm/i915/gt: Use the kernel_context to measure the
breadcrumb size") reordered some operations inside engine_init_common()
and added an error unwind path to that function.  In that path, a
reference to a kernel context candidate supposed to be released on error
was put, but the context, pinned when created, was not unpinned first.
Fix it by replacing intel_context_put() with destroy_pinned_context()
introduced later by commit b436a5f8b6c8 ("drm/i915/gt: Track all timelines
created using the HWSP").

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 6dbdbde00f14..eba2da9679a5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -898,7 +898,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	return 0;
 
 err_context:
-	intel_context_put(ce);
+	destroy_pinned_context(ce);
 	return ret;
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
