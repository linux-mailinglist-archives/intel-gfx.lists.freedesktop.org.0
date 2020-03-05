Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C34117AFD3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2AB6E942;
	Thu,  5 Mar 2020 20:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8036E942
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 20:35:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 12:35:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="234545869"
Received: from ntitus-mobl1.ti.intel.com (HELO mwahaha-bdw.ger.corp.intel.com)
 ([10.252.24.210])
 by orsmga008.jf.intel.com with ESMTP; 05 Mar 2020 12:35:35 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 20:35:34 +0000
Message-Id: <20200305203534.210466-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: be more solid in checking the
 alignment
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

The alignment is u64, and yet is_power_of_2() assumes unsigned long,
which might give different results between 32b and 64b kernel.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 ++-
 drivers/gpu/drm/i915/i915_utils.h              | 5 +++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 7bb27f382af7..b62576f34a1d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -430,7 +430,8 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	if (unlikely(entry->flags & eb->invalid_flags))
 		return -EINVAL;
 
-	if (unlikely(entry->alignment && !is_power_of_2(entry->alignment)))
+	if (unlikely(entry->alignment &&
+		     !is_power_of_2_u64(entry->alignment)))
 		return -EINVAL;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index cae0ae520398..024a9e224ff3 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -236,6 +236,11 @@ static inline u64 ptr_to_u64(const void *ptr)
 	__idx;								\
 })
 
+static inline bool is_power_of_2_u64(u64 n)
+{
+	return (n != 0 && ((n & (n - 1)) == 0));
+}
+
 static inline void __list_del_many(struct list_head *head,
 				   struct list_head *first)
 {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
