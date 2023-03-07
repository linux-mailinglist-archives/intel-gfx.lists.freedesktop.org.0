Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0145E6ADC5D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 11:49:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E9C10E49E;
	Tue,  7 Mar 2023 10:48:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE7210E49D;
 Tue,  7 Mar 2023 10:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678186132; x=1709722132;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1MlL0hgd5hFopQMdoCbSJnG4ciIGZ62rg5TYtVfTMH4=;
 b=maO3G3Zuo0YQBosEf1hogt1n1voHYHZCKUd8CnX96zPSbouMme1+4pQJ
 vXQRhV6ZH2GRcCcYRQgQwjz9BbO80Gf/ZHMV8yTIBQtpKtveprlobAkjo
 RnvFSyFH9JEicudFz3XraIzzBRSO5goHFq1SWKcBpKEEPkd614yQn1DyT
 PWA1+oxWksxdrCQSRjAG0JdZCc+yHZtoha3hpmHsO8UoP7gy6cuSmBPPg
 uQmVsJS6XB6QnVa6WrEGbtGKgVZsHRrD/qVSrre5FfFQUMqwkZzX9cXcI
 +z9OHKAt6Bs22lXIqwMsSxY8bQQLhKGRnlA0KJOucl22pG9vlX1L/2LHv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="400643493"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="400643493"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 02:48:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="819712956"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="819712956"
Received: from tanzeelu-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 02:48:50 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  7 Mar 2023 10:48:23 +0000
Message-Id: <20230307104824.231094-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230307104824.231094-1-tvrtko.ursulin@linux.intel.com>
References: <20230307104824.231094-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 11/12] drm/i915: Mark waits as explicit
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
Cc: Matt Turner <mattst88@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use the previously added dma-fence API to mark the direct i915 waits as
explicit. This has no significant effect apart from following the new
pattern.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 42b04cced6f0..dd8a9045086a 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -2045,7 +2045,8 @@ long i915_request_wait_timeout(struct i915_request *rq,
 		intel_rps_boost(rq);
 
 	wait.tsk = current;
-	if (dma_fence_add_callback(&rq->fence, &wait.cb, request_wait_wake))
+	if (dma_fence_add_wait_callback(&rq->fence, &wait.cb,
+					request_wait_wake))
 		goto out;
 
 	/*
-- 
2.37.2

