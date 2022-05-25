Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E32A6534320
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:38:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B37810EC37;
	Wed, 25 May 2022 18:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DEAD10EC11;
 Wed, 25 May 2022 18:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653503879; x=1685039879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QWHD3BXlQzkL4VcCkUeRqIcTjs0Gm3cptnMKH6ex1Ps=;
 b=hxyosBuuWYHUk0X3WFu7i6Ikh1KZkHoao5C+3CxBzEF/n1dHU4txp9tT
 l6IfjN3HrvTuDLIF80sJgrNVXmIMUm74l63nayiKDPm7umU5CAD2A66F0
 Fc1j1zbSCh2OT1evcMA8HiGRc7fxQmNLSwJbLRy2vsMGzR8VkD8Ct8mmo
 9okEiJ0lSbkrNWrwhACXnZP5KhXsHed2XMa2LaYY101hkdoSsnsRgIuWm
 07tgyOOxK86uVd66G+6Ysob97ebJfCF6s9vra21Tu1hfNIJkl1N0Hyqt7
 r7ljga0FgL4FRpQMAMy9L6l6V8I3cIfZg4ab3NTRkIBpgzZfyToc+FhIy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="360294793"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="360294793"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="526989557"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 25 May 2022 19:37:02 +0100
Message-Id: <20220525183702.490989-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220525183702.490989-1-matthew.auld@intel.com>
References: <20220525183702.490989-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 9/9] lib/i915: request CPU_ACCESS for fb
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
2.34.3

