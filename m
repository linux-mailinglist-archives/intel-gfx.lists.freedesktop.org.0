Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34AB1FEFE9
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5B556EB42;
	Thu, 18 Jun 2020 10:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D3D6EB51
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 10:50:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21536588-1500050 
 for multiple; Thu, 18 Jun 2020 11:50:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedeskto.org
Date: Thu, 18 Jun 2020 11:50:02 +0100
Message-Id: <20200618105002.292615-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests: Move perf/perf_pmu under i915
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These are i915 specific tests of the perf and perf-workalike interfaces,
so move them under i915/

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/Makefile.sources      | 8 ++++++--
 tests/{ => i915}/perf.c     | 0
 tests/{ => i915}/perf_pmu.c | 0
 tests/meson.build           | 6 ++++--
 4 files changed, 10 insertions(+), 4 deletions(-)
 rename tests/{ => i915}/perf.c (100%)
 rename tests/{ => i915}/perf_pmu.c (100%)

diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index eaa6c0d04..af900bcfc 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -88,8 +88,6 @@ TESTS_progs = \
 	kms_vblank \
 	kms_vrr \
 	meta_test \
-	perf \
-	perf_pmu \
 	prime_busy \
 	prime_mmap \
 	prime_mmap_coherency \
@@ -115,6 +113,12 @@ sysfs_preempt_timeout_SOURCES = i915/sysfs_preempt_timeout.c
 TESTS_progs += sysfs_timeslice_duration
 sysfs_timeslice_duration_SOURCES = i915/sysfs_timeslice_duration.c
 
+TESTS_progs += perf
+perf_SOURCES = i915/perf.c
+
+TESTS_progs += perf_pmu
+perf_pmu_SOURCES = i915/perf_pmu.c
+
 TESTS_progs += gem_bad_reloc
 gem_bad_reloc_SOURCES = i915/gem_bad_reloc.c
 
diff --git a/tests/perf.c b/tests/i915/perf.c
similarity index 100%
rename from tests/perf.c
rename to tests/i915/perf.c
diff --git a/tests/perf_pmu.c b/tests/i915/perf_pmu.c
similarity index 100%
rename from tests/perf_pmu.c
rename to tests/i915/perf_pmu.c
diff --git a/tests/meson.build b/tests/meson.build
index e69bdb7d0..28091794f 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -336,14 +336,16 @@ test_executables += executable('i915_pm_rc6_residency',
 	   install : true)
 test_list += 'i915_pm_rc6_residency'
 
-test_executables += executable('perf_pmu', 'perf_pmu.c',
+test_executables += executable('perf_pmu',
+	   join_paths('i915', 'perf_pmu.c'),
 	   dependencies : test_deps + [ lib_igt_perf ],
 	   install_dir : libexecdir,
 	   install_rpath : libexecdir_rpathdir,
 	   install : true)
 test_list += 'perf_pmu'
 
-test_executables += executable('perf', 'perf.c',
+test_executables += executable('perf',
+	   join_paths('i915', 'perf.c'),
 	   dependencies : test_deps + [ lib_igt_i915_perf ],
 	   install_dir : libexecdir,
 	   install_rpath : libexecdir_rpathdir,
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
