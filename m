Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A241BF823
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 14:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5986E26F;
	Thu, 30 Apr 2020 12:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02A016E0D0;
 Thu, 30 Apr 2020 12:20:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF17CA011A;
 Thu, 30 Apr 2020 12:20:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Apr 2020 12:20:37 -0000
Message-ID: <158824923794.31919.16542190365970975242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430111819.10262-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430111819.10262-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/gt=3A_Stop_holding_onto_th?=
 =?utf-8?q?e_pinned=5Fdefault=5Fstate?=
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

Series: series starting with [1/9] drm/i915/gt: Stop holding onto the pinned_default_state
URL   : https://patchwork.freedesktop.org/series/76771/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8401 -> Patchwork_17526
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17526/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17526:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7500u:       NOTRUN -> [{ABORT}][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17526/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_17526 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bwr-2160:        [INCOMPLETE][2] ([i915#489]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17526/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8401 -> Patchwork_17526

  CI-20190529: 20190529
  CI_DRM_8401: 41fac0e3809be301af095c66e717eb9843b80212 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5617: 807b26292a3f21057ef7865a4028d22c512590df @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17526: 16a3283586a72e2e921fdb2e8646a92f6af32078 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

16a3283586a7 drm/i915/gem: Bind the fence async for execbuf
0187f28a9b9b drm/i915/gem: Asynchronous GTT unbinding
e96477842906 drm/i915/gem: Separate the ww_mutex walker into its own list
24191a6a4fde drm/i915: Export a preallocate variant of i915_active_acquire()
d5bcc12365db drm/i915/gem: Assign context id for async work
83f24f70e12c drm/i915/gem: Include PIN_GLOBAL prior to using I915_DISPATCH_SECURE
fc352b043c47 drm/i915: Always defer fenced work to the worker
bdbc12ae68bf drm/i915/gt: Move the batch buffer pool from the engine to the gt
0e9eeaba9f3e drm/i915/gt: Stop holding onto the pinned_default_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17526/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
