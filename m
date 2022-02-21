Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAAD4BDA1A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F08B10E801;
	Mon, 21 Feb 2022 14:13:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 579F210E79C;
 Mon, 21 Feb 2022 14:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645452780; x=1676988780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mZE+Hx7k2G9ftJ2JefZfgAJIvpxUhLM1wmf66cMq63Y=;
 b=aFSvPTWoKyDo5g2pbb9dgv9x+Zit4LOXIGKvheLLYpY/PoZXvWylhdwR
 v3GzL1szTkoHfhGfWXQFGP4KDcnZFVEN5ZXU139MSSEZOOBemMFLxysek
 l4fsYafzqxlriOtTeOPfMVufP8WBxsgDg9YV1y5FdoijtQDlWc3jplAx2
 ToDmJ0RhrkKmFPTQsPVpKAy+oVQPa9oMwRMSaLK1CbJUo7hjutNmIphht
 hC2Ax4qUTBvK8HJjRAG3VWrlUpxNUUthaTaqAO8x/U+cBNFdcTlXsLVqS
 rsSClo9GsaEBcoodGLL01jRd4k6kw0G68fHc75HGeyOLmR5lsKsVL0/lt w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="238931653"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="238931653"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:11:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="683217363"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:11:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:10:36 +0000
Message-Id: <20220221141036.2490380-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221141036.2490380-1-matthew.auld@intel.com>
References: <20220221141036.2490380-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 6/6] lib/i915: request CPU_ACCESS for fb
 objects
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

kms_frontbuffer_tracking@basic falls over if the fb needs to be migrated
from non-mappable device memory, to the mappable part, due to being
temporarily pinned for scanout, when hitting the CPU fault handler,
which just gives us SIGBUS. If the device has a small BAR let's attempt
to use the mappable portion, if possible.

XXX: perhaps the kernel needs to somehow handle this better?

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 lib/ioctl_wrappers.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 09eb3ce7..7713e78b 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -635,7 +635,8 @@ uint32_t gem_buffer_create_fb_obj(int fd, uint64_t size)
 	uint32_t handle;
 
 	if (gem_has_lmem(fd))
-		handle = gem_create_in_memory_regions(fd, size, REGION_LMEM(0));
+		handle = gem_create_with_cpu_access_in_memory_regions(fd, size,
+								      REGION_LMEM(0));
 	else
 		handle = gem_create(fd, size);
 
-- 
2.34.1

