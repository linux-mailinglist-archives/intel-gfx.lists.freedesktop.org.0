Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726EB1456F6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6AD46F508;
	Wed, 22 Jan 2020 13:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAC9A6E563;
 Wed, 22 Jan 2020 13:42:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3254A0138;
 Wed, 22 Jan 2020 13:42:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 13:42:15 -0000
Message-ID: <157970053570.22394.3655247931574126994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122112905.482044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122112905.482044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=5D_drm/i915/execlists=3A_Take_a_referen?=
 =?utf-8?q?ce_while_capturing_the_guilty_request_=28rev2=29?=
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

Series: series starting with [v2] drm/i915/execlists: Take a reference while capturing the guilty request (rev2)
URL   : https://patchwork.freedesktop.org/series/72391/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7790 -> Patchwork_16208
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16208 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16208, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16208:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-skl-6600u/igt@i915_selftest@live_execlists.html
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-skl-guc/igt@i915_selftest@live_execlists.html
    - fi-cfl-guc:         NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-cfl-guc/igt@i915_selftest@live_execlists.html
    - fi-skl-6700k2:      [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-skl-6700k2/igt@i915_selftest@live_execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-skl-6700k2/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16208 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][6] -> [INCOMPLETE][7] ([i915#45])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][8] -> [INCOMPLETE][9] ([fdo#103927])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-bsw-nick:        [PASS][10] -> [INCOMPLETE][11] ([i915#392])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-bsw-nick/igt@i915_selftest@live_execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-bsw-nick/igt@i915_selftest@live_execlists.html
    - fi-apl-guc:         [PASS][12] -> [INCOMPLETE][13] ([fdo#103927])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-apl-guc/igt@i915_selftest@live_execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-apl-guc/igt@i915_selftest@live_execlists.html
    - fi-kbl-x1275:       [PASS][14] -> [INCOMPLETE][15] ([fdo#112259])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-kbl-x1275/igt@i915_selftest@live_execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-kbl-x1275/igt@i915_selftest@live_execlists.html
    - fi-icl-u2:          [PASS][16] -> [INCOMPLETE][17] ([i915#140])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-bsw-n3050:       [PASS][18] -> [INCOMPLETE][19] ([i915#392])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-bsw-n3050/igt@i915_selftest@live_execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-bsw-n3050/igt@i915_selftest@live_execlists.html
    - fi-icl-dsi:         [PASS][20] -> [INCOMPLETE][21] ([i915#140])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-dsi/igt@i915_selftest@live_execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-dsi/igt@i915_selftest@live_execlists.html
    - fi-bsw-kefka:       [PASS][22] -> [INCOMPLETE][23] ([i915#392])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-bsw-kefka/igt@i915_selftest@live_execlists.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-bsw-kefka/igt@i915_selftest@live_execlists.html
    - fi-icl-y:           [PASS][24] -> [INCOMPLETE][25] ([i915#140])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-y/igt@i915_selftest@live_execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-y/igt@i915_selftest@live_execlists.html
    - fi-cml-u2:          [PASS][26] -> [INCOMPLETE][27] ([i915#283])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-cml-u2/igt@i915_selftest@live_execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-cml-u2/igt@i915_selftest@live_execlists.html
    - fi-whl-u:           [PASS][28] -> [INCOMPLETE][29] ([fdo#112066])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-whl-u/igt@i915_selftest@live_execlists.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-whl-u/igt@i915_selftest@live_execlists.html
    - fi-kbl-7500u:       [PASS][30] -> [INCOMPLETE][31] ([fdo#112259])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-kbl-7500u/igt@i915_selftest@live_execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-kbl-7500u/igt@i915_selftest@live_execlists.html
    - fi-kbl-soraka:      [PASS][32] -> [INCOMPLETE][33] ([fdo#112259])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
    - fi-icl-guc:         [PASS][34] -> [INCOMPLETE][35] ([i915#140])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-guc/igt@i915_selftest@live_execlists.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-guc/igt@i915_selftest@live_execlists.html
    - fi-kbl-8809g:       [PASS][36] -> [INCOMPLETE][37] ([fdo#112259] / [i915#435])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-kbl-8809g/igt@i915_selftest@live_execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-kbl-8809g/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [PASS][38] -> [INCOMPLETE][39] ([fdo#112259])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-kbl-r/igt@i915_selftest@live_execlists.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][40] -> [DMESG-WARN][41] ([i915#263])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][42] ([i915#289]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-u2/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][44] ([i915#770]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-hsw-peppy:       [DMESG-FAIL][46] ([i915#553] / [i915#725]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-hsw-peppy/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][48] ([fdo#111407]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][50] ([i915#44]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-dsi:         [DMESG-WARN][52] ([i915#109]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][54] ([i915#424]) -> [INCOMPLETE][55] ([CI#80] / [i915#424])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][56] ([IGT#4] / [i915#263]) -> [FAIL][57] ([i915#323])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7790/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#112066]: https://bugs.freedesktop.org/show_bug.cgi?id=112066
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770


Participating hosts (39 -> 41)
------------------------------

  Additional (6): fi-skl-guc fi-glk-dsi fi-cfl-guc fi-kbl-guc fi-icl-u3 fi-skl-6600u 
  Missing    (4): fi-bsw-cyan fi-blb-e6850 fi-byt-squawks fi-bdw-5557u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7790 -> Patchwork_16208

  CI-20190529: 20190529
  CI_DRM_7790: 854ee1f2aa71a3aad01bd4e45f9e9c4cf9ad47f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16208: 73454cb6f01afb6009ee84c2fe44f78ba74ac21e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

73454cb6f01a drm/i915: Mark the removal of the i915_request from the sched.link
99cbc3bf8ebd drm/i915/execlists: Reclaim the hanging virtual request
089217e8c3f4 drm/i915/execlists: Take a reference while capturing the guilty request

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16208/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
