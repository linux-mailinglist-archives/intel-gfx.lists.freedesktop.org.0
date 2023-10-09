Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597E07BDC9F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4674910E279;
	Mon,  9 Oct 2023 12:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37BC310E27E;
 Mon,  9 Oct 2023 12:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855427; x=1728391427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HxoSH/wsCSwFh8bmOy4kxZcCl3tDWBoNxJVRlqTHNpQ=;
 b=ECm/efPUCsFDd3d6txQqK6cYY5ie8GL61v7aPE/Nd6AgFlWQ9ebNV8Gm
 OqVpnNOZL/Jcphc/n+8b85AtGpaLSlltzKtoAn2ekZYVpkaeN5czjU66u
 tAKbY9KUXJlSjk3alFA9yl4GTiUmC0MgRrFv6Vm3y3MmsJCn/XRBmw3yZ
 HTNhgY2o2bc4Y1QmSTCrpiGXzFMpqOrxrovVGMHugDQZgUKu8MNyacDl+
 /lP5v2ZLv1PEtvERTxHa1k5+0M7NbuZiTMkw+6zq6S097nlMGwT+/+kX7
 IyTt6OWSZTpC1HPmjTcneGV70aW5rR5TiOJQ9+3+VYQVh8N0Ha0X+x4I6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010588"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010588"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326914"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326914"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:27:59 +0200
Message-ID: <20231009122750.519112-21-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 08/11] lib/kunit: Provide all results
 cleanup helper
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

Planned changes require a couple of loops around kunit_result_free().
Since we already have such loop, move it into a helper in preparation for
future uses.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 387efbb59f..fed0855c84 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -885,13 +885,25 @@ static void kunit_result_free(struct igt_ktap_result **r,
 	*r = NULL;
 }
 
+static void kunit_results_free(struct igt_list_head *results,
+			       char **suite_name, char **case_name)
+{
+	struct igt_ktap_result *r, *rn;
+
+	igt_list_for_each_entry_safe(r, rn, results, link)
+		kunit_result_free(&r, suite_name, case_name);
+
+	free(*case_name);
+	free(*suite_name);
+}
+
 static void
 __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 {
 	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0, };
 	char *suite_name = NULL, *case_name = NULL;
-	struct igt_ktap_result *r, *rn;
 	struct igt_ktap_results *ktap;
+	struct igt_ktap_result *r;
 	pthread_mutexattr_t attr;
 	IGT_LIST_HEAD(results);
 	unsigned long taints;
@@ -997,11 +1009,7 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
 
 	} while (ret == -EINPROGRESS);
 
-	igt_list_for_each_entry_safe(r, rn, &results, link)
-		kunit_result_free(&r, &suite_name, &case_name);
-
-	free(case_name);
-	free(suite_name);
+	kunit_results_free(&results, &suite_name, &case_name);
 
 	switch (pthread_mutex_lock(&modprobe.lock)) {
 	case 0:
-- 
2.42.0

