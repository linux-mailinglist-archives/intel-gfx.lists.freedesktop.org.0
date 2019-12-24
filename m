Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC5412A019
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 11:26:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1967989DC5;
	Tue, 24 Dec 2019 10:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EEF789DC5;
 Tue, 24 Dec 2019 10:26:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0676AA0094;
 Tue, 24 Dec 2019 10:26:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Tue, 24 Dec 2019 10:26:20 -0000
Message-ID: <157718318099.26089.10731500505350218780@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191224084251.28414-1-kai.heng.feng@canonical.com>
In-Reply-To: <20191224084251.28414-1-kai.heng.feng@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Re-init_lspcon_after_HPD_if_lspcon_probe_failed_=28rev?=
 =?utf-8?q?3=29?=
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

Series: drm/i915: Re-init lspcon after HPD if lspcon probe failed (rev3)
URL   : https://patchwork.freedesktop.org/series/71314/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7631 -> Patchwork_15914
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15914 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15914, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15914:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_objects:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-bwr-2160/igt@i915_selftest@live_objects.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-bwr-2160/igt@i915_selftest@live_objects.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-WARN][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-7500u:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_15914 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][9] -> [TIMEOUT][10] ([i915#816])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][11] -> [DMESG-WARN][12] ([fdo#111764])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_tiled_blits@basic:
    - fi-byt-j1900:       [PASS][13] -> [FAIL][14] ([i915#832])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-byt-j1900/igt@gem_tiled_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-byt-j1900/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][15] -> [FAIL][16] ([i915#178])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][17] -> [DMESG-FAIL][18] ([i915#725])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][19] -> [INCOMPLETE][20] ([i915#424])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hugepages:
    - fi-byt-j1900:       [PASS][21] -> [DMESG-FAIL][22] ([i915#845])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-byt-j1900/igt@i915_selftest@live_hugepages.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-byt-j1900/igt@i915_selftest@live_hugepages.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][23] -> [DMESG-FAIL][24] ([fdo#109635] / [i915#262])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][25] -> [DMESG-FAIL][26] ([fdo#109635])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][27] ([fdo#103375]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [INCOMPLETE][29] ([i915#505] / [i915#671]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-lmem:        [INCOMPLETE][31] ([i915#671]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][33] ([i915#879]) -> [DMESG-WARN][34] ([i915#62] / [i915#92] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][35] ([i915#553] / [i915#725]) -> [DMESG-FAIL][36] ([i915#725])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][37] ([i915#217]) -> [DMESG-WARN][38] ([IGT#4] / [i915#263])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][39] ([i915#62] / [i915#92]) -> [DMESG-WARN][40] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][41] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][42] ([i915#62] / [i915#92]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7631/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/fi-kbl-x1275/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#845]: https://gitlab.freedesktop.org/drm/intel/issues/845
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (48 -> 41)
------------------------------

  Additional (4): fi-bsw-kefka fi-kbl-8809g fi-ivb-3770 fi-bsw-nick 
  Missing    (11): fi-ilk-m540 fi-bsw-n3050 fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-kbl-7560u fi-tgl-y fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7631 -> Patchwork_15914

  CI-20190529: 20190529
  CI_DRM_7631: ae1ee9002c3140488a3250b1ff3eab4ccbaf0097 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15914: 794c310f5807a1ed2f11774114c08372482f0174 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

794c310f5807 drm/i915: Re-init lspcon after HPD if lspcon probe failed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15914/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
