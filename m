Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C6F58807D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B9591CD0;
	Tue,  2 Aug 2022 16:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D551F91CFA
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:05 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 40E2D6601B14;
 Tue,  2 Aug 2022 17:52:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459124;
 bh=XDm6vxUR72QuSaG/gCnSY3L2peaDo0x2AtoALO/tjrI=;
 h=From:To:Cc:Subject:Date:From;
 b=SE7PReIj4jKc4MmP0hnGD04Ez3wjbPG85YdtuzCKRyeDVd8DRaaLN7eRPrTx/OvoF
 f0OKh8yfPHsMrSm4KRGU2Lhq5R1z+rnBQfTMtpizeGRgVzN1/EA++amDLRFdeuee89
 pY4fIxqCOKxBlpoGPGVbjcgMNM68F6MmV1YYIDRhE6uVwmTwFcs34/A791e6KIUo94
 c5na4CHyHIAZ20L1Ips0StQ6QL3nOS4D4n9EVltoPHszeKJmpwN88fd1I7uRH6Cco1
 Bq5ROmVl2UrDk6Bcanh+ZbrUX4Tf3/NXQGveN991uYSCT5Ucw/6ZEIHw42zPWssIs1
 JyBUuu7djICEg==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:48 +0100
Message-Id: <20220802165155.165576-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] Enable TTM for integrated GFX objects in
 sysmem
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

This patch series aims at enabling TTM support for system memory objects in
integrated graphics platforms. Whether one wishes to use TTM for sysmem
objects depends on a user-enabled kernel module parameter, so that the
former behaviour of using shmem objects for the system memory region is
kept by default.

The rationale for this change is the benefits in having TTM allocate BO
memory pages for us with alloc_page() rather than shmem.

The first three patches in the series, which the latter three depend on,
are being worked on in parallel by Bob, and handle TTM object cache level
and coherence for sysmem-allocated objects too.

Adrian Larumbe (4):
  drm/i915/ttm: don't overwrite cache_dirty after setting coherency
  drm/i915: Pick the right memory allocation flags for older devices
  drm/i915: Add module param for enabling TTM in sysmem region
  drm/i915: Optionally manage system memory with TTM and poolalloc

Robert Beckett (3):
  drm/i915/ttm: dont trample cache_level overrides during ttm move
  drm/i915: limit ttm to dma32 for i965G[M]
  drm/i915/ttm: only trust snooping for dgfx when deciding default
    cache_level

 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  21 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   2 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      | 127 +++++++-----
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 193 +++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |  14 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  13 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   6 +-
 drivers/gpu/drm/i915/i915_params.c            |   6 +
 drivers/gpu/drm/i915/i915_params.h            |   3 +-
 drivers/gpu/drm/i915/intel_memory_region.c    |   2 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       |   7 +-
 16 files changed, 331 insertions(+), 75 deletions(-)

-- 
2.37.0

