Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21705798610
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC9410E899;
	Fri,  8 Sep 2023 10:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349AC10E899;
 Fri,  8 Sep 2023 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694169993; x=1725705993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NgGrmVyyZfFDm3AIzeCAssCCd7sLa2xWlFx06MXCHiE=;
 b=RIE5gMP2AxvRjgv9b+uXeq8tDA+xXkUk3cVbIBFSHPJZB7V4x3mcWQo5
 PsViB+bVpY0qkt/MEXres7FeCslzw7ETNbTBhfE3v58XUaL/a57G3rTsA
 JrtASBORIkkoSAMBD7m6T2KH75IEzVR0CpRXAPhXc4sOLyadJt7tkUnT0
 eedg9iwlekQ0nZq2SDN1WqMb4ro8vSOct5/t2Kz+ocLbgqMqlEMQIllwo
 07xlZxSlm9b8gwOVos6Qu0ou7csXoYIKlGV+qyrJnHFqtGIJyuSc08ikF
 5Vq+MAFmvkvuOawukoCF8MozxwsOEhiCTIq+ZZHwgHcoIYS5ckfl1JBqn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922558"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922558"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531551"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531551"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:41 +0200
Message-ID: <20230908104438.125454-21-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 02/17] lib/kunit: Stop loading kunit
 module explicitly
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
 =?UTF-8?q?Dominik=20Karol=20Pi=C4=85tkowski?=
 <dominik.karol.piatkowski@intel.com>, Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since kmod functions we use for module loading can process module
dependencies, there is no need to load the "kunit" module explicitly
before loading a kunit test module.  For the same reason we already don't
unload the "kunit" module explicitly on cleanup.  Drop the unnecessary
operation.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 97667a896f..faf31afabc 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -789,12 +789,6 @@ static void __igt_kunit(const char *module_name, const char *opts)
 		goto unload;
 	}
 
-	/* The KUnit module is required for running any KUnit tests */
-	ret = igt_kmod_load("kunit", NULL);
-	if (ret) {
-		skip = ret;
-		goto unload;
-	}
 	ret = kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod);
 	if (ret) {
 		igt_warn("Unable to load KUnit\n");
-- 
2.41.0

