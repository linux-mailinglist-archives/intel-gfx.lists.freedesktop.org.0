Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAA86AE30D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 15:47:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F060110E4CB;
	Tue,  7 Mar 2023 14:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 307CC10E4C9;
 Tue,  7 Mar 2023 14:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678200429; x=1709736429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oazg6p2WalywNNv6pSy0F8qJWnEkCQHXKwMG7qicgxo=;
 b=htfGZYVWPOLRm2pqvfHADXlK64cO8zixXlnUrcCWJhLD8qIBNqbFkYa0
 7GAPMHvAABd+KLkXXG+3YnQhX+1FbU5YmJIVfuZlzs7gi0VO53BFDZMUL
 4n9GRDf9PZiKuw2XEjn77FBzTxAFAMLmOlgn2rIlocbX0NqbC9NMBxDFm
 +Nm5/OlkWEGYvD0L/icta+uN11OdV14SXTa5T9i4dn9W4wTlq5KBZQUJT
 RrgmHSQWM4rvchf6PLrLQy5zYu5omYqUk1iKyS+oyon2m+GgOgPXzKCDj
 mFe3r4HwMyyOux6axan1IotlBF/2gsSIWQJs+srboC9N3DI4b+8LlimUL g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="400687216"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="400687216"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 06:47:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="800414348"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="800414348"
Received: from peiwangc-mobl1.ccr.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.10])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 06:47:04 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  7 Mar 2023 15:46:15 +0100
Message-Id: <20230307144621.10748-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230307144621.10748-1-thomas.hellstrom@linux.intel.com>
References: <20230307144621.10748-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/ttm: Fix a NULL pointer dereference
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
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 Philip Yang <Philip.Yang@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Qiang Yu <qiang.yu@amd.com>,
 Huang Rui <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The LRU mechanism may look up a resource in the process of being removed
from an object. The locking rules here are a bit unclear but it looks
currently like res->bo assignment is protected by the LRU lock, whereas
bo->resource is protected by the object lock, while *clearing* of
bo->resource is also protected by the LRU lock. This means that if
we check that bo->resource points to the LRU resource under the LRU
lock we should be safe.
So perform that check before deciding to swap out a bo. That avoids
dereferencing a NULL bo->resource in ttm_bo_swapout().

Fixes: 6a9b02899402 ("drm/ttm: move the LRU into resource handling v4")
Cc: Christian König <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Christian Koenig <christian.koenig@amd.com>
Cc: Huang Rui <ray.huang@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Felix Kuehling <Felix.Kuehling@amd.com>
Cc: Philip Yang <Philip.Yang@amd.com>
Cc: Qiang Yu <qiang.yu@amd.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/ttm/ttm_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
index c7a1862f322a..ae2f19dc9f81 100644
--- a/drivers/gpu/drm/ttm/ttm_device.c
+++ b/drivers/gpu/drm/ttm/ttm_device.c
@@ -158,7 +158,7 @@ int ttm_device_swapout(struct ttm_device *bdev, struct ttm_operation_ctx *ctx,
 			struct ttm_buffer_object *bo = res->bo;
 			uint32_t num_pages;
 
-			if (!bo)
+			if (!bo || bo->resource != res)
 				continue;
 
 			num_pages = PFN_UP(bo->base.size);
-- 
2.39.2

