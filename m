Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34030512EB1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 10:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243A210E610;
	Thu, 28 Apr 2022 08:39:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF34110E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 11:34:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alarumbe) with ESMTPSA id 49AD11F44404
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651059253;
 bh=P5VdK+LHMokFcdi89N8/GWWRxUKRL6/pmWVeQuYPvkU=;
 h=From:To:Cc:Subject:Date:From;
 b=WGtB2//sehr5yr6Xi+v2n7x1iv8auYq9OlXuL/e0Rlri9WxXf5KSZbmwFzLMBAErg
 Sg0+osCHyKsD/KJiws8zC13jOq7RwNudzXi2+QEY7Us0c1tb1Lg3nWJYeBLcu0Pcv6
 b6rA6oF4HS1QsbyB3liNsES8axwkFB6O2oyq7SiR7hnesvjMKKlYMHrpUC/Dwfh46U
 FC0xCdi66tfZ2Lz4rlmlKj4jKF3SyxCE4vdmxMiRHd7DNOxQNaQSdA45u+HQaCwTVC
 7yggu8OPwCxQMbvWhB+52TP1/Wz1JX1I5KUUl8PfIHNRXW8boVsVZwwli9X48qwjZY
 3yEoA9AL0zAtA==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 Apr 2022 12:34:03 +0100
Message-Id: <20220427113404.401741-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 28 Apr 2022 08:39:08 +0000
Subject: [Intel-gfx] [PATCH 0/1] Replace shmem memory region and object
 backend with TTM
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch is an attempt at eliminating the old shmem memory region and GEM
object backend, in favour of a TTM-based one that is able to manage objects
placed on both system and local memory.

Known issues:

Many GPU hungs in machines of GEN <= 5. My assumption is this has something
 to do with a caching issues, but everywhere across the TTM backend code
 I've tried to handle object creation and getting its pages with the same
 set of caching and coherency properties as in the old shmem backend.

Object passed to shmem_create_from_object somehow not being flushed after
 being written into at lrc_init_state. Seems thatwith the new backend and
 when pinning an intel_context, either i915_gem_object_pin_map is not
 creating a kernel mapping with the right caching properties or else
 flushing it afterwards doesn't do anything.

 This leads to a GPU hung because the engine's default state that is read
 with shmem_read doesn't reflect what had been written into it previously
 by vmap'ing the object's pages. The only workaround I could find was
 manually setting the shmem file's pages dirty and putting them back, but
 this looks hacky and wasteful for big BO's

Besides all this, I haven't yet implemented the pread callback for TTM
object backend, as it seems CI's BAT test list doesn't include it.

Adrian Larumbe (1):
  drm/i915: Replace shmem memory region and object backend with TTM

 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c     |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 397 +------------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 212 +++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |  11 +-
 drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
 drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
 10 files changed, 333 insertions(+), 412 deletions(-)

-- 
2.35.1

