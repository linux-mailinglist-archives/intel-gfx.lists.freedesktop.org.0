Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4499E552FC6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6393810FC7F;
	Tue, 21 Jun 2022 10:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67C2210F97A;
 Tue, 21 Jun 2022 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655807441; x=1687343441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9vMACVS+tUfgpQ8RA/xGcGR2d8E9t3AiKd2S59YHMsM=;
 b=Y/XL/i92ZsFxfvRC446H/71gwN0axgD6+n6+o6LRet1/FOnsAZshiDDv
 IU7shQimRb2mbEKPVxuVT+liIZXHyP0GWR6NgofVeaLoBd6fqtT9FEBGa
 89IrTfznhCMwsAj11J9XTJb3NpOE62ATQzFNNKZKAuEAh+p/eygwPs1Br
 BwkXNY9zpJQil1Ul/gNMQH0Pv/QWnpEvYJzvh5980ooqOVXd5fQ0l32xj
 OUBtuMtZtsANlkn1jNQDtFjK1a9iT7eHGO95mjMBES+JB3bnN2Z7tm3jI
 y7mKEYaieGSJAPQj1Ju45t8un5q7WjUDfn4be5h5A8zrZJeCg3G2aUKRm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280816973"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280816973"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591596303"
Received: from jasonmor-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.200.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 03:30:24 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 21 Jun 2022 11:30:01 +0100
Message-Id: <20220621103001.184373-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220621103001.184373-1-matthew.auld@intel.com>
References: <20220621103001.184373-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 9/9] lib/i915: request CPU_ACCESS for
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
 intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

kms_frontbuffer_tracking@basic falls over if the fb needs to be migrated
from non-mappable device memory, to the mappable part, due to being
temporarily pinned for scanout, when hitting the CPU fault handler,
which just gives us SIGBUS. If the device has a small BAR let's attempt
to use the mappable portion, if possible.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
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
2.36.1

