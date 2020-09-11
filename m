Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C22265DF1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 12:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEDF6EA10;
	Fri, 11 Sep 2020 10:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 756CD6EA10;
 Fri, 11 Sep 2020 10:31:38 +0000 (UTC)
IronPort-SDR: OHr7fPjFYXzx/MaytxMTVTBRHEnyrsmvbK/9GFKs07lXwjQt3olUxyS3XlVarxRbr9RHMS7kQf
 CDdBu78gpEQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156185767"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="156185767"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:38 -0700
IronPort-SDR: lt45MpIArFxOY8ucUqSAVJz2K5hRLCZnixx4qQANSkU1HmtoAvRyZM47HT9rcXBD8ENVs00O+9
 08fCjWP6OSUg==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="334474869"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:36 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Sep 2020 12:30:36 +0200
Message-Id: <20200911103039.4574-22-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v6 21/24] tests/core_hotunplug: HSW/BDW
 audio issue workaround
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

Unbinding the i915 driver on some Haswell and Broadwell platforms with
Azalia audio results in a kernel WARNING on "i915 raw-wakerefs=1
wakelocks=1 on cleanup".  The issue can be worked around by manually
enabling runtime power management for the conflicting audio adapter.
Use that method but also display a warning to preserve visibility of
the issue.  Also tag the workaround with a FIXME comment.

v2: Extend the scope of the workaround over Broadwell

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index ac106d964..3e2a76ddb 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -484,8 +484,23 @@ igt_main
 		igt_skip_on_f(fd_drm < 0, "No known DRM device found\n");
 
 		if (is_i915_device(fd_drm)) {
+			uint32_t devid = intel_get_drm_devid(fd_drm);
+
 			gem_quiescent_gpu(fd_drm);
 			igt_require_gem(fd_drm);
+
+			/**
+			 * FIXME: Unbinding the i915 driver on some Haswell
+			 * platforms with Azalia audio results in a kernel WARN
+			 * on "i915 raw-wakerefs=1 wakelocks=1 on cleanup".  The
+			 * below CI friendly user level workaround prevents the
+			 * warning from appearing.  Drop this hack as soon as
+			 * this is fixed in the kernel.
+			 */
+			if (igt_warn_on_f(IS_HASWELL(devid) ||
+					  IS_BROADWELL(devid),
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
