Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288731B8ECD
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 12:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A96A89A35;
	Sun, 26 Apr 2020 10:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60558899A5;
 Sun, 26 Apr 2020 10:23:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59880A47E6;
 Sun, 26 Apr 2020 10:23:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 26 Apr 2020 10:23:06 -0000
Message-ID: <158789658633.14663.17130728212184399642@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200426094140.17125-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200426094140.17125-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Apply_the_magic_PM_interval_roundup_to_all!?=
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

Series: drm/i915/gt: Apply the magic PM interval roundup to all!
URL   : https://patchwork.freedesktop.org/series/76489/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8369 -> Patchwork_17465
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/index.html

Known issues
------------

  Here are the changes found in Patchwork_17465 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][1] -> [FAIL][2] ([i915#579])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#489])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-hsw-4770:        [DMESG-FAIL][5] ([i915#1791]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html

  
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-icl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8369 -> Patchwork_17465

  CI-20190529: 20190529
  CI_DRM_8369: ed7a286b5d02de0eb72f46665f2d6accce20a179 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17465: 47b8830170c1aa1accb1e7ddf995f3dc6de761b9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

47b8830170c1 drm/i915/gt: Apply the magic PM interval roundup to all!

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
