Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A4A422E5A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 18:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93DBD6E428;
	Tue,  5 Oct 2021 16:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EEE16E433;
 Tue,  5 Oct 2021 16:48:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85B35A0003;
 Tue,  5 Oct 2021 16:48:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9041150404361637048=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 05 Oct 2021 16:48:45 -0000
Message-ID: <163345252550.19283.3547800731796924414@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211005150046.1000285-1-bigeasy@linutronix.de>
In-Reply-To: <20211005150046.1000285-1-bigeasy@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_PREEMPT=5FRT_related_fixups=2E?=
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

--===============9041150404361637048==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: PREEMPT_RT related fixups.
URL   : https://patchwork.freedesktop.org/series/95463/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10683 -> Patchwork_21251
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21251 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21251, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21251:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-WARN][2] +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-8809g/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-8809g/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] +35 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-WARN][6] +34 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-ivb-3770/igt@i915_selftest@live@client.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-ivb-3770/igt@i915_selftest@live@client.html
    - fi-rkl-guc:         [PASS][7] -> [DMESG-WARN][8] +35 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-rkl-guc/igt@i915_selftest@live@client.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-rkl-guc/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@dmabuf:
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-WARN][10] +35 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html
    - fi-icl-u2:          [PASS][11] -> [DMESG-WARN][12] +35 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-icl-u2/igt@i915_selftest@live@dmabuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-icl-u2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@execlists:
    - fi-bwr-2160:        [PASS][13] -> [DMESG-WARN][14] +34 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bwr-2160/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bwr-2160/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem:
    - fi-snb-2600:        [PASS][15] -> [DMESG-WARN][16] +27 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-snb-2600/igt@i915_selftest@live@gem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2600/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-rkl-11600:       [PASS][17] -> [DMESG-WARN][18] +36 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-pnv-d510:        [PASS][19] -> [DMESG-WARN][20] +34 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
    - fi-skl-6600u:       [PASS][21] -> [DMESG-WARN][22] +36 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-x1275:       NOTRUN -> [DMESG-WARN][23] +36 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-tgl-1115g4:      [PASS][24] -> [DMESG-WARN][25] +36 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@guc:
    - fi-bsw-kefka:       NOTRUN -> [DMESG-WARN][26] +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-elk-e7500:       [PASS][27] -> [DMESG-WARN][28] +34 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html
    - fi-cml-u2:          [PASS][29] -> [DMESG-WARN][30] +36 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cml-u2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@migrate:
    - fi-bxt-dsi:         [PASS][31] -> [DMESG-WARN][32] +33 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bxt-dsi/igt@i915_selftest@live@migrate.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bxt-dsi/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@mman:
    - fi-bsw-kefka:       [PASS][33] -> [DMESG-WARN][34] +28 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_selftest@live@mman.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@objects:
    - fi-snb-2520m:       NOTRUN -> [DMESG-WARN][35] +34 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2520m/igt@i915_selftest@live@objects.html

  * igt@i915_selftest@live@perf:
    - fi-kbl-r:           [PASS][36] -> [DMESG-WARN][37] +36 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-r/igt@i915_selftest@live@perf.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-r/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][38] -> [DMESG-WARN][39] +35 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-hsw-4770:        [PASS][40] -> [DMESG-WARN][41] +35 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-hsw-4770/igt@i915_selftest@live@requests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-hsw-4770/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@ring_submission:
    - fi-bsw-nick:        [PASS][42] -> [DMESG-WARN][43] +36 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [PASS][44] -> [DMESG-WARN][45] +36 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@slpc:
    - fi-icl-y:           [PASS][46] -> [DMESG-WARN][47] +35 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-icl-y/igt@i915_selftest@live@slpc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-icl-y/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@uncore:
    - fi-kbl-7567u:       [PASS][48] -> [DMESG-WARN][49] +36 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-7567u/igt@i915_selftest@live@uncore.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-7567u/igt@i915_selftest@live@uncore.html
    - fi-glk-dsi:         [PASS][50] -> [DMESG-WARN][51] +34 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-glk-dsi/igt@i915_selftest@live@uncore.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-glk-dsi/igt@i915_selftest@live@uncore.html
    - fi-bdw-5557u:       [PASS][52] -> [DMESG-WARN][53] +35 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bdw-5557u/igt@i915_selftest@live@uncore.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bdw-5557u/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - fi-bsw-n3050:       [PASS][54] -> [DMESG-WARN][55] +34 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][56] ([i915#2940]) -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-jsl-1}:         [PASS][58] -> [DMESG-WARN][59] +35 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@migrate:
    - {fi-ehl-2}:         [PASS][60] -> [DMESG-WARN][61] +35 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-ehl-2/igt@i915_selftest@live@migrate.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-ehl-2/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@perf:
    - {fi-tgl-dsi}:       [PASS][62] -> [DMESG-WARN][63] +31 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-tgl-dsi/igt@i915_selftest@live@perf.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-tgl-dsi/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_21251 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][64] ([fdo#109271]) +17 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][65] ([fdo#109271]) +28 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][66] ([fdo#109271]) +37 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2190])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [PASS][68] -> [DMESG-WARN][69] ([i915#1982]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bxt-dsi/igt@i915_module_load@reload.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-glk-dsi:         [PASS][70] -> [DMESG-WARN][71] ([i915#1982]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-glk-dsi/igt@i915_module_load@reload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-glk-dsi/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-kefka:       [PASS][72] -> [DMESG-WARN][73] ([i915#1982]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html
    - fi-bsw-n3050:       [PASS][74] -> [DMESG-WARN][75] ([i915#1982]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (38 -> 33)
------------------------------

  Additional (2): fi-kbl-x1275 fi-snb-2520m 
  Missing    (7): fi-kbl-soraka bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10683 -> Patchwork_21251

  CI-20190529: 20190529
  CI_DRM_10683: 2db2331e0b19308750c3b921c2779c4c2da9b04b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6230: a079f2e00693facf4cf6512f0ddb69b30826c80f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21251: 7119772426847de087b95e6634cf426bdf371ee3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

711977242684 drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock().
41f3da18a28a drm/i915: Drop the irqs_disabled() check
9152fc01f425 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
58071bffaf38 drm/i915/gt: Queue and wait for the irq_work item.
1d34fd20b9ee drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE
b42b86050fde drm/i915: Disable tracing points on PREEMPT_RT
c3da899d24de drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
4bae9e7a5800 drm/i915: Use preempt_disable/enable_rt() where recommended

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/index.html

--===============9041150404361637048==
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
<tr><td><b>Series:</b></td><td>drm/i915: PREEMPT_RT related fixups.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95463/">https://patchwork.freedesktop.org/series/95463/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10683 -&gt; Patchwork_21251</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21251 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21251, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21251:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-8809g/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-8809g/igt@i915_module_load@reload.html">DMESG-WARN</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-ivb-3770/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-ivb-3770/igt@i915_selftest@live@client.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-rkl-guc/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-rkl-guc/igt@i915_selftest@live@client.html">DMESG-WARN</a> +35 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cfl-8700k/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +35 similar issues</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-icl-u2/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +35 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bwr-2160/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bwr-2160/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-snb-2600/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2600/igt@i915_selftest@live@gem.html">DMESG-WARN</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-rkl-11600/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +36 similar issues</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +36 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_selftest@live@guc.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-elk-e7500/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> +36 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bxt-dsi/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2520m/igt@i915_selftest@live@objects.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-r/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-r/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-cfl-guc/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +35 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-hsw-4770/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-hsw-4770/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +35 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-nick/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-icl-y/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-icl-y/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-7567u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +36 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-glk-dsi/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-glk-dsi/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +34 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bdw-5557u/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +35 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-n3050/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-jsl-1/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-ehl-2/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-tgl-dsi/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-tgl-dsi/igt@i915_selftest@live@perf.html">DMESG-WARN</a> +31 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21251 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-glk-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-kefka/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10683/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21251/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Additional (2): fi-kbl-x1275 fi-snb-2520m <br />
  Missing    (7): fi-kbl-soraka bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10683 -&gt; Patchwork_21251</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10683: 2db2331e0b19308750c3b921c2779c4c2da9b04b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6230: a079f2e00693facf4cf6512f0ddb69b30826c80f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21251: 7119772426847de087b95e6634cf426bdf371ee3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>711977242684 drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock().<br />
41f3da18a28a drm/i915: Drop the irqs_disabled() check<br />
9152fc01f425 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()<br />
58071bffaf38 drm/i915/gt: Queue and wait for the irq_work item.<br />
1d34fd20b9ee drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE<br />
b42b86050fde drm/i915: Disable tracing points on PREEMPT_RT<br />
c3da899d24de drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates<br />
4bae9e7a5800 drm/i915: Use preempt_disable/enable_rt() where recommended</p>

</body>
</html>

--===============9041150404361637048==--
