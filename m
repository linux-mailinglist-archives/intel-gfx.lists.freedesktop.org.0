Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CB7225E52
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672586E3E5;
	Mon, 20 Jul 2020 12:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B7306E3DB;
 Mon, 20 Jul 2020 12:19:37 +0000 (UTC)
IronPort-SDR: bUo67+++w/0zCsOMAQIs+ddiJboDBR7gapLZ7+90dVz3pHOeZA+YvJty+IFA7wohniUqJY9I0h
 kMzuAIUf8Zew==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463958"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463958"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:37 -0700
IronPort-SDR: geobxnOYu1/v3Ekn0CvUtCtz8upnHQcnshBy9IsaypbDdHs6xj2RkMVWV96h9wFFgg9atMHDMx
 n7/XWt1g3ESA==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669626"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:35 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:58 +0200
Message-Id: <20200720121908.28124-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 05/15] tests/core_hotunplug: Fix
 missing newline
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

A trailing newline is missing from one of fatal error messages, fix it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 6ceb325ad..cac88c2f3 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -155,7 +155,7 @@ static void healthcheck(void)
 
 	igt_debug("reopening the device\n");
 	fd_drm = __drm_open_driver(DRIVER_ANY);
-	igt_abort_on_f(fd_drm < 0, "Device reopen failure");
+	igt_abort_on_f(fd_drm < 0, "Device reopen failure\n");
 
 	if (is_i915_device(fd_drm)) {
 		failure = "GEM failure";
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
