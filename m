Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154F76E72C9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 07:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B68510E0E2;
	Wed, 19 Apr 2023 05:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161DA10E465
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 05:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681883762; x=1713419762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BETnyilgekA2xjPD7/Jg9wG2nz28uPtGtuPafbyl1wY=;
 b=aERg42XYox3OmjH6DxiAQF2Ga3ZyB/nRyqtm5PZ9GHzMnBtxfygxfvJB
 pYre2Xr0v9+SPKA9kWvcDwm/VRFSep2V0md8Mo6Po3aKGxG24WZgo41wS
 GHEBnDS8+nJLXBCMqejcAO098BtyeFMVzlvISBhwtwxRlTOHUrkyNkTth
 wyZ4gUUAr+VxPDbZXaVfCKXwOacyKstmkGl9sB+yYXSq/YGVh0Z4yjnKZ
 binZjOzPe+71jaZzrsL75Z5NpeoCtgA53yZ7G1A+NIh3Ml/KbGklOAobe
 WGyzX2F93cN0TZRrzYj3Ff3oKMCfe+6/c+vGPFZcXrCAOhVMgD0WKJdPO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="347216203"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="347216203"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 22:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="693910498"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="693910498"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga007.fm.intel.com with ESMTP; 18 Apr 2023 22:56:00 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 11:30:35 +0530
Message-Id: <20230419060036.3422635-3-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/gem: Consider multi-gt instead of
 to_gt()
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

In order to enable complete multi-GT, use the GT
reference obtained directly from the engine, rather
than relying on the to_gt(), which only provides a
reference to the primary GT.

Problem appear when it runs on platform like MTL
where different set of engines are possible on
different GTs.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index a81fa6a20f5a..2697fbaa2ceb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -93,7 +93,7 @@ static int live_nop_switch(void *arg)
 		}
 		if (i915_request_wait(rq, 0, 10 * HZ) < 0) {
 			pr_err("Failed to populated %d contexts\n", nctx);
-			intel_gt_set_wedged(to_gt(i915));
+			intel_gt_set_wedged(engine->gt);
 			i915_request_put(rq);
 			err = -EIO;
 			goto out_file;
@@ -149,7 +149,7 @@ static int live_nop_switch(void *arg)
 			if (i915_request_wait(rq, 0, HZ / 5) < 0) {
 				pr_err("Switching between %ld contexts timed out\n",
 				       prime);
-				intel_gt_set_wedged(to_gt(i915));
+				intel_gt_set_wedged(engine->gt);
 				i915_request_put(rq);
 				break;
 			}
-- 
2.25.1

