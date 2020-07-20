Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8D9225E59
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C744E6E3F3;
	Mon, 20 Jul 2020 12:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3947D6E3C7;
 Mon, 20 Jul 2020 12:19:46 +0000 (UTC)
IronPort-SDR: s1iG+lQwngswtUfJ327NgcWnDT8q8JJ5M/briMZqt6RU+s8pxV5i6t4t4nbD9s/6dup//ZaUf8
 Un8zFcafW5jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463971"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463971"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:46 -0700
IronPort-SDR: wlLondTAe+7poQLdCdDvRAoIENxrhbA8ZTxfM/WUT6hPHOvKhSEiqg65wKdiEvJqf5FWCYCCl/
 So+pe47Pq6IA==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669668"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:03 +0200
Message-Id: <20200720121908.28124-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 10/15] tests/core_hotunplug: Skip
 selectively on sysfs close errors
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

Since we no longer open a device DRM sysfs node, only a PCI one, driver
unbind operations are no longer affected by missed or unsuccessful
sysfs file close attempts.  Skip only affected subtests if that
happens.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index daf0bf745..71da8f2a1 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -82,8 +82,8 @@ static void prepare(struct hotunplug *priv)
 	igt_assert_fd(priv->fd.sysfs_bus);
 
 	priv->fd.sysfs_dev = local_close(priv->fd.sysfs_dev);
-	igt_assert_f(priv->fd.sysfs_dev == -1,
-		     "Device sysfs node close failed\n");
+	igt_warn_on_f(priv->fd.sysfs_dev != -1,
+		      "Device sysfs node close failed\n");
 }
 
 /* Unbind the driver from the device */
@@ -113,6 +113,9 @@ static void driver_bind(struct hotunplug *priv)
 /* Remove (virtually unplug) the device from its bus */
 static void device_unplug(struct hotunplug *priv, const char *prefix)
 {
+	igt_require_f(priv->fd.sysfs_dev == -1,
+		      "Device sysfs node not closed properly\n");
+
 	priv->fd.sysfs_dev = openat(priv->fd.sysfs_bus, priv->dev_bus_addr,
 				    O_DIRECTORY);
 	igt_assert_fd(priv->fd.sysfs_dev);
@@ -171,8 +174,6 @@ static void post_healthckeck(struct hotunplug *priv)
 	igt_abort_on_f(priv->failure, "%s\n", priv->failure);
 
 	igt_require_f(priv->fd.drm == -1, "Device not closed properly\n");
-	igt_require_f(priv->fd.sysfs_dev == -1,
-		      "Device sysfs node not closed properly\n");
 }
 
 static void set_filter_from_device(int fd)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
