Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 940A47C56DC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57BE10E8E2;
	Wed, 11 Oct 2023 14:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1DB510E8DC;
 Wed, 11 Oct 2023 14:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034720; x=1728570720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XHC9GXm2gLX6YSeqpYZlcanA5zA7yJYDCbqVM3PN9j4=;
 b=WxYt6OnDxbLBE5NSNFGvp+whwhzDiIKpsS/X7tzH5+xoTc9K4On/XnBK
 Lqm6DUNG9nhK5NfV4SEryHLa6JfMzOhFp0643Cy9gBauAPbWHtdU2bexI
 z9LL9fp8AhBvS6WhhYoePwnnWrAow3aSYtEaAsQphevEDoelUFgi3KGdA
 QjWxhN5v4fJQA3O6v/zrZyvwlPjfY6iwOvF2O51D0L+BgqDOd7OvqmNO8
 Cfv4X0MvfxJZZ5wTH2uKo1AAIDl2Zyywx8R7VKpZWsFQSE60b9yJxzcYO
 z7X47La8bZT6CS3rxfrCthPha1GHEs/a49FON5RSWpLtvMkIr/zkCavor w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042088"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042088"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641598"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641598"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:30:13 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:44 +0200
Message-ID: <20231011141734.590321-22-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 09/11] lib/kunit: Prepare for KTAP
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
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_kmod.c | 50 ++++++++++++++++++++++++++------------------------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 21c547bf42..5d85732b08 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -805,34 +805,36 @@ static int kunit_kmsg_result_get(struct igt_list_head *results,
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
 
-		if (!err) {	/* pthread_mutex_lock() succeeded */
+		if (modprobe && !err) {	/* pthread_mutex_lock() succeeded */
 			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
 			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
 		}
-- 
2.42.0

