Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F6627500A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 06:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259F86E12C;
	Wed, 23 Sep 2020 04:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E90B6E12C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 04:41:10 +0000 (UTC)
IronPort-SDR: QdlDdcrK7Zl954xmcvVTY66dStvD8+5xwOWd1P9w1YTyWJQZytldiP+YqKZWfPrWVj53JLhuVx
 lTRRqddM3rng==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="161720308"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="161720308"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 21:41:09 -0700
IronPort-SDR: Sr6YDwF2n3ihMOFjiK109MTd0TK4MdI+WqlwOHAd2uF1XKNnKOo2DMvmz93ZPkTpZYC0iC9Euf
 6B0pqmyb2FPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="338525344"
Received: from gfox.jf.intel.com ([10.165.21.193])
 by orsmga008.jf.intel.com with ESMTP; 22 Sep 2020 21:41:09 -0700
From: Steve Hampson <steven.t.hampson@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 21:40:54 -0700
Message-Id: <20200923044054.5653-1-steven.t.hampson@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Fix NULL pointer found by static analysis
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

A static analysis tool has reveiled a NULL pointer error in
__i915_gem_object_lock.  This appears to be correct as many calls
pass a NULL into the ww parameter.

Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index d46db8d8f38e..9b18ead42991 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -126,7 +126,7 @@ static inline int __i915_gem_object_lock(struct drm_i915_gem_object *obj,
 	if (ret == -EALREADY)
 		ret = 0;
 
-	if (ret == -EDEADLK)
+	if (ret == -EDEADLK && ww)
 		ww->contended = obj;
 
 	return ret;
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
