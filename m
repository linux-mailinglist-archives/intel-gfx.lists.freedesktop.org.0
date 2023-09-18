Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 482F37A4AD1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 15:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C28A210E285;
	Mon, 18 Sep 2023 13:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E3910E04D;
 Mon, 18 Sep 2023 13:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695045161; x=1726581161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HT6k5N/fzNG2HG1FT7wFBXyejK99HVsv9ycsPl1LUiQ=;
 b=GNWzAhE6+t3nKjxKN2o0bDA51hT1ZOKEcdHdKYJrJtSqxMagDvpf2VYY
 bXIp94hWLDll9r6XGYXJR79s+aK9wE4wDNS24od3pjuuSGLb3mnZfdNU8
 MK8Z4OKfrOSwDHfz28Bmid+MErO4yqZdENHvX2lUAt7mbJTnZ2hQ58aNA
 koxZUiO11yThQ6METSt1SaLIxlyzEXpR5gLxNkxLN0Kf1SRumal4d/ZtP
 d1u0VnT1Rfkw4dYNkHI3lwPRKu5ewhNdLF/PZeFOXgG6vWl3ryINPN+Ng
 emGK8F6G+PDxq2ZR504yNHH7iSz4/K+3y8snPfmpt+QBi7yQOFz4xYbww g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="376969563"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="376969563"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="749030503"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; d="scan'208";a="749030503"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.18.199])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 06:52:38 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 Sep 2023 15:42:57 +0200
Message-ID: <20230918134249.31645-26-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v3 07/17] lib/ktap: Drop checks for EINTR
 on read() failures
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

While reading KTAP data from /dev/kmsg we now ignore EINTR failures that
may occur during read() and we continue reading the data.  No explanation
has been provided on what that could be needed for.

Since we use default SIGINT signal handler, read() should never fail with
errno set to EINTR on user interrupt, only the whole process should be
terminated.  Drop checks for errno == EINTR as not applicable.

v2: Drop handling of EINTR completely, update commit message and
    descripion.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
---
 lib/igt_ktap.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 84fb13218f..ce07f9aed7 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -66,9 +66,6 @@ static int log_to_end(enum igt_log_level level, int fd,
 				return -2;
 			}
 
-			if (errno == EINTR)
-				continue;
-
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 				return -2;
@@ -188,9 +185,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 				return -2;
 			}
 
-			if (errno == EINTR)
-				continue;
-
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 				return -2;
@@ -232,9 +226,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 				return -2;
 			}
 
-			if (errno == EINTR)
-				continue;
-
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 				return -2;
@@ -387,9 +378,6 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 				return -1;
 			}
 
-			if (errno == EINTR)
-				continue;
-
 			if (errno == EAGAIN)
 				/* No records available */
 				continue;
@@ -540,9 +528,6 @@ igt_ktap_parser_start:
 			/* No records available */
 			continue;
 
-		if (errno == EINTR)
-			continue;
-
 		if (errno == EPIPE) {
 			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
 			goto igt_ktap_parser_end;
-- 
2.41.0

