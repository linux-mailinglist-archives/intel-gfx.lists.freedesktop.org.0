Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC2E225E57
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B676E3EF;
	Mon, 20 Jul 2020 12:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE716E3F0;
 Mon, 20 Jul 2020 12:19:49 +0000 (UTC)
IronPort-SDR: hCXG0bNkyqPmswweJkpTiIN37dTnsyF+7qrsIDMMYsnaokb5th7cyTVSWrWOtRUX/J3mBjTaVA
 OJW3mghfq5QA==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463977"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463977"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:49 -0700
IronPort-SDR: uG/gFKHtYW16XKPcDvxFaS1i108I00wAIzMc2lzmnejkpLIA0yFlxvKdCvlUWKkdFAxTOGhaNT
 Cq2cHyKARLXA==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669682"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:05 +0200
Message-Id: <20200720121908.28124-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 12/15] tests/core_hotunplug: Fail
 subtests on device close errors
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

Since health checks are now run from follow-up fixture sections, it is
safe to fail subtests without the need to abort the test execution.  Do
that on device close errors instead of emitting warnings.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 082bcc306..ec2d891e6 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -126,8 +126,8 @@ static void device_unplug(struct hotunplug *priv, const char *prefix)
 	igt_reset_timeout();
 
 	priv->fd.sysfs_dev = local_close(priv->fd.sysfs_dev);
-	igt_warn_on_f(priv->fd.sysfs_dev != -1,
-		      "Device sysfs node close failed\n");
+	igt_assert_f(priv->fd.sysfs_dev == -1,
+		     "Device sysfs node close failed\n");
 }
 
 /* Re-discover the device by rescanning its bus */
@@ -248,7 +248,7 @@ static void hotunbind_lateclose(struct hotunplug *priv)
 
 	igt_debug("late closing the unbound device instance\n");
 	priv->fd.drm = local_close(priv->fd.drm);
-	igt_warn_on_f(priv->fd.drm != -1, "Device close failed\n");
+	igt_assert_f(priv->fd.drm == -1, "Device close failed\n");
 }
 
 static void hotunplug_lateclose(struct hotunplug *priv)
@@ -265,7 +265,7 @@ static void hotunplug_lateclose(struct hotunplug *priv)
 
 	igt_debug("late closing the removed device instance\n");
 	priv->fd.drm = local_close(priv->fd.drm);
-	igt_warn_on_f(priv->fd.drm != -1, "Device close failed\n");
+	igt_assert_f(priv->fd.drm == -1, "Device close failed\n");
 }
 
 /* Main */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
