Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0E23DB581
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 10:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789906F419;
	Fri, 30 Jul 2021 08:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41CD6F413;
 Fri, 30 Jul 2021 08:54:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="298644849"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="298644849"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:54:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664763853"
Received: from asleatox-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.201.173])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 01:54:02 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 30 Jul 2021 09:53:42 +0100
Message-Id: <20210730085348.2326899-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210730085348.2326899-1-matthew.auld@intel.com>
References: <20210730085348.2326899-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 05/11] lib/i915/gem_mman: update
 mmap_offset_types with FIXED
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to also iterate the fixed mode in the tests which rely on this.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/i915/gem_mman.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index c134e973..c69dc6f5 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -621,6 +621,7 @@ const struct mmap_offset mmap_offset_types[] = {
 	{ "wb", I915_MMAP_OFFSET_WB, I915_GEM_DOMAIN_CPU },
 	{ "wc", I915_MMAP_OFFSET_WC, I915_GEM_DOMAIN_WC },
 	{ "uc", I915_MMAP_OFFSET_UC, I915_GEM_DOMAIN_WC },
+	{ "fixed", I915_MMAP_OFFSET_FIXED, 0},
 	{},
 };
 
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
