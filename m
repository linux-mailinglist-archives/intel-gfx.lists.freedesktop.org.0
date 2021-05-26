Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022E391096
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 08:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6461F6EC03;
	Wed, 26 May 2021 06:24:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E5B6EB9C;
 Wed, 26 May 2021 06:24:50 +0000 (UTC)
IronPort-SDR: Ed/29atyhox9ClPl8IRkKHMcEFyHy5z2FoIAdIIF7l/kCURLu3HY8kBEYQ/SScfS7KC/U3YUcT
 tJuIwPsQG5Zg==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="182033738"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="182033738"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:48 -0700
IronPort-SDR: gKktzzVV7lvoFEAgEzA+wLlqxVhR9GOdeDOAPTlQpbswY98K2SNElytD6QCTElyqQgxcgYQA7g
 xpf9hEnh/cWw==
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; d="scan'208";a="633376807"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 23:24:48 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 25 May 2021 23:42:27 -0700
Message-Id: <20210526064237.77853-9-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210526064237.77853-1-matthew.brost@intel.com>
References: <20210526064237.77853-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/18] drm/i915: Promote ptrdiff() to
 i915_utils.h
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Generic helpers should be placed in i915_utils.h.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 5 +++++
 drivers/gpu/drm/i915/i915_vma.h   | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index f02f52ab5070..5259edacde38 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -201,6 +201,11 @@ __check_struct_size(size_t base, size_t arr, size_t count, size_t *size)
 	__T;								\
 })
 
+static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
+{
+	return a - b;
+}
+
 /*
  * container_of_user: Extract the superclass from a pointer to a member.
  *
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index dc6926d89626..eca452a9851f 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -151,11 +151,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
 	i915_gem_object_put(vma->obj);
 }
 
-static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
-{
-	return a - b;
-}
-
 static inline long
 i915_vma_compare(struct i915_vma *vma,
 		 struct i915_address_space *vm,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
