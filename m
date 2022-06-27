Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DEC55BAF8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 18:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C5810E149;
	Mon, 27 Jun 2022 16:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D997910E149;
 Mon, 27 Jun 2022 16:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656346221; x=1687882221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5diIbcmQYGKeUVNNXSqSZm2nzojCGI3qHmVnJjPvIrY=;
 b=mZJSWPsZ0jHPfNNfsfJhdk/YbV2yMb62wG93UliQIgdmJH9sr2iYR2Hp
 RI/vtFm8sS3P80ZZc8B82Pybb0Rmc7+zKpmrdM2N4hPkfnjCfRFpbIuBm
 /Bsqqz7wI6o4vrsb8TS+/FdJnIPhnbnUF2ziVEKvI58mupX26GPCknwBn
 S5CT4C/uQyl4GH1w1v42Wc7U5Fw0KUBYULL5AKPWbIEqJ4WfGgc6Q8lRH
 49lD+hNgpedt33ZqNtipRhfcV5Gtk0NcbF8I/NpJ9gnrDgN4awLG3XDGD
 swR3Erkin7xcIgas4XsSVHnkXZs4CgOHS9M00WPAnE5FRIRBSgJ0ylhqt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="367797707"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="367797707"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:10:21 -0700
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="692677355"
Received: from lnsoh-mobl2.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.148.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:10:19 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 27 Jun 2022 17:10:02 +0100
Message-Id: <20220627161004.70153-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] tests/i915/gem_eio: fix uaf
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

../tests/i915/gem_eio.c:277:20: warning: pointer ‘ctx’ used after ‘free’ [-Wuse-after-free]
  277 |         igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
../lib/igt_core.h:667:20: note: in definition of macro ‘igt_assert’
  667 |         do { if (!(expr)) \
      |                    ^~~~
../tests/i915/gem_eio.c:274:9: note: call to ‘free’ here
  274 |         free(ctx);

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 tests/i915/gem_eio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
index 913a21f9..6cbae6eb 100644
--- a/tests/i915/gem_eio.c
+++ b/tests/i915/gem_eio.c
@@ -270,11 +270,11 @@ static void hang_handler(union sigval arg)
 		  igt_nsec_elapsed(&ctx->delay) / 1000.0);
 
 	igt_assert_eq(timer_delete(ctx->timer), 0);
-	free(ctx);
 
 	/* flush any excess work before we start timing our reset */
 	igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
 				    "%d", DROP_RCU));
+	free(ctx);
 
 	igt_nsec_elapsed(ts);
 	igt_assert(igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull));
-- 
2.36.1

