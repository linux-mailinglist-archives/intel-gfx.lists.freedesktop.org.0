Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B9C225E5C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575406E3F7;
	Mon, 20 Jul 2020 12:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 291326E3EF;
 Mon, 20 Jul 2020 12:19:51 +0000 (UTC)
IronPort-SDR: +/mRasgDOa/foYQZy/8aZfNWbk/Q2lKThkyD5CrK6/+Ooe+JkQd0pXOOGFf6NTohO6iqyyaIaf
 w6BfBadOVhuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463983"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463983"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:50 -0700
IronPort-SDR: 6RzM5goSlzs8JRVE51NL8NjpdeigcUXKpj6dYieRah9XcDkZ9h6ZG5q5ROJeiUlBVo2L7ccd0N
 BUTV1ilaMeew==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669694"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:06 +0200
Message-Id: <20200720121908.28124-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 13/15] tests/core_hotunplug: Process
 return values of sysfs operations
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

Return values of driver bind/unbind / device remove/recover sysfs
operations are now ignored.  Assert their correctness.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index ec2d891e6..16b3a244f 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -95,7 +95,9 @@ static void driver_unbind(struct hotunplug *priv, const char *prefix)
 	igt_debug("%sunbinding the driver from the device\n", prefix);
 
 	igt_set_timeout(60, "Driver unbind timeout!");
-	igt_sysfs_set(priv->fd.sysfs_drv, "unbind", priv->dev_bus_addr);
+	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_drv, "unbind",
+				   priv->dev_bus_addr),
+		     "Driver unbind failure!");
 	igt_reset_timeout();
 }
 
@@ -105,7 +107,9 @@ static void driver_bind(struct hotunplug *priv)
 	igt_debug("rebinding the driver to the device\n");
 
 	igt_set_timeout(60, "Driver re-bind timeout!");
-	igt_sysfs_set(priv->fd.sysfs_drv, "bind", priv->dev_bus_addr);
+	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_drv, "bind",
+				   priv->dev_bus_addr),
+		     "Driver re-bind failure!");
 	igt_reset_timeout();
 }
 
@@ -122,7 +126,8 @@ static void device_unplug(struct hotunplug *priv, const char *prefix)
 	igt_debug("%sunplugging the device\n", prefix);
 
 	igt_set_timeout(60, "Device unplug timeout!");
-	igt_sysfs_set(priv->fd.sysfs_dev, "remove", "1");
+	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_dev, "remove", "1"),
+		     "Device unplug failure!");
 	igt_reset_timeout();
 
 	priv->fd.sysfs_dev = local_close(priv->fd.sysfs_dev);
@@ -136,7 +141,8 @@ static void bus_rescan(struct hotunplug *priv)
 	igt_debug("recovering the device\n");
 
 	igt_set_timeout(60, "Bus rescan timeout!");
-	igt_sysfs_set(priv->fd.sysfs_bus, "../rescan", "1");
+	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_bus, "../rescan", "1"),
+		       "Bus rescan failure!");
 	igt_reset_timeout();
 }
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
