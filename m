Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF58D11853E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0218E6E893;
	Tue, 10 Dec 2019 10:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2E56E896
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:37:16 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 11:31:57 +0100
Message-Id: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/execbuf: Add support for parallel
 execbuf submission.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rework excecbuf slightly to take all locks earlier and stop dropping our lookups,
which allows us to do a more effective try-loop.

We will also need to lock all gem bo's in advance, including the shadow bo for the
command buffer submission. This is done before replacing struct_mutex by ww locking,
for increased readability.

Chris Wilson (2):
  drm/i915: Drop inspection of execbuf flags during evict
  drm/i915/gem: Extract transient execbuf flags from i915_vma

Maarten Lankhorst (5):
  drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
  drm/i915: Remove locking from i915_gem_object_prepare_read/write
  drm/i915: Separate lookup and pinning in execbuf.
  drm/i915: Parse command buffer earlier in eb_relocate(slow)
  drm/i915: Use per object locking instead of struct_mutex for execbuf

 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../gpu/drm/i915/gem/i915_gem_client_blt.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  26 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 547 +++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  39 +-
 .../gpu/drm/i915/gem/i915_gem_object_blt.c    |   2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   9 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   9 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
 .../i915/gem/selftests/i915_gem_coherency.c   |  24 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  16 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
 .../i915/gem/selftests/i915_gem_object_blt.c  |   4 +-
 .../drm/i915/gem/selftests/i915_gem_phys.c    |   2 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |   9 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  11 +-
 drivers/gpu/drm/i915/i915_cmd_parser.c        |   1 +
 drivers/gpu/drm/i915/i915_drv.h               |   6 -
 drivers/gpu/drm/i915/i915_gem.c               |  62 +-
 drivers/gpu/drm/i915/i915_gem.h               |  11 +
 drivers/gpu/drm/i915/i915_gem_evict.c         |  15 +-
 drivers/gpu/drm/i915/i915_vma.h               |  11 -
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  41 ++
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 .../drm/i915/selftests/intel_memory_region.c  |   4 +-
 31 files changed, 505 insertions(+), 372 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
