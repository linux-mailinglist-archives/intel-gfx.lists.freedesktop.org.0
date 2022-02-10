Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DC44B12CA
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 17:32:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1CD10E8AB;
	Thu, 10 Feb 2022 16:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6274A10E8AB;
 Thu, 10 Feb 2022 16:32:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DED8AA917;
 Thu, 10 Feb 2022 16:32:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Feb 2022 16:32:22 -0000
Message-ID: <164451074235.24636.14009426655187479828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1644507885.git.jani.nikula@intel.com>
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_drm=5Fi915=2Eh_cleanup?=
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

Series: drm/i915: drm_i915.h cleanup
URL   : https://patchwork.freedesktop.org/series/99979/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2e49d59d1b68 drm/i915: split out i915_gem_internal.h from i915_drv.h
-:50: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#50: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 286 lines checked
59b695819bdb drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
80fa6e91fdb3 drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
d530ee1287c2 drm/i915: split out gem/i915_gem_create.h from i915_drv.h
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
08e14a541597 drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
-:64: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#64: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
615db0e2922f drm/i915: move i915_cache_level_str() static in i915_debugfs.c
-:47: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#47: FILE: drivers/gpu/drm/i915/i915_debugfs.c:144:
+	case I915_CACHE_LLC: return HAS_LLC(i915) ? " LLC" : " snooped";

total: 1 errors, 0 warnings, 0 checks, 42 lines checked
abc075a2bd16 drm/i915: move i915_gem_vm_lookup() where it's used
-:22: CHECK:LINE_SPACING: Please don't use multiple blank lines
#22: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:346:
 
+

total: 0 errors, 0 warnings, 1 checks, 41 lines checked
88223875cb87 drm/i915: move i915_reset_count()/i915_reset_engine_count() out of i915_drv.h
7ae42d3f0003 drm/i915: split out i915_file_private.h from i915_drv.h
-:209: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#209: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 279 lines checked
7130b228f332 drm/i915: don't include drm_cache.h in i915_drv.h
77dc444c0e4e drm/i915: include shmem_fs.h only where needed
f23b4aa08e52 drm/i915: include some drm headers only where needed
93ece4d15229 drm/i915: axe lots of unnecessary includes from i915_drv.h
87ebd22e9262 drm/i915: fix drm_i915.h include grouping and sorting


