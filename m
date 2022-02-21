Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3DB4BDA23
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C951510E570;
	Mon, 21 Feb 2022 14:16:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8577D10E546;
 Mon, 21 Feb 2022 14:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645453004; x=1676989004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mZE+Hx7k2G9ftJ2JefZfgAJIvpxUhLM1wmf66cMq63Y=;
 b=c37iP4+DocLAR6NhfT0sYKdKOj4ZTTiypkF6G76A5yDMk5UbgAq3JKO/
 cwmUky2Fh+Y0RdXS7jaqr4/RtKDIIJsEdet8yOHpgkFI8Uf8ClHuavhf/
 GztY2vG4GY9whLv0lzOT3SGyMB+qq0fG7qHAmkPhoQoRSUPLgfjhH5Oqo
 eb5u9g9ck0+vXnopuwXq8aNr+ybMrn6fAk78rEyR8qcBK928AchxwZYUP
 UbF+3ohuFjsUv1yFq3F9wCZv9Gg2xieP602YWndtj5dqBagQoiW47xhn1
 fSt9foTEHSegkN6wg+pjed5uyAikSriYiP1kl5yT/qmsR7zzBIei9kmNq Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="251467161"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="251467161"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="606400547"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:42 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:16:20 +0000
Message-Id: <20220221141620.2490914-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220221141620.2490914-1-matthew.auld@intel.com>
References: <20220221141620.2490914-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 6/6] lib/i915: request CPU_ACCESS for
 fb objects
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

