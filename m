Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F05711CABD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 11:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591CA899BC;
	Thu, 12 Dec 2019 10:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5226ED08;
 Thu, 12 Dec 2019 10:29:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19552293-1500050 
 for multiple; Thu, 12 Dec 2019 10:29:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 10:29:24 +0000
Message-Id: <20191212102924.1194130-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915: Rename gem_exec_parse and
 gem_exec_parse_blt
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The cmdparser tests are tied to the generation, so rename the tests to
indicate that and remove the ambiguity that they are more generic tests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 tests/Makefile.sources                                 | 8 ++++----
 tests/i915/{gem_exec_parse.c => gen7_exec_parse.c}     | 0
 tests/i915/{gem_exec_parse_blt.c => gen9_exec_parse.c} | 0
 tests/intel-ci/blacklist.txt                           | 2 +-
 tests/meson.build                                      | 4 ++--
 5 files changed, 7 insertions(+), 7 deletions(-)
 rename tests/i915/{gem_exec_parse.c => gen7_exec_parse.c} (100%)
 rename tests/i915/{gem_exec_parse_blt.c => gen9_exec_parse.c} (100%)

diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index 2893f9bc0..806eb02d0 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -241,11 +241,11 @@ gem_exec_parallel_SOURCES = i915/gem_exec_parallel.c
 TESTS_progs += gem_exec_params
 gem_exec_params_SOURCES = i915/gem_exec_params.c
 
-TESTS_progs += gem_exec_parse
-gem_exec_parse_SOURCES = i915/gem_exec_parse.c
+TESTS_progs += gen7_exec_parse
+gen7_exec_parse_SOURCES = i915/gen7_exec_parse.c
 
-TESTS_progs += gem_exec_parse_blt
-gem_exec_parse_blt_SOURCES = i915/gem_exec_parse_blt.c
+TESTS_progs += gen9_exec_parse
+gen9_exec_parse_SOURCES = i915/gen9_exec_parse.c
 
 TESTS_progs += gem_exec_reloc
 gem_exec_reloc_SOURCES = i915/gem_exec_reloc.c
diff --git a/tests/i915/gem_exec_parse.c b/tests/i915/gen7_exec_parse.c
similarity index 100%
rename from tests/i915/gem_exec_parse.c
rename to tests/i915/gen7_exec_parse.c
diff --git a/tests/i915/gem_exec_parse_blt.c b/tests/i915/gen9_exec_parse.c
similarity index 100%
rename from tests/i915/gem_exec_parse_blt.c
rename to tests/i915/gen9_exec_parse.c
diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
index 4bca1b6c5..a48163c68 100644
--- a/tests/intel-ci/blacklist.txt
+++ b/tests/intel-ci/blacklist.txt
@@ -77,7 +77,7 @@ igt@gem_write_read_ring_switch(@.*)?
 ###############################################
 # GEM: Not worth fixing
 ###############################################
-igt@gem_exec_parse@.*lri.*
+igt@gen7_exec_parse@.*lri.*
 ###############################################
 # There are no DRRS capable displays in CI lab
 ###############################################
diff --git a/tests/meson.build b/tests/meson.build
index d931cc372..570de5459 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -147,8 +147,8 @@ i915_progs = [
 	'gem_exec_nop',
 	'gem_exec_parallel',
 	'gem_exec_params',
-	'gem_exec_parse',
-	'gem_exec_parse_blt',
+	'gen7_exec_parse',
+	'gen9_exec_parse',
 	'gem_exec_reloc',
 	'gem_exec_reuse',
 	'gem_exec_schedule',
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
