Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5608129CD99
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 04:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29FF46E450;
	Wed, 28 Oct 2020 03:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 971E96E44E;
 Wed, 28 Oct 2020 03:05:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87746A363D;
 Wed, 28 Oct 2020 03:05:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 28 Oct 2020 03:05:20 -0000
Message-ID: <160385432052.21341.11837093712252093878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027142803.3940-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201027142803.3940-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Start_timeline_with_a_wrap?=
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
Content-Type: multipart/mixed; boundary="===============0715295563=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0715295563==
Content-Type: multipart/alternative;
 boundary="===============1874129692367067050=="

--===============1874129692367067050==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Start timeline with a wrap
URL   : https://patchwork.freedesktop.org/series/83099/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9206 -> Patchwork_18786
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18786 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18786, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18786:

### CI changes ###

#### Possible regressions ####

  * boot (NEW):
    - fi-snb-2520m:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-snb-2520m/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-snb-2520m/boot.html
    - fi-gdg-551:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-gdg-551/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-gdg-551/boot.html
    - fi-byt-j1900:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-byt-j1900/boot.html
    - fi-pnv-d510:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-pnv-d510/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-pnv-d510/boot.html
    - fi-ilk-650:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ilk-650/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ilk-650/boot.html
    - fi-hsw-4770:        [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-hsw-4770/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-hsw-4770/boot.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-elk-e7500/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-elk-e7500/boot.html
    - fi-ivb-3770:        [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ivb-3770/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ivb-3770/boot.html
    - fi-snb-2600:        [PASS][17] -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-snb-2600/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-snb-2600/boot.html
    - fi-blb-e6850:       [PASS][19] -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-blb-e6850/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-blb-e6850/boot.html
    - fi-bwr-2160:        [PASS][21] -> [FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bwr-2160/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bwr-2160/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-tgl-u2:          [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-skl-6700k2:      [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html
    - fi-skl-lmem:        [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_selftest@live@gt_timelines.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-lmem/igt@i915_selftest@live@gt_timelines.html
    - fi-cml-u2:          [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-u2/igt@i915_selftest@live@gt_timelines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cml-u2/igt@i915_selftest@live@gt_timelines.html
    - fi-cfl-8700k:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html
    - fi-kbl-7500u:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@i915_selftest@live@gt_timelines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7500u/igt@i915_selftest@live@gt_timelines.html
    - fi-kbl-guc:         [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html
    - fi-skl-guc:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-guc/igt@i915_selftest@live@gt_timelines.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-guc/igt@i915_selftest@live@gt_timelines.html
    - fi-bdw-5557u:       [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html
    - fi-bsw-nick:        [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html
    - fi-icl-y:           [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-y/igt@i915_selftest@live@gt_timelines.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-icl-y/igt@i915_selftest@live@gt_timelines.html
    - fi-bsw-n3050:       [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-n3050/igt@i915_selftest@live@gt_timelines.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-n3050/igt@i915_selftest@live@gt_timelines.html
    - fi-bsw-kefka:       [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html
    - fi-cfl-guc:         [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-guc/igt@i915_selftest@live@gt_timelines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-kefka:       [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][55] -> [INCOMPLETE][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-cml-u2:          [PASS][57] -> [INCOMPLETE][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-u2/igt@i915_selftest@live@requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cml-u2/igt@i915_selftest@live@requests.html
    - fi-cfl-8700k:       [PASS][59] -> [INCOMPLETE][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-8700k/igt@i915_selftest@live@requests.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-8700k/igt@i915_selftest@live@requests.html
    - fi-bsw-nick:        [PASS][61] -> [INCOMPLETE][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-nick/igt@i915_selftest@live@requests.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-nick/igt@i915_selftest@live@requests.html
    - fi-icl-y:           [PASS][63] -> [INCOMPLETE][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-y/igt@i915_selftest@live@requests.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-icl-y/igt@i915_selftest@live@requests.html
    - fi-kbl-guc:         [PASS][65] -> [INCOMPLETE][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-guc/igt@i915_selftest@live@requests.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-guc/igt@i915_selftest@live@requests.html
    - fi-skl-guc:         [PASS][67] -> [INCOMPLETE][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-guc/igt@i915_selftest@live@requests.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-guc/igt@i915_selftest@live@requests.html
    - fi-skl-6700k2:      [PASS][69] -> [INCOMPLETE][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-6700k2/igt@i915_selftest@live@requests.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-6700k2/igt@i915_selftest@live@requests.html
    - fi-skl-lmem:        [PASS][71] -> [INCOMPLETE][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_selftest@live@requests.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-lmem/igt@i915_selftest@live@requests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_timelines:
    - {fi-tgl-dsi}:       [PASS][73] -> [DMESG-FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html
    - {fi-ehl-1}:         [PASS][75] -> [DMESG-FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@requests:
    - {fi-tgl-dsi}:       [PASS][77] -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@i915_selftest@live@requests.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-dsi/igt@i915_selftest@live@requests.html
    - {fi-ehl-1}:         [PASS][79] -> [INCOMPLETE][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_selftest@live@requests.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ehl-1/igt@i915_selftest@live@requests.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9206 and Patchwork_18786:

### New CI tests (1) ###

  * boot:
    - Statuses : 11 fail(s) 30 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18786 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - fi-apl-guc:         [PASS][81] -> [INCOMPLETE][82] ([i915#1635])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-apl-guc/igt@gem_ctx_create@basic-files.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-apl-guc/igt@gem_ctx_create@basic-files.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-glk-dsi:         [PASS][83] -> [INCOMPLETE][84] ([i915#2398])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [PASS][85] -> [DMESG-WARN][86] ([i915#402])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@gem_linear_blits@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-7500u:       [PASS][87] -> [INCOMPLETE][88] ([i915#794])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-bxt-dsi:         [PASS][89] -> [DMESG-FAIL][90] ([i915#1635])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bsw-n3050:       [PASS][91] -> [INCOMPLETE][92] ([i915#1506])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-bxt-dsi:         [PASS][93] -> [INCOMPLETE][94] ([i915#1635])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bxt-dsi/igt@i915_selftest@live@requests.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bxt-dsi/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][95] -> [DMESG-WARN][96] ([i915#2203])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-y:           [PASS][97] -> [DMESG-WARN][98] ([i915#1982])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-kbl-soraka:      [PASS][99] -> [INCOMPLETE][100] ([i915#2606])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@kms_psr@primary_mmap_gtt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-soraka/igt@kms_psr@primary_mmap_gtt.html
    - fi-cml-s:           [PASS][101] -> [INCOMPLETE][102] ([i915#2606])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-tgl-y:           [PASS][103] -> [INCOMPLETE][104] ([i915#2606])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_psr@primary_page_flip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][105] ([i915#2417]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@gem_tiled_pread_basic:
    - fi-tgl-y:           [DMESG-WARN][107] ([i915#402]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@gem_tiled_pread_basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@gem_tiled_pread_basic.html

  * igt@i915_module_load@reload:
    - fi-skl-lmem:        [DMESG-WARN][109] ([i915#2605]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_module_load@reload.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-lmem/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][111] ([i915#1982]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_psr@primary_page_flip:
    - fi-kbl-r:           [INCOMPLETE][113] ([i915#2606]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-r/igt@kms_psr@primary_page_flip.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-r/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1506]: https://gitlab.freedesktop.org/drm/intel/issues/1506
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9206 -> Patchwork_18786

  CI-20190529: 20190529
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18786: c68e39ed56f94523c589d932d5668b9984085161 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c68e39ed56f9 drm/i915/gt: Start timeline with a wrap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/index.html

--===============1874129692367067050==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Start timeline with a wrap</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83099/">https://patchwork.freedesktop.org/series/83099/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9206 -&gt; Patchwork_18786</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18786 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18786, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18786:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot (NEW):</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-snb-2520m/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-snb-2520m/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-gdg-551/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-gdg-551/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-byt-j1900/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-pnv-d510/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-pnv-d510/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ilk-650/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ilk-650/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-hsw-4770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-hsw-4770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-elk-e7500/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-elk-e7500/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ivb-3770/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-snb-2600/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-snb-2600/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-blb-e6850/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-blb-e6850/boot.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bwr-2160/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bwr-2160/boot.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-u2/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-6700k2/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-lmem/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-u2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cml-u2/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-8700k/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7500u/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-guc/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bdw-5557u/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-nick/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-y/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-icl-y/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-n3050/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-n3050/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-guc/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-guc/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-u2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cml-u2/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cfl-8700k/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cfl-8700k/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-nick/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-nick/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-y/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-icl-y/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-guc/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-guc/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-6700k2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-6700k2/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-lmem/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-dsi/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-ehl-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9206 and Patchwork_18786:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 11 fail(s) 30 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18786 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-apl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-apl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-glk-dsi/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bxt-dsi/igt@i915_selftest@live@gt_timelines.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1506">i915#1506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bxt-dsi/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-bxt-dsi/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@kms_psr@primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-soraka/igt@kms_psr@primary_mmap_gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@gem_tiled_pread_basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-y/igt@gem_tiled_pread_basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-skl-lmem/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-r/igt@kms_psr@primary_page_flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18786/fi-kbl-r/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9206 -&gt; Patchwork_18786</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18786: c68e39ed56f94523c589d932d5668b9984085161 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c68e39ed56f9 drm/i915/gt: Start timeline with a wrap</p>

</body>
</html>

--===============1874129692367067050==--

--===============0715295563==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0715295563==--
