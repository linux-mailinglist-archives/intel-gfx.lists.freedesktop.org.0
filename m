Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F07498118
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C77E10E4B3;
	Mon, 24 Jan 2022 13:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C830010E4E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 22:23:27 +0000 (UTC)
Received: from sobremesa.fritz.box (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: alarumbe)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4AF801F465DB;
 Fri, 21 Jan 2022 22:23:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1642803806;
 bh=Ghd051lnC0neneuf8YUtplot8CtjmLxYuRnduSFEU+w=;
 h=From:To:Cc:Subject:Date:From;
 b=Gc0wQq0a1KHaJU2YCbj/3zITqqx0Ii7Y+q3GrjkANwtWmW83+6lgCyZYv9TEsNCy2
 4U+wx2jr6UPJ5gTfp/1Y9JmSTP+IghZAZrEkBxDG8fSCgVVv+Nx3z55aKBc8AukRob
 FTEsnw4QRY8uYGLt7q0cd9iK1Yzlvtiy/4p8/zYgaetCEBGzAi1LDOXFbWuB919pgD
 fm/b+iWzDylL/xh1zfUOQ3JPptUVd+ihpGx1EDBVG8OVxUZjkydN5ibCcN2Bgukyjd
 9Vo5d/h+E8iAUapHGOUC6CL4LQ0pX0TSdtt+WPreBRPprerw2zzNReMIe+zJLxaQ7K
 lxHCQgUUS2+cA==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 22:22:47 +0000
Message-Id: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Jan 2022 13:32:09 +0000
Subject: [Intel-gfx] [RFC PATCH 0/5] Add basic support for flat-CCS bo
 evictions
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

This series is a first attempt at handling the eviction of flat-CCS
compressed lmem-placed bo's.

The official specification of flat CCS behaviour dictates that:

"Flat CCS data needs to be cleared when a lmem object is allocated.  And CCS
data can be copied in and out of CCS region through XY_CTRL_SURF_COPY_BLT. CPU
can't access the CCS data directly.
                                                                             
When we exaust the lmem, if the object's placements support smem, then we can
directly decompress the compressed lmem object into smem and start using it from
smem itself.
                                                                             
But when we need to swapout the compressed lmem object into a smem region though
objects' placement doesn't support smem, then we copy the lmem content as it is
into smem region along with ccs data (using XY_CTRL_SURF_COPY_BLT).  When the
object is referred, lmem content will be swaped in along with restoration of the
CCS data (using XY_CTRL_SURF_COPY_BLT) at corresponding location."

Design decisions:

 - A separate GEM bo of type `ttm_bo_type_kernel` is created to hold the
 contents of the CCS block when an lmem-only object is evicted onto smem. This
 is because this bo should never be mmap'able onto user space.

 - Whether a bo is meant to contain flat-CCS compressed data is marked by adding
 specific surface modifiers that describe a FB object which contains the
 relevant bo. This is done through a specific DRM library call.

 - At an eviction event, the bo's buffer data and its corresponding CCS block
 have to be moved between smem and lmem in two separate blit operations. Because
 of my poor knowledge of the blit unit, it's very likely that the way I
 programmed it is somehow wrong.

 - At the moment, migrating a flat-CCS lmem-only object from smem back onto lmem
 will fail if its flat-CCS swap bo had not been created. However, a bo lifecycle
 begins in smem when it's created, even its original placement specifies lmem
 only. Between the time that a bo is freshly created and an execbuf2 ioctl
 actually moves it onto lmem and allocates its backing storage, the user might've
 called mmap on it, a scenario which I haven't yet accounted for.

Part of the blitting engine code was borrowed from Ramalingam C <ramalingam.c@intel.com>,
who has been working in parallel on the same problem, although in a slightly
different approach.

For testing, a flat-CCS driver self-test is under preparation.

Adrian Larumbe (5):
  drm/i915/flat-CCS: Add GEM BO structure fields for flat-CCS
  drm/i915/flat-CCS: Add flat CCS plane capabilities and modifiers
  drm/i915/flat-CCS: move GET_CCS_SIZE macro into driver-wide header
  drm/i915/flat-CCS: handle CCS block blit for bo migrations
  drm/i915/flat-CCS: handle creation and destruction of flat CCS bo's

 drivers/gpu/drm/i915/display/intel_fb.c       |  36 ++-
 drivers/gpu/drm/i915/display/intel_fb.h       |   1 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |  10 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  11 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  78 ++++-
 drivers/gpu/drm/i915/gt/intel_migrate.c       | 289 ++++++++++++------
 drivers/gpu/drm/i915/gt/intel_migrate.h       |   2 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |   3 +-
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 9 files changed, 342 insertions(+), 93 deletions(-)

-- 
2.34.1

