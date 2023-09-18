Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5124F7A4AD2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CD010E2B4;
	Mon, 18 Sep 2023 13:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3EF10E190;
 Mon, 18 Sep 2023 13:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045163; x=1726581163;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4SbNkztvh9Ng9k2Efq2e84/O2G1a20Hqjkg7j5DUPKE=;
 b=VuXQwoEk9iwY5z4jaCc49kKgz30Ywiu2ZTqXRLvDrAMYysT2h9LrU1pF
 Mok+XIVz2P8hQSpVV0uZBLPwR2eHvXX7wfVtPnFQUfQd76V6gLtO8Wzmb
 RWRHoObbew5iTGeqlYxPQDnhH92TzcTTMCYXt1FZw+DoW9LTvNiTH8sWU
 xpVPbK3WMpkN4zc++Yra3LdhHCU0qJ5siQOVIatQBg4b2+rObqZl3pd3s
 U+mPJi0xMqj0Ikf0dt1UfE+X4Bx6nMh4Y3A8hh9mXIKlDGRj7opVFQObt
 87LjIPHzyGB64W/c0N9UuSV8pNsDXChrcb1r8dT0Bp8V5hi+anN7GLaPi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969604"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969604"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030516"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030516"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:40 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:58 +0200
Message-ID: <20230918134249.31645-27-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 08/17] lib/kunit: Cancel KTP parser on
 module load failure
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

For our KTAP parser to be running in parallel with kunit test module
loading, we now start it in a separate thread before we load the module.
If the module loading fails then we join the KTAP parser thread right
after that failure.  If the KTAP thread sleeps for some reason then we
can fail to break the test immediately.

Cancel the KTAP parser thread right after module load error and before
joining it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 lib/igt_kmod.c | 1 +
 lib/igt_ktap.c | 6 ++++++
 lib/igt_ktap.h | 1 +
 3 files changed, 8 insertions(+)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 063e4c12db..7392276401 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -773,6 +773,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
 	results = ktap_parser_start(tst->kmsg, is_builtin);
 
 	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
+		ktap_parser_cancel();
 		igt_ignore_warn(ktap_parser_stop());
 		igt_skip("Unable to load %s module\n", tst->module_name);
 	}
diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index ce07f9aed7..0db42d1243 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -587,6 +587,12 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
 	return &results;
 }
 
+void ktap_parser_cancel(void)
+{
+	ktap_args.is_running = false;
+	pthread_cancel(ktap_parser_thread);
+}
+
 int ktap_parser_stop(void)
 {
 	ktap_args.is_running = false;
diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
index ea57c2bb9b..991800e912 100644
--- a/lib/igt_ktap.h
+++ b/lib/igt_ktap.h
@@ -45,6 +45,7 @@ struct ktap_test_results {
 
 
 struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin);
+void ktap_parser_cancel(void);
 int ktap_parser_stop(void);
 
 #endif /* IGT_KTAP_H */
-- 
2.41.0

