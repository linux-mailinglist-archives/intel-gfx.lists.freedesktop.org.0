Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE894BC7B9
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 11:55:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45F410E1E6;
	Sat, 19 Feb 2022 10:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A128F10E1D5;
 Sat, 19 Feb 2022 10:55:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D414A0BCB;
 Sat, 19 Feb 2022 10:55:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2961877051167237197=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 19 Feb 2022 10:55:00 -0000
Message-ID: <164526810061.29220.4681444429159377931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220218122611.767974-1-imre.deak@intel.com>
In-Reply-To: <20220218122611.767974-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Add_TypeC_PHY_TBT-=3EDP-alt/legacy_mode_switch_wo?=
 =?utf-8?q?rkaround_=28rev2=29?=
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

--===============2961877051167237197==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adlp: Add TypeC PHY TBT->DP-alt/legacy mode switch workaround (rev2)
URL   : https://patchwork.freedesktop.org/series/100404/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11250_full -> Patchwork_22332_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22332_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_schedule@wide@vecs0:
    - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-rkl-5/igt@gem_exec_schedule@wide@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-rkl-5/igt@gem_exec_schedule@wide@vecs0.html

  * igt@i915_selftest@mock@vma:
    - {shard-rkl}:        [PASS][3] -> ([INCOMPLETE][4], [PASS][5])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-rkl-1/igt@i915_selftest@mock@vma.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-rkl-5/igt@i915_selftest@mock@vma.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-rkl-4/igt@i915_selftest@mock@vma.html

  * igt@perf_pmu@module-unload:
    - {shard-rkl}:        [PASS][6] -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-rkl-4/igt@perf_pmu@module-unload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-rkl-1/igt@perf_pmu@module-unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_22332_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) ([i915#4338]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html
    - shard-glk:          ([PASS][58], [PASS][59], [FAIL][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82]) ([i915#4392]) -> ([PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk5/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk5/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk1/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk2/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk2/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk2/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk9/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk9/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk9/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk4/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk5/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk7/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk7/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk5/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk5/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk6/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][108] ([i915#4991])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_create@create-massive.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][109] ([i915#4991])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][110] -> [DMESG-WARN][111] ([i915#180]) +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#1099]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][113] -> [FAIL][114] ([i915#232])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb6/igt@gem_eio@kms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][115] ([i915#2846])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][116] -> [SKIP][117] ([i915#2848])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][118] -> [FAIL][119] ([i915#2842]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][120] ([i915#2842])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][121] -> [FAIL][122] ([i915#2842]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][123] -> [SKIP][124] ([fdo#109271])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_gttfill@basic:
    - shard-glk:          [PASS][125] -> [DMESG-WARN][126] ([i915#118]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/igt@gem_exec_gttfill@basic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@gem_exec_gttfill@basic.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#4613])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#4613])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#4613]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][130] ([i915#2658])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][131] ([i915#2658])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-apl3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([i915#4270]) +3 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#768])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3323])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#3323])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][136] -> [DMESG-WARN][137] ([i915#1436] / [i915#716])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([i915#2856])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][139] -> [FAIL][140] ([i915#454])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#110892])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][142] -> [DMESG-WARN][143] ([i915#180]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-kbl3/igt@i915_suspend@debugfs-reader.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][144] ([i915#1769])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          NOTRUN -> [DMESG-WARN][145] ([i915#118])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#110725] / [fdo#111614])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][147] ([i915#3743]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#3777])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#3777]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglb:         [PASS][150] -> [FAIL][151] ([i915#3743])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-tglb8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#3777])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([fdo#110723]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#3886]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][155] ([fdo#109278] / [i915#3886])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#3886]) +4 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#3886])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [fdo#111827])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-apl3/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html
    - shard-kbl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_color@pipe-d-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][161] ([fdo#109278] / [i915#1149])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_color@pipe-d-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][162] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-glk:          NOTRUN -> [SKIP][163] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:
    - shard-apl:          NOTRUN -> [SKIP][165] ([fdo#109271]) +8 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][166] ([fdo#109278] / [fdo#109279]) +3 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][167] ([i915#180]) +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][168] -> [FAIL][169] ([i915#72])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][170] ([fdo#109274] / [fdo#109278])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         NOTRUN -> [SKIP][171] ([fdo#109278]) +27 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][172] ([fdo#109274]) +3 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [PASS][173] -> [FAIL][174] ([i915#79]) +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][175] ([fdo#109271]) +93 similar issues
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][176] ([fdo#109271]) +96 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][177] ([fdo#109271]) +48 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][178] ([fdo#109280]) +21 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][179] ([fdo#108145] / [i915#265]) +2 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][180] ([fdo#109271] / [i915#658])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][181] ([fdo#109271] / [i915#658])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][182] -> [SKIP][183] ([fdo#109441]) +2 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         NOTRUN -> [SKIP][184] ([fdo#109441]) +2 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][185] ([IGT#2])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][186] -> [DMESG-WARN][187] ([i915#180] / [i915#295])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:
    - shard-glk:          NOTRUN -> [SKIP][188] ([fdo#109271]) +34 similar issues
   [18

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/index.html

--===============2961877051167237197==
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
<tr><td><b>Series:</b></td><td>drm/i915/adlp: Add TypeC PHY TBT-&gt;DP-alt/=
legacy mode switch workaround (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100404/">https://patchwork.freedesktop.org/series/100404/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22332/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11250_full -&gt; Patchwork_22332_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22332_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_schedule@wide@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-rkl-5/igt@gem_exec_schedule@wide@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/sh=
ard-rkl-5/igt@gem_exec_schedule@wide@vecs0.html">INCOMPLETE</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-rkl-1/igt@i915_selftest@mock@vma.html">PASS</a> -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-r=
kl-5/igt@i915_selftest@mock@vma.html">INCOMPLETE</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-rkl-4/igt@i915_selftes=
t@mock@vma.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-rkl-4/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-rk=
l-1/igt@perf_pmu@module-unload.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22332_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1250/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shar=
d-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11250/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11250/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11250/shard-snb5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb=
5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11250/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1250/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11250/shard-snb2/boot.html">PASS</a>) ([i915#4338]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-snb2/=
boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1250/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shar=
d-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11250/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11250/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11250/shard-glk6/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11250/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1250/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11250/shard-glk9/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22332/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk6/=
boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-kbl4/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#4991])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22332/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-tglb3/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/s=
hard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([i915#2848])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11250/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332=
/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#284=
2]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_exec_fair@basic-none-vip@r=
cs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/s=
hard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-glk2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-glk=
3/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> ([i915#118]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-glk3/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@gem_lmem_swapping@parallel-ra=
ndom-engines.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-apl3/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_render_copy@y-tiled-ccs-t=
o-yf-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/s=
hard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shard-iclb6/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@i915_pm_rpm@dpms-non-lpsp.htm=
l">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-kbl3/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/shar=
d-kbl7/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> ([i915#180]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_atomic_transition@plane-a=
ll-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate=
-0.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22332/shard-tglb8/igt@kms_big_fb@y-tiled-max-hw-strid=
e-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#37=
77])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_ccs@pipe-a-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_ccs@pipe-a-crc-sprite-pla=
nes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886=
])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-kbl7/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-apl3/igt@kms_chamelium@dp-audio-edid.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-iclb4/igt@kms_chamelium@dp-frame-dump.ht=
ml">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_chamelium@dp-frame-dump.htm=
l">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_color@pipe-d-ctm-red-to-b=
lue.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_color_chamelium@pipe-b-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-offscreen.html">SKIP</a> ([fdo#109271]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomi=
c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22332/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-ato=
mic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@kms_cursor_legacy@2x-nonblock=
ing-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_cursor_legacy@pipe-d-sing=
le-move.html">SKIP</a> ([fdo#109278]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb4/igt@kms_flip@2x-nonexisting-fb.ht=
ml">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22332/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FA=
IL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +93 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +96 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +48 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb2/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +21 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-glk3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22332/=
shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-iclb5/igt@kms_psr@psr2_cursor_render.ht=
ml">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22332/shard-skl9/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22332/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; [SKIP][188] ([fdo#109271]) +34 similar=
 issues<br />
   [18</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2961877051167237197==--
