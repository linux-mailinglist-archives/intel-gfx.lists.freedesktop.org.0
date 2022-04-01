Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F404EEC0B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 13:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275D210E037;
	Fri,  1 Apr 2022 11:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02FA10E036;
 Fri,  1 Apr 2022 11:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648811400; x=1680347400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sr7PZ0yF5AoPBPkHOTY/TmdDCFJOL0iMnwDWVBACMQU=;
 b=cCc8z+K/Odsl5rEGwl3Gl9mShdHEehsOOFzCUT6hn2rBrbEFgl5TpPlD
 OlQgmTbTcGEqKdP6df4qt5sR/x6KtgTvLfH8eCjgcaqqZDdmjW4n9/vUM
 xBpFlxHZKavEI1H98S+YgzyJxGv44AkoVkTSYeC5vPGYvQ3A34EBdnM5x
 DRT+pXyppVdhnMsxgD/HjdnToIT+GfdQsW0qIXN7rpN4FuYKrqi9c7Sqi
 8ehCwtuapXt2oTvJwtj0mM8QBFj0+tzRAn1sTAma5W195YCtYygtuekKN
 At8EH95RAyIoHvFGDSdRxqCbBcRg+YDAoUduYl+bvP/4DEDyci3s9YLpU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="260286896"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="260286896"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 04:09:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="555433992"
Received: from jasvinde-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.110])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 04:09:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  1 Apr 2022 12:09:01 +0100
Message-Id: <20220401110902.446305-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/2] tests/kms_pwrite_crc: handle missing
 get_caching
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

gem_get_caching is not supported on discrete. The object itself should
already be coherent with the display engine as-is on such platforms, by
virtue of the scanout happening via local-memory.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4903
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 tests/i915/kms_pwrite_crc.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/tests/i915/kms_pwrite_crc.c b/tests/i915/kms_pwrite_crc.c
index 44fcfadb..584e6a19 100644
--- a/tests/i915/kms_pwrite_crc.c
+++ b/tests/i915/kms_pwrite_crc.c
@@ -50,7 +50,6 @@ static void test(data_t *data)
 	igt_output_t *output = data->output;
 	struct igt_fb *fb = &data->fb[1];
 	drmModeModeInfo *mode;
-	uint32_t caching;
 	void *buf;
 	igt_crc_t crc;
 
@@ -76,9 +75,14 @@ static void test(data_t *data)
 			0, 0, fb->width, fb->height,
 			0, 0, fb->width << 16, fb->height << 16);
 
-	/* make sure caching mode has become UC/WT */
-	caching = gem_get_caching(data->drm_fd, fb->gem_handle);
-	igt_assert(caching == I915_CACHING_NONE || caching == I915_CACHING_DISPLAY);
+	if (!gem_has_lmem(data->drm_fd)) {
+		uint32_t caching;
+
+		/* make sure caching mode has become UC/WT */
+		caching = gem_get_caching(data->drm_fd, fb->gem_handle);
+		igt_assert(caching == I915_CACHING_NONE ||
+			   caching == I915_CACHING_DISPLAY);
+	}
 
 	/* use pwrite to make the other fb all white too */
 	buf = malloc(fb->size);
-- 
2.34.1

