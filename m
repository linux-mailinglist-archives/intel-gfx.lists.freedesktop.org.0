Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A20D36CD457
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 10:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C9B210E083;
	Wed, 29 Mar 2023 08:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A09F110E083;
 Wed, 29 Mar 2023 08:17:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96DB8AADD6;
 Wed, 29 Mar 2023 08:17:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhao Liu" <zhao1.liu@linux.intel.com>
Date: Wed, 29 Mar 2023 08:17:59 -0000
Message-ID: <168007787958.23903.9145655375067765557@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230329073220.3982460-1-zhao1.liu@linux.intel.com>
In-Reply-To: <20230329073220.3982460-1-zhao1.liu@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Replace_kmap=5Fatomic=28=29_with_kmap=5Flocal?=
 =?utf-8?b?X3BhZ2UoKQ==?=
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

Series: drm/i915: Replace kmap_atomic() with kmap_local_page()
URL   : https://patchwork.freedesktop.org/series/115769/
State : warning

== Summary ==

Error: dim checkpatch failed
9bed0825b968 drm/i915: Use kmap_local_page() in gem/i915_gem_object.c
-:39: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#39: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

-:68: ERROR:CODE_INDENT: code indent should use tabs where possible
#68: FILE: drivers/gpu/drm/i915/gem/i915_gem_object.c:434:
+^I          + offset_in_page(offset);$

total: 1 errors, 1 warnings, 0 checks, 20 lines checked
d3723eb0a5a9 drm/i915: Use memcpy_[from/to]_page() in gem/i915_gem_pyhs.c
-:39: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#39: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 34 lines checked
a6ad1bedd102 drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
140ac9e589f6 drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c
-:36: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#36: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
8ca8fe8829f9 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c
-:37: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#37: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
3fe0f41f6073 drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c
-:38: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#38: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 30 lines checked
1a1713ebe97f drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c
-:29: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#29: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com/T/#u

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
9cc672fadd3c drm/i915: Use kmap_local_page() in i915_cmd_parser.c
-:34: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#34: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
69cab3363bd2 drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c
-:34: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#34: 
[1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com

total: 0 errors, 1 warnings, 0 checks, 40 lines checked


