Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AD953C7B6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 11:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6A010E8E4;
	Fri,  3 Jun 2022 09:39:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC9310E8E4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 09:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654249186; x=1685785186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=np8KZjsHukcaPQ9+YkCaRptT34K4eIq5t6NBvzBddGo=;
 b=J2a43PQSGRdPeKYKuFWNML9DklmpUyXd+mN90T5tFBkhpoyernDQEdVM
 hQwRUtryoZPk5U9DqSelYzXVVBbZY7gCvuu3gP4BYYdzf+6wCmYvpi3FZ
 Tz0xYZXY/rk2s9+0pYP5eaNWRT0TjRTvaAUhx3cDYCSqF1+LpQuxOT0F7
 6iJB766WuoaaIb6AZVYL6U9alIBNODT8/DvKIANifn7A+O78/P1N/H7q/
 z5ggpDM7cHrgTMGG+VZ0y48hKp07zS0+m8QJjMPxPLymJyWMvpHHv/J16
 LhZUSivUdAqUojrawaZCEIYtQSsdhCK/Tgfcj0sUiph3KGdsqn7p87gYZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="276284590"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="276284590"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 02:39:46 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="757414565"
Received: from swoon-mobl1.gar.corp.intel.com (HELO hades.gar.corp.intel.com)
 ([10.213.34.85])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 02:39:43 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 18:38:24 +0900
Message-Id: <20220603093830.1529520-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Fixes integer overflow or integer
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
Cc: thomas.hellstrom@linux.intel.com, matthew.auld@intel.com,
 chris@chris-wilson.co.uk
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
unsigned long into the scatterlist's unsigned int, we use our overflows_type
check and report E2BIG prior to the operation. This is already used in
our create ioctls to indicate if the uABI request is simply too large for
the backing store. 
And ttm place also has the same problem with scatterlist creation,
and we fix the integer truncation problem with the way approached by
scatterlist creation.
And It corrects the error code to return -E2BIG when creating gem objects
using ttm or shmem, if the size is too large in each case.

Testcase: igt@gem_create@create-massive
Testcase: igt@gem_userptr_blits@input-checking
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4991
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5411
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>

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

 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  7 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 77 +++++++++++--------
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     | 25 +++---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  4 +
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     | 14 +++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 29 ++++++-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  5 +-
 .../drm/i915/gem/selftests/i915_gem_context.c | 12 +--
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  8 +-
 .../drm/i915/gem/selftests/i915_gem_object.c  |  8 +-
 drivers/gpu/drm/i915/gvt/dmabuf.c             |  9 ++-
 drivers/gpu/drm/i915/i915_gem.c               | 18 ++++-
 drivers/gpu/drm/i915/i915_scatterlist.h       |  8 ++
 drivers/gpu/drm/i915/i915_utils.h             | 18 +++++
 drivers/gpu/drm/i915/i915_vma.c               |  8 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       | 16 +++-
 17 files changed, 189 insertions(+), 83 deletions(-)

-- 
2.34.1

