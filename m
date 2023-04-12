Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1F76DF3C5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 13:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E85C10E79E;
	Wed, 12 Apr 2023 11:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10BF10E79B;
 Wed, 12 Apr 2023 11:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681299251; x=1712835251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aEIb9Mq/7D1tsIdAe1YAywtVS++LBAWPYPNIcRYan0c=;
 b=g4l/mqHSYmzQQNoQgwW++LwlG5v++JtVcJbuu+0+bSaCeYTPr2KdPUTZ
 fZUyCLkuZppSKkvi9XKNZY8dH1Vwdzr8zbodF8Xyv60R91oLTy/DGAyYf
 VI/X1eGemyLG91l/toafuv8X9KyoD7axAGmJhuYt1qgaYGnYcT0H5P8Lg
 nAz6DSA9D0zSt/l5Uc649aYRP9e+6yWeh91eesqMHUr/E7BQBgOb1849n
 tzNLU8E+dMkeYIlf2NYj6IADOepLXXq1YXVZCq9s3mIkRGvhzqfNmbnHp
 Wf5h9AcWnAs+psPlymjRAx1xkfZ1q6a/IAOO8ZqsnVToRrVYQ1kvFZm/D Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="327978247"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="327978247"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 04:34:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="778268808"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="778268808"
Received: from zbiro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 04:34:06 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 stable@vger.kernel.org
Date: Wed, 12 Apr 2023 13:33:05 +0200
Message-Id: <20230412113308.812468-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230412113308.812468-1-andi.shyti@linux.intel.com>
References: <20230412113308.812468-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/5] drm/i915: Create the locked version of
 the request create
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
Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>, Matthew Auld <matthew.auld@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make version of the request creation that doesn't hold any
lock.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: stable@vger.kernel.org
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 38 +++++++++++++++++++++--------
 drivers/gpu/drm/i915/i915_request.h |  2 ++
 2 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 630a732aaecca..58662360ac34e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1028,15 +1028,11 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	return ERR_PTR(ret);
 }
 
-struct i915_request *
-i915_request_create(struct intel_context *ce)
+static struct i915_request *
+__i915_request_create_locked(struct intel_context *ce)
 {
+	struct intel_timeline *tl = ce->timeline;
 	struct i915_request *rq;
-	struct intel_timeline *tl;
-
-	tl = intel_context_timeline_lock(ce);
-	if (IS_ERR(tl))
-		return ERR_CAST(tl);
 
 	/* Move our oldest request to the slab-cache (if not in use!) */
 	rq = list_first_entry(&tl->requests, typeof(*rq), link);
@@ -1046,16 +1042,38 @@ i915_request_create(struct intel_context *ce)
 	intel_context_enter(ce);
 	rq = __i915_request_create(ce, GFP_KERNEL);
 	intel_context_exit(ce); /* active reference transferred to request */
+
 	if (IS_ERR(rq))
-		goto err_unlock;
+		return rq;
 
 	/* Check that we do not interrupt ourselves with a new request */
 	rq->cookie = lockdep_pin_lock(&tl->mutex);
 
 	return rq;
+}
+
+struct i915_request *
+i915_request_create_locked(struct intel_context *ce)
+{
+	intel_context_assert_timeline_is_locked(ce->timeline);
+
+	return __i915_request_create_locked(ce);
+}
+
+struct i915_request *
+i915_request_create(struct intel_context *ce)
+{
+	struct i915_request *rq;
+	struct intel_timeline *tl;
+
+	tl = intel_context_timeline_lock(ce);
+	if (IS_ERR(tl))
+		return ERR_CAST(tl);
+
+	rq = __i915_request_create_locked(ce);
+	if (IS_ERR(rq))
+		intel_context_timeline_unlock(tl);
 
-err_unlock:
-	intel_context_timeline_unlock(tl);
 	return rq;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index f5e1bb5e857aa..bb48bd4605c03 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -374,6 +374,8 @@ struct i915_request * __must_check
 __i915_request_create(struct intel_context *ce, gfp_t gfp);
 struct i915_request * __must_check
 i915_request_create(struct intel_context *ce);
+struct i915_request * __must_check
+i915_request_create_locked(struct intel_context *ce);
 
 void __i915_request_skip(struct i915_request *rq);
 bool i915_request_set_error_once(struct i915_request *rq, int error);
-- 
2.39.2

