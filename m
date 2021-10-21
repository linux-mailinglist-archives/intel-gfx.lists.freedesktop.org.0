Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC431436E6A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 01:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2CED6E508;
	Thu, 21 Oct 2021 23:40:46 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B766E504;
 Thu, 21 Oct 2021 23:40:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="252684524"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="252684524"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 16:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="484446152"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 21 Oct 2021 16:40:44 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org, John Harrison <John.C.Harrison@Intel.com>
Date: Thu, 21 Oct 2021 16:40:37 -0700
Message-Id: <20211021234044.3071069-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
References: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/8] tests/i915/gem_exec_capture: Remove
 pointless assert
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

From: John Harrison <John.C.Harrison@Intel.com>

The 'many' test ended with an 'assert(count)', presumably meaning to
ensure that some objects were actually captured. However, 'count' is
the number of objects created not how many were captured. Plus, there
is already a 'require(count > 1)' at the start and count is invarient
so the final assert is basically pointless.

General concensus appears to be that the test should not fail
irrespective of how many blobs are captured as low memory situations
could cause the capture to be abbreviated. So just remove the
pointless assert completely.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/gem_exec_capture.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 7e0a8b8ad..53649cdb2 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -524,7 +524,6 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 	}
 	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
 		 blobs, size >> 12, count);
-	igt_assert(count);
 
 	free(error);
 	free(offsets);
-- 
2.25.1

