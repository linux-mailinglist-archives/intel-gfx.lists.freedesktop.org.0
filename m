Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB572130E2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 03:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C6686E8B1;
	Fri,  3 Jul 2020 01:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0357B882B5;
 Fri,  3 Jul 2020 01:18:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F11BDA0BA8;
 Fri,  3 Jul 2020 01:18:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jul 2020 01:18:03 -0000
Message-ID: <159373908395.25593.11409291412856219869@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200703004306.11117-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200703004306.11117-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Split_the_context=27s_obj=3Avma_lut_into_its_own_m?=
 =?utf-8?q?utex_=28rev3=29?=
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

Series: drm/i915/gem: Split the context's obj:vma lut into its own mutex (rev3)
URL   : https://patchwork.freedesktop.org/series/79064/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8702 -> Patchwork_18078
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/index.html

Known issues
------------

  Here are the changes found in Patchwork_18078 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2] ([i915#1795])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-skl-6600u/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][3] ([i915#1888]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_module_load@reload:
    - fi-byt-n2820:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-n2820/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-byt-n2820/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#1982] / [i915#62] / [i915#92] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][13] ([i915#62] / [i915#95]) -> [SKIP][14] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#1982] / [i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8702/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-apl-guc fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8702 -> Patchwork_18078

  CI-20190529: 20190529
  CI_DRM_8702: 7a5c82b68e1d0fbf600d353793c2360b3e425629 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18078: 15fe500e5d577aaa6d696056c5067daf82a2e202 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

15fe500e5d57 drm/i915/gem: Split the context's obj:vma lut into its own mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18078/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
