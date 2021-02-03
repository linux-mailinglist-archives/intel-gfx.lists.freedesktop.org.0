Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF9630E183
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 18:55:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 474E66EB19;
	Wed,  3 Feb 2021 17:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 885796EB15;
 Wed,  3 Feb 2021 17:55:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82B37A00E6;
 Wed,  3 Feb 2021 17:55:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 17:55:54 -0000
Message-ID: <161237495452.943.6336175986578566602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203124740.9354-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203124740.9354-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Prevent_waiting_inside_ring_construction_for_critical_?=
 =?utf-8?q?sections_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1234403358=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1234403358==
Content-Type: multipart/alternative;
 boundary="===============5058556237316955913=="

--===============5058556237316955913==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Prevent waiting inside ring construction for critical sections (rev3)
URL   : https://patchwork.freedesktop.org/series/86644/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9725 -> Patchwork_19575
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19575 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19575, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19575:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_execbuf:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8109u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-7500u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-guc:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-nick:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-y:           [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-r:           [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html
    - fi-glk-dsi:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-glk-dsi/igt@i915_selftest@live@gem_execbuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-glk-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-x1275:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-kefka:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-s:           [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html
    - fi-tgl-y:           [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-guc:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-kbl-soraka:      [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2600:        [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
    - fi-bsw-n3050:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html
    - fi-ivb-3770:        [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html
    - fi-tgl-u2:          [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-u2/igt@i915_selftest@live@gem_execbuf.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
    - fi-elk-e7500:       [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html
    - fi-cml-u2:          [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-cfl-8700k:       [PASS][43] -> [INCOMPLETE][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html
    - fi-bxt-dsi:         [PASS][45] -> [INCOMPLETE][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html
    - fi-byt-j1900:       [PASS][47] -> [INCOMPLETE][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html
    - fi-hsw-4770:        [PASS][49] -> [INCOMPLETE][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-6700k2:      [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html
    - fi-icl-u2:          [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
    - fi-skl-guc:         [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html
    - fi-bdw-5557u:       [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_execbuf:
    - {fi-rkl-11500t}:    [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-rkl-11500t/igt@i915_selftest@live@gem_execbuf.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-rkl-11500t/igt@i915_selftest@live@gem_execbuf.html
    - {fi-ehl-1}:         [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-dsi}:       [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
    - {fi-hsw-gt1}:       [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-hsw-gt1/igt@i915_selftest@live@gem_execbuf.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-hsw-gt1/igt@i915_selftest@live@gem_execbuf.html

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][69]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19575 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][70] -> [DMESG-WARN][71] ([i915#402]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][72] -> [DMESG-WARN][73] ([i915#2411] / [i915#402])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-pnv-d510:        [PASS][74] -> [INCOMPLETE][75] ([i915#299])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-pnv-d510/igt@i915_selftest@live@gem_execbuf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-pnv-d510/igt@i915_selftest@live@gem_execbuf.html

  * igt@runner@aborted:
    - fi-ilk-650:         NOTRUN -> [FAIL][76] ([i915#2426])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ilk-650/igt@runner@aborted.html
    - fi-pnv-d510:        NOTRUN -> [FAIL][77] ([i915#2403] / [i915#2505])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-pnv-d510/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][78] ([i915#1436] / [i915#2426])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][79] ([i915#1436])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][80] ([i915#2426])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][81] ([i915#2966])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][82] ([i915#1436] / [i915#2426])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][83] ([i915#2426])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][84] ([i915#2426] / [i915#2724])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][85] ([i915#2426] / [k.org#202321])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][86] ([i915#1436])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][87] ([i915#2426])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][88] ([i915#1436] / [i915#2426])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][89] ([i915#2369] / [i915#2426])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][90] ([i915#1436] / [i915#2426])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][91] ([i915#1436] / [i915#2505])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][92] ([i915#1436] / [i915#2426])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][93] ([i915#1436] / [i915#2426])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-guc/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][94] ([i915#2426])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2600/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][95] ([i915#2082] / [i915#2426])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][96] ([i915#2426])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][97] ([i915#2426])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][98] ([i915#2426] / [i915#2505])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][99] ([i915#2426])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-elk-e7500/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][100] ([i915#2082] / [i915#2426])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][101] ([i915#2426])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][102] ([i915#2724])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-y/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][103] ([i915#1436] / [i915#2426])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][104] ([i915#1436] / [i915#2426])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6700k2/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][105] ([i915#2966])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][106] ([i915#402]) -> [PASS][107] +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@gem_ringfill@basic-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2089]: https://gitlab.freedesktop.org/drm/intel/issues/2089
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9725 -> Patchwork_19575

  CI-20190529: 20190529
  CI_DRM_9725: 4f97ebbb265a06654e2cc76a0e0115cc00bb6c91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19575: c2a787bb37c7485ce5ac20002b5fa6bfdf1efd88 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c2a787bb37c7 drm/i915: Prevent waiting inside ring construction for critical sections

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/index.html

--===============5058556237316955913==
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
<tr><td><b>Series:</b></td><td>drm/i915: Prevent waiting inside ring construction for critical sections (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86644/">https://patchwork.freedesktop.org/series/86644/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9725 -&gt; Patchwork_19575</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19575 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19575, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19575:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6600u/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8109u/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-7500u/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-guc/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-y/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-r/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-glk-dsi/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-glk-dsi/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-x1275/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-kefka/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-s/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-guc/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-soraka/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-n3050/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ivb-3770/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-u2/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-u2/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-elk-e7500/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-u2/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8700k/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bxt-dsi/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-byt-j1900/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-hsw-4770/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6700k2/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-u2/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-guc/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bdw-5557u/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-rkl-11500t/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-rkl-11500t/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ehl-1/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-hsw-gt1/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-hsw-gt1/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19575 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-pnv-d510/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-pnv-d510/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-elk-e7500/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_ringfill@basic-all:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19575/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9725 -&gt; Patchwork_19575</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9725: 4f97ebbb265a06654e2cc76a0e0115cc00bb6c91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19575: c2a787bb37c7485ce5ac20002b5fa6bfdf1efd88 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c2a787bb37c7 drm/i915: Prevent waiting inside ring construction for critical sections</p>

</body>
</html>

--===============5058556237316955913==--

--===============1234403358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1234403358==--
