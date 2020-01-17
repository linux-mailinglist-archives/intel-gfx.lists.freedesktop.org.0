Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCE3140AA9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 14:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B585D6F562;
	Fri, 17 Jan 2020 13:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A73276F55D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 13:24:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 05:24:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="243660082"
Received: from ppiec-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.129])
 by orsmga002.jf.intel.com with ESMTP; 17 Jan 2020 05:24:13 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 13:24:12 +0000
Message-Id: <20200117132413.1170563-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/userptr: add user_size limit
 check
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

Don't allow a mismatch between obj->base.size/vma->size and the actual
number of pages for the backing store, which is limited to INT_MAX
pages.

v2: document what are missing before we can safely drop the limit check

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index e5558af111e2..b64b0f383a56 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -769,6 +769,23 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 			    I915_USERPTR_UNSYNCHRONIZED))
 		return -EINVAL;
 
+	/*
+	 * XXX: There is a prevalence of the assumption that we fit the
+	 * object's page count inside a 32bit _signed_ variable. Let's document
+	 * this and catch if we ever need to fix it. In the meantime, if you do
+	 * spot such a local variable, please consider fixing!
+	 *
+	 * Aside from our own locals (for which we have no excuse!):
+	 * - sg_table embeds unsigned int for num_pages
+	 * - get_user_pages*() mixed ints with longs
+	 */
+
+	if (args->user_size >> PAGE_SHIFT > INT_MAX)
+		return -E2BIG;
+
+	if (overflows_type(args->user_size, obj->base.size))
+		return -E2BIG;
+
 	if (!args->user_size)
 		return -EINVAL;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
