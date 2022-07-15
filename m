Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7553C575FE7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 13:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBBD14BDA0;
	Fri, 15 Jul 2022 11:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BE114BD95;
 Fri, 15 Jul 2022 11:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657883990; x=1689419990;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WpJusXKS4A2dbx7IVltht7pC+s4XgZTWm+QYR/9a/lA=;
 b=YHlwe+x/bkRqL9wk6wobH1nKwAcwU/Tj8WkiN6KBGPnlyu+u3DAKJhWC
 QVQPdGJCKVwbq6ux0bvdN8tB6755/lTMqZTtmSLHtWysIjXR5NbJGzmxn
 CHb7bpZgoVIAY2U0GkYTYf3Rn0mEvCvxDj+zEr9n8O710LkF0m2jvOmQa
 sUYCd3l+YZBZR8a9rBKinhjvgSPVoJerXPfCgZTMdRiMeKAu7Qnk9cTPS
 WDPK6u40L5Wk6NJlHzKT+sY7CCexfpl4cagOiJ2rqeejyLABzNKASC9yz
 Gjc00fN7tmwA1WhFQI2AJnpTnaIAoLOD+fLVzGLHy2N/YJpWvaEEuKEKx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="349730820"
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="349730820"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 04:19:49 -0700
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="772944104"
Received: from rsuppram-mobl.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.150.233])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 04:19:47 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 15 Jul 2022 12:19:37 +0100
Message-Id: <20220715111937.1245586-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_create: use 48b addressing
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

The object here could be very large (8G+), so make sure we allow using
the entire address space, to avoid sometimes hitting -ENOSPC.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6446
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/gem_create.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index 1b694c6a..ff022713 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -538,7 +538,9 @@ static int upload(int fd, uint32_t handle)
 	 * for sure placed in one of requested regions.
 	 */
 	exec[0].handle = handle;
+	exec[0].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
 	exec[1].handle = batch_create_size(fd, PAGE_SIZE);
+	exec[1].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
 
 	return __gem_execbuf(fd, &execbuf);
 }
-- 
2.36.1

