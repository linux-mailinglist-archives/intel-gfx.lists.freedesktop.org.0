Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA181CFD6B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 20:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B47C6E17D;
	Tue, 12 May 2020 18:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABEBB6E17D;
 Tue, 12 May 2020 18:38:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5A09A0BD0;
 Tue, 12 May 2020 18:38:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 12 May 2020 18:38:28 -0000
Message-ID: <158930870864.18142.4605690664015699632@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DP_vswing/preemph_fixes?=
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

Series: drm/i915: DP vswing/preemph fixes
URL   : https://patchwork.freedesktop.org/series/77198/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8470 -> Patchwork_17635
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17635:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [PASS][1] -> [{ABORT}][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_17635 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [PASS][3] -> [SKIP][4] ([fdo#109271]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-6600u:       [PASS][5] -> [INCOMPLETE][6] ([i915#1874])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/fi-skl-6600u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-bwr-2160:        [PASS][7] -> [INCOMPLETE][8] ([i915#489])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - fi-apl-guc:         [DMESG-FAIL][9] ([i915#666]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-apl-guc/igt@i915_selftest@live@active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/fi-apl-guc/igt@i915_selftest@live@active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8470 -> Patchwork_17635

  CI-20190529: 20190529
  CI_DRM_8470: d2c5ae86eac811c49f2fe22c4fa02b6e6d31cd67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17635: 0c0676f7ff331d0f52650631d49993ff07b34aab @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0c0676f7ff33 drm/i915: Replace some hand rolled max()s
eecd407755db drm/i915: Fix DP_TRAIN_MAX_{PRE_EMPHASIS, SWING}_REACHED handling
bf43df649859 drm/i915: Reverse preemph vs. voltage swing preference
bbd0ca405d25 drm/i915: Add {preemph, voltage}_max() vfuncs
73b52b02124f drm/i915: Fix ivb cpu edp vswing
6eda9cf25b2c drm/i915: Fix ibx max vswing/preemph
8a4fb48decbe drm/i915: Fix cpt/ppt max pre-emphasis

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17635/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
