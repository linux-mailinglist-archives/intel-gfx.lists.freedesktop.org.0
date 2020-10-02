Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B19E280CF2
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 06:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47EC96E07B;
	Fri,  2 Oct 2020 04:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9773E6E07B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 04:52:40 +0000 (UTC)
IronPort-SDR: gv9F/IRO7XyvJojJzSKUMu+ad6WMYzROqKOtiJJzyHsuwqwgtun4mxw4a1IZYZD+ILYN9RGVpu
 OiOuG/ELckyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="150551647"
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; d="scan'208";a="150551647"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 21:52:39 -0700
IronPort-SDR: Nw2ihIynjz6UF7avhbUTd2aVVhnSP9Ll+hYj2Pjppcs7lvE/BFK/4w3FAdmKW7u9oArr8Cs8QA
 gk+0qd5PexSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; d="scan'208";a="385763629"
Received: from gfox.jf.intel.com ([10.165.21.193])
 by orsmga001.jf.intel.com with ESMTP; 01 Oct 2020 21:52:39 -0700
From: Steve Hampson <steven.t.hampson@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Oct 2020 21:52:15 -0700
Message-Id: <20201002045215.32266-1-steven.t.hampson@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Memory leak fix
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

Static analysis detected a memory leak if the second kmalloc fails
and the first allocation is not freed.

Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 12b30075134a..c8be7534a2fb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -234,8 +234,10 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
 		return PTR_ERR(mn);
 
 	mo = kzalloc(sizeof(*mo), GFP_KERNEL);
-	if (!mo)
+	if (!mo) {
+		kfree(mn);
 		return -ENOMEM;
+	}
 
 	mo->mn = mn;
 	mo->obj = obj;
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
