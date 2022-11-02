Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 102F2616559
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 15:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0593010E48F;
	Wed,  2 Nov 2022 14:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A55510E48F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 14:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667400931; x=1698936931;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zNJbk738oHLK29/0c87lpsCT2jeqUrOs7ny4J3lDNEk=;
 b=RvwQ6h3fX2eC7QzGk41I5CavWxJdCpuwKbTSa/owHjPoJIp60EvAf1TC
 B7SPQZ1//cydJmlQR+0UwDHc1JOzNvFcrLl7iR/OEQkU4cujFZug97R1x
 aytgu2PVuQLSzeRlIpUy4XBee35D6YVrowUHQJfr9a2gAYqwAVh9SicVd
 tgIWGI1KPnJrq83BkItTZ7vdJWcrSQoSGv1Ij8314aQIuRlfycl5f4WRk
 wpQ/KVSjdK75qQs44kdbg1VbvCUb3RrNsWtB73q54E1ql19JHOot6xkXr
 ZekvT1pFZ40nwOsKNybINbhRkarjEHXjh79ihp2zkT4l2X5NQjDDhJWaF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="311151389"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="311151389"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:54:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636808415"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636808415"
Received: from progasze-mobl3.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.144.23])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 07:54:22 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 16:53:18 +0200
Message-Id: <20221102145325.617270-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v14 0/7] Fixes integer overflow or integer
 truncation issues in page lookups,
 ttm place configuration and scatterlist creation
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

This patch series fixes integer overflow or integer truncation issues in
page lookups, ttm place configuration and scatterlist creation, etc.
We need to check that we avoid integer overflows when looking up a page,
and so fix all the instances where we have mistakenly used a plain integer
instead of a more suitable long.
And there is an impedance mismatch between the scatterlist API using
unsigned int and our memory/page accounting in unsigned long. That is we
may try to create a scatterlist for a large object that overflows returning
a small table into which we try to fit very many pages. As the object size
is under the control of userspace, we have to be prudent and catch the
conversion errors. To catch the implicit truncation as we switch from
unsigned long into the scatterlist's unsigned int, we use improved
overflows_type check and report E2BIG prior to the operation. This is
already used in our create ioctls to indicate if the uABI request is simply
too large for the backing store. 
And ttm place also has the same problem with scatterlist creation,
and we fix the integer truncation problem with the way approached by
scatterlist creation.
And It corrects the error code to return -E2BIG when creating gem objects
using ttm or shmem, if the size is too large in each case.

This series includes a patch [1][2] merged into the hardening tree. (it
added for testing of Intel-gfx CI and it should appear in -next shortly.)
This version fixes and updates the comments and discussions left in the v13
patch [3][4]. 
 - do not shadow sg_alloc_table() and sg_alloc_table_from_pages_segment()
   (Jani)
 - drop check_assign() and check_assign_user_ptr() macros (Linus)

[1] https://lore.kernel.org/lkml/202211011605.2D8C927C2@keescook/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/hardening&id=5904fcb776d0b518be96bca43f258db90f26ba9a
[3] https://patchwork.freedesktop.org/patch/505092/?series=109169&rev=1
[4] https://lore.kernel.org/all/20220928081300.101516-6-gwan-gyeong.mun@intel.com/

Chris Wilson (3):
  drm/i915/gem: Typecheck page lookups
  drm/i915: Check for integer truncation on scatterlist creation
  drm/i915: Remove truncation warning for large objects

Gwan-gyeong Mun (3):
  drm/i915: Check for integer truncation on the configuration of ttm
    place
  drm/i915: Check if the size is too big while creating shmem file
  drm/i915: Use error code as -E2BIG when the size of gem ttm object is
    too large

Kees Cook (1):
  overflow: Introduce overflows_type() and castable_to_type()

 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 303 ++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  27 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   4 +
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  23 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  20 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   6 +-
 .../drm/i915/gem/selftests/huge_gem_object.c  |   6 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   8 +
 .../drm/i915/gem/selftests/i915_gem_context.c |  12 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   8 +-
 .../drm/i915/gem/selftests/i915_gem_object.c  |   8 +-
 drivers/gpu/drm/i915/gvt/dmabuf.c             |  10 +-
 drivers/gpu/drm/i915/i915_gem.c               |  18 +-
 drivers/gpu/drm/i915/i915_scatterlist.c       |   5 +
 drivers/gpu/drm/i915/i915_user_extensions.c   |   2 +-
 drivers/gpu/drm/i915/i915_utils.h             |   4 -
 drivers/gpu/drm/i915/i915_vma.c               |   8 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       |  14 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +
 drivers/gpu/drm/i915/selftests/scatterlist.c  |   4 +
 include/linux/compiler.h                      |   1 +
 include/linux/overflow.h                      |  48 +++
 lib/Makefile                                  |   1 +
 lib/overflow_kunit.c                          | 381 ++++++++++++++++++
 26 files changed, 848 insertions(+), 91 deletions(-)

-- 
2.37.1

