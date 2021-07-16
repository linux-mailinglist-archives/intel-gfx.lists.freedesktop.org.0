Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A243CBB7B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 19:58:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690346E21C;
	Fri, 16 Jul 2021 17:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53CC96E21C;
 Fri, 16 Jul 2021 17:58:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C50EA00C9;
 Fri, 16 Jul 2021 17:58:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 16 Jul 2021 17:58:17 -0000
Message-ID: <162645829730.12776.6048080771500879139@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210715091820.1613726-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210715091820.1613726-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Per_client_GPU_stats_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Per client GPU stats (rev2)
URL   : https://patchwork.freedesktop.org/series/92574/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
415c9c01a6d0 drm/i915: Explicitly track DRM clients
-:88: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#88: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 231 lines checked
9805ac5014ec drm/i915: Make GEM contexts track DRM clients
495a69835993 drm/i915: Track runtime spent in closed and unreachable GEM contexts
db74be235215 drm/i915: Track all user contexts per client
c78a4f1cc1d0 drm/i915: Track context current active time
-:139: WARNING:LINE_SPACING: Missing a blank line after declarations
#139: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:126:
+			u32 last;
+			I915_SELFTEST_DECLARE(u32 num_underflow);

total: 0 errors, 1 warnings, 0 checks, 296 lines checked
9d624fc8e097 drm: Document fdinfo format specification
-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:40: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#40: FILE: Documentation/gpu/drm-usage-stats.rst:1:
+.. _drm-client-usage-stats:

total: 0 errors, 2 warnings, 0 checks, 104 lines checked
a6a1169516a3 drm/i915: Expose client engine utilisation via fdinfo
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 874442541133 ("drm/amdgpu: Add show_fdinfo() interface")'
#10: 
874442541133 ("drm/amdgpu: Add show_fdinfo() interface"), using the

total: 1 errors, 0 warnings, 0 checks, 140 lines checked
b50fbbf1456f drm/amdgpu: Convert to common fdinfo format
-:103: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#103: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:88:
+	seq_printf(m, "drm-pdev:\t%04x:%02x:%02x.%d\npasid:\t%u\n", domain, bus,
 			dev, fn, fpriv->vm.pasid);

-:107: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#107: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:89:
+	seq_printf(m, "drm-memory-vram:\t%llu KiB\n", vram_mem/1024UL);
 	                                                      ^

-:108: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#108: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:90:
+	seq_printf(m, "drm-memory-gtt:\t%llu KiB\n", gtt_mem/1024UL);
 	                                                    ^

-:109: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#109: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:91:
+	seq_printf(m, "drm-memory-cpu:\t%llu KiB\n", cpu_mem/1024UL);
 	                                                    ^

-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_fdinfo.c:108:
+			seq_printf(m, "drm-engine-%s%d:\t%d.%d %%\n",
 					amdgpu_ip_name[i],

total: 0 errors, 0 warnings, 5 checks, 82 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
