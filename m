Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AA648A123
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 21:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4224E10E4A4;
	Mon, 10 Jan 2022 20:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D54010E4A4;
 Mon, 10 Jan 2022 20:52:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 886DFAA0EB;
 Mon, 10 Jan 2022 20:52:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 10 Jan 2022 20:52:44 -0000
Message-ID: <164184796452.28741.3455554945691770169@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1641829428.git.jani.nikula@intel.com>
In-Reply-To: <cover.1641829428.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_clean_up_i915=5Fdrv=2Eh=2C_part_2?=
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

Series: drm/i915: clean up i915_drv.h, part 2
URL   : https://patchwork.freedesktop.org/series/98691/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
69bb96496495 drm/i915: split out i915_gem.h declarations from i915_drv.h
480ab58f49c9 drm/i915: split out i915_gem_internal.h from i915_drv.h
-:49: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#49: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 285 lines checked
a2486d274724 drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
28f18c92ae4b drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
93c54bee9e3e drm/i915: split out gem/i915_gem_create.h from i915_drv.h
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
1a29182142e1 drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
-:63: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#63: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 60 lines checked


