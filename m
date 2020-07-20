Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C51EC225E4C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041306E3C4;
	Mon, 20 Jul 2020 12:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19D46E3B8;
 Mon, 20 Jul 2020 12:19:30 +0000 (UTC)
IronPort-SDR: kOQCiYUeQclQCA4iRRIuzg8fIxN/w8RraOoIVSpVFgckwdA5yozsQhcdxCRvh5U52Sr/4NwtDx
 vY7CAhWcBaag==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463946"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463946"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:30 -0700
IronPort-SDR: Ehledezm4SGjw4djrJPTA833EYeGqcSerq63Xy7+BriwqPGjP80TCPE7D2nIjGhr7JJjP2TwVm
 f0dqL0xrGTVw==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669583"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:29 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:54 +0200
Message-Id: <20200720121908.28124-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 01/15] tests/core_hotunplug: Use
 igt_assert_fd()
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is a new library helper that asserts validity of open file
descriptors.  Use it instead of open coding.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index e03f3b945..7431346b1 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -57,7 +57,7 @@ static void prepare_for_unbind(struct hotunplug *priv, char *buf, int buflen)
 
 	priv->fd.sysfs_drv = openat(priv->fd.sysfs_dev, "device/driver",
 				    O_DIRECTORY);
-	igt_assert(priv->fd.sysfs_drv >= 0);
+	igt_assert_fd(priv->fd.sysfs_drv);
 
 	len = readlinkat(priv->fd.sysfs_dev, "device", buf, buflen - 1);
 	buf[len] = '\0';
@@ -72,10 +72,10 @@ static void prepare(struct hotunplug *priv, char *buf, int buflen)
 {
 	igt_debug("opening device\n");
 	priv->fd.drm = __drm_open_driver(DRIVER_ANY);
-	igt_assert(priv->fd.drm >= 0);
+	igt_assert_fd(priv->fd.drm);
 
 	priv->fd.sysfs_dev = igt_sysfs_open(priv->fd.drm);
-	igt_assert(priv->fd.sysfs_dev >= 0);
+	igt_assert_fd(priv->fd.sysfs_dev);
 
 	if (buf) {
 		prepare_for_unbind(priv, buf, buflen);
@@ -83,7 +83,7 @@ static void prepare(struct hotunplug *priv, char *buf, int buflen)
 		/* prepare for bus rescan */
 		priv->fd.sysfs_bus = openat(priv->fd.sysfs_dev,
 					    "device/subsystem", O_DIRECTORY);
-		igt_assert(priv->fd.sysfs_bus >= 0);
+		igt_assert_fd(priv->fd.sysfs_bus);
 	}
 }
 
@@ -261,7 +261,7 @@ igt_main
 		 * a device file descriptor open for exit handler use.
 		 */
 		fd_drm = __drm_open_driver(DRIVER_ANY);
-		igt_assert(fd_drm >= 0);
+		igt_assert_fd(fd_drm);
 
 		if (is_i915_device(fd_drm))
 			igt_require_gem(fd_drm);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
