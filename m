Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30B437AC50
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD836EA96;
	Tue, 11 May 2021 16:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25CC56EA95;
 Tue, 11 May 2021 16:48:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E269A47E2;
 Tue, 11 May 2021 16:48:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 11 May 2021 16:48:19 -0000
Message-ID: <162075169911.32034.5667731547828930668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_LMEM_=28VRAM=29_management_over_to_TTM?=
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
Content-Type: multipart/mixed; boundary="===============1322028005=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1322028005==
Content-Type: multipart/alternative;
 boundary="===============6774229851318547686=="

--===============6774229851318547686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move LMEM (VRAM) management over to TTM
URL   : https://patchwork.freedesktop.org/series/90022/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10068 -> Patchwork_20100
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20100 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20100, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20100:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
    - fi-cml-s:           [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-s/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-s/igt@core_hotunplug@unbind-rebind.html
    - fi-cml-u2:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-u2/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2520m:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-snb-2520m/igt@i915_selftest@live@gem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-snb-2520m/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hugepages:
    - fi-bdw-5557u:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bdw-5557u/igt@i915_selftest@live@hugepages.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bdw-5557u/igt@i915_selftest@live@hugepages.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-bwr-2160:        [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [PASS][23] -> [FAIL][24] +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bsw-kefka:       [PASS][25] -> [FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-snb-2520m/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-ilk-650:         [FAIL][28] ([i915#3457]) -> [FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [INCOMPLETE][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [DMESG-FAIL][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-ehl-1}:         [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@sanitycheck:
    - {fi-tgl-dsi}:       [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_20100 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-kefka:       [PASS][38] -> [FAIL][39] ([i915#3457])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [PASS][40] -> [FAIL][41] ([i915#3177] / [i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@gem_wait@busy@all.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [PASS][42] -> [FAIL][43] ([i915#3457]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@gem_wait@wait@all.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@gem_wait@wait@all.html
    - fi-pnv-d510:        [PASS][44] -> [FAIL][45] ([i915#3457]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-pnv-d510/igt@gem_wait@wait@all.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-pnv-d510/igt@gem_wait@wait@all.html
    - fi-bsw-nick:        [PASS][46] -> [FAIL][47] ([i915#3457])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@gem_wait@wait@all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@gem_wait@wait@all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-y:           [PASS][48] -> [INCOMPLETE][49] ([i915#2405])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-y/igt@i915_pm_rpm@module-reload.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-y/igt@i915_pm_rpm@module-reload.html
    - fi-glk-dsi:         [PASS][50] -> [DMESG-WARN][51] ([i915#1982])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@blt:
    - fi-kbl-7500u:       [PASS][52] -> [DMESG-FAIL][53] ([i915#2927])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-7500u/igt@i915_selftest@live@blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-7500u/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-bsw-kefka:       [PASS][54] -> [DMESG-FAIL][55] ([i915#2927])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html
    - fi-bsw-nick:        [PASS][56] -> [DMESG-FAIL][57] ([i915#2927])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-nick:        [FAIL][58] ([i915#3457]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-glk-dsi:         [FAIL][60] ([i915#3457]) -> [PASS][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-kefka:       [FAIL][62] ([i915#3457]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-bsw-n3050:       [FAIL][64] ([i915#3457]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@kms_busy@basic@modeset:
    - fi-ilk-650:         [INCOMPLETE][66] ([i915#3457]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ilk-650/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][68] ([i915#165]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-elk-e7500:       [FAIL][70] -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [FAIL][72] -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][74] -> [FAIL][75] ([i915#3457])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][76] ([i915#1982]) -> [DMESG-WARN][77] ([i915#1982] / [i915#3457])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-soraka/igt@i915_module_load@reload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [DMESG-WARN][78] ([k.org#205379]) -> [DMESG-WARN][79] ([i915#3457] / [k.org#205379])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-u2/igt@i915_module_load@reload.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-u2/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-FAIL][80] ([i915#1982]) -> [DMESG-WARN][81] ([i915#1982] / [i915#3457])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@i915_module_load@reload.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [DMESG-FAIL][82] ([i915#3457]) -> [DMESG-WARN][83] ([i915#3457])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-kbl-r:           [DMESG-WARN][84] ([i915#3457]) -> [DMESG-FAIL][85] ([i915#3457])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-r/igt@i915_selftest@live@mman.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-r/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-tgl-y:           [FAIL][86] ([i915#1436] / [i915#2966]) -> [FAIL][87] ([i915#1602])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-y/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-y/igt@runner@aborted.html
    - fi-skl-6600u:       [FAIL][88] ([i915#1436] / [i915#3363]) -> [FAIL][89] ([i915#2283] / [i915#3363])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-skl-6600u/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][90] ([i915#3363]) -> [FAIL][91] ([i915#2426] / [i915#3363])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cfl-8109u/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][92] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][93] ([i915#2283] / [i915#3363])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-u2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][94] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][95] ([i915#1814] / [i915#3363] / [k.org#202321])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-glk-dsi/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][96] ([i915#1436] / [i915#3363]) -> [FAIL][97] ([i915#2292] / [i915#3363] / [k.org#204565])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-soraka/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][98] ([i915#3363]) -> [FAIL][99] ([i915#1602] / [i915#2283] / [i915#3363])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-u2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-u2/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][100] ([i915#3363]) -> [FAIL][101] ([i915#1602] / [i915#2283] / [i915#3363])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-s/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-s/igt@runner@aborted.html
    - fi-icl-y:           [FAIL][102] ([i915#2782]) -> [FAIL][103] ([i915#1814])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-y/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-y/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10068 -> Patchwork_20100

  CI-20190529: 20190529
  CI_DRM_10068: f71e8fae425cfb4e06a68874bced2fb728638d2a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20100: bd0a5cd14b4e85ee4083a9c089b38813a6724366 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bd0a5cd14b4e drm/i915/lmem: Verify checks for lmem residency
1bdd626f1990 drm/i915/ttm, drm/ttm: Introduce a TTM i915 gem object backend
1cd13783b35c drm/i915/ttm, drm/ttm: Add a generic TTM memcpy move for page-based iomem
7dc5b6bf9897 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object
08fe6c5181ab drm/i915/ttm, drm/ttm: Initialize the ttm device and memory managers.
e148e51b2187 drm/i915: Don't free shared locks while shared
7c8e78644333 drm/i915: Untangle the vma pages_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/index.html

--===============6774229851318547686==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move LMEM (VRAM) management over to TTM</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90022/">https://patchwork.freedesktop.org/series/90022/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10068 -&gt; Patchwork_20100</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20100 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20100, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20100:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-s/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-s/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-snb-2520m/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-snb-2520m/igt@i915_selftest@live@gem.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-x1275/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bdw-5557u/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bdw-5557u/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-dsi/igt@i915_selftest@live@sanitycheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20100 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-pnv-d510/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-pnv-d510/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-y/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-y/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-7500u/igt@i915_selftest@live@blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-7500u/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-elk-e7500/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-r/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-r/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2292">i915#2292</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=204565">k.org#204565</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10068/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20100/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (48 -&gt; 42)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10068 -&gt; Patchwork_20100</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10068: f71e8fae425cfb4e06a68874bced2fb728638d2a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6082: 355269577baef0c5d8114e8851acaeac657e4fe6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20100: bd0a5cd14b4e85ee4083a9c089b38813a6724366 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bd0a5cd14b4e drm/i915/lmem: Verify checks for lmem residency<br />
1bdd626f1990 drm/i915/ttm, drm/ttm: Introduce a TTM i915 gem object backend<br />
1cd13783b35c drm/i915/ttm, drm/ttm: Add a generic TTM memcpy move for page-based iomem<br />
7dc5b6bf9897 drm/i915/ttm: Embed a ttm buffer object in the i915 gem object<br />
08fe6c5181ab drm/i915/ttm, drm/ttm: Initialize the ttm device and memory managers.<br />
e148e51b2187 drm/i915: Don't free shared locks while shared<br />
7c8e78644333 drm/i915: Untangle the vma pages_mutex</p>

</body>
</html>

--===============6774229851318547686==--

--===============1322028005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1322028005==--
