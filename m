Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5039311DA37
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 00:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24E36E235;
	Thu, 12 Dec 2019 23:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAB7A6E233;
 Thu, 12 Dec 2019 23:53:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2F06A011A;
 Thu, 12 Dec 2019 23:53:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 23:53:20 -0000
Message-ID: <157619480072.32010.6653329975989168957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212215808.1660798-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212215808.1660798-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Mark_context-?=
 =?utf-8?q?=3Estate_vma_as_active_while_pinned?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Mark context->state vma as active while pinned
URL   : https://patchwork.freedesktop.org/series/70854/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7554 -> Patchwork_15731
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15731 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15731, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15731:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-8809g:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-guc/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-kbl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6600u:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
    - fi-blb-e6850:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770r:       NOTRUN -> [INCOMPLETE][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-hsw-4770r/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8700k:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
    - fi-ivb-3770:        [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
    - fi-whl-u:           [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-whl-u/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-whl-u/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-guc:         [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770:        [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-7500u:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-soraka:      [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
    - fi-snb-2520m:       [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-snb-2520m/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-snb-2520m/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-peppy:       [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-hsw-peppy/igt@gem_exec_suspend@basic-s0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-hsw-peppy/igt@gem_exec_suspend@basic-s0.html
    - fi-ilk-650:         [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-byt-n2820:       NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-byt-n2820/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][37] ([i915#62] / [i915#92] / [i915#95]) -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  
Known issues
------------

  Here are the changes found in Patchwork_15731 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-lmem:        [PASS][39] -> [INCOMPLETE][40] ([i915#198])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-skl-lmem/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-nick:        [PASS][41] -> [INCOMPLETE][42] ([i915#392])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-bsw-nick/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6770hq:      [PASS][43] -> [INCOMPLETE][44] ([i915#198])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-bdw-5557u:       [PASS][45] -> [INCOMPLETE][46] ([i915#146])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-kefka:       [PASS][47] -> [INCOMPLETE][48] ([i915#392])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
    - fi-apl-guc:         [PASS][49] -> [INCOMPLETE][50] ([fdo#103927])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6700k2:      [PASS][51] -> [INCOMPLETE][52] ([i915#198])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-y:           [PASS][53] -> [INCOMPLETE][54] ([i915#140])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-n3050:       [PASS][55] -> [INCOMPLETE][56] ([i915#392])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-guc:         [PASS][57] -> [INCOMPLETE][58] ([i915#198])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-skl-guc/igt@gem_exec_suspend@basic-s0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-skl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-u3:          [PASS][59] -> [INCOMPLETE][60] ([i915#140])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-s:           [PASS][61] -> [INCOMPLETE][62] ([i915#283])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-j1900:       [PASS][63] -> [INCOMPLETE][64] ([i915#45])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
    - fi-bxt-dsi:         [PASS][65] -> [INCOMPLETE][66] ([fdo#103927])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-guc:         [PASS][67] -> [INCOMPLETE][68] ([i915#140])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-u2:          [PASS][69] -> [INCOMPLETE][70] ([i915#283])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-pnv-d510:        [PASS][71] -> [INCOMPLETE][72] ([i915#299])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
    - fi-glk-dsi:         [PASS][73] -> [INCOMPLETE][74] ([i915#58] / [k.org#198133])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-u2:          [PASS][75] -> [INCOMPLETE][76] ([i915#140])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-elk-e7500:       [PASS][77] -> [INCOMPLETE][78] ([i915#66])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
    - fi-snb-2600:        [PASS][79] -> [INCOMPLETE][80] ([i915#82])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-snb-2600/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-gdg-551:         [PASS][81] -> [INCOMPLETE][82] ([i915#172])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-gdg-551/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-gdg-551/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@basic:
    - {fi-tgl-u}:         [INCOMPLETE][83] ([i915#476]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7554/fi-tgl-u/igt@gem_exec_parallel@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/fi-tgl-u/igt@gem_exec_parallel@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (52 -> 46)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (7): fi-icl-1065g7 fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7554 -> Patchwork_15731

  CI-20190529: 20190529
  CI_DRM_7554: b8870a9cb78bb11f21414804940fadc47ac848dd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15731: a774a0419006ae0ceb2f3f058606a3d3c97b73f2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a774a0419006 drm/i915/gt: Mark ring->vma as active while pinned
33d7f874e398 drm/i915/gt: Mark context->state vma as active while pinned

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15731/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
