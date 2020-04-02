Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D8B19BDB9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 10:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBF36EA0A;
	Thu,  2 Apr 2020 08:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC4F56EA09;
 Thu,  2 Apr 2020 08:44:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6252A00C7;
 Thu,  2 Apr 2020 08:44:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 08:44:42 -0000
Message-ID: <158581708272.24293.2883623490079392953@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402075057.19794-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200402075057.19794-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Utilize_rcu_iterati?=
 =?utf-8?q?on_of_context_engines?=
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

Series: series starting with [1/2] drm/i915/gem: Utilize rcu iteration of context engines
URL   : https://patchwork.freedesktop.org/series/75401/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8236 -> Patchwork_17175
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17175 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17175, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17175:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-WARN][2] +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-8809g/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][5] +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8700k:       [PASS][6] -> [DMESG-WARN][7] +12 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
    - fi-icl-dsi:         [PASS][8] -> [DMESG-WARN][9] +12 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][10] -> [DMESG-WARN][11] +12 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-apl-guc:         [PASS][12] -> [DMESG-WARN][13] +12 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-lmem:        [PASS][14] -> [DMESG-WARN][15] +13 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][16] -> [DMESG-WARN][17] +12 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][18] -> [DMESG-WARN][19] +10 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-x1275/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem:
    - fi-cml-s:           [PASS][20] -> [DMESG-WARN][21] +12 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-cml-s/igt@i915_selftest@live@gem.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-cml-s/igt@i915_selftest@live@gem.html
    - fi-kbl-guc:         [PASS][22] -> [DMESG-WARN][23] +12 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-guc/igt@i915_selftest@live@gem.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-guc/igt@i915_selftest@live@gem.html
    - fi-kbl-7500u:       [PASS][24] -> [DMESG-WARN][25] +12 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-7500u/igt@i915_selftest@live@gem.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-7500u/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gtt:
    - fi-skl-guc:         [PASS][26] -> [DMESG-WARN][27] +12 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-skl-guc/igt@i915_selftest@live@gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-skl-guc/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-u2:          [PASS][28] -> [DMESG-WARN][29] +12 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
    - fi-icl-guc:         [PASS][30] -> [DMESG-WARN][31] +12 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
    - fi-icl-u2:          [PASS][32] -> [DMESG-WARN][33] +10 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-bdw-5557u:       [PASS][34] -> [DMESG-WARN][35] +12 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-bdw-5557u/igt@i915_selftest@live@mman.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-bdw-5557u/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][36] -> [DMESG-WARN][37] +12 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-kbl-soraka:      [PASS][38] -> [DMESG-WARN][39] +12 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-soraka/igt@i915_selftest@live@requests.html
    - fi-bxt-dsi:         [PASS][40] -> [DMESG-WARN][41] +12 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-bxt-dsi/igt@i915_selftest@live@requests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-bxt-dsi/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - fi-skl-6700k2:      [PASS][42] -> [DMESG-WARN][43] +12 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
    - fi-icl-y:           [PASS][44] -> [DMESG-WARN][45] +12 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-icl-y/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-icl-y/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [PASS][46] -> [DMESG-WARN][47] +12 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-tgl-dsi/igt@i915_module_load@reload.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - {fi-ehl-1}:         [PASS][48] -> [DMESG-WARN][49] +12 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-ehl-1/igt@i915_selftest@live@mman.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-ehl-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@requests:
    - {fi-kbl-7560u}:     [PASS][50] -> [DMESG-WARN][51] +12 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-7560u/igt@i915_selftest@live@requests.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-7560u/igt@i915_selftest@live@requests.html
    - {fi-tgl-u}:         [PASS][52] -> [DMESG-WARN][53] +12 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-tgl-u/igt@i915_selftest@live@requests.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-tgl-u/igt@i915_selftest@live@requests.html

  
Known issues
------------

  Here are the changes found in Patchwork_17175 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][54] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][55] ([i915#62] / [i915#92]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][56] ([i915#62] / [i915#92]) -> [DMESG-WARN][57] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 44)
------------------------------

  Additional (3): fi-hsw-peppy fi-skl-6600u fi-elk-e7500 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8236 -> Patchwork_17175

  CI-20190529: 20190529
  CI_DRM_8236: 698ce59acca37b93bfcdee6899504be3eb113097 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5556: 311cb1b360b7ae00fab80b822cd34fd512f08ce9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17175: 455595cb0eefdf990cdc9f3633e1f582e5b0e5dd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

455595cb0eef drm/i915/gem: Prevent switching of active GEM context VM
796658ca1855 drm/i915/gem: Utilize rcu iteration of context engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17175/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
