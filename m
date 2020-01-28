Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D509714AE12
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 03:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD32F6EC54;
	Tue, 28 Jan 2020 02:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6971C6EC53;
 Tue, 28 Jan 2020 02:25:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F25AA0019;
 Tue, 28 Jan 2020 02:25:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 02:25:51 -0000
Message-ID: <158017835136.20537.11978414705792576789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127211713.3058877-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200127211713.3058877-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_current_i915=5Fvma=2Epin=5Fcount_status_first_on?=
 =?utf-8?q?_unbind_=28rev3=29?=
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

Series: drm/i915: Check current i915_vma.pin_count status first on unbind (rev3)
URL   : https://patchwork.freedesktop.org/series/72529/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7827 -> Patchwork_16286
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16286 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16286, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16286:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-7500u/igt@gem_exec_suspend@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-7500u/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-lmem:        [PASS][5] -> [FAIL][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8700k:       [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bxt-dsi:         [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-bxt-dsi/igt@gem_exec_suspend@basic-s3.html
    - fi-apl-guc:         [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-apl-guc/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-apl-guc/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-glk-dsi:         [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-glk-dsi/igt@gem_exec_suspend@basic-s4-devices.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-glk-dsi/igt@gem_exec_suspend@basic-s4-devices.html
    - fi-cml-u2:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-cml-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cml-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-skl-guc:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-skl-guc/igt@i915_selftest@live_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-skl-guc/igt@i915_selftest@live_gtt.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cfl-8109u/igt@i915_selftest@live_gtt.html
    - fi-kbl-7500u:       [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
    - fi-kbl-guc:         [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-guc/igt@i915_selftest@live_gtt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-guc/igt@i915_selftest@live_gtt.html
    - fi-kbl-8809g:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-8809g/igt@i915_selftest@live_gtt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-8809g/igt@i915_selftest@live_gtt.html
    - fi-cfl-8700k:       [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-cfl-8700k/igt@i915_selftest@live_gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cfl-8700k/igt@i915_selftest@live_gtt.html
    - fi-kbl-r:           [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-r/igt@i915_selftest@live_gtt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-r/igt@i915_selftest@live_gtt.html
    - fi-hsw-4770:        [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-hsw-4770/igt@i915_selftest@live_gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-hsw-4770/igt@i915_selftest@live_gtt.html
    - fi-snb-2520m:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-snb-2520m/igt@i915_selftest@live_gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-snb-2520m/igt@i915_selftest@live_gtt.html
    - fi-cfl-guc:         [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-cfl-guc/igt@i915_selftest@live_gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cfl-guc/igt@i915_selftest@live_gtt.html
    - fi-whl-u:           [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-whl-u/igt@i915_selftest@live_gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-whl-u/igt@i915_selftest@live_gtt.html
    - fi-hsw-4770r:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
    - fi-skl-6700k2:      [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-skl-6700k2/igt@i915_selftest@live_gtt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-skl-6700k2/igt@i915_selftest@live_gtt.html
    - fi-hsw-peppy:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-hsw-peppy/igt@i915_selftest@live_gtt.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-hsw-peppy/igt@i915_selftest@live_gtt.html
    - fi-kbl-x1275:       [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-x1275/igt@i915_selftest@live_gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-x1275/igt@i915_selftest@live_gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         [PASS][46] -> [FAIL][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_16286 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][48] -> [INCOMPLETE][49] ([i915#45])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][50] -> [FAIL][51] ([fdo#103375])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live_gtt:
    - fi-icl-y:           [PASS][52] -> [INCOMPLETE][53] ([i915#140])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-y/igt@i915_selftest@live_gtt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-icl-y/igt@i915_selftest@live_gtt.html
    - fi-cml-u2:          [PASS][54] -> [INCOMPLETE][55] ([i915#283])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-cml-u2/igt@i915_selftest@live_gtt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-cml-u2/igt@i915_selftest@live_gtt.html
    - fi-icl-u2:          [PASS][56] -> [INCOMPLETE][57] ([i915#140])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-u2/igt@i915_selftest@live_gtt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-icl-u2/igt@i915_selftest@live_gtt.html
    - fi-bxt-dsi:         [PASS][58] -> [INCOMPLETE][59] ([fdo#103927])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
    - fi-apl-guc:         [PASS][60] -> [INCOMPLETE][61] ([fdo#103927])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-apl-guc/igt@i915_selftest@live_gtt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-apl-guc/igt@i915_selftest@live_gtt.html
    - fi-icl-dsi:         [PASS][62] -> [INCOMPLETE][63] ([i915#140])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-dsi/igt@i915_selftest@live_gtt.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-icl-dsi/igt@i915_selftest@live_gtt.html
    - fi-icl-guc:         [PASS][64] -> [INCOMPLETE][65] ([i915#140])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-guc/igt@i915_selftest@live_gtt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-icl-guc/igt@i915_selftest@live_gtt.html
    - fi-glk-dsi:         [PASS][66] -> [INCOMPLETE][67] ([i915#58] / [k.org#198133])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-glk-dsi/igt@i915_selftest@live_gtt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-glk-dsi/igt@i915_selftest@live_gtt.html
    - fi-icl-u3:          [PASS][68] -> [INCOMPLETE][69] ([i915#140])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-u3/igt@i915_selftest@live_gtt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-icl-u3/igt@i915_selftest@live_gtt.html
    - fi-bsw-kefka:       [PASS][70] -> [INCOMPLETE][71] ([i915#392])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-bsw-kefka/igt@i915_selftest@live_gtt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-bsw-kefka/igt@i915_selftest@live_gtt.html
    - fi-snb-2600:        [PASS][72] -> [INCOMPLETE][73] ([i915#82])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-snb-2600/igt@i915_selftest@live_gtt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-snb-2600/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][74] -> [FAIL][75] ([i915#217])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-7500u:       [PASS][76] -> [FAIL][77] ([fdo#111407])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-lmem:        [PASS][78] -> [INCOMPLETE][79] ([i915#69])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-skl-lmem/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][80] ([i915#45]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#457]: https://gitlab.freedesktop.org/drm/intel/issues/457
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (46 -> 39)
------------------------------

  Additional (3): fi-gdg-551 fi-cfl-8109u fi-bsw-n3050 
  Missing    (10): fi-ilk-m540 fi-bdw-5557u fi-kbl-7560u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7827 -> Patchwork_16286

  CI-20190529: 20190529
  CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16286: 3cd9ed7d220b4d812edf8c096adafce69cf3ea4f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3cd9ed7d220b drm/i915: Check current i915_vma.pin_count status first on unbind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16286/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
