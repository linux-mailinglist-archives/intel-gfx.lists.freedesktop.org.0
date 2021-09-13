Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C44A4096A1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01976E0F0;
	Mon, 13 Sep 2021 14:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 803986E0F0;
 Mon, 13 Sep 2021 14:57:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64FE1A0099;
 Mon, 13 Sep 2021 14:57:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0053602663795408406=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 14:57:11 -0000
Message-ID: <163154503138.12460.15781803853995794887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210913131707.45639-1-christian.koenig@amd.com>
In-Reply-To: <20210913131707.45639-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/26=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0053602663795408406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked
URL   : https://patchwork.freedesktop.org/series/94605/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10574 -> Patchwork_21021
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21021 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21021, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21021:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all:
    - fi-bdw-gvtdvm:      [PASS][1] -> [DMESG-WARN][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html
    - fi-bsw-nick:        [PASS][3] -> [DMESG-WARN][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bsw-nick/igt@gem_busy@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bsw-nick/igt@gem_busy@busy@all.html
    - fi-kbl-guc:         [PASS][5] -> [DMESG-WARN][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-guc/igt@gem_busy@busy@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-guc/igt@gem_busy@busy@all.html

  * igt@gem_ctx_create@basic-files:
    - fi-kbl-r:           [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-r/igt@gem_ctx_create@basic-files.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-r/igt@gem_ctx_create@basic-files.html
    - fi-kbl-8809g:       [PASS][9] -> [DMESG-WARN][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html
    - fi-cml-u2:          [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cml-u2/igt@gem_ctx_create@basic-files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cml-u2/igt@gem_ctx_create@basic-files.html
    - fi-rkl-guc:         [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-guc/igt@gem_ctx_create@basic-files.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-rkl-guc/igt@gem_ctx_create@basic-files.html
    - fi-tgl-1115g4:      [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-1115g4/igt@gem_ctx_create@basic-files.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-1115g4/igt@gem_ctx_create@basic-files.html
    - fi-bxt-dsi:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html
    - fi-hsw-4770:        [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-hsw-4770/igt@gem_ctx_create@basic-files.html
    - fi-cfl-guc:         [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cfl-guc/igt@gem_ctx_create@basic-files.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cfl-guc/igt@gem_ctx_create@basic-files.html
    - fi-snb-2600:        [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2600/igt@gem_ctx_create@basic-files.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-snb-2600/igt@gem_ctx_create@basic-files.html
    - fi-skl-guc:         [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-skl-guc/igt@gem_ctx_create@basic-files.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-skl-guc/igt@gem_ctx_create@basic-files.html
    - fi-kbl-7567u:       [PASS][27] -> [DMESG-WARN][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-7567u/igt@gem_ctx_create@basic-files.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-7567u/igt@gem_ctx_create@basic-files.html
    - fi-rkl-11600:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-11600/igt@gem_ctx_create@basic-files.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-rkl-11600/igt@gem_ctx_create@basic-files.html
    - fi-ilk-650:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-ilk-650/igt@gem_ctx_create@basic-files.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-ilk-650/igt@gem_ctx_create@basic-files.html
    - fi-ivb-3770:        [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-ivb-3770/igt@gem_ctx_create@basic-files.html
    - fi-icl-y:           [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-icl-y/igt@gem_ctx_create@basic-files.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-icl-y/igt@gem_ctx_create@basic-files.html
    - fi-cfl-8700k:       [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html
    - fi-icl-u2:          [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-icl-u2/igt@gem_ctx_create@basic-files.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-icl-u2/igt@gem_ctx_create@basic-files.html
    - fi-skl-6700k2:      [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html
    - fi-elk-e7500:       [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-elk-e7500/igt@gem_ctx_create@basic-files.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-elk-e7500/igt@gem_ctx_create@basic-files.html
    - fi-glk-dsi:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-glk-dsi/igt@gem_ctx_create@basic-files.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-glk-dsi/igt@gem_ctx_create@basic-files.html
    - fi-apl-guc:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-apl-guc/igt@gem_ctx_create@basic-files.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-apl-guc/igt@gem_ctx_create@basic-files.html
    - fi-snb-2520m:       [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2520m/igt@gem_ctx_create@basic-files.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-snb-2520m/igt@gem_ctx_create@basic-files.html
    - fi-bsw-kefka:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bsw-kefka/igt@gem_ctx_create@basic-files.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bsw-kefka/igt@gem_ctx_create@basic-files.html
    - fi-tgl-y:           [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-y/igt@gem_ctx_create@basic-files.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-y/igt@gem_ctx_create@basic-files.html
    - fi-bwr-2160:        [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bwr-2160/igt@gem_ctx_create@basic-files.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bwr-2160/igt@gem_ctx_create@basic-files.html
    - fi-skl-6600u:       [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-skl-6600u/igt@gem_ctx_create@basic-files.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-skl-6600u/igt@gem_ctx_create@basic-files.html
    - fi-bdw-5557u:       [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bdw-5557u/igt@gem_ctx_create@basic-files.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@gem_ctx_create@basic-files.html
    - fi-kbl-soraka:      [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html
    - fi-cfl-8109u:       [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_basic@basic@rcs0-smem:
    - fi-pnv-d510:        [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-pnv-d510/igt@gem_exec_basic@basic@rcs0-smem.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-pnv-d510/igt@gem_exec_basic@basic@rcs0-smem.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy@all:
    - {fi-hsw-gt1}:       [PASS][67] -> [DMESG-WARN][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-gt1/igt@gem_busy@busy@all.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-hsw-gt1/igt@gem_busy@busy@all.html

  * igt@gem_ctx_create@basic-files:
    - {fi-jsl-1}:         [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-jsl-1/igt@gem_ctx_create@basic-files.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-jsl-1/igt@gem_ctx_create@basic-files.html
    - {fi-ehl-2}:         [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-ehl-2/igt@gem_ctx_create@basic-files.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-ehl-2/igt@gem_ctx_create@basic-files.html
    - {fi-tgl-dsi}:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html

  
Known issues
------------

  Here are the changes found in Patchwork_21021 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][75] ([fdo#109271]) +27 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][76] ([i915#3718])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][77] -> [INCOMPLETE][78] ([i915#3921])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [DMESG-WARN][80] ([i915#1982]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-y/igt@i915_module_load@reload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][82] ([i915#3303]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-rkl-guc:         [FAIL][84] ([i915#3983]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3983]: https://gitlab.freedesktop.org/drm/intel/issues/3983


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10574 -> Patchwork_21021

  CI-20190529: 20190529
  CI_DRM_10574: 3ad0415f7f7a68058d5ff02d8a7ac51d8b542cf9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6204: 1084c5eb74fd0daf8c9b8e83e85f5208c396579b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21021: ca57e3cbd5d45521e004de0c8956fc34828b8744 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ca57e3cbd5d4 dma-buf: nuke dma_resv_get_excl_unlocked
2bb60c4ef61e drm/etnaviv: replace dma_resv_get_excl_unlocked
22010ad4c08c drm/etnaviv: use new iterator in etnaviv_gem_describe
d8cbd50515cf drm/nouveau: use the new interator in nv50_wndw_prepare_fb
145e068ae31e drm/nouveau: use the new iterator in nouveau_fence_sync
36f4828e60a7 drm: use new iterator in drm_gem_plane_helper_prepare_fb
9dafcbeff892 drm: use new iterator in drm_gem_fence_array_add_implicit
b2a96f247826 drm/i915: use new cursor in intel_prepare_plane_fb
800e9dbca06f drm/i915: use new iterator in i915_gem_object_last_write_engine
201bbdd7fcc7 drm/i915: use new iterator in i915_gem_object_wait_priority
dc06dd9d1fa1 drm/i915: use new iterator in i915_gem_object_wait_reservation
ff87ab40927f drm/i915: use the new iterator in i915_request_await_object
542393a55f28 drm/i915: use the new iterator in i915_sw_fence_await_reservation
f952954785f3 drm/i915: use the new iterator in i915_gem_busy_ioctl
a88d8558e2ca drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies
b2a3b96527a5 drm/radeon: use new iterator in radeon_sync_resv
5d1ec21b3b8f drm/msm: use new iterator in msm_gem_describe
bb6008db8ce0 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
dffe8854038d drm/amdgpu: use the new iterator in amdgpu_sync_resv
73f737059793 drm/ttm: use the new iterator in ttm_bo_flush_all_fences
b3c5b34567df dma-buf: use new iterator in dma_resv_test_signaled
9ac03efbd4df dma-buf: use new iterator in dma_resv_wait_timeout
52d4d01515dd dma-buf: use new iterator in dma_resv_get_fences v2
a09933d567e8 dma-buf: use new iterator in dma_resv_copy_fences
d86af6324ecd dma-buf: add dma_resv_for_each_fence
a5a4809c51c3 dma-buf: add dma_resv_for_each_fence_unlocked

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/index.html

--===============0053602663795408406==
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
<tr><td><b>Series:</b></td><td>series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94605/">https://patchwork.freedesktop.org/series/94605/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10574 -&gt; Patchwork_21021</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21021 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21021, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21021:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-gvtdvm/igt@gem_busy@busy@all.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bsw-nick/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bsw-nick/igt@gem_busy@busy@all.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-guc/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-guc/igt@gem_busy@busy@all.html">DMESG-WARN</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-r/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-r/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-8809g/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cml-u2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cml-u2/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-rkl-guc/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-1115g4/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-1115g4/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bxt-dsi/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-4770/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-hsw-4770/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cfl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cfl-guc/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2600/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-snb-2600/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-skl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-skl-guc/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-7567u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-7567u/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a> +1 similar issue</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-11600/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-rkl-11600/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-ilk-650/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-ilk-650/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-ivb-3770/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-ivb-3770/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-icl-y/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-icl-y/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cfl-8700k/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-icl-u2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-icl-u2/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-skl-6700k2/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-elk-e7500/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-elk-e7500/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-glk-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-glk-dsi/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-apl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-apl-guc/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2520m/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-snb-2520m/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bsw-kefka/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bsw-kefka/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-y/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-y/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bwr-2160/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bwr-2160/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-skl-6600u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-skl-6600u/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-bdw-5557u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-kbl-soraka/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-cfl-8109u/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_basic@basic@rcs0-smem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-pnv-d510/igt@gem_exec_basic@basic@rcs0-smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-pnv-d510/igt@gem_exec_basic@basic@rcs0-smem.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-gt1/igt@gem_busy@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-hsw-gt1/igt@gem_busy@busy@all.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-jsl-1/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-jsl-1/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-ehl-2/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-ehl-2/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-dsi/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21021 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3983">i915#3983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21021/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10574 -&gt; Patchwork_21021</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10574: 3ad0415f7f7a68058d5ff02d8a7ac51d8b542cf9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6204: 1084c5eb74fd0daf8c9b8e83e85f5208c396579b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21021: ca57e3cbd5d45521e004de0c8956fc34828b8744 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ca57e3cbd5d4 dma-buf: nuke dma_resv_get_excl_unlocked<br />
2bb60c4ef61e drm/etnaviv: replace dma_resv_get_excl_unlocked<br />
22010ad4c08c drm/etnaviv: use new iterator in etnaviv_gem_describe<br />
d8cbd50515cf drm/nouveau: use the new interator in nv50_wndw_prepare_fb<br />
145e068ae31e drm/nouveau: use the new iterator in nouveau_fence_sync<br />
36f4828e60a7 drm: use new iterator in drm_gem_plane_helper_prepare_fb<br />
9dafcbeff892 drm: use new iterator in drm_gem_fence_array_add_implicit<br />
b2a96f247826 drm/i915: use new cursor in intel_prepare_plane_fb<br />
800e9dbca06f drm/i915: use new iterator in i915_gem_object_last_write_engine<br />
201bbdd7fcc7 drm/i915: use new iterator in i915_gem_object_wait_priority<br />
dc06dd9d1fa1 drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
ff87ab40927f drm/i915: use the new iterator in i915_request_await_object<br />
542393a55f28 drm/i915: use the new iterator in i915_sw_fence_await_reservation<br />
f952954785f3 drm/i915: use the new iterator in i915_gem_busy_ioctl<br />
a88d8558e2ca drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies<br />
b2a3b96527a5 drm/radeon: use new iterator in radeon_sync_resv<br />
5d1ec21b3b8f drm/msm: use new iterator in msm_gem_describe<br />
bb6008db8ce0 drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable<br />
dffe8854038d drm/amdgpu: use the new iterator in amdgpu_sync_resv<br />
73f737059793 drm/ttm: use the new iterator in ttm_bo_flush_all_fences<br />
b3c5b34567df dma-buf: use new iterator in dma_resv_test_signaled<br />
9ac03efbd4df dma-buf: use new iterator in dma_resv_wait_timeout<br />
52d4d01515dd dma-buf: use new iterator in dma_resv_get_fences v2<br />
a09933d567e8 dma-buf: use new iterator in dma_resv_copy_fences<br />
d86af6324ecd dma-buf: add dma_resv_for_each_fence<br />
a5a4809c51c3 dma-buf: add dma_resv_for_each_fence_unlocked</p>

</body>
</html>

--===============0053602663795408406==--
