Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD1E3CC8AC
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Jul 2021 13:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42A489F01;
	Sun, 18 Jul 2021 11:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D303E89F01;
 Sun, 18 Jul 2021 11:09:18 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FAF561166;
 Sun, 18 Jul 2021 11:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626606558;
 bh=scysiXjyferckCGbthGvR8xqveehOph98QgmtZIcrec=;
 h=From:To:Cc:Subject:Date:From;
 b=XNrMJtjIYfhN0XTG3RHYKnxAldtmMPe3Fn0tYzrYyOc78jO/VZ7uH/sHudWjRpkiP
 yZLIgj8DXTnC15yOHZ62829FXeY2Ylj1hfLGbcahe50CKpZOaFEwF509uzrVf0XmQq
 zXSSnU+F418MiGnCpbYvqomVTOuZOYCSHVdOoXVHnz+VJQsymAScSGgGet+gdvGtU4
 SyhAgAPAtdBDP/5e0cts9gfcDq5FfYoxtiPFX7811Rm6Wue+ucosWfB3uyrtxjtEuD
 hXlJfssJ96pNrvx3E/7kuAe86zgezKeuERXXD3k0Q2LAAUYlEZRPDfirtPvTHrpCcT
 1K7JSLV5lg+zQ==
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun, 18 Jul 2021 14:09:11 +0300
Message-Id: <cover.1626605893.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH rdma-next v2 0/2] SG fix together with update to
 RDMA umem
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 David Airlie <airlied@linux.ie>, Maor Gottlieb <maorg@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Roland Scheidegger <sroland@vmware.com>,
 linux-rdma@vger.kernel.org, Yishai Hadas <yishaih@nvidia.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Zhu Yanjun <zyjzyj2000@gmail.com>, Leon Romanovsky <leonro@nvidia.com>,
 Zack Rusin <zackr@vmware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Leon Romanovsky <leonro@nvidia.com>

Changelog:
v2:
 * Changed implementation of first patch, based on our discussion with Christoph.
   https://lore.kernel.org/lkml/YNwaVTT0qmQdxaZz@infradead.org/
v1: https://lore.kernel.org/lkml/cover.1624955710.git.leonro@nvidia.com/
 * Fixed sg_page with a _dma_ API in the umem.c
v0: https://lore.kernel.org/lkml/cover.1624361199.git.leonro@nvidia.com

Maor Gottlieb (2):
  lib/scatterlist: Fix wrong update of orig_nents
  RDMA: Use dma_map_sgtable for map umem pages

 drivers/gpu/drm/drm_prime.c                 |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c |  2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c  |  2 +-
 drivers/infiniband/core/umem.c              | 33 +++-----
 drivers/infiniband/core/umem_dmabuf.c       |  1 -
 drivers/infiniband/hw/mlx4/mr.c             |  4 +-
 drivers/infiniband/hw/mlx5/mr.c             |  3 +-
 drivers/infiniband/sw/rdmavt/mr.c           |  2 +-
 drivers/infiniband/sw/rxe/rxe_mr.c          |  3 +-
 include/linux/scatterlist.h                 |  3 +-
 include/rdma/ib_umem.h                      |  6 +-
 include/rdma/ib_verbs.h                     | 28 +++++++
 lib/scatterlist.c                           | 88 ++++++++++++++-------
 tools/testing/scatterlist/main.c            | 15 +++-
 14 files changed, 128 insertions(+), 64 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
