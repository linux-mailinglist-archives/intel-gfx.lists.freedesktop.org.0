Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD55955D4B3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 15:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1FA10EECE;
	Tue, 28 Jun 2022 13:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F68D10E711;
 Tue, 28 Jun 2022 13:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656422056; x=1687958056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TnCnUIlmHzDmvWQ0gJEaaPDtlRpW137dVNAfMtgWCnQ=;
 b=mE2QdFzMbt/KGZBf8ZuPTPOwkHLtLJnMGcD8jc0e13h0iNi6g7eC2mJr
 ZqYinimty9odtf0EOoaE85iGXx3TV08zoUg9ijyr7YdkTYSkxHoHxh4Hi
 2wZBWshBmF+9KcMeoqauyie++KvkFDqIuYw+kRwPZGjliNuNKb/IIsbCA
 wZcihV6qUE9cNzbnPTudaefDtQtLIRyR1WvgwYeCi7GbohVUXtEggpxIb
 T17/G6LR1H4lJJ6AxTrIakLP89fLmxLY3jvzn4pJ6Q0lxoBD5xBhqSQLu
 HI7o0HmCRkSDuPE2U3ByEErqOrkb+q3gyTfsLUw1sw/32CwC5tDYStj/5 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343427302"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343427302"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:14:16 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="594790365"
Received: from dlee-mobl1.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.214.144.75])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 06:14:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 28 Jun 2022 14:13:17 +0100
Message-Id: <20220628131318.197965-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628131318.197965-1-matthew.auld@intel.com>
References: <20220628131318.197965-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] tests/kms_cursor_crc: fix truncated
 warning
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks reasonable to just increase the size of 'name' to avoid the
potential truncation:

../tests/kms_cursor_crc.c: In function ‘run_size_tests.constprop’:
../tests/kms_cursor_crc.c:699:50: warning: ‘%d’ directive output may be truncated writing between 1 and 11 bytes into a region of size between 4 and 14 [-Wformat-truncation=]
  699 |                 snprintf(name, sizeof(name), "%dx%d", w, h);
      |                                                  ^~
../tests/kms_cursor_crc.c:699:46: note: directive argument in the range [-2147483648, 1024]
  699 |                 snprintf(name, sizeof(name), "%dx%d", w, h);
      |                                              ^~~~~~~
In file included from /usr/include/stdio.h:894,
                 from ../lib/igt_core.h:38,
                 from ../lib/drmtest.h:39,
                 from ../lib/igt.h:27,
                 from ../tests/kms_cursor_crc.c:25:
In function ‘snprintf’,
    inlined from ‘run_size_tests.constprop’ at ../tests/kms_cursor_crc.c:699:3:
/usr/include/bits/stdio2.h:71:10: note: ‘__builtin___snprintf_chk’ output between 4 and 24 bytes into a destination of size 16
   71 |   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   72 |                                    __glibc_objsize (__s), __fmt,
      |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   73 |                                    __va_arg_pack ());
      |                                    ~~~~~~~~~~~~~~~~~

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/kms_cursor_crc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
index 513c9715..131fdb0a 100644
--- a/tests/kms_cursor_crc.c
+++ b/tests/kms_cursor_crc.c
@@ -691,7 +691,7 @@ static void test_rapid_movement(data_t *data)
 static void run_size_tests(data_t *data, enum pipe pipe,
 			   int w, int h)
 {
-	char name[16];
+	char name[32];
 
 	if (w == 0 && h == 0)
 		strcpy(name, "max-size");
-- 
2.36.1

