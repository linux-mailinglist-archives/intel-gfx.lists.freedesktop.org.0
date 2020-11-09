Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EB32AB640
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 12:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C0589933;
	Mon,  9 Nov 2020 11:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7059389933
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 11:13:04 +0000 (UTC)
IronPort-SDR: bnoGfTc5usanSpaSc9aDF9Myg6U5SOlhnd8qvtZFjfjJSLJ07XAxsSmT2uprAbxVr0EbkwAAFQ
 des24cgOik9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="157568045"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="157568045"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 03:13:03 -0800
IronPort-SDR: Whfao3hEwkQvB9DdtzQG8+nYgfX/Gr2+nmaDsDV/s/lwVRcFfA7Na5jg0rTKbtc7O0E8oVlmKz
 6Znfxj0g4b0Q==
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; d="scan'208";a="472930665"
Received: from mjnolan-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.17.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 03:13:02 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Nov 2020 11:12:49 +0000
Message-Id: <20201109111249.109365-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/region: fix order when adding blocks
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

When performing an allocation we try split it down into the largest
possible power-of-two blocks/pages-sizes, and for the common case we
expect to allocate the blocks in descending order. This also naturally
fits with our GTT alignment tricks(including the hugepages selftest),
where we sometimes try to align to the largest possible GTT page-size
for the allocation, in the hope that translates to bigger GTT
page-sizes. Currently, we seem to incorrectly add the blocks in the
opposite order, which is definitely not the intended behaviour.

Reported-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 180e1078ef7c..b326993a1026 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -114,7 +114,7 @@ __intel_memory_region_get_pages_buddy(struct intel_memory_region *mem,
 		n_pages -= BIT(order);
 
 		block->private = mem;
-		list_add(&block->link, blocks);
+		list_add_tail(&block->link, blocks);
 
 		if (!n_pages)
 			break;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
