Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0A7E982D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 09:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9999C10E182;
	Mon, 13 Nov 2023 08:55:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E314010E16B;
 Mon, 13 Nov 2023 08:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699865709; x=1731401709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FGOtSId/fOGCrcxtmNcWz9pg1mFlWQXT040bL2gE9Dg=;
 b=I5J228itYd2qcpqlC9r84duL9P9452plATQfNT3IxnpnCUdLtU1kCNLX
 RzaqDAajlEgxPO16RUU5XLbQCk7hOBupJcsHJPZY9IgZoVGNGbL2dO3HH
 4WVXj3WZwx0lAB3LTpLaidHdy6bwmC0EFFwx7HF5wpzLUrD2KpeIQTwhP
 CKJEX93f18XiOgRw09Xa3RNbThPEqKDtzXNoTLKkV1/wTtqwE6eHzw57Z
 3x+V5UV3oAMFxXqt4nkPIJoB7QigPEP+NORKNnEuMPpCthiNAmsfK+qSs
 VR4v6mBwv5cBwr5EHwwdIehCgNTUyozOdd3GDkDQB7m4DTN9emU3Mqdc7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10892"; a="389265783"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="389265783"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 00:55:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10892"; a="767845828"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="767845828"
Received: from jbarry-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.209.239])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 00:55:07 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 13 Nov 2023 08:54:57 +0000
Message-Id: <20231113085457.199053-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231113085457.199053-1-tvrtko.ursulin@linux.intel.com>
References: <20231113085457.199053-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add __rcu annotation to cursor
 when iterating client objects
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

__rcu annotation is needed to avoid the sparse warnings such as:

  .../i915_drm_client.c:92:9: sparse: sparse: incompatible types in comparison expression (different address spaces):
  .../i915_drm_client.c:92:9: sparse:    struct list_head [noderef] __rcu *
  .../i915_drm_client.c:92:9: sparse:    struct list_head *

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 968853033d8a ("drm/i915: Implement fdinfo memory stats printing")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202311110610.h0m6ydI5-lkp@intel.com/
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/i915_drm_client.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index be9acfd9410e..fa6852713bee 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -78,7 +78,7 @@ static void show_meminfo(struct drm_printer *p, struct drm_file *file)
 	struct drm_i915_private *i915 = fpriv->i915;
 	struct drm_i915_gem_object *obj;
 	struct intel_memory_region *mr;
-	struct list_head *pos;
+	struct list_head __rcu *pos;
 	unsigned int id;
 
 	/* Public objects. */
-- 
2.40.1

