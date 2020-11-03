Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501712A4AC8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 17:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F38736ECC3;
	Tue,  3 Nov 2020 16:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EF476ECBF;
 Tue,  3 Nov 2020 16:08:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06C4AA0094;
 Tue,  3 Nov 2020 16:08:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Tue, 03 Nov 2020 16:08:48 -0000
Message-ID: <160441972899.25739.16888525918913032063@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103152834.12727-1-uma.shankar@intel.com>
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev9=29?=
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
Content-Type: multipart/mixed; boundary="===============1284628385=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1284628385==
Content-Type: multipart/alternative;
 boundary="===============5397509627593302629=="

--===============5397509627593302629==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev9)
URL   : https://patchwork.freedesktop.org/series/68081/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9255 -> Patchwork_18841
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18841 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18841, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18841:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2] +33 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-ivb-3770/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-ivb-3770/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4] +34 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] +34 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-u2/igt@i915_selftest@live@dmabuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-u2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][7] -> [DMESG-WARN][8] +33 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-snb-2600/igt@i915_selftest@live@gem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-snb-2600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_engines:
    - fi-skl-lmem:        [PASS][9] -> [DMESG-WARN][10] +34 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][11] -> [DMESG-WARN][12] +34 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-WARN][14] +34 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-ilk-650:         [PASS][15] -> [DMESG-WARN][16] +33 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-byt-j1900:       [PASS][17] -> [DMESG-WARN][18] +34 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][19] -> [DMESG-WARN][20] +34 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cml-s/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][21] -> [DMESG-WARN][22] +34 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@gtt:
    - fi-skl-guc:         [PASS][23] -> [DMESG-WARN][24] +34 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-guc/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-guc/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@hangcheck:
    - fi-elk-e7500:       [PASS][25] -> [DMESG-WARN][26] +33 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
    - fi-cml-u2:          [PASS][27] -> [DMESG-WARN][28] +34 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cml-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-guc:         [PASS][29] -> [DMESG-WARN][30] +34 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][31] -> [DMESG-WARN][32] +34 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-kefka/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@objects:
    - fi-snb-2520m:       [PASS][33] -> [DMESG-WARN][34] +33 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-snb-2520m/igt@i915_selftest@live@objects.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-snb-2520m/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@perf:
    - fi-kbl-r:           [PASS][35] -> [DMESG-WARN][36] +34 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-r/igt@i915_selftest@live@perf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-r/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][37] -> [DMESG-WARN][38] +34 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-hsw-4770:        [PASS][39] -> [DMESG-WARN][40] +33 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-hsw-4770/igt@i915_selftest@live@requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-hsw-4770/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-icl-y:           [PASS][41] -> [DMESG-WARN][42] +33 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-y/igt@i915_selftest@live@ring_submission.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-y/igt@i915_selftest@live@ring_submission.html
    - fi-bsw-nick:        [PASS][43] -> [DMESG-WARN][44] +34 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [PASS][45] -> [DMESG-WARN][46] +32 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - fi-glk-dsi:         [PASS][47] -> [DMESG-WARN][48] +34 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-glk-dsi/igt@i915_selftest@live@uncore.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-glk-dsi/igt@i915_selftest@live@uncore.html
    - fi-bdw-5557u:       [PASS][49] -> [DMESG-WARN][50] +33 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bdw-5557u/igt@i915_selftest@live@uncore.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bdw-5557u/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - fi-tgl-u2:          [PASS][51] -> [DMESG-WARN][52] +33 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
    - fi-bsw-n3050:       [PASS][53] -> [DMESG-WARN][54] +34 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-hsw-4770:        [WARN][55] ([i915#2283]) -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       [WARN][57] ([i915#2283]) -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-y:           [DMESG-WARN][59] ([i915#1982]) -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-y/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-y/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@active:
    - {fi-kbl-7560u}:     [PASS][61] -> [DMESG-WARN][62] +34 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7560u/igt@i915_selftest@live@active.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7560u/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@mman:
    - {fi-ehl-1}:         [PASS][63] -> [DMESG-WARN][64] +33 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-ehl-1/igt@i915_selftest@live@mman.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-ehl-1/igt@i915_selftest@live@mman.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9255 and Patchwork_18841:

### New CI tests (1) ###

  * boot:
    - Statuses : 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18841 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [PASS][65] -> [DMESG-WARN][66] ([k.org#205379])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-tgl-u2/igt@i915_module_load@reload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][67] -> [DMESG-WARN][68] ([i915#203]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@ring_submission:
    - fi-bxt-dsi:         [PASS][69] -> [DMESG-WARN][70] ([i915#1635]) +34 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bxt-dsi/igt@i915_selftest@live@ring_submission.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bxt-dsi/igt@i915_selftest@live@ring_submission.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][71] -> [FAIL][72] ([i915#1161] / [i915#262])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][73] -> [DMESG-WARN][74] ([i915#1982]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [PASS][75] -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [DMESG-WARN][77] ([i915#1982]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7560u/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][79] ([i915#1982]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][81] ([i915#1982]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9255 -> Patchwork_18841

  CI-20190529: 20190529
  CI_DRM_9255: 10bed1eeb88d1ebe8f7b00b57c37329068b06ca4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18841: 59892e378eb7f374cac997af4baa40ed976d5b8c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

59892e378eb7 drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON
aca13428895f drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
58caffcf5821 drm/i915/lspcon: Create separate infoframe_enabled helper
a2460c40ac7f drm/i915/display: Implement DRM infoframe read for LSPCON
8f4bf660df48 drm/i915/display: Implement infoframes readback for LSPCON
dd9e7eca60c8 drm/i915/display: Enable HDR for Parade based lspcon
efdec80a4db4 drm/i915/display: Enable BT2020 for HDR on LSPCON devices
dbed4b7913ed drm/i915/display: Nuke bogus lspcon check
5a973896bb8d drm/i915/display: Attach content type property for LSPCON
f5cbc62d4680 drm/i915/display: Attach HDR property for capable Gen9 devices
0fac40ec244f drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
7ce78e26d315 drm/i915/display: Add HDR Capability detection for LSPCON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/index.html

--===============5397509627593302629==
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
<tr><td><b>Series:</b></td><td>Enable HDR on MCA LSPCON based Gen9 devices (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/68081/">https://patchwork.freedesktop.org/series/68081/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9255 -&gt; Patchwork_18841</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18841 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18841, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18841:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-ivb-3770/igt@i915_selftest@live@client.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cml-s/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cml-s/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-skl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-skl-guc/igt@i915_selftest@live@gtt.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +33 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-kefka/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-kefka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-snb-2520m/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-snb-2520m/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-r/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-r/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-cfl-guc/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-hsw-4770/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-hsw-4770/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-y/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-y/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +33 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-glk-dsi/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-glk-dsi/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +33 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7560u/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7560u/igt@i915_selftest@live@active.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-ehl-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-ehl-1/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9255 and Patchwork_18841:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18841 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bxt-dsi/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bxt-dsi/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-kbl-7560u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9255/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18841/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9255 -&gt; Patchwork_18841</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9255: 10bed1eeb88d1ebe8f7b00b57c37329068b06ca4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18841: 59892e378eb7f374cac997af4baa40ed976d5b8c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>59892e378eb7 drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON<br />
aca13428895f drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks<br />
58caffcf5821 drm/i915/lspcon: Create separate infoframe_enabled helper<br />
a2460c40ac7f drm/i915/display: Implement DRM infoframe read for LSPCON<br />
8f4bf660df48 drm/i915/display: Implement infoframes readback for LSPCON<br />
dd9e7eca60c8 drm/i915/display: Enable HDR for Parade based lspcon<br />
efdec80a4db4 drm/i915/display: Enable BT2020 for HDR on LSPCON devices<br />
dbed4b7913ed drm/i915/display: Nuke bogus lspcon check<br />
5a973896bb8d drm/i915/display: Attach content type property for LSPCON<br />
f5cbc62d4680 drm/i915/display: Attach HDR property for capable Gen9 devices<br />
0fac40ec244f drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon<br />
7ce78e26d315 drm/i915/display: Add HDR Capability detection for LSPCON</p>

</body>
</html>

--===============5397509627593302629==--

--===============1284628385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1284628385==--
