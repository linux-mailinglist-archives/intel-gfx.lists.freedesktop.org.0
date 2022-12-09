Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02327648244
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 13:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F30110E534;
	Fri,  9 Dec 2022 12:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6DD10E534
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 12:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670588114; x=1702124114;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FTNv56LreY7nD1Zaa12lDW4OQ+60wtxrmAYqp0OdH0A=;
 b=XcGwvrPrwCoyIQGWnqnY7eAj2DvexJZf4Prucp7onrOaxeylLFqqtN5f
 GJJ39K3Y8mbyrCSFuQmDWCop2QnBbww8ZhHqX2QtzR9O070Z+nRXnJmKl
 6cOwYjIa2/IV9zDrJfZ39l/M2xvq6Jprgve/PEnmC6r7NVNJ0m9pO1yq/
 L2++huI0l9bX1BesBo3xwH8d8Z22tntSlrsC9ItFq8G1mWNldq/4kO8sl
 ud4o8ITwMrdfHZfcJZHCFDWuPqBRNq2cAyej8htpbaz5wmx8Ysd/ca4jn
 3in01+L8SnfOWcs0J8yh9kx3v3XRqW2EYmyYRl+gUgYVnST4YPrY8t1Th w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="300868251"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="300868251"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 04:15:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="625099175"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="625099175"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 04:15:11 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 13:14:59 +0100
Message-Id: <20221209121459.3496148-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: remove struct_member macro
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since it is used only to get type of member it can be replaced
with typeof_member.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h       | 4 +---
 drivers/gpu/drm/i915/intel_runtime_pm.h | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 6c14d13364bf78..b64192d9c7daa7 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -149,8 +149,6 @@ bool i915_error_injected(void);
 #define page_pack_bits(ptr, bits) ptr_pack_bits(ptr, bits, PAGE_SHIFT)
 #define page_unpack_bits(ptr, bits) ptr_unpack_bits(ptr, bits, PAGE_SHIFT)
 
-#define struct_member(T, member) (((T *)0)->member)
-
 #define fetch_and_zero(ptr) ({						\
 	typeof(*ptr) __T = *(ptr);					\
 	*(ptr) = (typeof(*ptr))0;					\
@@ -170,7 +168,7 @@ static __always_inline ptrdiff_t ptrdiff(const void *a, const void *b)
  */
 #define container_of_user(ptr, type, member) ({				\
 	void __user *__mptr = (void __user *)(ptr);			\
-	BUILD_BUG_ON_MSG(!__same_type(*(ptr), struct_member(type, member)) && \
+	BUILD_BUG_ON_MSG(!__same_type(*(ptr), typeof_member(type, member)) && \
 			 !__same_type(*(ptr), void),			\
 			 "pointer type mismatch in container_of()");	\
 	((type __user *)(__mptr - offsetof(type, member))); })
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 98b8b28baaa15e..e592e8d6499a1f 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -96,7 +96,7 @@ struct intel_runtime_pm {
 };
 
 #define BITS_PER_WAKEREF	\
-	BITS_PER_TYPE(struct_member(struct intel_runtime_pm, wakeref_count))
+	BITS_PER_TYPE(typeof_member(struct intel_runtime_pm, wakeref_count))
 #define INTEL_RPM_WAKELOCK_SHIFT	(BITS_PER_WAKEREF / 2)
 #define INTEL_RPM_WAKELOCK_BIAS		(1 << INTEL_RPM_WAKELOCK_SHIFT)
 #define INTEL_RPM_RAW_WAKEREF_MASK	(INTEL_RPM_WAKELOCK_BIAS - 1)
-- 
2.34.1

