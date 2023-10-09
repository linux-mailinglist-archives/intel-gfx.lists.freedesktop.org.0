Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 510C97BDC97
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA64D10E118;
	Mon,  9 Oct 2023 12:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43A010E116;
 Mon,  9 Oct 2023 12:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855413; x=1728391413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/mtCjtYhA0W3JjBJCJht7t0OvWu85GqnVjjWvhSZz+s=;
 b=ihP5lkMTKXs+3J48BHXKaBp+1PJXTw34JvOotezSbeLKp88AXNSktPUx
 2u0HGecvJax3Nmno60fAkGCfQrjZbByd99bOTNueMQeXcIsJ099wElC9R
 9HcnwamevZZgkJLfs21+MErpEkK7tU0o8oGxoDxJSm822JlLyJzcPxdXs
 H9ERmJONFpG6OmNhX1Sr4PClAieNmw9omt0SQl7UGCBZUaS8wQnyZfbOC
 oyCCjcNfllxh38bJbSom/DyUWyiFC15L8a2gvAYQ4+menljASdWXjJnRF
 sibvXxOk6/9L904SN45UWggOI2KReGHvjyvVfhcwuGii76Oq+ShhgB8RQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383010564"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383010564"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823326817"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="823326817"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.16.68])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:43:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  9 Oct 2023 14:27:53 +0200
Message-ID: <20231009122750.519112-15-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 02/11] lib/kunit: Be more verbose on
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

