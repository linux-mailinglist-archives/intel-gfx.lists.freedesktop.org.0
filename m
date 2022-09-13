Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4525E5B6CBC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 14:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8163E10E6C3;
	Tue, 13 Sep 2022 12:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E43010E6B3;
 Tue, 13 Sep 2022 12:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663070707; x=1694606707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0NGhHAvgbuEMTp9BhqihFAEj/QoX5SkT2NMb9MJ5nnc=;
 b=OFNVP7jFoNIWBE6NorHd7zylBGOxLo+2Qu1SmTDYoX/kPR71iyN9UsfY
 CXTnkrzWkslGpbOMzSrV0HEunBvMVMuVoIXCXyI51EqwHg8BU4lE1mHav
 O4HSPMOYzRhNQqLSmmh7bE5RmCSCtddaMVdQpA0pedjPjo23CXqzVGgat
 GMGHwjrCXHMf1w/BPY+urpHrc354QwMPlcg5c5NQ0K/OgOkRdgoHByzfj
 JKoEd2u07jtZVBMUS82JIU5bNB8KrjZQny3yAfxx25xvvsDTDC0zfB1FN
 PQOnjgUdw9DA+vTyEHJhZim4ZhFAvX/fVd8cAGPIkWDx/yv/HPgztGhs0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="281136815"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="281136815"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678538739"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.10.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 05:05:05 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 13 Sep 2022 14:04:39 +0200
Message-Id: <20220913120441.146757-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
References: <20220913120441.146757-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/4] tests/core_hotunplug: Also unload
 audio before device unplug
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

Starting from commit e9c69e02b2f7 ("tests/core_hotunplug: Unload snd
driver before i915 unbind") that replaced a former conservative workaround
with a more liberal one but also moved it out of initial igt_fixture
section to driver_unbind(), *plug* subtests (still blockisted in CI) can
suffer from issues related to an audio driver using i915 hardware.  Fix it
by adding a copy of the workaround in its current shape also to
device_unplug() / bus_rescan() pair of functions.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 733ea8efb0..c3756889c2 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -198,6 +198,21 @@ static void device_unplug(struct hotunplug *priv, const char *prefix,
 {
 	igt_require(priv->fd.sysfs_dev == -1);
 
+	/*
+	 * FIXME: on some devices, the audio driver (snd_hda_intel)
+	 * binds into the i915 driver. On such hardware, kernel warnings
+	 * and errors may happen if i915 is unbind/removed before removing
+	 * first the audio driver.
+	 * So, add a logic that unloads the audio driver before trying to
+	 * unbind i915 driver, reloading it when binding again.
+	 */
+	if (igt_audio_driver_unload(&priv->snd_driver)) {
+		igt_skip("Audio driver %s in use, skipping test\n",
+			 priv->snd_driver);
+	} else if (priv->snd_driver) {
+		igt_info("Unloaded audio driver %s\n", priv->snd_driver);
+	}
+
 	priv->fd.sysfs_dev = openat(priv->fd.sysfs_bus, priv->dev_bus_addr,
 				    O_DIRECTORY);
 	igt_assert_fd(priv->fd.sysfs_dev);
@@ -231,6 +246,13 @@ static void bus_rescan(struct hotunplug *priv, int timeout)
 	igt_fail_on_f(faccessat(priv->fd.sysfs_bus, priv->dev_bus_addr,
 				F_OK, 0),
 		      "Fakely unplugged device not rediscovered (%s)!\n", priv->dev_bus_addr);
+
+	if (priv->snd_driver) {
+		igt_info("Realoading %s\n", priv->snd_driver);
+		igt_kmod_load(priv->snd_driver, NULL);
+		free(priv->snd_driver);
+		priv->snd_driver = NULL;
+	}
 }
 
 static void cleanup(struct hotunplug *priv)
-- 
2.25.1

