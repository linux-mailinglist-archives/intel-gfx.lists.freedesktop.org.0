Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A037BDCA0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7AE10E282;
	Mon,  9 Oct 2023 12:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AAB10E265;
 Mon,  9 Oct 2023 12:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855429; x=1728391429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/zdU7oDovOGWZC580SpKY70i1Dmxauw5f3ReV76+HP0=;
 b=cWanrGqTZZP1/POuBe/hjlfaB0llcnCg3HHQ9XVXBRRHgSyUiqwCDV+o
 vlbLl3MydhARI9mQVngd1bg/p5c/Ywc1w6cPF2K8Ab1JbhOg+OuaZ43qu
 RuiqifH9D6aoGjyAw772LLIllSyFRdvFoc+mNYd46rX+0wIeBwTWxOAJF
 dzksr09EhFAmY5vMHrNpgebBTKBT2ZKYYVHgxPYiqKM4N1nPepn2OnWBp
 15RzG2opk/zF/NGDDWrs68QiTsveP4HBW21lnPvydihtXr4ounUc17hNz
 Rhf93UPCZ9hYOsyYIWj/Fd1PY2is0StaDjepSyR82QIWEGJtqIyEZWLc7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010595"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010595"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326952"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326952"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:28:00 +0200
Message-ID: <20231009122750.519112-22-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 09/11] lib/kunit: Prepare for KTAP
 parsing after modprobe completed
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are going to add support for reading a list of kunit test cases
provided by a kunit test module prior to executing those test cases.  That
will be done by first loading kunit modules in list only mode, then
reading the list from /dev/kmsg with our KTAP parser.  Since that parsing
will be performed after the kunit test module is successfully loaded and
there will be no concurrently running modprobe thread, we need to make
synchronization of reads from /dev/kmsg with potential errors modprobe
thread optional.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 50 ++++++++++++++++++++++++++------------------------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index fed0855c84..ed41aa1235 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -802,34 +802,36 @@ static int kunit_kmsg_result_get(struct igt_list_head *results,
 		if (igt_debug_on(igt_kernel_tainted(&taints)))
 			return -ENOTRECOVERABLE;
 
-		err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
-		if (err == -1)
-			return -errno;
-		else if (unlikely(err))
-			return err;
-
-		err = pthread_mutex_lock(&modprobe->lock);
-		switch (err) {
-		case EOWNERDEAD:
-			/* leave the mutex unrecoverable */
-			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
-			__attribute__ ((fallthrough));
-		case ENOTRECOVERABLE:
-			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
-			if (igt_debug_on(modprobe->err))
-				return modprobe->err;
-			break;
-		case 0:
-			break;
-		default:
-			igt_debug("pthread_mutex_lock() error: %d\n", err);
-			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
-			return -err;
+		if (modprobe) {
+			err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
+			if (err == -1)
+				return -errno;
+			else if (unlikely(err))
+				return err;
+
+			err = pthread_mutex_lock(&modprobe->lock);
+			switch (err) {
+			case EOWNERDEAD:
+				/* leave the mutex unrecoverable */
+				igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
+				__attribute__ ((fallthrough));
+			case ENOTRECOVERABLE:
+				igt_debug_on(sigaction(SIGCHLD, saved, NULL));
+				if (igt_debug_on(modprobe->err))
+					return modprobe->err;
+				break;
+			case 0:
+				break;
+			default:
+				igt_debug("pthread_mutex_lock() error: %d\n", err);
+				igt_debug_on(sigaction(SIGCHLD, saved, NULL));
+				return -err;
+			}
 		}
 
 		ret = read(fd, record, BUF_LEN);
 
-		if (!err) {
+		if (modprobe && !err) {
 			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
 			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
 		}
-- 
2.42.0

