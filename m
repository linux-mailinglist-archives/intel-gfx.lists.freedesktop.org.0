Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 495B431042E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 05:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D43C6E188;
	Fri,  5 Feb 2021 04:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1DD76E17B;
 Fri,  5 Feb 2021 04:51:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB17CA363B;
 Fri,  5 Feb 2021 04:51:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Feb 2021 04:51:09 -0000
Message-ID: <161250066986.1864.13909955094491606174@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205011742.2712-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210205011742.2712-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ratelimit_heartbeat_completion_probing_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1208815611=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1208815611==
Content-Type: multipart/alternative;
 boundary="===============4718069371347190942=="

--===============4718069371347190942==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Ratelimit heartbeat completion probing (rev3)
URL   : https://patchwork.freedesktop.org/series/86665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9735 -> Patchwork_19599
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19599 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19599, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19599:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
    - fi-snb-2600:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html
    - fi-snb-2520m:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-rkl-11500t}:    [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
    - {fi-ehl-1}:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-ehl-1/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-hsw-gt1}:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html
    - {fi-ehl-1}:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
    - {fi-rkl-11500t}:    [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-rkl-11500t/igt@i915_selftest@live@gt_heartbeat.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-rkl-11500t/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_19599 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][19] ([fdo#109271]) +27 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][20] -> [FAIL][21] ([i915#2203] / [i915#579])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][22] -> [INCOMPLETE][23] ([i915#1037] / [i915#794])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-cfl-8109u:       [PASS][24] -> [INCOMPLETE][25] ([i915#1037])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][26] -> [INCOMPLETE][27] ([i915#2940])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][28] -> [INCOMPLETE][29] ([i915#1037])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][30] -> [INCOMPLETE][31] ([i915#1037] / [i915#794])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][32] -> [INCOMPLETE][33] ([i915#1037] / [i915#2276])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][34] -> [INCOMPLETE][35] ([i915#1037])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][36] -> [INCOMPLETE][37] ([i915#1037])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][38] -> [INCOMPLETE][39] ([i915#2940])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [PASS][40] -> [INCOMPLETE][41] ([i915#2268])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-bsw-n3050:       [PASS][42] -> [INCOMPLETE][43] ([i915#2940])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][44] -> [INCOMPLETE][45] ([i915#1037])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-s/igt@i915_selftest@live@execlists.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][46] -> [INCOMPLETE][47] ([i915#1037])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][48] -> [INCOMPLETE][49] ([i915#1037])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][50] -> [INCOMPLETE][51] ([i915#1037])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][52] -> [INCOMPLETE][53] ([i915#1037] / [i915#2276])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-y/igt@i915_selftest@live@execlists.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][54] -> [INCOMPLETE][55] ([i915#1037])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][56] -> [INCOMPLETE][57] ([i915#1037] / [i915#794])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       [PASS][58] -> [INCOMPLETE][59] ([i915#2940])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][60] -> [INCOMPLETE][61] ([i915#1037] / [i915#794])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][62] -> [DMESG-FAIL][63] ([i915#2291] / [i915#541])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-x1275:       [PASS][64] -> [DMESG-FAIL][65] ([i915#2291] / [i915#541])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-guc:         [PASS][66] -> [DMESG-FAIL][67] ([i915#2291] / [i915#541])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-8109u:       [PASS][68] -> [DMESG-FAIL][69] ([i915#2291])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-7500u:       [PASS][70] -> [DMESG-FAIL][71] ([i915#2291] / [i915#541])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-nick:        [PASS][72] -> [DMESG-FAIL][73] ([i915#2675] / [i915#541])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html
    - fi-byt-j1900:       NOTRUN -> [DMESG-FAIL][74] ([i915#541])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-byt-j1900/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-r:           [PASS][75] -> [DMESG-FAIL][76] ([i915#2291] / [i915#541])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cml-u2:          [PASS][77] -> [DMESG-FAIL][78] ([i915#2291])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bxt-dsi:         [PASS][79] -> [INCOMPLETE][80] ([i915#2853])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cml-s:           [PASS][81] -> [DMESG-FAIL][82] ([i915#2291])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-guc:         [PASS][83] -> [DMESG-FAIL][84] ([i915#2291])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-skl-guc:         [PASS][85] -> [DMESG-FAIL][86] ([i915#2291] / [i915#541])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-n3050:       [PASS][87] -> [DMESG-FAIL][88] ([i915#2675] / [i915#541])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
    - fi-tgl-u2:          [PASS][89] -> [DMESG-FAIL][90] ([i915#2601])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-icl-y:           [PASS][91] -> [DMESG-FAIL][92] ([i915#2291])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html
    - fi-skl-6700k2:      [PASS][93] -> [DMESG-FAIL][94] ([i915#2291] / [i915#541])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-icl-u2:          [PASS][95] -> [DMESG-FAIL][96] ([i915#2291] / [i915#2601])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-kefka:       [PASS][97] -> [DMESG-FAIL][98] ([i915#2675] / [i915#541])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bdw-5557u:       [PASS][99] -> [DMESG-FAIL][100] ([i915#541])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
    - fi-glk-dsi:         [PASS][101] -> [DMESG-FAIL][102] ([i915#2291])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][104] ([i915#1436])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-kefka/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][105] ([i915#1436] / [i915#2295])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][106] ([i915#2295])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][107] ([i915#2295] / [k.org#202321])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][108] ([i915#1436])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][109] ([i915#1436] / [i915#2722])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][110] ([i915#2369])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][111] ([i915#1436] / [i915#2295])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][112] ([i915#1436] / [i915#2295])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][113] ([i915#2295])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-s/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][114] ([i915#2724])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-y/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][115] ([i915#1436] / [i915#2295])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][116] ([i915#1436] / [i915#2295])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][117] ([i915#1436])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-n3050/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][118] ([i915#2966])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-tgl-u2/igt@runner@aborted.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8700k:       [DMESG-FAIL][119] ([i915#2291] / [i915#541]) -> [DMESG-FAIL][120] ([i915#2291])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2853]: https://gitlab.freedesktop.org/drm/intel/issues/2853
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (42 -> 37)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (6): fi-kbl-soraka fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9735 -> Patchwork_19599

  CI-20190529: 20190529
  CI_DRM_9735: 186ea69ad1d026d004fbd64457fb576ab86556eb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5991: a2d9c45fca85918ecf47761205555aade64b9220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19599: bb02c00064dd9363ef6453830c13d76fb911fc4b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bb02c00064dd drm/i915/gt: Ratelimit heartbeat completion probing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/index.html

--===============4718069371347190942==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Ratelimit heartbeat completion probing (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86665/">https://patchwork.freedesktop.org/series/86665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9735 -&gt; Patchwork_19599</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19599 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19599, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19599:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-snb-2600/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-snb-2520m/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-hsw-gt1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-rkl-11500t/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-rkl-11500t/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19599 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-r/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-r/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-glk-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-glk-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6600u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-s/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-s/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-7500u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-nick/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-byt-j1900/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2853">i915#2853</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-s/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9735/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19599/fi-cfl-8700k/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (6): fi-kbl-soraka fi-jsl-1 fi-ilk-m540 fi-bsw-cyan fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9735 -&gt; Patchwork_19599</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9735: 186ea69ad1d026d004fbd64457fb576ab86556eb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5991: a2d9c45fca85918ecf47761205555aade64b9220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19599: bb02c00064dd9363ef6453830c13d76fb911fc4b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bb02c00064dd drm/i915/gt: Ratelimit heartbeat completion probing</p>

</body>
</html>

--===============4718069371347190942==--

--===============1208815611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1208815611==--
