Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B72A9798716
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 14:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A1A10E8B0;
	Fri,  8 Sep 2023 12:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B272310E8A7;
 Fri,  8 Sep 2023 12:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694176463; x=1725712463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NgGrmVyyZfFDm3AIzeCAssCCd7sLa2xWlFx06MXCHiE=;
 b=KqIxj5WH0LwMh+Rc8YT6dJzvH7JRTCpCCkrjmQ92tv34eH6/7sV92hMY
 PlxsHo6wxukrWuV29iRV11vyPYKXp+//l396oU1zm4MTc0iZLumMLJApm
 JTMmGVPzZkXP/+jgIfIETNPFKasBjOg9z3reo0DAVm0RF6PzFyPdhMEHk
 9y/IP9vAGXXWpH3/jwGlH9+hpltYcRsf6xOCd61umgfYs0vMSDzTE7j0o
 /XNpMNbpe5A9TZAExWrH6dJ1T+6LVLsQUtyEl3F6SLPrt1VLwpP3H2Rz7
 a4q98Ntq1+NDuTlJerGc+UVEib3MQu2O7/X9TnZPPahsPQhzniPKCNrsv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="375014947"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="375014947"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="857381915"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="857381915"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 05:34:21 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 14:32:36 +0200
Message-ID: <20230908123233.137134-21-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 02/17] lib/kunit: Stop loading kunit
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

