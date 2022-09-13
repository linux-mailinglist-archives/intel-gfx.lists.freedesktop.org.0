Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DF75B6CBA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 14:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDCC10E6C1;
	Tue, 13 Sep 2022 12:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 477A010E6BA;
 Tue, 13 Sep 2022 12:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663070709; x=1694606709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mtzqKNO+DKRZHrLs3WiylhLA4GeJO70Ji3fTgXELIRc=;
 b=DjboXe3S6DH49EYNcOXi6lcbmHrUFoSGKhDWa2+wzaPt908uobTvvRXJ
 vl8Sjlr+w2puo/S1pgowGSCdazZpOXmdH0Af1K82o+mxoPmQkt3pNEbQv
 Jop+NyZnfx25grWQrSrhcY0j+ySFb10GKcXq/beywAk2nwFHDvCyz4Zz8
 9Lvqt5ZUCDa6PCedati7tyDsWSzcSQUt28CV4RS1j1xaWu2RuH3V7a7bW
 TKsvLKWqkjBNOZIGWfucXXbBZZcaWDd0PCX/RbKbncUmQopSG50CJMM2k
 MAYh32YHuKuYkfC3SWOajkTxBbfr0sgl6Jgv3vp0P1iuD/msn4iwItaAt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="281136827"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="281136827"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678538748"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:07 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 13 Sep 2022 14:04:40 +0200
Message-Id: <20220913120441.146757-4-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/4] tests/core_hotunplug: Don't apply
 i915 workarounds on other platforms
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting from commit 0edabd8a4a08 ("core_hotunplug: fix audio unbind
logic") audio modules are unloaded unconditionally before graphics driver
unbind.  This is required for i915 to be unbound cleanly from a graphics
device.  However, we have no indications that non-Intel platforms require
the same.

Since we care for other platforms using this test and contributing to it,
not developing their own, keep i915 workarounds limited to i915 devices.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 58 +++++++++++++++++++++++-------------------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index c3756889c2..29cb26ab12 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -55,6 +55,7 @@ struct hotunplug {
 	bool need_healthcheck;
 	bool has_intel_perf;
  	char *snd_driver;
+	int chipset;
 };
 
 /* Helpers */
@@ -140,19 +141,20 @@ static void prepare(struct hotunplug *priv)
 static void driver_unbind(struct hotunplug *priv, const char *prefix,
 			  int timeout)
 {
-	/*
-	 * FIXME: on some devices, the audio driver (snd_hda_intel)
-	 * binds into the i915 driver. On such hardware, kernel warnings
-	 * and errors may happen if i915 is unbind/removed before removing
-	 * first the audio driver.
-	 * So, add a logic that unloads the audio driver before trying to
-	 * unbind i915 driver, reloading it when binding again.
-	 */
-	if (igt_audio_driver_unload(&priv->snd_driver)) {
-		igt_skip("Audio driver %s in use, skipping test\n",
-			 priv->snd_driver);
-	} else if (priv->snd_driver) {
-		igt_info("Unloaded audio driver %s\n", priv->snd_driver);
+	if (priv->chipset == DRIVER_INTEL) {
+		/*
+		 * FIXME: on some devices, the audio driver (snd_hda_intel)
+		 * binds into the i915 driver. On such hardware, kernel warnings
+		 * and errors may happen if i915 is unbind/removed before removing
+		 * first the audio driver.
+		 * So, add a logic that unloads the audio driver before trying to
+		 * unbind i915 driver, reloading it when binding again.
+		 */
+		if (igt_audio_driver_unload(&priv->snd_driver))
+			igt_skip("Audio driver %s in use, skipping test\n",
+				 priv->snd_driver);
+		else if (priv->snd_driver)
+			igt_info("Unloaded audio driver %s\n", priv->snd_driver);
 	}
 
 	local_debug("%sunbinding the driver from the device\n", prefix);
@@ -198,19 +200,20 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 {
 	igt_require(priv->fd.sysfs_dev == -1);
 
-	/*
-	 * FIXME: on some devices, the audio driver (snd_hda_intel)
-	 * binds into the i915 driver. On such hardware, kernel warnings
-	 * and errors may happen if i915 is unbind/removed before removing
-	 * first the audio driver.
-	 * So, add a logic that unloads the audio driver before trying to
-	 * unbind i915 driver, reloading it when binding again.
-	 */
-	if (igt_audio_driver_unload(&priv->snd_driver)) {
-		igt_skip("Audio driver %s in use, skipping test\n",
-			 priv->snd_driver);
-	} else if (priv->snd_driver) {
-		igt_info("Unloaded audio driver %s\n", priv->snd_driver);
+	if (priv->chipset == DRIVER_INTEL) {
+		/*
+		 * FIXME: on some devices, the audio driver (snd_hda_intel)
+		 * binds into the i915 driver. On such hardware, kernel warnings
+		 * and errors may happen if i915 is unbind/removed before removing
+		 * first the audio driver.
+		 * So, add a logic that unloads the audio driver before trying to
+		 * unbind i915 driver, reloading it when binding again.
+		 */
+		if (igt_audio_driver_unload(&priv->snd_driver))
+			igt_skip("Audio driver %s in use, skipping test\n",
+				 priv->snd_driver);
+		else if (priv->snd_driver)
+			igt_info("Unloaded audio driver %s\n", priv->snd_driver);
 	}
 
 	priv->fd.sysfs_dev = openat(priv->fd.sysfs_bus, priv->dev_bus_addr,
@@ -625,6 +628,7 @@ igt_main
 		.need_healthcheck = true,
 		.has_intel_perf = false,
 		.snd_driver	= NULL,
+		.chipset	= DRIVER_ANY,
 	};
 
 	igt_fixture {
@@ -634,6 +638,8 @@ igt_main
 		igt_skip_on_f(fd_drm < 0, "No known DRM device found\n");
 
 		if (is_i915_device(fd_drm)) {
+			priv.chipset = DRIVER_INTEL;
+
 			gem_quiescent_gpu(fd_drm);
 			igt_require_gem(fd_drm);
 
-- 
2.25.1

