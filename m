Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B85929275A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 14:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9132B6E937;
	Mon, 19 Oct 2020 12:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D108E6E0A6;
 Mon, 19 Oct 2020 12:31:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8060A47E2;
 Mon, 19 Oct 2020 12:31:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 19 Oct 2020 12:31:33 -0000
Message-ID: <160311069378.32024.15642296565298923827@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019111441.5611-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201019111441.5611-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Flush_the_old_heartbeat_more_gently?=
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
Content-Type: multipart/mixed; boundary="===============1951671869=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1951671869==
Content-Type: multipart/alternative;
 boundary="===============5554588274123960427=="

--===============5554588274123960427==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Flush the old heartbeat more gently
URL   : https://patchwork.freedesktop.org/series/82815/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9162 -> Patchwork_18728
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18728 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18728, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18728:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html
    - fi-gdg-551:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-gdg-551/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-gdg-551/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cml-u2:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-hsw-4770:        [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cml-s:           [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-snb-2600:        [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html
    - fi-ilk-650:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ilk-650/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-ilk-650/igt@i915_selftest@live@gt_heartbeat.html
    - fi-ivb-3770:        [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html
    - fi-tgl-u2:          [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-icl-y:           [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html
    - fi-elk-e7500:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-8700k:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html
    - fi-snb-2520m:       [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bdw-5557u:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-glk-dsi:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-ehl-1}:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
    - {fi-tgl-dsi}:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_18728 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-icl-y:           [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-guc:         [PASS][41] -> [INCOMPLETE][42] ([i915#794])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][43] -> [DMESG-FAIL][44] ([i915#541])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-x1275:       [PASS][45] -> [DMESG-FAIL][46] ([i915#541])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-soraka:      [PASS][47] -> [DMESG-FAIL][48] ([i915#541])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bwr-2160:        [PASS][49] -> [DMESG-FAIL][50] ([i915#541])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bwr-2160/igt@i915_selftest@live@gt_heartbeat.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bwr-2160/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-guc:         [PASS][51] -> [DMESG-FAIL][52] ([i915#541])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-7500u:       [PASS][53] -> [DMESG-FAIL][54] ([i915#541])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-nick:        [PASS][55] -> [DMESG-FAIL][56] ([i915#541])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
    - fi-skl-lmem:        [PASS][57] -> [DMESG-FAIL][58] ([i915#541])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-lmem/igt@i915_selftest@live@gt_heartbeat.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-skl-lmem/igt@i915_selftest@live@gt_heartbeat.html
    - fi-byt-j1900:       [PASS][59] -> [DMESG-FAIL][60] ([i915#541])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@i915_selftest@live@gt_heartbeat.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-byt-j1900/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-r:           [PASS][61] -> [DMESG-FAIL][62] ([i915#541])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-n3050:       [PASS][63] -> [DMESG-FAIL][64] ([i915#541])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
    - fi-skl-6700k2:      [PASS][65] -> [DMESG-FAIL][66] ([i915#541])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][67] -> [DMESG-FAIL][68] ([i915#1635])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-kefka:       [PASS][69] -> [DMESG-FAIL][70] ([i915#541])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][71] -> [DMESG-WARN][72] ([i915#2203])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][73] -> [DMESG-WARN][74] ([i915#1982]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][75] ([i915#1982] / [k.org#205379]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-dsi/igt@i915_module_load@reload.html
    - fi-byt-j1900:       [DMESG-WARN][77] ([i915#1982]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][79] ([i915#1982]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][81] ([i915#1982]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][83] ([i915#1982]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-icl-u2:          [DMESG-WARN][85] ([i915#289]) -> [DMESG-FAIL][86] ([i915#289])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9162 -> Patchwork_18728

  CI-20190529: 20190529
  CI_DRM_9162: 837e8c755c4a5087a1f87ccbe6893e37bd99ea85 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18728: 6c82098135f27b8ba4ddb08908aaf43a86c5cc13 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6c82098135f2 drm/i915/selftests: Flush the old heartbeat more gently

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/index.html

--===============5554588274123960427==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Flush the old heartbeat more gently</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82815/">https://patchwork.freedesktop.org/series/82815/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9162 -&gt; Patchwork_18728</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18728 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18728, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18728:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-pnv-d510/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-gdg-551/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-gdg-551/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ilk-650/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-ilk-650/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-elk-e7500/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18728 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bwr-2160/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bwr-2160/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-lmem/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-skl-lmem/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-byt-j1900/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9162/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/289">i915#289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18728/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/289">i915#289</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 38)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9162 -&gt; Patchwork_18728</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9162: 837e8c755c4a5087a1f87ccbe6893e37bd99ea85 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5821: 2bf22b1cff7905f7e214c0707941929a09450257 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18728: 6c82098135f27b8ba4ddb08908aaf43a86c5cc13 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6c82098135f2 drm/i915/selftests: Flush the old heartbeat more gently</p>

</body>
</html>

--===============5554588274123960427==--

--===============1951671869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1951671869==--
