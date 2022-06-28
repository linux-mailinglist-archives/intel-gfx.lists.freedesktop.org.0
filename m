Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A388355D4BA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 15:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C392E10F094;
	Tue, 28 Jun 2022 13:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E02F10F094;
 Tue, 28 Jun 2022 13:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656422059; x=1687958059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7vF5SJUBLsBQXKBwforV0poww+OqgLPMjvmE9RNjwfo=;
 b=UAF6jOhgx+bLgUeZKU4pX9RjyBkYoXE14EGazeuffGEvD9jGgEG4Oe7/
 4oB3MoQ/YmVi9frBqodbNeeUmVtQ5fyAsR3vrKD3QS+XGyhoC1PQelGJh
 gWb9pb02c676/Gc+CPvYDwia/ScWC+s254dg3Gs0OBzxfX2aFriopI3jF
 l5s2OJirXjgmCku90WlNlYnMsqVQEzJ6EC6Eci9IDa7mWgDJhDNpfmLlq
 vTLCyiT/SYJR+5cQDELCcgHwXxZSjFvK6AWdxYZA0Pe1ynXJM2/HNZ+X8
 1G6GzvRQRtKOneX2/wk5xXmh6m+ikKQDbef2IxJihZ9qPM+b1YFIlbxiK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343427320"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343427320"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:14:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="594790372"
Received: from dlee-mobl1.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.214.144.75])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:14:16 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 28 Jun 2022 14:13:18 +0100
Message-Id: <20220628131318.197965-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628131318.197965-1-matthew.auld@intel.com>
References: <20220628131318.197965-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3]
 tests/amdgpu/amdgpu_command_submission: fix uaf
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

../lib/amdgpu/amd_command_submission.c: In function ‘amdgpu_command_submission_write_linear_helper’:
../lib/amdgpu/amd_command_submission.c:201:13: warning: pointer ‘ring_context’ used after ‘free’ [-Wuse-after-free]
  201 |         r = amdgpu_cs_ctx_free(ring_context->context_handle);
      |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../lib/amdgpu/amd_command_submission.c:199:9: note: call to ‘free’ here
  199 |         free(ring_context);
      |         ^~~~~~~~~~~~~~~~~~

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 lib/amdgpu/amd_command_submission.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/amdgpu/amd_command_submission.c b/lib/amdgpu/amd_command_submission.c
index 4dc4df95..16939653 100644
--- a/lib/amdgpu/amd_command_submission.c
+++ b/lib/amdgpu/amd_command_submission.c
@@ -196,10 +196,10 @@ void amdgpu_command_submission_write_linear_helper(amdgpu_device_handle device,
 	}
 	/* clean resources */
 	free(ring_context->pm4);
-	free(ring_context);
 	/* end of test */
 	r = amdgpu_cs_ctx_free(ring_context->context_handle);
 	igt_assert_eq(r, 0);
+	free(ring_context);
 }
 
 
-- 
2.36.1

