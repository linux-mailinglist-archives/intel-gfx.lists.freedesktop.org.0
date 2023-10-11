Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1987C56D8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 16:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C62010E8CB;
	Wed, 11 Oct 2023 14:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852CE10E8C6;
 Wed, 11 Oct 2023 14:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697034708; x=1728570708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/mtCjtYhA0W3JjBJCJht7t0OvWu85GqnVjjWvhSZz+s=;
 b=RM5uwG5smkOkJ8uNak/d3LcTrQH2Kl6NNyfR63t38dmeCaB3ayK4oGdq
 p7xOz3uYZNm6Qk9BZ2ankpk//3h4jRy4NUwIHT0bg2UGC6/m5MJ+kmqPE
 sJLZO6wgmGW8awUeQvEhqVAtxFZrmpUYikRc31oMsCpKmfZKAfmk3iXlq
 mzvK+Vnq6vaPot/9ZmLPDBiQCyDtDrgUR8f928LsMAFV97BdW48nbTGPR
 4+OYzNfFqbiDNhmK2RCtZciU6CpWBKxTyCKazRe5aCntsXcnGh7NF7BXg
 Iq3qL3ZCZYs2SYMQTlAR7EsIj++jucoQTgtj8zOo0jRMBCPwoT6wBybZ/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364042030"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="364042030"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897641552"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="897641552"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.15.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 07:30:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 11 Oct 2023 16:17:38 +0200
Message-ID: <20231011141734.590321-16-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 03/11] lib/kunit: Be more verbose on
 errors
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

Use a more verbose variant of igt_fail() when failing a dynamic sub-
subtest on kernel taint.  Also, print a debug message on string
duplication failure.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/igt_kmod.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 05ff178b27..df0e650d49 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -834,7 +834,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 			if (!pthread_tryjoin_np(modprobe_thread, NULL))
 				igt_assert_eq(modprobe.err, 0);
 
-			igt_fail_on(igt_kernel_tainted(&taints));
+			igt_assert_eq(igt_kernel_tainted(&taints), 0);
 		}
 
 		free(result);
@@ -861,7 +861,7 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
 	 */
 	if (!name) {
 		name = strdup(module_name);
-		if (name) {
+		if (!igt_debug_on(!name)) {
 			char *suffix = strstr(name, "_test");
 
 			if (!suffix)
-- 
2.42.0

