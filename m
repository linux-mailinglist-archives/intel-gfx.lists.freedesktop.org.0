Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDZMMFHUpWmvHAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:17:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453461DE569
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8255410E582;
	Mon,  2 Mar 2026 18:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RNOMtIw5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFE910E582;
 Mon,  2 Mar 2026 18:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772475470; x=1804011470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zJCQwaX01YY5dVaFkmDqAXO6EeTIqd4bykV4YG7N+Ro=;
 b=RNOMtIw5RPn+Eq/jXjsZ9EXTxlw78JK0mnPuTJ/JsSzU73yaT1oPkMR4
 Okcd9ZjCfZuQHcmwL5d+qKJ8NsEZ0IGrxja/Kmn4zdxWRuib/MzVm06G3
 1WmHAwNRDvAcQo38qczhsrsIo5+NAlk2SXH17C97Jf/JzyAmbaKIzwiPy
 qc1fn4YIpzMgCnIyeVDmT8Lnaeh4H4LUcxAdl/Vg9Qki7Fzzd9w4+njpF
 x8rw/YrLDstUkUcB8Gk/D7UcZNkYEdaX1H8s8/bgxrA3omUAUvqGSVDGh
 RKEMTC1v9VoE+ox1ZEP1maRIXSL3ekglIEoNNt9rb0k8VUQ7nHeYMetwp A==;
X-CSE-ConnectionGUID: w9kTgG8HR+ilGt0OZQOBEQ==
X-CSE-MsgGUID: IAf1NuBMSfuaAnk7+q8veQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77362060"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="77362060"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:17:50 -0800
X-CSE-ConnectionGUID: zoTcvPZoQWSJMQBnSDbqAA==
X-CSE-MsgGUID: 8rsWyHo5SEKETOENN0c+MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="222378056"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:17:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/7] drm/i915/gem: relocate __i915_gem_object_{flush,
 invalidate}_frontbuffer()
Date: Mon,  2 Mar 2026 20:17:33 +0200
Message-ID: <d779ef44b4b43feda9df63f1225a947a9cd23ba8.1772475391.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772475391.git.jani.nikula@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: 453461DE569
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.990];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Move __i915_gem_object_{flush,invalidate}_frontbuffer() to
i915_gem_object_frontbuffer.c. All the other i915 gem object frontbuffer
functions are there already, and the relevant declarations are in
i915_gem_object_frontbuffer.h too.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 24 -------------------
 .../i915/gem/i915_gem_object_frontbuffer.c    | 24 +++++++++++++++++++
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 798c920160cf..5172d3982654 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -474,30 +474,6 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 		queue_work(i915->wq, &i915->mm.free_work);
 }
 
-void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
-					 enum fb_op_origin origin)
-{
-	struct i915_frontbuffer *front;
-
-	front = i915_gem_object_frontbuffer_lookup(obj);
-	if (front) {
-		intel_frontbuffer_flush(&front->base, origin);
-		i915_gem_object_frontbuffer_put(front);
-	}
-}
-
-void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
-					      enum fb_op_origin origin)
-{
-	struct i915_frontbuffer *front;
-
-	front = i915_gem_object_frontbuffer_lookup(obj);
-	if (front) {
-		intel_frontbuffer_invalidate(&front->base, origin);
-		i915_gem_object_frontbuffer_put(front);
-	}
-}
-
 static void
 i915_gem_object_read_from_page_kmap(struct drm_i915_gem_object *obj, u64 offset, void *dst, int size)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
index adba3fa96c05..29076aefdfd8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
@@ -101,3 +101,27 @@ void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front)
 	kref_put_lock(&front->ref, frontbuffer_release,
 		      &i915->frontbuffer_lock);
 }
+
+void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
+					 enum fb_op_origin origin)
+{
+	struct i915_frontbuffer *front;
+
+	front = i915_gem_object_frontbuffer_lookup(obj);
+	if (front) {
+		intel_frontbuffer_flush(&front->base, origin);
+		i915_gem_object_frontbuffer_put(front);
+	}
+}
+
+void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
+					      enum fb_op_origin origin)
+{
+	struct i915_frontbuffer *front;
+
+	front = i915_gem_object_frontbuffer_lookup(obj);
+	if (front) {
+		intel_frontbuffer_invalidate(&front->base, origin);
+		i915_gem_object_frontbuffer_put(front);
+	}
+}
-- 
2.47.3

