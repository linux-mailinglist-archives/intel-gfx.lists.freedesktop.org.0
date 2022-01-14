Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F299C48EA8D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 14:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C3F10E3AA;
	Fri, 14 Jan 2022 13:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F246110E332;
 Fri, 14 Jan 2022 13:23:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jan 2022 14:23:14 +0100
Message-Id: <20220114132320.109030-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/6] drm/i915: Remove short term pins from
 execbuf by requiring lock to unbind.
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Previously, short term pinning in execbuf was required because i915_vma was
effectively independent from objects, and has its own refcount, locking,
lifetime rules and pinning.

This series removes the separate locking, by requiring vma->obj->resv to be
held when pinning and unbinding. This will also be required for VM_BIND work.
Some patches have already been merged, but this contains the mremainder of
the conversion.

With pinning required for pinning and unbinding, the lock is enough to prevent
unbinding when trying to pin with the lock held, for example in execbuf.

This makes binding/unbinding similar to ttm_bo_validate()'s use, which just
cares that an object is in a certain place, without pinning it in place.

Having the VMA part of gem bo removes a lot of the vma refcounting, and makes
i915_vma more a part of the bo, instead of its own floating object that just
happens to be part of a bo. This is also required to make it more compatible
with TTM, and migration in general.

For future work, it makes things a lot simpler and clear. We want to end up
with i915_vma just being a specific mapping of the BO, just like is the
case in other drivers. i915_vma->active removal is the next step there,
and makes it when object is destroyed, the bindings are destroyed (after idle),
instead of object being destroyed when bindings are idle. 

Changes since last version:
- Fix list corruption in i915_gem_evict_vm()
- Small fixes and assorted canges.

Maarten Lankhorst (6):
  drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC
    errors, v2.
  drm/i915: Add locking to i915_gem_evict_vm(), v2.
  drm/i915: Add object locking to i915_gem_evict_for_node and
    i915_gem_evict_something, v2.
  drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for
    i915_vma_unbind, v2.
  drm/i915: Remove support for unlocked i915_vma unbind
  drm/i915: Remove short-term pins from execbuf, v6.

 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 220 +++++++++---------
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  18 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   6 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  47 +++-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   1 -
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   2 +-
 drivers/gpu/drm/i915/gvt/aperture_gm.c        |   2 +-
 drivers/gpu/drm/i915/i915_gem.c               |   2 +
 drivers/gpu/drm/i915/i915_gem_evict.c         |  97 +++++++-
 drivers/gpu/drm/i915/i915_gem_evict.h         |   6 +-
 drivers/gpu/drm/i915/i915_gem_gtt.c           |   8 +-
 drivers/gpu/drm/i915/i915_gem_gtt.h           |   4 +
 drivers/gpu/drm/i915/i915_vgpu.c              |   2 +-
 drivers/gpu/drm/i915/i915_vma.c               | 122 +++++-----
 drivers/gpu/drm/i915/i915_vma.h               |   1 +
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  26 ++-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  28 +--
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   8 +-
 21 files changed, 382 insertions(+), 224 deletions(-)

-- 
2.34.1

