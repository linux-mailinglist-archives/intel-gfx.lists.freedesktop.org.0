Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86140225E50
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jul 2020 14:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE77A6E3D6;
	Mon, 20 Jul 2020 12:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64F86E3CB;
 Mon, 20 Jul 2020 12:19:35 +0000 (UTC)
IronPort-SDR: 9kQiHDolR153IWLOy4tjdW1dl6Ofi2h6DyS5FG0XryEcVoU8mpqtOZXLf8DuWbfhpEUvId/NRK
 rX1Rrqg90/uw==
X-IronPort-AV: E=McAfee;i="6000,8403,9687"; a="129463955"
X-IronPort-AV: E=Sophos;i="5.75,374,1589266800"; d="scan'208";a="129463955"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:35 -0700
IronPort-SDR: 3pPsXRXHmm8kwx0fSQyhFb0e4eW4BMEfhqIt2dOOePOMPtcvm08XJ5AcxjPxdw/OBExgF5M979
 yXNMsET2eMbQ==
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="461669605"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 05:19:33 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 Jul 2020 14:18:57 +0200
Message-Id: <20200720121908.28124-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
References: <20200720121908.28124-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATH i-g-t 04/15] tests/core_hotunplug: Assert
 successful device filter application
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

Return value of igt_device_filter_add() representing a number of
successfully installed device filters is now ignored.  Fail if not 1.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index 557f9e3fa..6ceb325ad 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -178,7 +178,7 @@ static void set_filter_from_device(int fd)
 	igt_assert(realpath(path, dst));
 
 	igt_device_filter_free_all();
-	igt_device_filter_add(filter);
+	igt_assert_eq(igt_device_filter_add(filter), 1);
 }
 
 /* Subtests */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
