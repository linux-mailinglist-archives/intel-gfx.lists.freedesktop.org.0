Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07E164DBA9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 13:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBD3D10E009;
	Thu, 15 Dec 2022 12:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C3910E009
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 12:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671108778; x=1702644778;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M5mmp1E4jYL7A2T0GU2KXUmXrLeGGgyslgJQj6Lj9uM=;
 b=YJWylTyAp1n1s9PGP0Zu4ONIatmbfFEc/62RgOtzXpiXbwhNXHQJbShZ
 WkF8GI9kbgLVf6n3F4mXlYuHl1OYenfCjDBJRighLoKePg9Wl8Qg7QemK
 FdVnqdc5f5MQqNy6glcmQpC1iGpRO1UkZWp3PsD4/z42iw9zMz20d5/pN
 WJ3j/4rjsGAaTtpTz1jcEDZ6aStIk53uV27bgkk5OwDfu8MeQ2AsdMe6F
 0kHBiDT+kW6zG0WeLEJl80QqplfYpyGvYHlsZEanYonsDcFrS9wGby3kt
 aEOoLM/sTEF/M8iywQ6ygwFy4ZCXg7kzvbx5+W+2sgfa3Lvzrxj9n9s3W w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382973978"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="382973978"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 04:52:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="627174652"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="627174652"
Received: from jd-work.ger.corp.intel.com (HELO paris.ger.corp.intel.com)
 ([10.249.137.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 04:52:53 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Dec 2022 14:52:20 +0200
Message-Id: <20221215125227.1165037-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 0/7] Fixes integer overflow or integer
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

This series includes a patch [1] merged into the linux-next tree. (it added
for testing of Intel-gfx CI)
This version fixes and updates the comments left in the v14 patch [2]. 

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4b21d25bf519c9487935a664886956bb18f04f6d
[2] https://patchwork.freedesktop.org/patch/509528/?series=110413&rev=2

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
 drivers/gpu/drm/i915/i915_scatterlist.c       |   9 +
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
 26 files changed, 852 insertions(+), 91 deletions(-)

-- 
2.37.1

