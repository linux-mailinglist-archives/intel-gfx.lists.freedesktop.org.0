Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 622B028FBDF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 02:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC406E83D;
	Fri, 16 Oct 2020 00:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFE186E83C;
 Fri, 16 Oct 2020 00:03:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7FE7A41FB;
 Fri, 16 Oct 2020 00:03:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Date: Fri, 16 Oct 2020 00:03:09 -0000
Message-ID: <160280658991.8602.12012161123937755778@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015234902.7134-1-uma.shankar@intel.com>
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_HDR_on_MCA_LSPCON_based_Gen9_devices_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============0742264064=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0742264064==
Content-Type: multipart/alternative;
 boundary="===============5871533480275880353=="

--===============5871533480275880353==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable HDR on MCA LSPCON based Gen9 devices (rev8)
URL   : https://patchwork.freedesktop.org/series/68081/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9145 -> Patchwork_18710
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18710 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18710, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18710:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2] +33 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-ivb-3770/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-ivb-3770/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4] +34 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][5] -> [DMESG-WARN][6] +33 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-snb-2600/igt@i915_selftest@live@gem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-snb-2600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] +30 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - fi-skl-lmem:        [PASS][9] -> [DMESG-WARN][10] +34 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][11] -> [DMESG-WARN][12] +34 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-x1275:       [PASS][13] -> [DMESG-WARN][14] +34 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-ilk-650:         [PASS][15] -> [DMESG-WARN][16] +33 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-byt-j1900:       [PASS][17] -> [DMESG-WARN][18] +34 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-cml-s:           [PASS][19] -> [DMESG-WARN][20] +34 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cml-s/igt@i915_selftest@live@gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cml-s/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][21] -> [DMESG-WARN][22] +31 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-elk-e7500:       [PASS][23] -> [DMESG-WARN][24] +33 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
    - fi-cml-u2:          [PASS][25] -> [DMESG-WARN][26] +34 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cml-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-kbl-guc:         [PASS][27] -> [DMESG-WARN][28] +31 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][29] -> [DMESG-WARN][30] +34 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-kefka/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@objects:
    - fi-snb-2520m:       [PASS][31] -> [DMESG-WARN][32] +33 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-snb-2520m/igt@i915_selftest@live@objects.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-snb-2520m/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@perf:
    - fi-kbl-r:           [PASS][33] -> [DMESG-WARN][34] +34 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-r/igt@i915_selftest@live@perf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-r/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][35] -> [DMESG-WARN][36] +34 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-kbl-soraka:      [PASS][37] -> [DMESG-WARN][38] +33 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-soraka/igt@i915_selftest@live@requests.html
    - fi-hsw-4770:        [PASS][39] -> [DMESG-WARN][40] +33 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-hsw-4770/igt@i915_selftest@live@requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-hsw-4770/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-icl-y:           [PASS][41] -> [DMESG-WARN][42] +34 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-icl-y/igt@i915_selftest@live@ring_submission.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-icl-y/igt@i915_selftest@live@ring_submission.html
    - fi-bsw-nick:        [PASS][43] -> [DMESG-WARN][44] +34 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [PASS][45] -> [DMESG-WARN][46] +32 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - fi-glk-dsi:         [PASS][47] -> [DMESG-WARN][48] +34 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-glk-dsi/igt@i915_selftest@live@uncore.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-glk-dsi/igt@i915_selftest@live@uncore.html
    - fi-bdw-5557u:       [PASS][49] -> [DMESG-WARN][50] +33 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bdw-5557u/igt@i915_selftest@live@uncore.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bdw-5557u/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - fi-tgl-u2:          [PASS][51] -> [DMESG-WARN][52] +33 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-u2/igt@i915_selftest@live@workarounds.html
    - fi-bsw-n3050:       [PASS][53] -> [DMESG-WARN][54] +34 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-hsw-4770:        [WARN][55] ([i915#2283]) -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       [WARN][57] ([i915#2283]) -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@active:
    - {fi-kbl-7560u}:     [PASS][59] -> [DMESG-WARN][60] +34 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7560u/igt@i915_selftest@live@active.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7560u/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][61] ([i915#2268]) -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [PASS][63] -> [DMESG-WARN][64] +26 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@mman:
    - {fi-ehl-1}:         [PASS][65] -> [DMESG-WARN][66] +33 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-ehl-1/igt@i915_selftest@live@mman.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-ehl-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       NOTRUN -> [DMESG-WARN][67] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_18710 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][68] -> [DMESG-WARN][69] ([i915#402])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [PASS][70] -> [DMESG-WARN][71] ([k.org#205379])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@i915_module_load@reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7500u:       [PASS][72] -> [DMESG-WARN][73] ([i915#203]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][74] -> [DMESG-WARN][75] ([i915#2203])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][76] -> [DMESG-WARN][77] ([i915#1982]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-tgl-y:           [PASS][78] -> [DMESG-WARN][79] ([i915#1982]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][80] ([i915#1982]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][82] ([i915#1982]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][84] ([i915#1161] / [i915#262]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][86] ([i915#1982]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [DMESG-WARN][88] ([i915#402]) -> [PASS][89] +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [DMESG-WARN][90] ([i915#1982] / [k.org#205379]) -> [DMESG-WARN][91] ([k.org#205379])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-u2/igt@i915_module_load@reload.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-tgl-y:           [DMESG-WARN][92] ([i915#2411]) -> [DMESG-WARN][93] ([i915#1982] / [i915#2411])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9145 -> Patchwork_18710

  CI-20190529: 20190529
  CI_DRM_9145: 1b4f5161759852616a451c1366b95ff2ab8a1263 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5820: 520f88d7817ebb7464907252a32e8e747429102b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18710: e6ee6102dccdd80038ab592bcd7408f74568444d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e6ee6102dccd drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON
02d1d49d45b9 drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
beefd06e6c9f drm/i915/lspcon: Create separate infoframe_enabled helper
adc0af969c20 drm/i915/display: Implement DRM infoframe read for LSPCON
c88e51dacf4d drm/i915/display: Implement infoframes readback for LSPCON
0631b094c3ed drm/i915/display: Enable HDR for Parade based lspcon
cc0e9c0dc660 drm/i915/display: Enable BT2020 for HDR on LSPCON devices
813cb31bc7d1 drm/i915/display: Nuke bogus lspcon check
a05978eaafe6 drm/i915/display: Attach content type property for LSPCON
721405832649 drm/i915/display: Attach HDR property for capable Gen9 devices
15c1cb8280c0 drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
62480888ccb1 drm/i915/display: Add HDR Capability detection for LSPCON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/index.html

--===============5871533480275880353==
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
<tr><td><b>Series:</b></td><td>Enable HDR on MCA LSPCON based Gen9 devices (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/68081/">https://patchwork.freedesktop.org/series/68081/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9145 -&gt; Patchwork_18710</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18710 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18710, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18710:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-ivb-3770/igt@i915_selftest@live@client.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-skl-lmem/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-ilk-650/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-byt-j1900/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cml-s/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cml-s/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +33 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-guc/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-kefka/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-kefka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-snb-2520m/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-snb-2520m/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-r/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-r/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-cfl-guc/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-soraka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-soraka/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +33 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-hsw-4770/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-hsw-4770/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-icl-y/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-icl-y/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +34 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-glk-dsi/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-glk-dsi/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +33 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-u2/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +33 similar issues</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +34 similar issues</p>
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
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-hsw-4770/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
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
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7560u/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7560u/igt@i915_selftest@live@active.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-ehl-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-ehl-1/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18710 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/fi-tgl-y/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18710/fi-tgl-y/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9145 -&gt; Patchwork_18710</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9145: 1b4f5161759852616a451c1366b95ff2ab8a1263 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5820: 520f88d7817ebb7464907252a32e8e747429102b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18710: e6ee6102dccdd80038ab592bcd7408f74568444d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e6ee6102dccd drm/i915/display: [NOT FOR MERGE] Reduce blanking to support 4k60@10bpp for LSPCON<br />
02d1d49d45b9 drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks<br />
beefd06e6c9f drm/i915/lspcon: Create separate infoframe_enabled helper<br />
adc0af969c20 drm/i915/display: Implement DRM infoframe read for LSPCON<br />
c88e51dacf4d drm/i915/display: Implement infoframes readback for LSPCON<br />
0631b094c3ed drm/i915/display: Enable HDR for Parade based lspcon<br />
cc0e9c0dc660 drm/i915/display: Enable BT2020 for HDR on LSPCON devices<br />
813cb31bc7d1 drm/i915/display: Nuke bogus lspcon check<br />
a05978eaafe6 drm/i915/display: Attach content type property for LSPCON<br />
721405832649 drm/i915/display: Attach HDR property for capable Gen9 devices<br />
15c1cb8280c0 drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon<br />
62480888ccb1 drm/i915/display: Add HDR Capability detection for LSPCON</p>

</body>
</html>

--===============5871533480275880353==--

--===============0742264064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0742264064==--
