Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1C96577C5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 15:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB2010E3A6;
	Wed, 28 Dec 2022 14:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B15C10E1B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 14:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672237595; x=1703773595;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=512Uh8eFg678gyv1KhQWcwQ1jNeBjEgpIkWtZMtldkU=;
 b=nbbZAyMfcbuncUtoSigEpbtT/Vfa7M7Ia+Twg6P69jPxD5VcTfc36cce
 5OAAeZgv7mIYHJBBj+ScA9Q0FJ7t4y0ORDJhMBgkq2Alref04lg4P+/Er
 cmvN8P6AI/i/ix6Smavzzr7Mk36lorNh/HOy3kbO2ebhzhE6l1Ueu0Fc+
 qfoTcrA6IQspLDX2AWkIiHZ7o4lfVIUOv1etH5/yd4w04UIt5Z370lUND
 bO4UEkibOEwFreuKr6GY9A6GHUxCxNDfoaCJc4um2fpOL/kWg1ADe//nN
 +Gow/0Pq6VvUqu6xY0EjLAzXBAvRlrlzKYmQyFvbfJKhB8/qasCU0ue6r A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="322113432"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322113432"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="982101448"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="982101448"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 06:26:19 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 16:25:27 +0200
Message-Id: <20221228142533.880703-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v15 0/6] Fixes integer overflow or integer
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

Linux 6.2 rc1 merged into drm-tip. I resend the same patch series as the
previous version, except for one patch[1] included in Linux 6.2 rc1 from
the previous v15 patch series.

There is no difference in the code from the previous version [2] that was
updated to v15 version. And it has already been confirmed by the CI results
of v15 that there is no regression caused by this patch series.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4b21d25bf519c9487935a664886956bb18f04f6d
[2] https://patchwork.freedesktop.org/series/111963/

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

 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 303 +++++++++++++++---
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
 drivers/gpu/drm/i915/i915_vma.c               |   8 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       |  14 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +
 drivers/gpu/drm/i915/selftests/scatterlist.c  |   4 +
 20 files changed, 420 insertions(+), 86 deletions(-)

-- 
2.37.1

