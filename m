Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D376798615
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 12:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E76710E0A6;
	Fri,  8 Sep 2023 10:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C5610E0A6;
 Fri,  8 Sep 2023 10:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694170012; x=1725706012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kqg/JgU4K6vqvSdGeeC7sS3V2UoYHKYoEhyc3p8kMEI=;
 b=WUPtwolCO92i8324mAnPsurLPFgQMxQNDqlbor9V26aSp5IBs30IZ2wh
 TKfIxKAZuRYoir+hdcUimOmUdPZqD29AW/iKfUXMCaQeIPYVI4i5s+6mF
 xNUt/zSTrmrFbJfxK7su0I2tyE0gFlK/KqxM9j82LYFwhD/pPgSM2mkbJ
 c6TXqrLJEh6Q2S4bEMNx2Rg7nffxa4DljU/9aIuyTf9EZ7Fxg7Hw5sWKU
 eVWJcgffbXcnETg3pX0XaxhKHPuUF/6bSl2T3Jwy/qHBUgl++dgzg39a7
 EpRl+oILo/knkT8QvWcNo81KGOheXdrtde6j+BzrBJChq29KxL2eS3Vx8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357922624"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357922624"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812531589"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="812531589"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.28.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 03:46:42 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  8 Sep 2023 12:44:46 +0200
Message-ID: <20230908104438.125454-26-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
References: <20230908104438.125454-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 07/17] lib/ktap: Don't ignore interrupt
 signals
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

While reading KTAP data from /dev/kmsg we now ignore interrupt signals
that may occur during read() and we continue reading the data.  No
explanation has been provided on what that could be needed for.

Always return with an error code to the caller when read() fails with
errno == EINTR, so igt_runner has no problems with killing us promptly
on timeout.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_ktap.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
index 84fb13218f..3cfb55ec97 100644
--- a/lib/igt_ktap.c
+++ b/lib/igt_ktap.c
@@ -67,7 +67,7 @@ static int log_to_end(enum igt_log_level level, int fd,
 			}
 
 			if (errno == EINTR)
-				continue;
+				return -2;
 
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
@@ -189,7 +189,7 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 			}
 
 			if (errno == EINTR)
-				continue;
+				return -2;
 
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
@@ -233,7 +233,7 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
 			}
 
 			if (errno == EINTR)
-				continue;
+				return -2;
 
 			if (errno == EPIPE) {
 				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
@@ -388,7 +388,7 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
 			}
 
 			if (errno == EINTR)
-				continue;
+				return -1;
 
 			if (errno == EAGAIN)
 				/* No records available */
@@ -541,7 +541,7 @@ igt_ktap_parser_start:
 			continue;
 
 		if (errno == EINTR)
-			continue;
+			goto igt_ktap_parser_end;
 
 		if (errno == EPIPE) {
 			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
-- 
2.41.0

