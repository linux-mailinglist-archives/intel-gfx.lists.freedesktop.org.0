Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937873BE6AF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 12:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01676E834;
	Wed,  7 Jul 2021 10:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4EA6E0C4;
 Wed,  7 Jul 2021 10:53:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="231020208"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="231020208"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 03:53:01 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="457442262"
Received: from akidokox-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.24.130])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 03:52:58 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  7 Jul 2021 11:52:38 +0100
Message-Id: <20210707105238.1694091-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/kms_addfb_basic: pass the actual fd
 to gem_has_lmem
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
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we pass the devid as if it were the fd, which doesn't work.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Cc: Latvala Petri <petri.latvala@intel.com>
Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
---
 tests/kms_addfb_basic.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/tests/kms_addfb_basic.c b/tests/kms_addfb_basic.c
index 91fb6ac9..eff1d9b2 100644
--- a/tests/kms_addfb_basic.c
+++ b/tests/kms_addfb_basic.c
@@ -150,13 +150,11 @@ static void invalid_tests(int fd)
 	igt_describe("Check if addfb2 with a system memory gem object "
 		     "fails correctly if device requires local memory framebuffers");
 	igt_subtest("invalid-smem-bo-on-discrete") {
-		int devid;
 		uint32_t handle, stride;
 		uint64_t size;
 
 		igt_require_intel(fd);
-		devid = intel_get_drm_devid(fd);
-		igt_require(gem_has_lmem(devid));
+		igt_require(gem_has_lmem(fd));
 		igt_calc_fb_size(fd, f.width, f.height,
 				DRM_FORMAT_XRGB8888, 0, &size, &stride);
 		handle = gem_create_in_memory_regions(fd, size, REGION_SMEM);
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
