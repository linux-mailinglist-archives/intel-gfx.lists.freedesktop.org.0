Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CE11A2917
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 21:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C0E56EABD;
	Wed,  8 Apr 2020 19:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 007866EABC;
 Wed,  8 Apr 2020 19:06:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDBE6A00C7;
 Wed,  8 Apr 2020 19:06:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 08 Apr 2020 19:06:25 -0000
Message-ID: <158637278594.19347.7545521752190480621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_avoid_spurious_EBUSY_due_to_nonblocking_atomic_modesets_=28?=
 =?utf-8?q?rev6=29?=
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

Series: drm: avoid spurious EBUSY due to nonblocking atomic modesets (rev6)
URL   : https://patchwork.freedesktop.org/series/45968/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8278 -> Patchwork_17257
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17257 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17257, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17257:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-apl-guc:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-apl-guc/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-apl-guc/igt@kms_busy@basic@modeset.html
    - fi-icl-dsi:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-icl-dsi/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-icl-dsi/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - fi-skl-6770hq:      [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-6770hq/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-6770hq/igt@kms_busy@basic@modeset.html
    - fi-skl-6600u:       [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-6600u/igt@kms_busy@basic@modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-6600u/igt@kms_busy@basic@modeset.html
    - fi-kbl-soraka:      [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
    - fi-skl-lmem:        [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-lmem/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-lmem/igt@kms_busy@basic@modeset.html
    - fi-byt-n2820:       [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-byt-n2820/igt@kms_busy@basic@modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-byt-n2820/igt@kms_busy@basic@modeset.html
    - fi-skl-6700k2:      [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-bsw-kefka/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
    - fi-kbl-r:           [PASS][23] -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-kbl-r/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-kbl-r/igt@kms_busy@basic@modeset.html
    - fi-icl-u2:          [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-icl-u2/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-icl-u2/igt@kms_busy@basic@modeset.html
    - fi-cml-u2:          [PASS][27] -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-cml-u2/igt@kms_busy@basic@modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-cml-u2/igt@kms_busy@basic@modeset.html
    - fi-bxt-dsi:         [PASS][29] -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-bxt-dsi/igt@kms_busy@basic@modeset.html
    - fi-cml-s:           [PASS][31] -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-cml-s/igt@kms_busy@basic@modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-cml-s/igt@kms_busy@basic@modeset.html
    - fi-whl-u:           [PASS][33] -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-whl-u/igt@kms_busy@basic@modeset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-whl-u/igt@kms_busy@basic@modeset.html
    - fi-bsw-n3050:       [PASS][35] -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
    - fi-icl-guc:         [PASS][37] -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-icl-guc/igt@kms_busy@basic@modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-icl-guc/igt@kms_busy@basic@modeset.html
    - fi-glk-dsi:         [PASS][39] -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-glk-dsi/igt@kms_busy@basic@modeset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-glk-dsi/igt@kms_busy@basic@modeset.html
    - fi-tgl-y:           [PASS][41] -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-tgl-y/igt@kms_busy@basic@modeset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-tgl-y/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][43] -> [FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-7500u:       [PASS][45] -> [FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
    - fi-icl-y:           [PASS][47] -> [FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-icl-y/igt@kms_busy@basic@modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-icl-y/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][49] -> [FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-byt-j1900:       [PASS][51] -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-byt-j1900/igt@kms_busy@basic@modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-byt-j1900/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@modeset:
    - {fi-tgl-u}:         [PASS][53] -> [FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-tgl-u/igt@kms_busy@basic@modeset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-tgl-u/igt@kms_busy@basic@modeset.html
    - {fi-tgl-dsi}:       [PASS][55] -> [FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-tgl-dsi/igt@kms_busy@basic@modeset.html
    - {fi-ehl-1}:         [PASS][57] -> [FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-ehl-1/igt@kms_busy@basic@modeset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-ehl-1/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_17257 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][59] -> [DMESG-WARN][60] ([i915#203]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-bwr-2160:        [PASS][61] -> [INCOMPLETE][62] ([i915#489])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-byt-n2820:       [PASS][63] -> [INCOMPLETE][64] ([i915#45])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-byt-n2820/igt@i915_selftest@live@hangcheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-byt-n2820/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][65] -> [FAIL][66] ([i915#262])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][67] -> [SKIP][68] ([fdo#109271]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][69] -> [DMESG-WARN][70] ([i915#106])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][71] ([i915#62]) -> [SKIP][72] ([fdo#109271])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8278/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (53 -> 47)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8278 -> Patchwork_17257

  CI-20190529: 20190529
  CI_DRM_8278: 6c961d30815647db306abce9e8129c9253abc33e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5581: ab0620e555119ec55f12ba9ab9e6e9246d407648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17257: efd6fbbdbe13ceb936dd88a480182d2f6c47df95 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

efd6fbbdbe13 drm: avoid spurious EBUSY due to nonblocking atomic modesets

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17257/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
