Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E848691F8C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 14:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952B510E27B;
	Fri, 10 Feb 2023 13:07:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18C9410E259;
 Fri, 10 Feb 2023 13:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676034423; x=1707570423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fBvOEzsEUpuULwaHPJM994RuIgwkgHj0Lxh3VNlA7mU=;
 b=EJRByqzJbc62FlADDlhtuDWkIkOtxDW2swtSHoKDrvpODqSMFVBtVSkG
 jgJ89if/BrBDGQqQvWOhneCtkxmhGcl/0w543loyWY3diqTr8ZNzbh5Mz
 pPVlqFTr3z4CKTY3GRZldcvFLubI5Eaz9sluCWqLiSw0vVQxdQpSUC/AC
 iEZO8D1ORhVnfxBTVIyCGJZu0FbJ1+LKFDRZYKMqRsuWxtBUzQCx0cYqF
 CXspVC3xfn2I2sZXyqtop9rBVP5AR6WjLIFsulhIbZsjyvCyaF6zK2+Qq
 R94nYrm8mY5HO1gfbCQZx0Zl16us26cd/EusCJwEJO8ccpcLLCzNop18X w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="329045888"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="329045888"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:07:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="731711305"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="731711305"
Received: from athornbe-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.209.249])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:07:01 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 10 Feb 2023 13:06:46 +0000
Message-Id: <20230210130647.580135-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
References: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 4/5] drm/i915: Mark waits as explicit
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

Use the previously added dma-fence API to mark the direct i915 waits as
explicit. This has no significant effect apart from following the new
pattern.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 8989f62a7fba..488b180f8821 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -2046,7 +2046,8 @@ long i915_request_wait_timeout(struct i915_request *rq,
 		intel_rps_boost(rq);
 
 	wait.tsk = current;
-	if (dma_fence_add_callback(&rq->fence, &wait.cb, request_wait_wake))
+	if (dma_fence_add_wait_callback(&rq->fence, &wait.cb,
+					request_wait_wake))
 		goto out;
 
 	/*
-- 
2.34.1

