Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5799918AEE7
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 10:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6246E6E10B;
	Thu, 19 Mar 2020 09:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAB196E10A;
 Thu, 19 Mar 2020 09:07:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1148A010F;
 Thu, 19 Mar 2020 09:07:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 09:07:14 -0000
Message-ID: <158460883476.17935.18106910324643083775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319081456.9218-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319081456.9218-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Prefer_=27=25ps=27_for_?=
 =?utf-8?q?printing_function_symbol_names?=
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

Series: series starting with [1/4] drm/i915: Prefer '%ps' for printing function symbol names
URL   : https://patchwork.freedesktop.org/series/74864/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8157 -> Patchwork_17020
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17020 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17020, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17020:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-icl-guc/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-icl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_parallel@fds:
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-skl-guc/igt@gem_exec_parallel@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-skl-guc/igt@gem_exec_parallel@fds.html
    - fi-skl-lmem:        NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-skl-lmem/igt@gem_exec_parallel@fds.html
    - fi-kbl-8809g:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-8809g/igt@gem_exec_parallel@fds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-kbl-8809g/igt@gem_exec_parallel@fds.html
    - fi-kbl-r:           [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-r/igt@gem_exec_parallel@fds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-kbl-r/igt@gem_exec_parallel@fds.html
    - fi-kbl-guc:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-guc/igt@gem_exec_parallel@fds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-kbl-guc/igt@gem_exec_parallel@fds.html
    - fi-kbl-7500u:       [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-kbl-7500u/igt@gem_exec_parallel@fds.html
    - fi-kbl-x1275:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-kbl-x1275/igt@gem_exec_parallel@fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-kbl-x1275/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-bsw-nick:        [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gtt:
    - fi-skl-6600u:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-skl-6600u/igt@i915_selftest@live@gtt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-skl-6600u/igt@i915_selftest@live@gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@fds:
    - {fi-ehl-1}:         [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-ehl-1/igt@gem_exec_parallel@fds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-ehl-1/igt@gem_exec_parallel@fds.html

  * igt@gem_sync@basic-each:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-kbl-7560u/igt@gem_sync@basic-each.html

  
Known issues
------------

  Here are the changes found in Patchwork_17020 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@contexts:
    - fi-cml-u2:          [PASS][23] -> [INCOMPLETE][24] ([i915#283])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-cml-u2/igt@gem_exec_parallel@contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-cml-u2/igt@gem_exec_parallel@contexts.html
    - fi-bxt-dsi:         [PASS][25] -> [INCOMPLETE][26] ([fdo#103927])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-bxt-dsi/igt@gem_exec_parallel@contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-bxt-dsi/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@fds:
    - fi-cfl-guc:         [PASS][27] -> [INCOMPLETE][28] ([i915#1147])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-cfl-guc/igt@gem_exec_parallel@fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-cfl-guc/igt@gem_exec_parallel@fds.html
    - fi-cfl-8109u:       [PASS][29] -> [INCOMPLETE][30] ([i915#1147])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-cfl-8109u/igt@gem_exec_parallel@fds.html
    - fi-icl-dsi:         [PASS][31] -> [INCOMPLETE][32] ([i915#1147])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-icl-dsi/igt@gem_exec_parallel@fds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-icl-dsi/igt@gem_exec_parallel@fds.html
    - fi-cfl-8700k:       [PASS][33] -> [INCOMPLETE][34] ([i915#1147])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-cfl-8700k/igt@gem_exec_parallel@fds.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-cfl-8700k/igt@gem_exec_parallel@fds.html
    - fi-icl-y:           [PASS][35] -> [INCOMPLETE][36] ([i915#1147])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-icl-y/igt@gem_exec_parallel@fds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-icl-y/igt@gem_exec_parallel@fds.html
    - fi-glk-dsi:         [PASS][37] -> [INCOMPLETE][38] ([i915#58] / [k.org#198133])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-glk-dsi/igt@gem_exec_parallel@fds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-glk-dsi/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][39] -> [INCOMPLETE][40] ([fdo#103927])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][41] -> [INCOMPLETE][42] ([i915#283])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-cml-s/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-cml-s/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][43] -> [DMESG-FAIL][44] ([i915#877])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1147]: https://gitlab.freedesktop.org/drm/intel/issues/1147
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (41 -> 33)
------------------------------

  Additional (2): fi-skl-lmem fi-kbl-7560u 
  Missing    (10): fi-kbl-soraka fi-bdw-5557u fi-byt-j1900 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-bsw-kefka fi-blb-e6850 fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8157 -> Patchwork_17020

  CI-20190529: 20190529
  CI_DRM_8157: 4f297a639d15ec6c293b74ff0904de6146b18e4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17020: ef481225fd1e99b8868ca82a25cedd6bfaf43efd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ef481225fd1e drm/i915/gem: Wait until the context is finally retired before releasing engines
4a01de3df14d drm/i915/execlists: Force single submission for sentinels
21b5f174e33e drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
1d8e090013b0 drm/i915: Prefer '%ps' for printing function symbol names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17020/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
