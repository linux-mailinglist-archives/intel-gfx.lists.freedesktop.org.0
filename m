Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9B2225E5D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:20:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903D76E3F9;
	Mon, 20 Jul 2020 12:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611BB6E3F9;
 Mon, 20 Jul 2020 12:19:54 +0000 (UTC)
IronPort-SDR: 7F+zvjvolSz8qSv7LIayCdxN+v1hUxQ+XlyrZ5Zqjg2f6NDL9j4f+xq46L9rSS8qnTshmWNAoL
 FmRjeFO835lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463995"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463995"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:54 -0700
IronPort-SDR: xcPCeg5LHNEZui5EbxbLK/DLMZrVxY6m68AXHsb32Syyv9tQ74yecXjfEEk5ZwdIGs0zfPVI9V
 LB1GrW9Ok0sA==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669714"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:52 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:19:08 +0200
Message-Id: <20200720121908.28124-16-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 15/15] tests/core_hotunplug: Explicitly
 ignore unused return values
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

Some return values are not useful and can be ignored.  Wrap those cases
inside igt_ignore_warn(), not only to make sure compilers are happy but
also to clearly document our decisions.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 9bca967c1..9d4543185 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -227,7 +227,7 @@ static void set_filter_from_device(int fd)
 	char path[PATH_MAX + 1];
 
 	igt_assert(igt_sysfs_path(fd, path, PATH_MAX));
-	strncat(path, "/device", PATH_MAX - strlen(path));
+	igt_ignore_warn(strncat(path, "/device", PATH_MAX - strlen(path)));
 	igt_assert(realpath(path, dst));
 
 	igt_device_filter_free_all();
@@ -367,7 +367,7 @@ igt_main
 	igt_fixture {
 		post_healthckeck(&priv);
 
-		close(priv.fd.sysfs_bus);
-		close(priv.fd.sysfs_drv);
+		igt_ignore_warn(close(priv.fd.sysfs_bus));
+		igt_ignore_warn(close(priv.fd.sysfs_drv));
 	}
 }
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
