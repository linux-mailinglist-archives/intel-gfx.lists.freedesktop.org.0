Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B812555E7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 10:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1E46EBA6;
	Fri, 28 Aug 2020 08:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 315B66EB8D;
 Fri, 28 Aug 2020 08:00:29 +0000 (UTC)
IronPort-SDR: /V0AQ38BMrEAP7oC03Y1cvSPPkmIF5QnzFIyZCG4m1MSVRxeDV2jQXRbbtCzhhqyjvw2GmgzgA
 wm1ATal6r3og==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="136690278"
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="136690278"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:28 -0700
IronPort-SDR: FeEZ97+i3Bav/hLLfjVXB/QRFs7pBDgM/k3pI7KlqlTZwmMg+7K5FWj/cXdm53HxsRJvc8z/NC
 ou1KNmfV3wCg==
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="444756047"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:26 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:59:26 +0200
Message-Id: <20200828075927.17061-21-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
References: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 20/21] tests/core_hotunplug: HSW audio
 issue workaround
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unbinding the i915 driver on some Haswell platforms with Azalia audio
results in a kernel WARNING on "i915 raw-wakerefs=1 wakelocks=1 on
cleanup".  The issue can be worked around by manually enabling runtime
power management for the conflicting audio adapter.  Use that method
but also display a warning to preserve visibility of the issue.  Also
tag the workaround with a FIXME comment.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 361d601af..a3d2a04ed 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -473,9 +473,23 @@ igt_main
 		igt_skip_on_f(fd_drm < 0, "No known DRM device found\n");
 
 		if (is_i915_device(fd_drm)) {
+			uint32_t devid = intel_get_drm_devid(fd_drm);
+
 			gem_quiescent_gpu(fd_drm);
 			igt_skip_on_f(local_i915_healthcheck(fd_drm, "pre-"),
 				      "i915 device not healthy on test start\n");
+
+			/**
+			 * FIXME: Unbinding the i915 driver on some Haswell
+			 * platforms with Azalia audio results in a kernel WARN
+			 * on "i915 raw-wakerefs=1 wakelocks=1 on cleanup".  The
+			 * below CI friendly user level workaround prevents the
+			 * warning from appearing.  Drop this hack as soon as
+			 * this is fixed in the kernel.
+			 */
+			if (igt_warn_on_f((bool) IS_HASWELL(devid),
+			    "Manually enabling audio PM to work around a kernel WARN\n"))
+				igt_pm_enable_audio_runtime_pm();
 		}
 
 		/* Make sure subtests always reopen the same device */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
