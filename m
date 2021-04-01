Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 038F2351488
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 13:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA7B6EC8F;
	Thu,  1 Apr 2021 11:43:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247066EC8F;
 Thu,  1 Apr 2021 11:43:25 +0000 (UTC)
IronPort-SDR: Bn660K8U8R0ST65nXnOjw8hhjGjGXfujHCF3dQVOHQ7pKph9RfGB93iq8VGjzh7E/9mOYTqmZu
 8ErEXrQfDC1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="189994271"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="189994271"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 04:43:24 -0700
IronPort-SDR: a0WW0T/LNraY11fdyiqfSylmJb8Dc5lBuv7PRht6QvHm0OAAA7n3/L+gZhp6cgSYkGTX8r2G3K
 j/8eVpCfYHeg==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="377676442"
Received: from shaneken-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.202.146])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 04:43:23 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  1 Apr 2021 12:43:16 +0100
Message-Id: <20210401114316.2597715-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] gem_watchdog: Fix autotools build
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Correcting a brain malfunction while typing in Makefile.sources.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/Makefile.sources | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index e992285fedc5..194df8e27dd0 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -464,7 +464,7 @@ TESTS_progs += gem_wait
 gem_wait_SOURCES = i915/gem_wait.c
 
 TESTS_progs += gem_watchdog
-gem_exec_watchdog_SOURCES = i915/gem_watchdog.c
+gem_watchdog_SOURCES = i915/gem_watchdog.c
 
 TESTS_progs += gem_workarounds
 gem_workarounds_SOURCES = i915/gem_workarounds.c
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
