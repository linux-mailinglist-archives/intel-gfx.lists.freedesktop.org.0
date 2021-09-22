Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8549414DE8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 18:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21C06EC33;
	Wed, 22 Sep 2021 16:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E450B6EC37;
 Wed, 22 Sep 2021 16:16:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDE0AA008A;
 Wed, 22 Sep 2021 16:16:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 16:16:56 -0000
Message-ID: <163232741690.6943.13362052727902784637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922155145.93174-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210922155145.93174-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Per_client_GPU_stats_=28rev4=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Per client GPU stats (rev4)
URL   : https://patchwork.freedesktop.org/series/92574/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3ced17ae466 drm/i915: Explicitly track DRM clients
-:88: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#88: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 231 lines checked
23952d0281f4 drm/i915: Make GEM contexts track DRM clients
aa77a600c1f2 drm/i915: Track runtime spent in closed and unreachable GEM contexts
6f240d00ff32 drm/i915: Track all user contexts per client
13cdce7379be drm/i915: Track context current active time
-:139: WARNING:LINE_SPACING: Missing a blank line after declarations
#139: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:143:
+			u32 last;
+			I915_SELFTEST_DECLARE(u32 num_underflow);

total: 0 errors, 1 warnings, 0 checks, 296 lines checked
4c4f367b390e drm: Document fdinfo format specification
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

-:45: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#45: FILE: Documentation/gpu/drm-usage-stats.rst:1:
+.. _drm-client-usage-stats:

total: 0 errors, 2 warnings, 0 checks, 104 lines checked
91c47a76ce10 drm/i915: Expose client engine utilisation via fdinfo


