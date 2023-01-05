Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B7365F550
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 21:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B4010E813;
	Thu,  5 Jan 2023 20:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF9910E813
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 20:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672951132; x=1704487132;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DcQudh+7c9tIVLQKQ24W1VxE2SEm2VYyPY6sO/EnwC8=;
 b=a3PWfbvACAGWrynHSfLjctcwyi904h994UygcQ1cQb92Jn7r+aPv8/R0
 TiyJOOOWQ5A/OfNUkjyw6+gYgi7Hq+1auFbE5PBo0fHOenNFdPbyjWRUb
 RPHjv+k/C5ZA18keNEJ+P4k5KSe3Oa/cqzR+K/2r0pMrGD3vbu+xmLf3P
 nFNPUJEntkocyUJoypx/fLXFDADUWnBebvVhaV52sQgoAgkkh8goXl6op
 NJ8a4POfoBKNt8TNJrSv7miU1s4a8QdGgXtLiRzuRFZWgacna7KoRvEmd
 uI2506/iT+iusaxBy1SREUsl/plBsXwMbend+SsA66dL/9f2IFdaQBVg3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="302686240"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="302686240"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 12:38:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="829673937"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829673937"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 12:38:50 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 21:38:43 +0100
Message-Id: <20230105203843.30663-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Update docs in intel_wakeref.h
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, andrzej.hajda@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix docs for __intel_wakeref_put() and intel_wakeref_get() to
reflect current behaviour.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/intel_wakeref.h | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 4f4c2e15e736..71b8a63f6f10 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -68,11 +68,12 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags);
  * @wf: the wakeref
  *
  * Acquire a hold on the wakeref. The first user to do so, will acquire
- * the runtime pm wakeref and then call the @fn underneath the wakeref
- * mutex.
+ * the runtime pm wakeref and then call the intel_wakeref_ops->get()
+ * underneath the wakeref mutex.
  *
- * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
- * will be released and the acquisition unwound, and an error reported.
+ * Note that intel_wakeref_ops->get() is allowed to fail, in which case
+ * the runtime-pm wakeref will be released and the acquisition unwound,
+ * and an error reported.
  *
  * Returns: 0 if the wakeref was acquired successfully, or a negative error
  * code otherwise.
@@ -130,19 +131,17 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
 }
 
 /**
- * intel_wakeref_put_flags: Release the wakeref
+ * __intel_wakeref_put: Release the wakeref
  * @wf: the wakeref
  * @flags: control flags
  *
  * Release our hold on the wakeref. When there are no more users,
- * the runtime pm wakeref will be released after the @fn callback is called
- * underneath the wakeref mutex.
+ * the runtime pm wakeref will be released after the intel_wakeref_ops->put()
+ * callback is called underneath the wakeref mutex.
  *
- * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
- * is retained and an error reported.
+ * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
+ * runtime-pm wakeref is retained.
  *
- * Returns: 0 if the wakeref was released successfully, or a negative error
- * code otherwise.
  */
 static inline void
 __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
-- 
2.38.0

