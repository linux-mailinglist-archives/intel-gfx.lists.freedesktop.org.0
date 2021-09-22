Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C198414297
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 09:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58CC66EABB;
	Wed, 22 Sep 2021 07:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 108FC6EABB;
 Wed, 22 Sep 2021 07:23:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07AACAA0ED;
 Wed, 22 Sep 2021 07:23:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 07:23:43 -0000
Message-ID: <163229542398.6944.4526917903304942229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922062527.865433-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210922062527.865433-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E?=
 =?utf-8?q?_=28rev9=29?=
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

Series: drm/i915: Suspend / resume backup- and restore of LMEM. (rev9)
URL   : https://patchwork.freedesktop.org/series/94278/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e8b189cb9e01 drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects
09e0ddae5bb8 drm/i915/gem: Implement a function to process all gem objects of a region
fdabedd0192a drm/i915/gt: Increase suspend timeout
a985db037d67 drm/i915 Implement LMEM backup and restore for suspend / resume
-:287: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#287: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 459 lines checked
d0431e05a63c drm/i915/gt: Register the migrate contexts with their engines
2142fe4d8210 drm/i915: Don't back up pinned LMEM context images and rings during suspend
62ebddd959d3 drm/i915: Reduce the number of objects subject to memcpy recover
15d4f42667e0 HAX: component: do not leave master devres group open after bind
-:47: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#47: 
the devres group, and by closing the devres group after the master->ops->bind()

total: 0 errors, 1 warnings, 0 checks, 23 lines checked
557bb3a815fd HAX: drm/i915/gem: Fix the __i915_gem_is_lmem() function
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


