Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE02550E594
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 18:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C39F10E77D;
	Mon, 25 Apr 2022 16:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AAF10E594;
 Mon, 25 Apr 2022 16:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650903816; x=1682439816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C9KppufqNBcoOEqlw1a11aEo0DAHKPArEfFcrfmgFlI=;
 b=IWDutMxKyxY/EhS4mIc9/UXrDXpMQV3WIiotLPZ2dugc17QUTS6HgrXf
 uUT+96HsEXtlmj5rAqbnVZE9wnGem+cfq6yRjMZbBdWFSldgsNuSMBSny
 3Sa4j3r47KAu8e1nusXggp3snKcWKAFJcx423DLMijDGZp07/DxCeIOH8
 2OwbB173fvmgpono+l3/Dgdr64H6BDnwlol9Nx/aExyeJOle+f77JhwhU
 3sOGx9EVvbHpFmsw4frJmhan6j2/bl4c6m71FaHy3MqBXYkFiyMUyth1y
 vvovQdOlt0rkE+IH8gn0HvIMZACbF+lNX1Fcb3IamUIpDOUPtxvXiD+KC A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="290434352"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="290434352"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 09:23:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="677290965"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 09:23:33 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Apr 2022 21:54:27 +0530
Message-Id: <20220425162430.28844-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220425162430.28844-1-ramalingam.c@intel.com>
References: <20220425162430.28844-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/gt: GEM_BUG_ON unexpected NULL
 at scatterlist walking
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While locating the start of ccs scatterlist in smem scatterlist, that has
to be the size of lmem obj size + corresponding ccs data size. Report bug
if scatterlist terminate before that length.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 9d552f30b627..29d761da02c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -687,6 +687,12 @@ static void get_ccs_sg_sgt(struct sgt_dma *it, u32 bytes_to_cpy)
 		bytes_to_cpy -= len;
 
 		it->sg = __sg_next(it->sg);
+
+		/*
+		 * scatterlist supposed to be the size of
+		 * bytes_to_cpy + GET_CCS_BYTES(bytes_to_copy).
+		 */
+		GEM_BUG_ON(!it->sg);
 		it->dma = sg_dma_address(it->sg);
 		it->max = it->dma + sg_dma_len(it->sg);
 	} while (bytes_to_cpy);
-- 
2.20.1

