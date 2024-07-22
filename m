Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA1C938AC9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B97210E3D6;
	Mon, 22 Jul 2024 08:09:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z7Rw5vvh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B1710E3D7;
 Mon, 22 Jul 2024 08:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721635792; x=1753171792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnWo+3DxJtgEREL+rRh2TqwDy6ap/DF0XPUC9cq4jdM=;
 b=Z7Rw5vvhotqzwYz0x9QEG7RMsh3COe4ByNVG8aLFHYIS/1zv7mnf2b/S
 01074vxWF0HCccstCFXBu6uV9HvfO0PWUBcD0IZHTLIzIQWRtgKPBWaPN
 meUtI6dzOR7194oL0URmkbWMqBK0A3KVwKi5weAlHF/1nU4+B6DBapuzE
 0ZoWEkshIq/Ivvg4+t9HU3j5wxoy2snaYBeeLtFoRQU5ban8jcffYGgv9
 hpPnwr3hMCuriy7COieH/VsrSTRT7cmriNZUYaXP+9LZfq4GwJuurepi9
 X8qaH4ALz/EYRm9CRipRdQON2gzssC0j+RZqa3S71i6KAyeLh1hl87o5u w==;
X-CSE-ConnectionGUID: JXlCDoYpS3m7K1MBxWvImA==
X-CSE-MsgGUID: cslEncK6SM+brn8rbi3vng==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="19037722"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="19037722"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:51 -0700
X-CSE-ConnectionGUID: JPLXEuxVTG268D/o6WzGgA==
X-CSE-MsgGUID: fySyE+1MSMa+F6NEl1tzHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51463666"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.233])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 2/3] lib/kunit: Drop 'suite' from __igt_kunit arguments
 list
Date: Mon, 22 Jul 2024 10:01:03 +0200
Message-ID: <20240722080913.74333-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
References: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The optional 'suite' argument was used as a KUnit filter_glob when we were
loading KUnit test module once per IGT subtest.  Since we are now loading
the module once per IGT dynamic sub-subtest, we use test_suite.test_case
obtained from a list of test cases as filter_glob.  Drop the no longer
used argument.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 5864be29d2..a13c6fe063 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1333,7 +1333,6 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 
 static void __igt_kunit(struct igt_ktest *tst,
 			const char *subtest,
-			const char *suite,
 			const char *opts,
 			const char *debugfs_path,
 			struct igt_list_head *tests,
@@ -1486,7 +1485,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
 		    !kunit_get_tests(&tests, &tst, suite, opts, debugfs_path, &debugfs_dir, &ktap))
 			__igt_kunit_legacy(&tst, subtest, opts);
 		else
-			__igt_kunit(&tst, subtest, suite, opts, debugfs_path, &tests, &ktap);
+			__igt_kunit(&tst, subtest, opts, debugfs_path, &tests, &ktap);
 	}
 
 	igt_fixture {
-- 
2.45.2

