Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB36542655
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 08:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A8110E373;
	Wed,  8 Jun 2022 06:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3355510E31D;
 Wed,  8 Jun 2022 06:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654671426; x=1686207426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TJM09uwySkBb7K1qOAdAP3ERPPjsq9f5yYqFAFHM8A4=;
 b=DOSsGQXBinQhw6ju+BwuLmIDn1hgYBqXMG1cLy/xKFPB5znKskZKLapQ
 1wp0pfsCG0WBWrng407GxaHCYPkLgiFdtPkg6lVcuW65DrwwlvNjhi72d
 I735Xc8KXFdbHsq0Mnh+uRkc+MoWWPbZAo61bRjNI+mVUNr5+ZYVxuJ0I
 nhZzDHLna+GSmoorBadivHlH+gjQI0dix7yiNZkLjOxQ4mcYfz9ysEU5q
 ZGaOZ0Y7Akl2l/gDe57i9BWTGhF/tHo1Zz8UyPHX3V5MlFSnmvtHmh3Cv
 /Xr5calc1H5nV9tmroAGkCg7pjL6xBHzhvIDjiFn2zg2YWC0Hhx905ZqL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="259938588"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="259938588"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 23:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="709831271"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 07 Jun 2022 23:57:04 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 Jun 2022 12:26:37 +0530
Message-Id: <20220608065637.3840610-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220608060737.3839351-1-arun.r.murthy@intel.com>
References: <20220608060737.3839351-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] tests/kms_async_flips: first async flip
 discarded on i915
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The i915 KMD will use the first async flip to update the watermarks as
per the watermark optimization in DISPLAY13. Hence the actual async flip
will happen from the subsequent flips.
For alternate sync async test, a dummy async flip has to be done to
allow the KMD to perform the watermark related updates before writing to
the surface base address.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 tests/kms_async_flips.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/tests/kms_async_flips.c b/tests/kms_async_flips.c
index 1701883b..b9e67454 100644
--- a/tests/kms_async_flips.c
+++ b/tests/kms_async_flips.c
@@ -189,19 +189,20 @@ static void test_async_flip(data_t *data, bool alternate_sync_async)
 			 * In older platforms (<= Gen10), async address update bit is double buffered.
 			 * So flip timestamp can be verified only from the second flip.
 			 * The first async flip just enables the async address update.
+			 * In platforms greater than DISPLAY13 thr first async flip will be discarded
+			 * in order to change the watermark levels as per the optimization. Hence the
+			 * subsequent async flips will actually do the asynchronous flips.
 			 */
 			if (is_i915_device(data->drm_fd)) {
 				uint32_t devid = intel_get_drm_devid(data->drm_fd);
 
-				if (IS_GEN9(devid) || IS_GEN10(devid)) {
-					ret = drmModePageFlip(data->drm_fd, data->crtc_id,
-							      data->bufs[frame % 4].fb_id,
-							      flags, data);
+				ret = drmModePageFlip(data->drm_fd, data->crtc_id,
+						      data->bufs[frame % 4].fb_id,
+						      flags, data);
 
-					igt_assert(ret == 0);
+				igt_assert(ret == 0);
 
-					wait_flip_event(data);
-				}
+				wait_flip_event(data);
 			}
 		}
 
-- 
2.25.1

