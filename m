Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 329D96577C0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 15:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB4A10E3AA;
	Wed, 28 Dec 2022 14:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E267910E3A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 14:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672237600; x=1703773600;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Cr9ixCcUs7bTEjvY7bQVDS+W1GG8HwXfoHWRf/bUMA=;
 b=laN7NsjPlvTHA1PQgSERahT7ge1Qg/aRIXkgOz0VSGnhWLVZrh0b3Kh0
 nARQuLYbyd/0rAGGuMIaRXA0EfoqtPvqCqEbJaubMSpiPEuUfM1u4yafI
 z32c+sfFiwHU+NY5Bdtdl09dYPLLXecqK04gv1nnMYTxC9vf6fA+hJSOI
 S+sloyBt0ebUH3KnpoPTXGCy9xX9EiUpHAln6ZOdUdSdGdU5tZRARJ2bv
 aQZCmX/ei96d1hJXNBMHoXtbTx/TC7rj9CM+8/xyshDyQcByTcS6Okz6p
 es+MSqYBaGckJAHZ2yubtsw2kxrxNadEWO+q7pYbkOkh/iEGvWoEfOeUO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322113489"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322113489"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="982101466"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="982101466"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:36 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 16:25:31 +0200
Message-Id: <20221228142533.880703-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
References: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 4/6] drm/i915: Check if the size is too big
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

