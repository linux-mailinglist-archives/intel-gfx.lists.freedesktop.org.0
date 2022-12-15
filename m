Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C285E64DBB3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 13:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B7710E09F;
	Thu, 15 Dec 2022 12:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 807DB10E0B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 12:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671108798; x=1702644798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Cr9ixCcUs7bTEjvY7bQVDS+W1GG8HwXfoHWRf/bUMA=;
 b=VId1hrUiC+cLBd2eXwPpzatu/wi/Wy2D5bUPL9m8JULy36JFBzWAoOfC
 E4QKlXMTj8CBDhRXGw2vDhCwAns2Y/IytmT33oLlughsEniAtrgIBNRVw
 hdRr987/BnV0kCRDT2ahSqr8BS/46b3qJwdF1bfexDCIOO8/jDcL63P5Z
 TyHE+gZBtOmYe1VgiAqk2/9FmmaQ/UtNtkl25DRJE3jXvRYu7itGyN+lX
 7Qw6rK/I1Yy2EidJt++VcK+l8JIjBqZRNJfAPO1zOO+I5hR+0V9/an4Q4
 eNzPRD3yridd8lAEcLWNSCRcTh9a4E+Hri+KpOO5IvUEn66odGLuihgaE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382974059"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="382974059"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 04:53:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="627174676"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="627174676"
Received: from jd-work.ger.corp.intel.com (HELO paris.ger.corp.intel.com)
 ([10.249.137.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 04:53:15 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Dec 2022 14:52:25 +0200
Message-Id: <20221215125227.1165037-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221215125227.1165037-1-gwan-gyeong.mun@intel.com>
References: <20221215125227.1165037-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 5/7] drm/i915: Check if the size is too big
 while creating shmem file
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
Cc: thomas.hellstrom@linux.intel.com, andrzej.hajda@intel.com,
 jani.nikula@intel.com, chris@chris-wilson.co.uk, matthew.auld@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The __shmem_file_setup() function returns -EINVAL if size is greater than
MAX_LFS_FILESIZE. To handle the same error as other code that returns
-E2BIG when the size is too large, it add a code that returns -E2BIG when
the size is larger than the size that can be handled.

v4: If BITS_PER_LONG is 32, size > MAX_LFS_FILESIZE is always false, so it
    checks only when BITS_PER_LONG is 64.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 28e857f8c169..e767791e40e0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -541,6 +541,20 @@ static int __create_shmem(struct drm_i915_private *i915,
 
 	drm_gem_private_object_init(&i915->drm, obj, size);
 
+	/* XXX: The __shmem_file_setup() function returns -EINVAL if size is
+	 * greater than MAX_LFS_FILESIZE.
+	 * To handle the same error as other code that returns -E2BIG when
+	 * the size is too large, we add a code that returns -E2BIG when the
+	 * size is larger than the size that can be handled.
+	 * If BITS_PER_LONG is 32, size > MAX_LFS_FILESIZE is always false,
+	 * so we only needs to check when BITS_PER_LONG is 64.
+	 * If BITS_PER_LONG is 32, E2BIG checks are processed when
+	 * i915_gem_object_size_2big() is called before init_object() callback
+	 * is called.
+	 */
+	if (BITS_PER_LONG == 64 && size > MAX_LFS_FILESIZE)
+		return -E2BIG;
+
 	if (i915->mm.gemfs)
 		filp = shmem_file_setup_with_mnt(i915->mm.gemfs, "i915", size,
 						 flags);
-- 
2.37.1

