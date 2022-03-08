Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC984D1ED7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:23:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C142D10E405;
	Tue,  8 Mar 2022 17:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BEE10E405
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646760203; x=1678296203;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WQtLK+gvYqN++9dEXV8zcZAE+0syt1oW49OOpZbUblk=;
 b=gn0CHBchrMZa7JRUTYIZAtuCEiamDYe41PryhRyGEo8yVPWAW7PidQKS
 kTviTR54ziURxGKVenJUGjZ7eIr91NnMuGcaF1sJgipThPiwsVwIrGolN
 dqu4j7YipYUL52B7XR/JMsBdOw9C6mSxMXdRVDj/j8GOFp/9152NtcduP
 /DUmWYUT+jJeSbCkiJ5rE6VpQGBgGILUc8EKJeNzvlUKkFMcHOpRTfgVC
 PyY0b2YO3k7ifrzQPELpVBhJSINWNUf63QdDTfi1RSSj7eIomPnx/cPFH
 S/Sl4+l91xMMf/ZQqFNiBuzrVfxAX7G/bR7MBN5UB/8M43yKdcSQuR9SW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="341180432"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="341180432"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:17:54 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="510173826"
Received: from dut4326-rpls.fm.intel.com ([10.105.8.77])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:17:53 -0800
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 17:17:47 +0000
Message-Id: <20220308171747.25199-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: check before removing mm notifier
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
Cc: thomas.hellstrom@linux.intel.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

mmu_notifier_register() can get interrupted which will
leave a NULL notifier.mm pointer. Catch that and return
early.

Signed-off-by: Das, Nirmoy <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 6d1a71d6404c..d1af9d8721c4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -378,6 +378,9 @@ i915_gem_userptr_release(struct drm_i915_gem_object *obj)
 {
 	GEM_WARN_ON(obj->userptr.page_ref);
 
+	if (!obj->userptr.notifier.mm)
+		return;
+
 	mmu_interval_notifier_remove(&obj->userptr.notifier);
 	obj->userptr.notifier.mm = NULL;
 }
-- 
2.34.1

