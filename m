Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F503225E5B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D0B6E3F2;
	Mon, 20 Jul 2020 12:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10E36E3F5;
 Mon, 20 Jul 2020 12:19:52 +0000 (UTC)
IronPort-SDR: byTtG/ejsyUgGSGPwz7a2+9bbNbRjsq+CKsowY9+q0/FOEcqhdC1fO00WYAlrcdyObBkJQ+sjm
 ZAHU2zGlWYow==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463990"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463990"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:52 -0700
IronPort-SDR: +ahOmgn/Ux578y0LPhvo6Y98AX5/vCdHO2do+q0FHJ0edx/Ix3xs5OgcnKfQTgXqT4wLto5Kyf
 +2w10t4Rnp3Q==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669704"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:07 +0200
Message-Id: <20200720121908.28124-15-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 14/15] tests/core_hotunplug: Assert
 expected device presence/absence
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

Don't rely on successful write to sysfs control files, assert existence
/ non-existence of a respective device sysfs node as well.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 16b3a244f..9bca967c1 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -99,6 +99,9 @@ static void driver_unbind(struct hotunplug *priv, const char *prefix)
 				   priv->dev_bus_addr),
 		     "Driver unbind failure!");
 	igt_reset_timeout();
+
+	igt_assert_f(faccessat(priv->fd.sysfs_drv, priv->dev_bus_addr, F_OK, 0),
+		     "Unbound device still present\n");
 }
 
 /* Re-bind the driver to the device */
@@ -111,6 +114,10 @@ static void driver_bind(struct hotunplug *priv)
 				   priv->dev_bus_addr),
 		     "Driver re-bind failure!");
 	igt_reset_timeout();
+
+	igt_fail_on_f(faccessat(priv->fd.sysfs_drv, priv->dev_bus_addr,
+				F_OK, 0),
+		      "Rebound device not present!\n");
 }
 
 /* Remove (virtually unplug) the device from its bus */
@@ -133,6 +140,9 @@ static void device_unplug(struct hotunplug *priv, const char *prefix)
 	priv->fd.sysfs_dev = local_close(priv->fd.sysfs_dev);
 	igt_assert_f(priv->fd.sysfs_dev == -1,
 		     "Device sysfs node close failed\n");
+
+	igt_assert_f(faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr, F_OK, 0),
+		     "Unplugged device still present\n");
 }
 
 /* Re-discover the device by rescanning its bus */
@@ -144,6 +154,10 @@ static void bus_rescan(struct hotunplug *priv)
 	igt_assert_f(igt_sysfs_set(priv->fd.sysfs_bus, "../rescan", "1"),
 		       "Bus rescan failure!");
 	igt_reset_timeout();
+
+	igt_fail_on_f(faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr,
+				F_OK, 0),
+		      "Fakely unplugged device not rediscovered!\n");
 }
 
 static void cleanup(struct hotunplug *priv)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
