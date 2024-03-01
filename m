Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BD486DC1E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 08:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834CC10EBC4;
	Fri,  1 Mar 2024 07:33:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L2h/axd9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6DF10EBBF;
 Fri,  1 Mar 2024 07:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709278431; x=1740814431;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C97qIKTsqeLh+9COp7embVzlP4bd7TCyVE4Fmpqh6W8=;
 b=L2h/axd9O6/Mf1BKaWTGLskr32Nwv569W1PDGmQDkQmsmu/LVcqS3NlF
 ft8FwVpUbBR9ziYBLXjYgxzfmpdh3SnKkro5ubRvNOFLu6Rvh7B5mJBb+
 nYeSu+HfVbLRuG0SABL8n9saN6u3LolM0ufDBsyci6wIhwg6ATwErY6F7
 0qtf8aKLGeTpTx6eKaM6Md4N3gxrTUjC92jtAKo+mUnBVFjnN0De1IP5B
 b4AAU9f1ZmnGabhJ8/NytP0POMvmgISS0/Q83tIKsVar9nL3ydrzAoyFF
 gbHdOfTtr6VBjpOEdTqK/KdvnXk1hhsUgwh1DUG2fg40+/kf6VQ9DRa04 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3657696"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="3657696"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 23:33:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; 
   d="scan'208";a="8045816"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.5.115])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 23:33:45 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH v6 0/3] drm/i915: Fix VMA UAF on destroy against deactivate
 race
Date: Fri,  1 Mar 2024 08:29:19 +0100
Message-ID: <20240301073225.121634-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Object debugging tools were sporadically reporting illegal attempts to
free a still active i915 VMA object when parking a GT believed to be idle.

[161.359441] ODEBUG: free active (active state 0) object: ffff88811643b958 object type: i915_active hint: __i915_vma_active+0x0/0x50 [i915]
[161.360082] WARNING: CPU: 5 PID: 276 at lib/debugobjects.c:514 debug_print_object+0x80/0xb0
...
[161.360304] CPU: 5 PID: 276 Comm: kworker/5:2 Not tainted 6.5.0-rc1-CI_DRM_13375-g003f860e5577+ #1
[161.360314] Hardware name: Intel Corporation Rocket Lake Client Platform/RocketLake S UDIMM 6L RVP, BIOS RKLSFWI1.R00.3173.A03.2204210138 04/21/2022
[161.360322] Workqueue: i915-unordered __intel_wakeref_put_work [i915]
[161.360592] RIP: 0010:debug_print_object+0x80/0xb0
...
[161.361347] debug_object_free+0xeb/0x110
[161.361362] i915_active_fini+0x14/0x130 [i915]
[161.361866] release_references+0xfe/0x1f0 [i915]
[161.362543] i915_vma_parked+0x1db/0x380 [i915]
[161.363129] __gt_park+0x121/0x230 [i915]
[161.363515] ____intel_wakeref_put_last+0x1f/0x70 [i915]

That has been tracked down to be happening when another thread is
deactivating the VMA inside __active_retire() helper, after the VMA's
active counter has been already decremented to 0, but before deactivation
of the VMA's object is reported to the object debugging tool.

We could prevent from that race by serializing i915_active_fini() with
__active_retire() via ref->tree_lock, but that wouldn't stop the VMA from
being used, e.g. from __i915_vma_retire() called at the end of
__active_retire(), after that VMA has been already freed by a concurrent
i915_vma_destroy() on return from the i915_active_fini().  Then, we should
rather fix the issue at the VMA level, not in i915_active.

Since __i915_vma_parked() is called from __gt_park() on last put of the
GT's wakeref, the issue could be addressed by holding the GT wakeref long
enough for __active_retire() to complete before that wakeref is released
and the GT parked.

A VMA associated with a request doesn't acquire a GT wakeref by itself.
Instead, it depends on a wakeref held directly by the request's active
intel_context for a GT associated with its VM, and indirectly on that
intel_context's engine wakeref if the engine belongs to the same GT as the
VMA's VM.  Those wakerefs are released asynchronously to VMA deactivation.

In case of single-GT platforms, at least one of those wakerefs is usually
held long enough for the request's VMA to be deactivated on time, before
it is destroyed on last put of its VM GT wakeref.  However, on multi-GT
platforms, a request may use a VMA from a GT other than the one that hosts
the request's engine, then it is protected only with the intel_context's
VM GT wakeref.

There was an attempt to fix the issue on 2-GT Meteor Lake by acquiring an
extra wakeref for a Primary GT from i915_gem_do_execbuffer() -- see commit
f56fe3e91787 ("drm/i915: Fix a VMA UAF for multi-gt platform").  However,
that fix occurred insufficient -- the issue was still reported by CI.
That wakeref was released on exit from i915_gem_do_execbuffer(), then
potentially before completion of the request and deactivation of its
associated VMAs.  Moreover, CI reports indicated that single-GT platforms
also suffered sporadically from the same race.

I believe the issue was introduced by commit d93939730347 ("drm/i915:
Remove the vma refcount") which moved a call to i915_active_fini() from
a dropped i915_vma_release(), called on last put of the removed VMA kref,
to i915_vma_parked() processing path called on last put of a GT wakeref.
However, its visibility to the object debugging tool was suppressed by a
bug in i915_active that was fixed two weeks later with commit e92eb246feb9
("drm/i915/active: Fix missing debug object activation").

Fix the issue by getting a wakeref for the VMA's GT when activating it,
and putting that wakeref only after the VMA is deactivated.  However,
exclude global GTT from that processing path, otherwise the GPU never goes
idle.  Since __i915_vma_retire() may be called from atomic contexts, use
async variant of wakeref put.  Also, to avoid circular locking dependency,
take care of acquiring the wakeref before VM mutex when both are needed.

Having that fixed, stop explicitly acquiring the extra GT0 wakeref from
inside i915_gem_do_execbuffer(), and also drop an extra call to
i915_active_wait(), introduced by commit 7a2280e8dcd2 ("drm/i915: Wait for
active retire before i915_active_fini()") as another insufficient fix for
this UAF race.

v6: Since __i915_vma_active/retire() callbacks are not serialized, storing
    a wakeref tracking handle inside struct i915_vma is not safe, and
    there is no other good place for that.  Use untracked variants of
    intel_gt_pm_get/put_async(),
  - drop no longer used .wakeref_gt0 field from struct i915_execbuffer.
v5: Replace "tile" with "GT" across commit descriptions (Rodrigo),
  - reword commit message and description of patch 2 reusing relevant
    chunks moved there from commit description of patch 1 (Rodrigo),
  - explain why we take a temporary wakeref unconditionally inside
    i915_vma_pin_ww() (Rodrigo).
v4: Refresh on top of commit 5e4e06e4087e ("drm/i915: Track gt pm
    wakerefs") (Andi),
  - for more easy backporting, split out removal of former insufficient
    workarounds and move them to separate patches (Nirmoy).
  - clean up commit message and description a bit.
v3: Identify root cause more precisely, and a commit to blame,
  - identify and drop former workarounds,
  - update commit message and description.
v2: Get the wakeref before VM mutex to avoid circular locking dependency,
  - drop questionable Fixes: tag.

Janusz Krzysztofik (3):
  drm/i915/vma: Fix UAF on destroy against retire race
  drm/i915: Remove extra multi-gt pm-references
  Revert "drm/i915: Wait for active retire before i915_active_fini()"

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 18 ------------
 drivers/gpu/drm/i915/i915_vma.c               | 28 +++++++++++++------
 2 files changed, 19 insertions(+), 27 deletions(-)

-- 
2.43.0

