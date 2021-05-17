Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A86C7382C0D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 14:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B266E94A;
	Mon, 17 May 2021 12:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1EE86E949;
 Mon, 17 May 2021 12:26:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 996C7A363D;
 Mon, 17 May 2021 12:26:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 17 May 2021 12:26:55 -0000
Message-ID: <162125441562.27268.15695349346802375741@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210516185937.5644-1-tzimmermann@suse.de>
In-Reply-To: <20210516185937.5644-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Remove_some_includes_of_drm=5Flegacy=2Eh?=
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
Content-Type: multipart/mixed; boundary="===============1239421549=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1239421549==
Content-Type: multipart/alternative;
 boundary="===============9136968320729659110=="

--===============9136968320729659110==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Remove some includes of drm_legacy.h
URL   : https://patchwork.freedesktop.org/series/90214/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10090 -> Patchwork_20135
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html

Known issues
------------

  Here are the changes found in Patchwork_20135 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-kefka:       [PASS][1] -> [FAIL][2] ([i915#3457]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-glk-dsi:         [PASS][3] -> [FAIL][4] ([i915#3457]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_wait@busy@all:
    - fi-apl-guc:         [PASS][5] -> [FAIL][6] ([i915#3457])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-apl-guc/igt@gem_wait@busy@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-apl-guc/igt@gem_wait@busy@all.html
    - fi-elk-e7500:       [PASS][7] -> [FAIL][8] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@gem_wait@busy@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-elk-e7500/igt@gem_wait@busy@all.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-7500u:       NOTRUN -> [DMESG-FAIL][9] ([i915#3462])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][10] -> [INCOMPLETE][11] ([i915#2782])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-7500u:       NOTRUN -> [DMESG-WARN][12] ([i915#3457]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][13] ([i915#1161])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#533])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-bsw-kefka:       [PASS][15] -> [FAIL][16] ([i915#53])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
    - fi-pnv-d510:        [PASS][17] -> [FAIL][18] ([i915#53])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-ilk-650:         [PASS][19] -> [FAIL][20] ([i915#53]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-bwr-2160:        [PASS][21] -> [FAIL][22] ([i915#53])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-elk-e7500:       [PASS][23] -> [FAIL][24] ([i915#53])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][25] ([fdo#109271]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_psr@primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-n3050:       [FAIL][26] ([i915#3457]) -> [PASS][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-kefka:       [FAIL][28] ([i915#3457]) -> [PASS][29] +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
    - fi-bsw-nick:        [FAIL][30] ([i915#3457]) -> [PASS][31] +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_wait@busy@all:
    - fi-bwr-2160:        [FAIL][32] ([i915#3457]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@gem_wait@busy@all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@gem_wait@busy@all.html
    - fi-bsw-nick:        [FAIL][34] ([i915#3177] / [i915#3457]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_wait@busy@all.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-nick/igt@gem_wait@busy@all.html
    - fi-glk-dsi:         [FAIL][36] ([i915#3457]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@gem_wait@busy@all.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-glk-dsi/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-pnv-d510:        [FAIL][38] ([i915#3457]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_wait@wait@all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@gem_wait@wait@all.html

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - fi-kbl-7500u:       [{ABORT}][40] ([i915#1814]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:
    - fi-bwr-2160:        [FAIL][42] ([i915#53]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-elk-e7500:       [FAIL][44] ([i915#53]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-pnv-d510:        [FAIL][46] ([i915#53]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][48] ([i915#3472]) -> [FAIL][49] ([i915#3457] / [i915#3472])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [DMESG-FAIL][50] -> [INCOMPLETE][51] ([i915#2782] / [i915#2940])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [DMESG-FAIL][52] ([i915#3457]) -> [DMESG-WARN][53] ([i915#3457])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-pnv-d510:        [DMESG-FAIL][54] ([i915#3457]) -> [DMESG-WARN][55] ([i915#3457])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][56] ([i915#2426] / [i915#3363]) -> [FAIL][57] ([i915#3363])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-8700k/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-cfl-8700k/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][58] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][59] ([i915#1436] / [i915#3363])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-soraka/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][60] ([i915#3363]) -> [FAIL][61] ([i915#1436] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][62] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][63] ([i915#1436] / [i915#3363])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-guc/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][64] ([i915#3363]) -> [FAIL][65] ([i915#2082] / [i915#2426] / [i915#3363])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cml-u2/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][66] ([i915#2426] / [i915#3363]) -> [FAIL][67] ([i915#3363])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-guc/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][68] ([i915#1436] / [i915#3363]) -> [FAIL][69] ([i915#1436] / [i915#2426] / [i915#3363])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-skl-guc/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-skl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10090 -> Patchwork_20135

  CI-20190529: 20190529
  CI_DRM_10090: e28f8dd2a3f0981ebaad3056674553da7718da81 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20135: ee7e6d171bd5a7fc0ed2c221dfd22beccc09b746 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ee7e6d171bd5 drm: Don't include drm_legacy.h in drm_lease.c
3ae9225c0b43 drm/nouveau: Don't include drm_legacy.h
98454cf6f791 drm/i915: Don't include drm_legacy.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html

--===============9136968320729659110==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm: Remove some includes of drm_legacy.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90214/">https://patchwork.freedesktop.org/series/90214/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10090 -&gt; Patchwork_20135</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20135 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-glk-dsi/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-apl-guc/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-apl-guc/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-elk-e7500/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-kefka/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-elk-e7500/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-n3050/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@gem_wait@busy@all.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-glk-dsi/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-glk-dsi/igt@gem_wait@busy@all.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@gem_wait@wait@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html">{ABORT}</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@kms_addfb_basic@addfb25-bad-modifier.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10090/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20135/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10090 -&gt; Patchwork_20135</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10090: e28f8dd2a3f0981ebaad3056674553da7718da81 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6084: 5c5734d8ee1afac871b69c4554ff14e9b56100e4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20135: ee7e6d171bd5a7fc0ed2c221dfd22beccc09b746 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ee7e6d171bd5 drm: Don't include drm_legacy.h in drm_lease.c<br />
3ae9225c0b43 drm/nouveau: Don't include drm_legacy.h<br />
98454cf6f791 drm/i915: Don't include drm_legacy.h</p>

</body>
</html>

--===============9136968320729659110==--

--===============1239421549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1239421549==--
