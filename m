Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5A2783B50
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 09:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADAE10E2E4;
	Tue, 22 Aug 2023 07:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DEBF10E18A;
 Tue, 22 Aug 2023 07:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692691184; x=1724227184;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tS99DiXSwn+a4Fow2KV413J3+3fXMrXmmoLv1d7SAnI=;
 b=RNfNtkKoYEjrRAngrcm2t54nZ7rTmSFFpiyxKMK5BW3L8x40NVU+hJEE
 flhIxY/1kLbPxNekpGX4nOfLetyApv+6SMBb4S24MSWwp4bmp3B1gvTxV
 5pvdKTESJn8pjzyLBhMh0d/FYdiUWEovqUehu9B3vNokVFnG0X4q5Kjfp
 2Ohwu+O1TPfapygMBBQf1H3hEifbzvAw1kwPV3QU+exKQ1qkabB6c8nnT
 DH0OjgCQvR6jpTrLGt8eev56A/Rs9kd6FpjLTqoZ75P8QGJ2ygXuEkaa5
 AV+bp3UBJgvYrdOgIJ7ZfybGCMlx+aEvYwqLTMnWPlhwtF0HF+s+atzyc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358804406"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="358804406"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 00:59:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850513662"
X-IronPort-AV: E=Sophos;i="6.01,192,1684825200"; d="scan'208";a="850513662"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.11.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 00:59:41 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 22 Aug 2023 09:58:58 +0200
Message-ID: <20230822075857.37363-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/core_hotunplug: Wait for device
 nodes to re-appear
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes our health check is not able to find a device node (cardX or
renderY) after driver rebind or device rediscover.  Since device nodes are
recreated in detmpvfs asynchronously, give it a bit of time to do its job
before we try to reopen the device for health check.

(core_hotunplug:3612) DEBUG: Test requirement passed: priv->fd.drm == -1
(core_hotunplug:3612) DEBUG: reopening DRM device for health check
(core_hotunplug:3612) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:4a/0000:4a:02.0/0000:4b:00.0/0000:4c:01.0/0000:4d:00.0
(core_hotunplug:3612) drmtest-DEBUG: Filter matched /dev/dri/card1 | /dev/dri/renderD128
(core_hotunplug:3612) drmtest-DEBUG: Opened previously opened device: /dev/dri/card1
(core_hotunplug:3612) DEBUG: running device sysfs healthcheck
(core_hotunplug:3612) DEBUG: closing health checked device instance
(core_hotunplug:3612) DEBUG: reopening render device for health check
(core_hotunplug:3612) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:4a/0000:4a:02.0/0000:4b:00.0/0000:4c:01.0/0000:4d:00.0
(core_hotunplug:3612) drmtest-DEBUG: Filter matched /dev/dri/card1 | /dev/dri/renderD128
(core_hotunplug:3612) drmtest-INFO: Opened device: /dev/dri/renderD128
(core_hotunplug:3612) DEBUG: running device sysfs healthcheck
(core_hotunplug:3612) DEBUG: closing health checked device instance
(core_hotunplug:3612) DEBUG: Test requirement passed: healthcheck(priv, false)
(core_hotunplug:3612) DEBUG: Test requirement passed: priv->fd.drm_hc == -1
(core_hotunplug:3612) igt_kmod-DEBUG: Module snd_hda_intel unloaded immediately
(core_hotunplug:3612) INFO: Unloaded audio driver snd_hda_intel
(core_hotunplug:3612) DEBUG: unbinding the driver from the device
(core_hotunplug:3612) DEBUG: rebinding the driver to the device
(core_hotunplug:3612) INFO: Realoading snd_hda_intel
(core_hotunplug:3612) DEBUG: reopening DRM device for health check
(core_hotunplug:3612) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:4a/0000:4a:02.0/0000:4b:00.0/0000:4c:01.0/0000:4d:00.0
(core_hotunplug:3612) drmtest-DEBUG: Filter matched /dev/dri/card1 |
(core_hotunplug:3612) drmtest-DEBUG: Opened previously opened device: /dev/dri/card1
(core_hotunplug:3612) DEBUG: running device sysfs healthcheck
(core_hotunplug:3612) DEBUG: closing health checked device instance
(core_hotunplug:3612) DEBUG: reopening render device for health check
(core_hotunplug:3612) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:4a/0000:4a:02.0/0000:4b:00.0/0000:4c:01.0/0000:4d:00.0
(core_hotunplug:3612) drmtest-DEBUG: Filter matched /dev/dri/card1 |
(core_hotunplug:3612) CRITICAL: Test assertion failure function local_drm_open_driver, file ../../../usr/src/igt-gpu-tools/tests/core_hotunplug.c:130:
(core_hotunplug:3612) CRITICAL: Failed assertion: fd_drm >= 0
(core_hotunplug:3612) CRITICAL: file descriptor fd_drm failed

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8830
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/500
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Petri Latvala <adrinael@adrinael.net>
---
 tests/core_hotunplug.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 30d9a6a576..b254447c71 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -501,6 +501,9 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 
 static bool healthcheck(struct hotunplug *priv, bool recover)
 {
+	/* give udev some time to recreate device nodes before we continue */
+	sleep(1);
+
 	/* device name may have changed, rebuild IGT device list */
 	igt_devices_scan(true);
 
-- 
2.41.0

