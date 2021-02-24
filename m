Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3762323A9B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 11:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DD06E8B4;
	Wed, 24 Feb 2021 10:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F5FD6E8B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 10:35:10 +0000 (UTC)
IronPort-SDR: vIYhG0pQQ9tepbjBSk969Y0rzNbgRNuaB+geG1921UQBE/3AzIu1GRChKO+8voFZXU5qqNjW1r
 EOkOR4KF9sZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="204586217"
X-IronPort-AV: E=Sophos;i="5.81,202,1610438400"; d="scan'208";a="204586217"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 02:35:10 -0800
IronPort-SDR: 64gUZbMMiUWVXThamtPIxj5liKsobxIeWnUL5Nitv6BrOw35tfGC8RfjEbBO2WV6rPEKHN8ecu
 ea4D+eAKcgJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,202,1610438400"; d="scan'208";a="403640820"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 24 Feb 2021 02:35:08 -0800
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.159.92])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 11OAZ6L3022077; Wed, 24 Feb 2021 10:35:07 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Feb 2021 11:35:02 +0100
Message-Id: <20210224103502.153-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Promote ptrdiff() to i915_utils.h
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

Generic helpers should be placed in i915_utils.h.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 5 +++++
 drivers/gpu/drm/i915/i915_vma.h   | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 4618fe8aacb5..5bca71c90fe1 100644
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
index a64adc8c883b..aed8e5bc233c 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -143,11 +143,6 @@ static inline void i915_vma_put(struct i915_vma *vma)
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
