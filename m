Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500F5658658
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 20:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F77A10E3EC;
	Wed, 28 Dec 2022 19:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6155210E3EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 19:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672255428; x=1703791428;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zi6G0zksfewXnw6yBXAHiuI/zgg+/QAnFqQSlDci8n4=;
 b=Z1VRBMD1lAA54Dds3DJ/vCK7ykmDEl4EIAbNI72m6ItXAOyhjmPyzDvc
 Buiv6roN/U0uU7KM8poIQZ1JioExBSNK4VcZyWiboEW03mIAAcpR+3lI3
 fZXTAtf7M0olp0tjhi13jVwcUVFcORKsT9A6VxoEGTiqMTUJUj1IJ/k8X
 BU8dnvb7yzeu/mKQMIw1JEmPQcexsWie9AH0o1RIM/ABQVJ76O3m3/lY/
 D1faKIvFmhRePNABpfwT75e1JZ0MWHJz+7hCIE12sIh1WogeQ/taXVXNr
 LA3iXLZcIFvFjVQl929p9BjLtp9Y9PeY1T3S79R4dB6dVIkcILFAJFUOI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="318602664"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="318602664"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 11:23:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10574"; a="683999609"
X-IronPort-AV: E=Sophos;i="5.96,281,1665471600"; d="scan'208";a="683999609"
Received: from rsznejde-mobl.ger.corp.intel.com (HELO
 paris.ger.corp.intel.com) ([10.249.140.251])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 11:23:39 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Dec 2022 21:22:46 +0200
Message-Id: <20221228192252.917299-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v16 0/6] Fixes integer overflow or integer
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

Compared to the v15 version patch series[1], there is no code modification in
this version patch series. Among the warnings reported by CI.CHECKPATCH,
this patch fixes the parts that need fixing.
Fix "ERROR:SPACING" Checkpatch report
Fix "WARNING:COMMIT_LOG_LONG_LINE" Checkpatch report

[1] https://patchwork.freedesktop.org/series/112270/

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

