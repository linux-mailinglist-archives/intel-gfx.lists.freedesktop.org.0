Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74A8225E4E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E936E3CB;
	Mon, 20 Jul 2020 12:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751FB6E3CB;
 Mon, 20 Jul 2020 12:19:32 +0000 (UTC)
IronPort-SDR: ce29UQoKWjnr3qrCIc96sQ95ghBf19lmgCCbeKYXIuu5ZUA+7xr8sC3low4xvwGbbD+cYSVO63
 OO6Wl2NpbXgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463949"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463949"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:32 -0700
IronPort-SDR: lkyfgM7DZ9T4Cc7HWzt98CoG8GgqzOqusWCAFbqnbbuZ+d39PDSp5RSezUoUsFGNbvKu4k4c8+
 AJ6eZ0+TzBgQ==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669589"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:30 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:55 +0200
Message-Id: <20200720121908.28124-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 02/15] tests/core_hotunplug: Constify
 dev_bus_addr string
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

Device bus address structure field is always initialized with a pointer
to a substring of the device sysfs path and never used for its
modification.  Declare it as a constant string.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 7431346b1..a4071f51e 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -44,7 +44,7 @@ struct hotunplug {
 		int sysfs_bus;
 		int sysfs_drv;
 	} fd;
-	char *dev_bus_addr;
+	const char *dev_bus_addr;
 };
 
 /* Helpers */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
