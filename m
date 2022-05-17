Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2A452ACEF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 22:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ADCC11349F;
	Tue, 17 May 2022 20:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5F011349F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 20:45:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alarumbe) with ESMTPSA id 0BCDD1F448BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1652820320;
 bh=kbdpHO2mNm3HthNjFrkUfCx/ByKg1iLXtzUiYxHOF3c=;
 h=From:To:Cc:Subject:Date:From;
 b=AfrgyubVHU76/x/l3M7WKv7KQI4XOQxTyqSqqVxFx+EZby26Nc7CEFNj5b4PV8tvz
 +9gfcmctlY7z7nSZRq/BzE89tqvchZdjS4713dJoaWixTddpd1WIV/nH0J2hJhEJOx
 uJ1lxzrMdk29Gt14HUVhrLwrnVG6/WezGj+mM9YVpV1e90z40h1S6cmaasLpNUPG1E
 NJkzMIZWLwd03tvRhYS6pP28KqPoz8DYoQBcJvKfKc/gfR54Jjyn9Ux3aX8wZf9NsN
 lHXF4d6/53O7sN+PVzsauJcEv6oiSB+Eb6zT0a33AY7M1JnGKPcQ5SLSD8kHanNZdU
 LhcNHBy5PfG0Q==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch,
	intel-gfx@lists.freedesktop.org
Date: Tue, 17 May 2022 21:45:12 +0100
Message-Id: <20220517204513.429930-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v2 0/1] Replace shmem memory region and
 object backend
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

This patch is a second attempt at eliminating the old shmem memory region
and GEM object backend, in favour of a TTM-based one that is able to manage
objects placed on both system and local memory.

Questions addressed since previous revision:

* Creating an anonymous vfs mount for shmem files in TTM
* Fixing LLC caching properties and bit 17 swizzling before setting a TTM
bo's pages when calling get_pages
* Added handling of phys backend from TTM functions
* Added pread callback to TTM gem object backend
* In shmem_create_from_object, ensuring an shmem object we just got a filp
for has its pages marked dirty and accessed. Otherwise, the engine won't be
able to read the initial state and a GPU hung will ensue

However, one of the issues persists:

Many GPU hungs in machines of GEN <= 5. My assumption is this has something
 to do with a caching pitfall, but everywhere across the TTM backend code
 I've tried to handle object creation and getting its pages with the same
 set of caching and coherency properties as in the old shmem backend.

Adrian Larumbe (1):
  drm/i915: Replace shmem memory region and object backend with TTM

 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c   |  12 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c     |  32 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h   |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_phys.c     |  32 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c    | 390 +------------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 267 ++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h      |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c |   9 +-
 drivers/gpu/drm/i915/gt/shmem_utils.c        |  64 ++-
 drivers/gpu/drm/i915/intel_memory_region.c   |   7 +-
 10 files changed, 398 insertions(+), 422 deletions(-)

-- 
2.35.1

