Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB73813A74
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 20:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D669610E977;
	Thu, 14 Dec 2023 19:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2D8210E977;
 Thu, 14 Dec 2023 19:04:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 348EFA0169;
 Thu, 14 Dec 2023 19:04:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Replace_?=
 =?utf-8?q?kmap=5Fatomic=28=29_with_kmap=5Flocal=5Fpage=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhao Liu" <zhao1.liu@linux.intel.com>
Date: Thu, 14 Dec 2023 19:04:56 -0000
Message-ID: <170258069619.19959.16433427312474428962@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231203132947.2328805-1-zhao1.liu@linux.intel.com>
In-Reply-To: <20231203132947.2328805-1-zhao1.liu@linux.intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Replace kmap_atomic() with kmap_local_page() (rev3)
URL   : https://patchwork.freedesktop.org/series/115769/
State : warning

== Summary ==

Error: dim checkpatch failed
5089a4873acd drm/i915: Use kmap_local_page() in gem/i915_gem_object.c
-:39: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#39: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

-:63: ERROR:CODE_INDENT: code indent should use tabs where possible
#63: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:506:
+^I          + offset_in_page(offset);$

total: 1 errors, 1 warnings, 0 checks, 20 lines checked
7b2fca2701ac drm/i915: Use memcpy_[from/to]_page() in gem/i915_gem_pyhs.c
-:39: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#39: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
9f45f1946609 drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c
-:24: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#24: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
db5545d1bfac drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c
-:36: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#36: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
f29591541a73 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c
-:37: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#37: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
90cbc7415093 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c
-:38: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#38: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
69a02c2cd306 drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c
-:29: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#29: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com/T/#u

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
0d4712b4d4a7 drm/i915: Use kmap_local_page() in i915_cmd_parser.c
-:34: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#34: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
3b536da924e3 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c
-:34: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#34: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 40 lines checked


