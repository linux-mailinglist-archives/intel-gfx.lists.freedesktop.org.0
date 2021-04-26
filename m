Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DF836B585
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 17:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FC989FA6;
	Mon, 26 Apr 2021 15:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DDD889C99;
 Mon, 26 Apr 2021 15:13:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8231DA0118;
 Mon, 26 Apr 2021 15:13:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 26 Apr 2021 15:13:35 -0000
Message-ID: <161945001549.18667.4233457601683536402@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426093901.28937-1-matthew.auld@intel.com>
In-Reply-To: <20210426093901.28937-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/doc/rfc=3A_i915_DG1_uAPI?=
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
Content-Type: multipart/mixed; boundary="===============1014436420=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1014436420==
Content-Type: multipart/alternative;
 boundary="===============5645737693265866043=="

--===============5645737693265866043==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/9] drm/doc/rfc: i915 DG1 uAPI
URL   : https://patchwork.freedesktop.org/series/89481/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10007_full -> Patchwork_19987_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19987_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19987_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19987_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@suspend:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb7/igt@gem_eio@suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb1/igt@gem_eio@suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_19987_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [FAIL][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#3174]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#1099]) +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [PASS][54] -> [TIMEOUT][55] ([i915#2369] / [i915#3063])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl10/igt@gem_eio@unwedge-stress.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][56] ([i915#2846])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][59] -> [FAIL][60] ([i915#2842]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][67] ([i915#2389]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [PASS][68] -> [DMESG-WARN][69] ([i915#118] / [i915#95])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-glk6/igt@gem_exec_whisper@basic-forked.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-glk8/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][70] -> [SKIP][71] ([i915#2190])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][72] ([i915#2658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#3318])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +35 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][75] ([i915#3296])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl7/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][76] -> [DMESG-WARN][77] ([i915#1982])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#454])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2705])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2705])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271]) +332 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-snb2/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111304])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-snb5/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][87] ([i915#1319])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][88] ([i915#180])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +46 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][90] ([i915#2346] / [i915#533])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][91] -> [DMESG-WARN][92] ([i915#180]) +8 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#2122])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2642])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2672])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [FAIL][97] ([i915#49])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
    - shard-kbl:          [PASS][98] -> [FAIL][99] ([i915#2546] / [i915#49])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#49])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#1188])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][108] ([fdo#108145] / [i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#658]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658]) +4 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109441])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][114] ([i915#31])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-snb7/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][115] ([IGT#2])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][116] -> [DMESG-WARN][117] ([i915#180] / [i915#295])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180] / [i915#295])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2437])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2437])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271]) +238 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#1542])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/igt@perf@polling-parameterized.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2994]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#2994]) +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl1/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@sysfs_clients@sema-50.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#1731])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][130] ([i915#2369] / [i915#3063]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-tglb5/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][132] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][134] ([i915#2842]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][136] ([i915#2842]) -> [PASS][137] +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][138] ([i915#2842]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][140] ([i915#2842]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][142] ([i915#2849]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-glk:          [FAIL][144] ([i915#307]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-glk3/igt@gem_mmap_gtt@big-copy-xy.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-glk4/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][146] ([i915#307]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][148] ([i915#1436] / [i915#716]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-skl:          [DMESG-WARN][150] ([i915#1982]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:
    - shard-skl:          [FAIL][152] ([i915#52] / [i915#54]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][154] ([i915#79]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][156] ([i915#180]) -> [PASS][157] +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][158] ([i915#2122]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][160] ([i915#1188]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][162] ([i915#1722]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/igt@perf@polling-small-buf.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@perf@polling-small-buf.html

  * igt@sysfs_timeslice_duration@timeout@vcs0:
    - shard-skl:          [FAIL][164] ([i915#3259]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl4/igt@sysfs_timeslice_duration@timeout@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][166] ([i915#1804] / [i915#2684]) -> [WARN][167] ([i915#2684])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-iclb:         [SKIP][168] ([i915#658]) -> [SKIP][169] ([i915#2920]) +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][170] ([i915#2920]) -> [SKIP][171] ([i915#658]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/index.html

--===============5645737693265866043==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/9] drm/doc/rfc: i915=
 DG1 uAPI</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89481/">https://patchwork.freedesktop.org/series/89481/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19987/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19987/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10007_full -&gt; Patchwork_19987_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19987_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19987_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19987_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_eio@suspend:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb7/igt@gem_eio@suspend.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-iclb1/ig=
t@gem_eio@suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19987_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10007/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10007/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10007/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10007/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10007/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10007/shard-skl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10007/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-sk=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl2/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0007/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10007/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/shard-skl10/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10007/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_10007/shard-skl1/boot.html">PASS</a>) ([i915#3174]) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl9/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl8/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl7/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl4/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl2/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-=
skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19987/shard-skl1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard=
-skl1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl10/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l9/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl6/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9987/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1998=
7/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/sh=
ard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
987/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/=
shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-snb5/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-glk6/igt@gem_exec_whisper@basic-forked.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/sh=
ard-glk8/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> ([i915#118]=
 / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl3/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@gen7_exec_parse@basic-allowed.=
html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl7/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl8/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19987/shard-skl8/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl7/igt@kms_big_joiner@basic.html">SKI=
P</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-snb2/igt@kms_ccs@pipe-a-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271]) +332 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_ccs@pipe-c-bad-aux-stride.=
html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-snb5/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl7/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/s=
hard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
987/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i91=
5#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p=
-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10007/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-in=
dfb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19987/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> ([i915#2546] / [i915#49])=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19987/shard-skl7/igt@kms_frontbuffer_tracking@psr-=
1p-primscrn-cur-indfb-draw-render.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-sk=
l9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/s=
hard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-snb7/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10007/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19987/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DME=
SG-WARN</a> ([i915#180] / [i915#295])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10007/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19987/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DME=
SG-WARN</a> ([i915#180] / [i915#295])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +238 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl9/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19987/shard=
-skl10/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-skl9/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-apl1/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/shard-kbl3/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
987/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> ([i91=
5#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10007/shard-tglb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19987/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a>=
</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10007/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19987/shard-iclb6/igt@gem_eio@unwedge-stress.=
html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19987/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19987/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19987/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19987/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-glk3/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915=
#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19987/shard-glk4/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19987/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19987/shard-skl9/igt@gen9_exec_parse@allowed-sing=
le.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge=
.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19987/shard-skl9/igt@kms_cursor_edge_walk@pipe=
-b-256x256-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-xti=
led.html">FAIL</a> ([i915#52] / [i915#54]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19987/shard-skl10/igt@kms_draw_crc@draw=
-method-xrgb8888-mmap-cpu-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19987/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19987/shard-kbl6/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">F=
AIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19987/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i9=
15#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19987/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl8/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1=
722]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9987/shard-skl9/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-skl7/igt@sysfs_timeslice_duration@timeout@vcs0.html">FA=
IL</a> ([i915#3259]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19987/shard-skl4/igt@sysfs_timeslice_duration@timeout@vcs0.ht=
ml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19987/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SK=
IP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19987/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.htm=
l">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10007/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19987/">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5645737693265866043==--

--===============1014436420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1014436420==--
