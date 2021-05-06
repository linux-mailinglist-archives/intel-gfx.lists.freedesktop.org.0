Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409EA375AA5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E816ED9F;
	Thu,  6 May 2021 18:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459726ECF0;
 Thu,  6 May 2021 18:57:12 +0000 (UTC)
IronPort-SDR: Khd6KG2UiEza6h7WbTFiT7ufB0gyM5npo9nx0EU3Jyq40FMUAPz48OcuYdnXd34nOWQD1YoMb+
 QnzFSe6OnfsQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="198195430"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="198195430"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:10 -0700
IronPort-SDR: 1GhED/As9OvLp2ITjjXTdJ325kI9uwLrsHRHDYCGK4QfDAApPaffjxMqGpjwoOaUt9K2iziC5f
 dFIzxf7Hf90g==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583384"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:08 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:13:24 -0700
Message-Id: <20210506191451.77768-11-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 10/97] drm/i915: Promote ptrdiff() to
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

Generic helpers should be placed in i915_utils.h.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
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
index 8df784a026d2..a29a158990c6 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -146,11 +146,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
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
