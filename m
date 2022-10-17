Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67945601880
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 22:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E1210ED2E;
	Mon, 17 Oct 2022 20:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15C6810E057;
 Mon, 17 Oct 2022 20:05:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A1D2A0169;
 Mon, 17 Oct 2022 20:05:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1043563550710772972=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 17 Oct 2022 20:05:08 -0000
Message-ID: <166603710846.13569.4368069078700894707@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221017132432.112850-1-jose.souza@intel.com>
In-Reply-To: <20221017132432.112850-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Extend_Wa=5F1607297627_to_Alderlake-P?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1043563550710772972==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Extend Wa_1607297627 to Alderlake-P
URL   : https://patchwork.freedesktop.org/series/109772/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12251_full -> Patchwork_109772v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109772v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109772v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109772v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/igt@i915_suspend@debugfs-reader.html

  
#### Warnings ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [INCOMPLETE][4] ([i915#7112]) -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl2/igt@gem_eio@in-flight-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/igt@gem_eio@in-flight-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_109772v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [FAIL][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#4386])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [FAIL][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78]) ([i915#4338]) -> ([PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#6335])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][105] -> [FAIL][106] ([i915#6268])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][107] -> [FAIL][108] ([i915#2842])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][109] ([i915#2842])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#2190])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_softpin@evict-single-offset:
    - shard-tglb:         [PASS][111] -> [FAIL][112] ([i915#4171])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb1/igt@gem_softpin@evict-single-offset.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb2/igt@gem_softpin@evict-single-offset.html

  * igt@gem_softpin@evict-snoop:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109312])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_softpin@evict-snoop.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#2527] / [i915#2856])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([fdo#111644] / [i915#1397])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#4387])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#5286])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#111614])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#111615])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#6095]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([fdo#111615] / [i915#3689]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#3689]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-snb:          NOTRUN -> [SKIP][124] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#3359])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([fdo#109274] / [fdo#111825])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#2587] / [i915#2672])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][131] ([fdo#109280] / [fdo#111825]) +8 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([i915#6497]) +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([i915#5235]) +3 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][134] ([i915#132] / [i915#3467])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-snb:          NOTRUN -> [SKIP][135] ([fdo#109271]) +75 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#111615] / [i915#5289])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#5030]) +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-snb:          NOTRUN -> [FAIL][138] ([fdo#103375]) +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglb:         NOTRUN -> [SKIP][139] ([i915#2437])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@sysfs_clients@fair-7:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([i915#2994])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [FAIL][141] ([i915#5784]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb2/igt@gem_eio@reset-stress.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb1/igt@gem_eio@reset-stress.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         [FAIL][143] ([i915#3743]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-snb:          [SKIP][145] ([fdo#109271]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  
#### Warnings ####

  * igt@i915_selftest@mock@requests:
    - shard-snb:          [DMESG-FAIL][147] -> [INCOMPLETE][148] ([i915#7226])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/igt@i915_selftest@mock@requests.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/igt@i915_selftest@mock@requests.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#7112]: https://gitlab.freedesktop.org/drm/intel/issues/7112
  [i915#7226]: https://gitlab.freedesktop.org/drm/intel/issues/7226


Build changes
-------------

  * Linux: CI_DRM_12251 -> Patchwork_109772v1

  CI-20190529: 20190529
  CI_DRM_12251: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7016: 642f4bf44e2b42791b4d1684936a1bfbe2d099ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109772v1: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/index.html

--===============1043563550710772972==
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
<tr><td><b>Series:</b></td><td>drm/i915: Extend Wa_1607297627 to Alderlake-=
P</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109772/">https://patchwork.freedesktop.org/series/109772/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109772v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109772v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12251_full -&gt; Patchwork_109772v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109772v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109772v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109772v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109772v1/shard-tglb5/igt@i915_module_load@reload-with-fault-injecti=
on.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-apl3/igt@i915_suspend@debugfs-reader=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_eio@in-flight-suspend:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-apl2/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7112">i915#711=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109772v1/shard-apl6/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109772v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12251/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12251/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12251/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12251/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12251/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12251/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12251/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2251/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shar=
d-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_109772v1/shard-apl7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109772v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl2/boot.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-a=
pl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109772v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v=
1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109772v1/shard-apl3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109772v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109772v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1=
/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109772v1/shard-apl8/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109772v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109772v1/shard-apl8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109772v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-apl7/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/=
shard-apl1/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4386">i915#4386</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12251/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12251/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12251/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb6/boot.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12251/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12251/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2251/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12251/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12251/shard-snb2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4338">i915#4338</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109772v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-s=
nb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109772v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v=
1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109772v1/shard-snb6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109772v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109772v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109772v1/shard-snb4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109772v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109772v1/shard-snb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109772v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109772v1/shard-snb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-snb2/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772=
v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09772v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_exec_fair@basic-pace-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190=
">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb1/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10977=
2v1/shard-tglb2/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@gen9_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@i915_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111644">fdo#111644</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_big_fb@4-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-apl3/igt@kms_big_fb@4-tiled-8bpp-rot=
ate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_ccs@pipe-c-ccs-on-anot=
her-bo-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary=
-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-snb4/igt@kms_chamelium@hdmi-aspect-r=
atio.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_chamelium@vga-frame-du=
mp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_cursor_legacy@2x-long-=
cursor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +8 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6497">i915#6497</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_psr@psr2_primary_mmap_=
gtt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-snb4/igt@kms_rotation_crc@bad-pixel-=
format.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_scaling_modes@scaling-=
mode-none@edp-1-pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5030">i915#5030</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-snb4/igt@kms_vblank@pipe-a-ts-contin=
uation-dpms-suspend.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109772v1/shard-tglb7/igt@sysfs_clients@fair-7.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb2/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109772v1/=
shard-tglb1/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_109772v1/shard-tglb5/igt@kms_big_fb@y-til=
ed-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pw=
rite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109772v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-r=
gb101010-draw-pwrite.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@mock@requests:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12251/shard-snb4/igt@i915_selftest@mock@requests.html">DMESG-FAIL</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1097=
72v1/shard-snb7/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7226">i915#7226</a>)<=
/li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12251 -&gt; Patchwork_109772v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12251: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7016: 642f4bf44e2b42791b4d1684936a1bfbe2d099ee @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109772v1: ff61e79b01712f5d31a4c4f23c6971bbaa71cecb @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1043563550710772972==--
