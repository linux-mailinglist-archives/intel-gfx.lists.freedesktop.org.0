Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 152E9798619
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B0510E8A7;
	Fri,  8 Sep 2023 10:46:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D1310E0A6;
 Fri,  8 Sep 2023 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170014; x=1725706014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7JwD+XeooPOPHuA1WH62ZC7XBAnCsiTezdkxLExk9wQ=;
 b=W7OTAeYufY95KzzGaja1LsNphm7qsFW4s7O6Q2k8n9AbJvFYIc4XE1Dw
 PphPU0S1gq6dJ+SZwB6az95A2yD2vQDBEfOPzN8L0aGtkbpAIgphpYmGq
 bd++DX8t7XT7/pQYZPzZZt9RfJ7SMClWRsN5ZhXOGtexcUD6Of9E11N/K
 Jynslr3BQEYQIFc3ge0uvaXEad2IU8fWlkV5dLuGBcba5IgOzkJI+3e6c
 od3eFscLDIHI8ni4CZwru51nKZfeW2+8Lg4IHQeKjifzcmu6ME+z6SOIW
 kA7uVuxZYo7H+4bK2ZPvsDGc8y9m/2/t7GLy8I5S596KYlvkJMPMajkTY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922655"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922655"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531613"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531613"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:50 +0200
Message-ID: <20230908104438.125454-30-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 11/17] lib/kunit: Fail / skip on kernel
 taint
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

Similar to how igt_kselftest() handles kernel taints, fail current dynamic
sub-subtest and skip remaining ones when a kernel taint is detected during
execution of kunit test cases.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 020df286b8..988ac164cb 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -761,6 +761,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 	bool is_builtin;
 	struct ktap_test_results *results;
 	struct ktap_test_results_element *temp;
+	unsigned long taints;
 	int flags, ret;
 
 	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
@@ -785,12 +786,20 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 
 	while (READ_ONCE(results->still_running) || READ_ONCE(results->head) != NULL)
 	{
+		if (igt_kernel_tainted(&taints)) {
+			ktap_parser_cancel();
+			break;
+		}
+
 		if (READ_ONCE(results->head) != NULL) {
 			pthread_mutex_lock(&results->mutex);
 
-			igt_dynamic(results->head->test_name)
+			igt_dynamic(results->head->test_name) {
 				igt_assert(READ_ONCE(results->head->passed));
 
+				igt_fail_on(igt_kernel_tainted(&taints));
+			}
+
 			temp = results->head;
 			results->head = results->head->next;
 			free(temp);
@@ -801,6 +810,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 
 	ret = ktap_parser_stop();
 
+	igt_skip_on(igt_kernel_tainted(&taints));
 	igt_skip_on_f(ret, "KTAP parser failed\n");
 }
 
-- 
2.41.0

