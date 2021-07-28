Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A7E3D8BC8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 12:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93AC36E846;
	Wed, 28 Jul 2021 10:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA416E846;
 Wed, 28 Jul 2021 10:31:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212627069"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212627069"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:31:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="499179412"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.245.248])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:31:47 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 28 Jul 2021 11:30:34 +0100
Message-Id: <20210728103041.1669985-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210728103041.1669985-1-matthew.auld@intel.com>
References: <20210728103041.1669985-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 04/11] lib/i915/gem_mman: add fixed
 mode to gem_mmap__cpu
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

On discrete we only support the new fixed mode.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/i915/gem_mman.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
index 337d28fb..6f5e6d72 100644
--- a/lib/i915/gem_mman.c
+++ b/lib/i915/gem_mman.c
@@ -434,7 +434,13 @@ void *gem_mmap__device_coherent(int fd, uint32_t handle, uint64_t offset,
  */
 void *__gem_mmap__cpu(int fd, uint32_t handle, uint64_t offset, uint64_t size, unsigned prot)
 {
-	return __gem_mmap(fd, handle, offset, size, prot, 0);
+	void *ptr;
+
+	ptr = __gem_mmap(fd, handle, offset, size, prot, 0);
+	if (!ptr)
+		ptr = __gem_mmap_offset__fixed(fd, handle, offset, size, prot);
+
+	return ptr;
 }
 
 /**
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
