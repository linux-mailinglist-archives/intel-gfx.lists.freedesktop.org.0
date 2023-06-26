Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4A873DB05
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 11:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4DC510E052;
	Mon, 26 Jun 2023 09:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68FF510E1CC;
 Mon, 26 Jun 2023 09:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687770903; x=1719306903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oI+iy54Hh6AlX2ttyHvrxT6tZDNwd+hp/2whYhQ4P/w=;
 b=k647b5F4jvP7L3sC+TYH3KjvPMswFnNLIWcdzOd0+hC8Ye+m3ZLDELMY
 sHe7D17I9NJNyym7jcZl2jSQB8YKJKZhU9/GD2qyuaQZ1PSShW7RALLjz
 G+U5dH5OZlfzwsMp6VvIBKLFXydsS+o5mPQNyUaZN5bAH+OpyqC4ujtYX
 XIAx0Wr2SB4pjqEoypBu4cAqdLi+LONlOUzGwwYB2IRwGIJmI/eNFdWOO
 sfmXuBHYhxuUWujVaePr6v+GgcXD+7IE5Ije6ANt4YhGfZPDt48VOnfo5
 iPBHcbhkBXtVTSEZQM+FUIfnCGC45q8y+iR1W2Aah4YGvcW6Mn/sjdnjz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="345974061"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="345974061"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 02:15:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="781357702"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="781357702"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.105])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 02:15:00 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:14:46 +0200
Message-Id: <20230626091450.14757-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/ttm: Fixes around resources and bulk
 moves
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

A couple of ttm fixes for issues that either were hit while developing the
xe driver or, for the resource leak patches, discovered during code
inspection.

v2:
- Avoid a goto in patch 3 (Andi Shyti)
- Add some RB's

Thomas Hellström (4):
  drm/ttm: Fix ttm_lru_bulk_move_pos_tail()
  drm/ttm: Don't shadow the operation context
  drm/ttm: Don't leak a resource on eviction error
  drm/ttm: Don't leak a resource on swapout move error

 drivers/gpu/drm/ttm/ttm_bo.c       | 26 +++++++++++++-------------
 drivers/gpu/drm/ttm/ttm_resource.c |  2 ++
 2 files changed, 15 insertions(+), 13 deletions(-)

-- 
2.40.1

