Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE74F1BAF6B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 22:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6729F6E1D2;
	Mon, 27 Apr 2020 20:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDC216E17F;
 Mon, 27 Apr 2020 20:25:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE385A47DB;
 Mon, 27 Apr 2020 20:25:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 20:25:55 -0000
Message-ID: <158801915568.26357.11426739876037652008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427170513.24019-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427170513.24019-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915/execlists=3A_Avoid_reusing_the_same_?=
 =?utf-8?q?logical_CC=5FID_=28rev2=29?=
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

Series: series starting with drm/i915/execlists: Avoid reusing the same logical CC_ID (rev2)
URL   : https://patchwork.freedesktop.org/series/76563/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8376 -> Patchwork_17484
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17484 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17484, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17484:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-process:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-icl-y/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-icl-y/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-icl-u2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-icl-u2/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-icl-u2/igt@gem_close_race@basic-threads.html
    - fi-icl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-icl-guc/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-icl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-x1275:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-kbl-x1275/igt@gem_exec_gttfill@basic.html
    - fi-tgl-y:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-tgl-y/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-tgl-y/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8109u:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-kbl-7500u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
    - fi-kbl-guc:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-kbl-guc/igt@gem_exec_gttfill@basic.html
    - fi-cfl-8700k:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-cfl-8700k/igt@gem_exec_gttfill@basic.html
    - fi-whl-u:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-whl-u/igt@gem_exec_gttfill@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-whl-u/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-cfl-guc:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
    - fi-skl-6700k2:      [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-skl-6700k2/igt@gem_exec_gttfill@basic.html

  * igt@gem_sync@basic-each:
    - fi-bsw-nick:        [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-bsw-nick/igt@gem_sync@basic-each.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-bsw-nick/igt@gem_sync@basic-each.html
    - fi-kbl-soraka:      [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-kbl-soraka/igt@gem_sync@basic-each.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-kbl-soraka/igt@gem_sync@basic-each.html
    - fi-apl-guc:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-apl-guc/igt@gem_sync@basic-each.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-apl-guc/igt@gem_sync@basic-each.html
    - fi-bxt-dsi:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-bxt-dsi/igt@gem_sync@basic-each.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-bxt-dsi/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-bsw-kefka:       [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html
    - fi-cml-s:           [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-cml-s/igt@i915_selftest@live@gt_contexts.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-cml-s/igt@i915_selftest@live@gt_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_close_race@basic-process:
    - {fi-ehl-1}:         [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-ehl-1/igt@gem_close_race@basic-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-ehl-1/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-u}:         [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-tgl-u/igt@gem_close_race@basic-threads.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-tgl-u/igt@gem_close_race@basic-threads.html

  * {igt@gem_exec_parallel@engines@contexts}:
    - {fi-tgl-dsi}:       [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-tgl-dsi/igt@gem_exec_parallel@engines@contexts.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-tgl-dsi/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_sync@basic-each:
    - {fi-kbl-7560u}:     NOTRUN -> [INCOMPLETE][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-kbl-7560u/igt@gem_sync@basic-each.html

  
Known issues
------------

  Here are the changes found in Patchwork_17484 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@blt:
    - fi-bsw-n3050:       [PASS][52] -> [INCOMPLETE][53] ([i915#392])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-bsw-n3050/igt@i915_selftest@live@blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-bsw-n3050/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-glk-dsi:         [PASS][54] -> [INCOMPLETE][55] ([i915#1591] / [i915#58] / [k.org#198133])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-kbl-8809g:       [PASS][56] -> [INCOMPLETE][57] ([fdo#108744])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8376/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [i915#1591]: https://gitlab.freedesktop.org/drm/intel/issues/1591
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 44)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8376 -> Patchwork_17484

  CI-20190529: 20190529
  CI_DRM_8376: 3c32812d682625cce30878fa3139b58a014304c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17484: f8ef49c73a6ed9cf7d1e70b8de63700c0cdd4496 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f8ef49c73a6e drm/i915/execlists: Verify we don't submit two identical CCIDs
7285bba3d1a5 drm/i915/execlists: Avoid reusing the same logical CC_ID

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17484/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
