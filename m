Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BB754A376
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 03:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD0C10FDB9;
	Tue, 14 Jun 2022 01:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AAA10FCCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 01:14:08 +0000 (UTC)
Received: from sobremesa.fritz.box (82-69-11-11.dsl.in-addr.zen.co.uk
 [82.69.11.11])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 5379B6601690;
 Tue, 14 Jun 2022 02:14:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1655169247;
 bh=tWSGgrPKrUZZummtdQyqbKj7Jo9RkeVQA+mEwvda31g=;
 h=From:To:Cc:Subject:Date:From;
 b=JyUtMMsJ6hnIul29ge9h+JFkWRPbTPwA9dPzUSJ5lIXY6nctEQQuGZNwvKgKl06Jb
 oNw9gYd1woo5SMNXbdIeChu5K39tARwWXAR+nxWqyuI1pidOMshg7LymquxIu7Gdzt
 QGeltgztbB4zYwtLJUoP+Ffp5Ccbba7SSDTQudZwNkI3O5fXntPcXjkFjq0gUGsnqf
 Y0ftcSUh502SBWF78/yZrZlfPHkYH4afs8Iu2TjUFJH/gzfoNJyN2k5oyqokcDBVBj
 Gi+jLswUTd1nvFeNCATvBaZ+Ix0hZclzrkw6PFdDwFGycQ9uWpWMjWiKyzxBJkWlMV
 iGmIMRBbZKwOg==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch,
	intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 02:13:47 +0100
Message-Id: <20220614011350.122168-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] remove shmem backend and region and unify
 them with TTM
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

This patch series will attempt to discard the shmem and phys gem object
backends from the driver, and handle the dependent objects from TTM
instead. The end goal of this and other patches to come is to delete all
existing backends and bring their functionality into the current i915 TTM
API callbacks.

The first patch in the series was actually authored by Bob Beckett, who is
working on removing the internal and stolen GEM backends. However his
change was essential for this series, so I've included it with the purpose
of making the CI system happy.

An RFC for the current patch was discussed in
https://lists.freedesktop.org/archives/intel-gfx/2022-May/298082.html.

Adrian Larumbe (3):
  drm/i915/ttm: dont trample cache_level overrides during ttm move
  drm/i915/ttm: don't overwrite cache_dirty after setting coherency
  drm/i915/ttm: remove shmem memory region and gem object backend

 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  14 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_phys.c      |  29 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     | 392 +-----------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 346 ++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  22 +-
 drivers/gpu/drm/i915/gt/shmem_utils.c         |  36 +-
 drivers/gpu/drm/i915/intel_memory_region.c    |   7 +-
 13 files changed, 428 insertions(+), 443 deletions(-)

-- 
2.36.1

