Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F0378D3BF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 09:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA1610E4D2;
	Wed, 30 Aug 2023 07:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DEFF10E4D2;
 Wed, 30 Aug 2023 07:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382127; x=1724918127;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gy42heFFBmku26L7zRC32gHV7wb/DscL5QqcL5RLE0Y=;
 b=GeEnD3P2iiZJqRJjlE/XcTOfB7AqeZc/F7/rbQC4Rsyaj6A0byGzgQej
 vrs7ubAfDzPSfiAgLF11P8Xp3Qx3g61ARLYNG3dcVpE1Zh9G+7C0AJrKB
 LwmQ3B1VWylHdyLBGntTCEkxZVJtO9+dDjpLZSE+Bt9t7vby0KfCIzcBd
 rhNhmVOd8H6EkyPXsRzB9c2iqGCo9IlS8mq3IWbdwcu6Bc3lJaL5QLG/i
 B4WXOZ7lfybd1bVldYCfw+TjKC/hZoHbtIaqbUUCIwZIirfnM1UnygDmi
 RKSegDSrlynParS9gc5aPBCFE4Wehef+FdH0NfX7KOsyHtJyKw3BQK7zA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="375533342"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="375533342"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 00:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="829138446"
X-IronPort-AV: E=Sophos;i="6.02,212,1688454000"; d="scan'208";a="829138446"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.24.84])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 00:55:20 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Brendan Higgins <brendan.higgins@linux.dev>,
 David Gow <davidgow@google.com>
Date: Wed, 30 Aug 2023 09:54:20 +0200
Message-ID: <20230830075419.26484-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH] kunit: Fix test log size limit too low for
 some tests
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 drm-devel@lists.freedesktop.org, linux-kselftest@vger.kernel.org,
 intel-xe@lists.freedesktop.org, kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now we have memory space available to a kunit test case log exposed via
debugfs limited to 2048 bytes, while some parametrized test cases, e.g.,
drm_framebuffer.drm_test_framebuffer_create, need more.  For this reason,
debugfs results from affected test cases get truncated silently, and
external tools that rely on parsing of debugfs results can fail.

Increase kunit test case log size limit to 4096 bytes.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 include/kunit/test.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index d33114097d0d0..d20eb1884edfa 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -34,7 +34,7 @@ DECLARE_STATIC_KEY_FALSE(kunit_running);
 struct kunit;
 
 /* Size of log associated with test. */
-#define KUNIT_LOG_SIZE 2048
+#define KUNIT_LOG_SIZE 4096
 
 /* Maximum size of parameter description string. */
 #define KUNIT_PARAM_DESC_SIZE 128
-- 
2.41.0

