Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F9318A745
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 22:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0856899B0;
	Wed, 18 Mar 2020 21:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89D118997A;
 Wed, 18 Mar 2020 21:46:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83A61A010F;
 Wed, 18 Mar 2020 21:46:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Mar 2020 21:46:33 -0000
Message-ID: <158456799351.25101.14236662928782276571@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318185104.21516-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200318185104.21516-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Force_single_?=
 =?utf-8?q?submission_for_sentinels?=
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

Series: series starting with [1/2] drm/i915/execlists: Force single submission for sentinels
URL   : https://patchwork.freedesktop.org/series/74845/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8154 -> Patchwork_17013
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17013 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17013, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17013:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@contexts:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-skl-lmem/igt@gem_exec_parallel@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-skl-lmem/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-skl-guc/igt@gem_exec_parallel@fds.html
    - fi-bdw-5557u:       [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bdw-5557u/igt@gem_exec_parallel@fds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-bdw-5557u/igt@gem_exec_parallel@fds.html
    - fi-kbl-8809g:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-8809g/igt@gem_exec_parallel@fds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-8809g/igt@gem_exec_parallel@fds.html
    - fi-kbl-r:           [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-r/igt@gem_exec_parallel@fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-r/igt@gem_exec_parallel@fds.html
    - fi-kbl-guc:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-guc/igt@gem_exec_parallel@fds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-guc/igt@gem_exec_parallel@fds.html
    - fi-kbl-7500u:       [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
    - fi-kbl-x1275:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
    - fi-skl-6700k2:      [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-skl-6700k2/igt@gem_exec_parallel@fds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-skl-6700k2/igt@gem_exec_parallel@fds.html

  * igt@gem_sync@basic-each:
    - fi-kbl-soraka:      [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-soraka/igt@gem_sync@basic-each.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-soraka/igt@gem_sync@basic-each.html

  * igt@i915_module_load@reload:
    - fi-cfl-guc:         [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cfl-guc/igt@i915_module_load@reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-cfl-guc/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gtt:
    - fi-skl-6600u:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-skl-6600u/igt@i915_selftest@live@gtt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-skl-6600u/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@workarounds:
    - fi-cfl-8700k:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-cfl-8700k/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@fds:
    - {fi-kbl-7560u}:     [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-kbl-7560u/igt@gem_exec_parallel@fds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-kbl-7560u/igt@gem_exec_parallel@fds.html
    - {fi-ehl-1}:         [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-ehl-1/igt@gem_exec_parallel@fds.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-ehl-1/igt@gem_exec_parallel@fds.html

  
Known issues
------------

  Here are the changes found in Patchwork_17013 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-glk-dsi:         [PASS][30] -> [INCOMPLETE][31] ([i915#58] / [k.org#198133])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-glk-dsi/igt@gem_exec_parallel@contexts.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-glk-dsi/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-cml-u2:          [PASS][32] -> [INCOMPLETE][33] ([i915#283])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cml-u2/igt@gem_exec_parallel@fds.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-cml-u2/igt@gem_exec_parallel@fds.html
    - fi-cfl-8109u:       [PASS][34] -> [INCOMPLETE][35] ([i915#1147])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
    - fi-icl-guc:         [PASS][36] -> [INCOMPLETE][37] ([i915#1147])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-guc/igt@gem_exec_parallel@fds.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-icl-guc/igt@gem_exec_parallel@fds.html
    - fi-icl-dsi:         [PASS][38] -> [INCOMPLETE][39] ([i915#1147])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-dsi/igt@gem_exec_parallel@fds.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-icl-dsi/igt@gem_exec_parallel@fds.html
    - fi-icl-y:           [PASS][40] -> [INCOMPLETE][41] ([i915#1147])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-icl-y/igt@gem_exec_parallel@fds.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-icl-y/igt@gem_exec_parallel@fds.html
    - fi-apl-guc:         [PASS][42] -> [INCOMPLETE][43] ([fdo#103927])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-apl-guc/igt@gem_exec_parallel@fds.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-apl-guc/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bxt-dsi:         [PASS][44] -> [INCOMPLETE][45] ([fdo#103927])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-bsw-kefka:       [PASS][46] -> [INCOMPLETE][47] ([fdo#105876])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-bsw-kefka/igt@gem_exec_suspend@basic-s4-devices.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-bsw-kefka/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-cml-s:           [PASS][48] -> [INCOMPLETE][49] ([i915#283])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-cml-s/igt@i915_selftest@live@gt_contexts.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-cml-s/igt@i915_selftest@live@gt_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - {fi-tgl-dsi}:       [DMESG-FAIL][50] -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8154/fi-tgl-dsi/igt@i915_selftest@live@active.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/fi-tgl-dsi/igt@i915_selftest@live@active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#105876]: https://bugs.freedesktop.org/show_bug.cgi?id=105876
  [i915#1147]: https://gitlab.freedesktop.org/drm/intel/issues/1147
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (47 -> 41)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (7): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8154 -> Patchwork_17013

  CI-20190529: 20190529
  CI_DRM_8154: 937a904e393752c47b8dfdeed993f04fd75af74d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17013: ffab29c07ccdea554e525652e1f266f28e3f1693 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ffab29c07ccd drm/i915/gem: Wait until the context is finally retired before releasing engines
bedd207664f2 drm/i915/execlists: Force single submission for sentinels

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17013/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
