Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DDA2D0DFC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 11:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD9F6E81A;
	Mon,  7 Dec 2020 10:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4629F6E5CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 10:28:28 +0000 (UTC)
IronPort-SDR: Z197C9ZOxMXpAS//L/s1UyBM2JIiu2JtVvOh2PW6t7GSIb7XCz/5s7MdvF52+RpOnYelC2yyXF
 ljNd/LsuTADQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="172908541"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="172908541"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:28:27 -0800
IronPort-SDR: prvV2l0CHHpBdz6WUSH0U0wK9TfBZ6DcTIbaE2HONyeARXJ9+SO7t+rCw6n8WKo/M0LR5SsGkn
 nNz+bTLTV2Fw==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="363086451"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:28:25 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Mon,  7 Dec 2020 15:58:12 +0530
Message-Id: <20201207102812.29931-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fixing the error handling of
 shmem_pin_map
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

Since i was size_t, at error handling if i is 0, then --i >= 0.
Making i as int.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 463af675fadd..7de5bd15265c 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -52,8 +52,9 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 void *shmem_pin_map(struct file *file)
 {
 	struct page **pages;
-	size_t n_pages, i;
+	size_t n_pages;
 	void *vaddr;
+	int i;
 
 	n_pages = file->f_mapping->host->i_size >> PAGE_SHIFT;
 	pages = kvmalloc_array(n_pages, sizeof(*pages), GFP_KERNEL);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
