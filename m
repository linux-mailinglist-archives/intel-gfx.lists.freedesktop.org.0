Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B57619CB7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 17:12:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C54E10E8DC;
	Fri,  4 Nov 2022 16:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7701D10E8DA;
 Fri,  4 Nov 2022 16:12:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F0D7A77A5;
 Fri,  4 Nov 2022 16:12:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4647816399029058782=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Fri, 04 Nov 2022 16:12:26 -0000
Message-ID: <166757834642.23023.6459002624562115109@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1667486144.git.mchehab@kernel.org>
In-Reply-To: <cover.1667486144.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_KUnit_support_for_i915_driver?=
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

--===============4647816399029058782==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add KUnit support for i915 driver
URL   : https://patchwork.freedesktop.org/series/110483/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12339_full -> Patchwork_110483v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110483v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110483v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110483v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@fds@bcs0:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/igt@gem_exec_parallel@fds@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl3/igt@gem_exec_parallel@fds@bcs0.html

  * igt@kms_atomic_interruptible@legacy-dpms@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl2/igt@kms_atomic_interruptible@legacy-dpms@edp-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@single-move@pipe-b:
    - {shard-rkl}:        [PASS][6] -> ([PASS][7], [INCOMPLETE][8])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_cursor_legacy@single-move@pipe-b.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-4/igt@kms_cursor_legacy@single-move@pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@kms_cursor_legacy@single-move@pipe-b.html

  * igt@perf_pmu@rc6-runtime-pm-long:
    - {shard-rkl}:        ([PASS][9], [PASS][10]) -> ([INCOMPLETE][11], [PASS][12]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@perf_pmu@rc6-runtime-pm-long.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-3/igt@perf_pmu@rc6-runtime-pm-long.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-2/igt@perf_pmu@rc6-runtime-pm-long.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@perf_pmu@rc6-runtime-pm-long.html

  
Known issues
------------

  Here are the changes found in Patchwork_110483v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [FAIL][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) ([i915#4338]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.html
    - shard-glk:          ([PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [FAIL][86]) ([i915#4392]) -> ([PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk9/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk9/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk9/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk8/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk8/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk8/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk7/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk7/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk6/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk5/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk5/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk5/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk3/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk3/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk2/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk2/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk2/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk1/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk5/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk6/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk8/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk8/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk8/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk9/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk9/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk9/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk1/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk1/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3/boot.html
    - shard-skl:          ([PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [FAIL][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132]) ([i915#5032]) -> ([PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl9/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl9/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl7/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl7/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl7/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl6/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl6/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl4/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl4/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl4/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl3/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl2/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl1/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl1/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl1/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl10/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl10/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl10/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl9/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl7/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl7/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl3/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl2/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl1/boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl1/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl10/boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl10/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-skl:          NOTRUN -> [SKIP][148] ([fdo#109271]) +232 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#1099])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][150] -> [SKIP][151] ([i915#4525]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][152] ([i915#2846])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-glk:          [PASS][153] -> [FAIL][154] ([i915#2842])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk1/igt@gem_exec_fair@basic-flow@rcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][155] -> [SKIP][156] ([i915#2190])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#2190])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#4613])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-apl:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#4613])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#4613]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-snb:          NOTRUN -> [SKIP][161] ([fdo#109271]) +74 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_userptr_blits@probe:
    - shard-apl:          NOTRUN -> [FAIL][162] ([i915#7247])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@gem_userptr_blits@probe.html

  * igt@i915_selftest@mock@vma:
    - shard-skl:          NOTRUN -> [INCOMPLETE][163] ([i915#6950])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl1/igt@i915_selftest@mock@vma.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][164] ([fdo#109271]) +34 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#3886]) +6 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#3886]) +4 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#3886])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-glk:          NOTRUN -> [SKIP][168] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][169] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][170] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_color_chamelium@ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][171] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@kms_color_chamelium@ctm-limited-range.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][172] -> [FAIL][173] ([i915#4767])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][174] -> [INCOMPLETE][175] ([i915#7412])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][176] ([i915#2672] / [i915#3555])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][177] ([i915#2672]) +1 similar issue
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][178] ([i915#2587] / [i915#2672]) +2 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-skl:          [PASS][179] -> [DMESG-WARN][180] ([i915#1982])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][181] ([i915#4573]) +5 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][182] ([i915#4573]) +2 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
    - shard-skl:          NOTRUN -> [SKIP][183] ([fdo#109271] / [i915#5776]) +2 similar issues
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl2/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][184] -> [SKIP][185] ([i915#5235]) +2 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][186] ([fdo#109271]) +87 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][187] ([fdo#109271] / [i915#658]) +1 similar issue
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][188] ([fdo#109271] / [i915#658]) +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][189] ([fdo#109271] / [i915#658])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][190] -> [SKIP][191] ([fdo#109441]) +2 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][192] ([fdo#109271] / [i915#533])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@perf_pmu@invalid-open:
    - shard-skl:          NOTRUN -> [SKIP][193] ([fdo#109271] / [i915#5608]) +3 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl1/igt@perf_pmu@invalid-open.html

  * igt@sysfs_clients@pidname:
    - shard-glk:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#2994])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][195] ([fdo#109271] / [i915#2994]) +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        ([SKIP][196], [PASS][197]) ([i915#2582]) -> [PASS][198] +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-2/igt@fbdev@eof.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@fbdev@eof.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@fbdev@eof.html

  * igt@gem_bad_reloc@negative-reloc:
    - {shard-rkl}:        ([PASS][199], [SKIP][200]) ([i915#3281]) -> [PASS][201]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-5/igt@gem_bad_reloc@negative-reloc.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][202] ([i915#180]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        ([PASS][204], [FAIL][205]) ([i915#7052]) -> ([PASS][206], [PASS][207])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-5/igt@gem_eio@suspend.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-3/igt@gem_eio@suspend.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@gem_eio@suspend.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-2/igt@gem_eio@suspend.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][208] ([i915#4525]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][210] ([i915#2842]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [DMESG-WARN][212] ([i915#5566] / [i915#716]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - {shard-rkl}:        ([PASS][214], [SKIP][215]) ([i915#2527]) -> [PASS][216]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - {shard-rkl}:        [SKIP][217] ([i915#4098]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - {shard-dg1}:        ([PASS][219], [FAIL][220]) ([i915#3591]) -> ([PASS][221], [PASS][222])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        ([SKIP][223], [SKIP][224]) ([fdo#109308]) -> [PASS][225]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@i915_pm_rpm@drm-resources-equal.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-rkl}:        ([SKIP][226], [SKIP][227]) ([i915#1397]) -> [PASS][228]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][229] ([i915#6537]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl8/igt@i915_pm_rps@engine-order.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl8/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@mock@timelines:
    - shard-skl:          [INCOMPLETE][231] -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl7/igt@i915_selftest@mock@timelines.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl1/igt@i915_selftest@mock@timelines.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - {shard-rkl}:        [SKIP][233] ([i915#1845] / [i915#4098]) -> [PASS][234] +9 similar issues
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        ([SKIP][235], [SKIP][236]) ([i915#1845] / [i915#4098]) -> [PASS][237] +8 similar issues
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - {shard-rkl}:        ([SKIP][238], [PASS][239]) ([i915#1849] / [i915#4098]) -> [PASS][240] +6 similar issues
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - {shard-rkl}:        ([SKIP][241], [SKIP][242]) ([i915#1849] / [i915#4098]) -> [PASS][243] +1 similar issue
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - {shard-rkl}:        [SKIP][244] ([i915#1849] / [i915#4098]) -> [PASS][245] +5 similar issues
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_psr@cursor_mmap_cpu:
    - {shard-rkl}:        ([PASS][246], [SKIP][247]) ([i915#1072]) -> [PASS][248]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-2/igt@kms_psr@cursor_mmap_cpu.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@cursor_plane_onoff:
    - {shard-rkl}:        ([SKIP][249], [SKIP][250]) ([i915#1072]) -> [PASS][251]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_psr@cursor_plane_onoff.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_psr@cursor_plane_onoff.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][252] ([fdo#109441]) -> [PASS][253] +2 similar issues
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - {shard-rkl}:        [SKIP][254] ([i915#5461]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          [FAIL][256] ([i915#6493]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl1/igt@kms_sysfs_edid_timing.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl10/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
    - {shard-rkl}:        ([SKIP][258], [PASS][259]) ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][260]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
    - {shard-rkl}:        ([SKIP][261], [SKIP][262]) ([i915#4070] / [i915#4098]) -> [PASS][263]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        ([PASS][264], [SKIP][265]) ([i915#1845] / [i915#4098]) -> [PASS][266] +7 similar issues
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-2/igt@kms_vblank@pipe-b-query-idle.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][267] ([i915#5213]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk1/igt@perf@stress-open-close.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/igt@perf@stress-open-close.html

  * igt@perf_pmu@busy-accuracy-50@bcs0:
    - shard-skl:          [FAIL][269] ([i915#4349]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl2/igt@perf_pmu@busy-accuracy-50@bcs0.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@perf_pmu@busy-accuracy-50@bcs0.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        ([SKIP][271], [PASS][272]) ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][273]
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@syncobj_timeline@wait-all-snapshot:
    - shard-skl:          [FAIL][274] ([i915#7326]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl2/igt@syncobj_timeline@wait-all-snapshot.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@syncobj_timeline@wait-all-snapshot.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][276] ([i915#4525]) -> [FAIL][277] ([i915#6117])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         [INCOMPLETE][278] ([i915#7248]) -> [WARN][279] ([i915#2658])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-tglb6/igt@gem_pread@exhaustion.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-tglb8/igt@gem_pread@exhaustion.html
    - shard-glk:          [WARN][280] ([i915#2658]) -> [INCOMPLETE][281] ([i915#7248]) +1 similar issue
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk9/igt@gem_pread@exhaustion.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk6/igt@gem_pread@exhaustion.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][282] ([i915#2920]) -> [SKIP][283] ([i915#658])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][284] ([i915#2920]) -> [SKIP][285] ([fdo#111068] / [i915#658]) +1 similar issue
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][286], [FAIL][287], [FAIL][288]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][289], [FAIL][290]) ([i915#3002] / [i915#4312])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl2/igt@runner@aborted.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl7/igt@runner@aborted.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl6/igt@runner@aborted.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl3/igt@runner@aborted.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][291], [FAIL][292], [FAIL][293]) ([i915#3002] / [i915#4312] / [i915#6949]) -> [FAIL][294] ([i915#6949])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl3/igt@runner@aborted.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/igt@runner@aborted.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl4/igt@runner@aborted.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6778]: https://gitlab.freedesktop.org/drm/intel/issues/6778
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7247]: https://gitlab.freedesktop.org/drm/intel/issues/7247
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7326]: https://gitlab.freedesktop.org/drm/intel/issues/7326
  [i915#7412]: https://gitlab.freedesktop.org/drm/intel/issues/7412


Build changes
-------------

  * Linux: CI_DRM_12339 -> Patchwork_110483v1

  CI-20190529: 20190529
  CI_DRM_12339: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7041: 40ea6325f69eb56653171c21b5d4977982a92d0a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110483v1: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/index.html

--===============4647816399029058782==
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
<tr><td><b>Series:</b></td><td>Add KUnit support for i915 driver</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110483/">https://patchwork.freedesktop.org/series/110483/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110483v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110483v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12339_full -&gt; Patchwork_110483v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110483v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110483v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110483v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@fds@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl5/igt@gem_exec_parallel@fds@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/sh=
ard-skl3/igt@gem_exec_parallel@fds@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl2/igt@kms_atomic_interruptible@le=
gacy-dpms@edp-1-pipe-a.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110483v1/shard-tglb8/igt@kms_frontbuffer_tracking@psr-=
1p-primscrn-shrfb-msflip-blt.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_cursor_legacy@single-move@pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-rkl-1/igt@kms_cursor_legacy@single-move@pipe-b.html">PA=
SS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110483v1/shard-rkl-4/igt@kms_cursor_legacy@single-move@pipe-b.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/=
shard-rkl-5/igt@kms_cursor_legacy@single-move@pipe-b.html">INCOMPLETE</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm-long:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-4/igt@perf_pmu@rc6-runtime-pm-long.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl=
-3/igt@perf_pmu@rc6-runtime-pm-long.html">PASS</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-2/igt@perf=
_pmu@rc6-runtime-pm-long.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@perf_pmu@rc6-run=
time-pm-long.html">PASS</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110483v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2339/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shar=
d-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12339/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12339/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12339/shard-snb6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12339/shard-snb5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb=
5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2339/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-snb4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12339/shard-snb2/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4338">i915#4338</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110483v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-s=
nb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110483v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v=
1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110483v1/shard-snb6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110483v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110483v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1=
/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110483v1/shard-snb4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110483v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110483v1/shard-snb4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110483v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110483v1/shard-snb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-snb2/boot.htm=
l">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2339/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12339/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12339/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12339/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12339/shard-glk6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12339/shard-glk5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12339/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2339/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12339/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shar=
d-glk1/boot.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4392">i915#4392</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110483v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk5/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/s=
hard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_110483v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10483v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110483v1/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110483v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110483v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0483v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110483v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110483v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_110483v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-glk2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0483v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110483v1/shard-glk3/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2339/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12339/shard-skl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shar=
d-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12339/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/bo=
ot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12339/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12339/shard-skl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/=
shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12339/shard-skl2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl1/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12339/shard-skl10/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl10/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12339/shard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl9/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1=
/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110483v1/shard-skl7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_110483v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110483v1/shard-skl6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110483v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl3/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/=
shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110483v1/shard-skl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-skl1/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110483v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110483v1/shard-skl10/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-sk=
l10/boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@gem_ccs@ctrl-surf-copy-new-=
ctx.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +232 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-snb4/igt@gem_ctx_persistence@engines=
-hostile-preempt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10483v1/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-glk1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1=
/shard-glk7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-t=
glb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@gem_huc_copy@huc-copy.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-glk3/igt@gem_lmem_swapping@massive.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-snb4/igt@gem_pxp@reject-modify-conte=
xt-protection-off-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a>) +74 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@probe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@gem_userptr_blits@probe.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/724=
7">i915#7247</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl1/igt@i915_selftest@mock@vma.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6950">i915#6950</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_chamelium@dp-crc-single=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_chamelium@vga-edid-read=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-snb4/igt@kms_chamelium@vga-hpd-fast.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-limited-range:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@kms_color_chamelium@ctm-lim=
ited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/sha=
rd-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/sh=
ard-skl10/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/7412">i915#7412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-=
cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110483v1/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb565-dra=
w-mmap-cpu.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl6/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4573">i915#4573</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scale=
rs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl2/igt@kms_plane_scaling@invalid-n=
um-scalers@pipe-a-edp-1-invalid-num-scalers.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5776">i915#5776</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110483v1/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_plane_scaling@planes-up=
scale-factor-0-25-downscale-factor-0-5@pipe-c-hdmi-a-1.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-glk2/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@kms_psr2_sf@plane-move-sf-d=
mg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-apl2/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v=
1/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-open:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl1/igt@perf_pmu@invalid-open.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/5608">i915#5608</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-glk3/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110483v1/shard-skl4/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-2/igt@fbdev@eof.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-6/igt@fbdev@eof.ht=
ml">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
582">i915#2582</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110483v1/shard-rkl-6/igt@fbdev@eof.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-5/igt@gem_bad_reloc@negative-reloc.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl=
-6/igt@gem_bad_reloc@negative-reloc.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt=
@gem_bad_reloc@negative-reloc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_110483v1/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-5/igt@gem_eio@suspend.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-3/igt@gem_ei=
o@suspend.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7052">i915#7052</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110483v1/shard-rkl-5/igt@gem_eio@suspend.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11048=
3v1/shard-rkl-2/igt@gem_eio@suspend.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110483v1/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110483v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-glk2/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110483v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-r=
kl-6/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-5=
/igt@gen9_exec_parse@unaligned-jump.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-rkl-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110483v1/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-untiled=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>{shard-dg1}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/=
shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a>) (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11048=
3v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard=
-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-4/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-=
rkl-1/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a>) (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-r=
kl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-=
rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl=
-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-apl8/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v=
1/shard-apl8/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@timelines:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl7/igt@i915_selftest@mock@timelines.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
483v1/shard-skl1/igt@i915_selftest@mock@timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_big_fb@x-tiled-ma=
x-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen=
12_rc_ccs_cc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12339/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled=
_gen12_rc_ccs_cc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_ccs@pipe=
-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +8 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2339/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">PASS<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915=
#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110483v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-line=
ar.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-ind=
fb-plflip-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_12339/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscr=
n-indfb-plflip-blt.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-p=
write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_frontbuffer_tracking=
@psr-rgb101010-draw-pwrite.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-2/ig=
t@kms_psr@cursor_mmap_cpu.html">SKIP</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_psr@c=
ursor_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-4/igt@kms_psr@cursor_plane_onoff.html">SKIP</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-1=
/igt@kms_psr@cursor_plane_onoff.html">SKIP</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms=
_psr@cursor_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11048=
3v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl1/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6493">i915#6493</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/=
shard-skl10/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-=
pipe-a.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pi=
pe-a.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_universal_plan=
e@disable-primary-vs-flip-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip=
-windowed-pipe-a.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12339/shard-rkl-4/igt@kms_universal_plane@universal-plane-=
pageflip-windowed-pipe-a.html">SKIP</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl-6/igt@kms_=
universal_plane@universal-plane-pageflip-windowed-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl=
-2/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-rkl=
-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-glk1/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
483v1/shard-glk7/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-50@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl2/igt@perf_pmu@busy-accuracy-50@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10483v1/shard-skl4/igt@perf_pmu@busy-accuracy-50@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12339/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-rkl-5/i=
gt@prime_vgem@coherency-gtt.html">PASS</a>) (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-r=
kl-5/igt@prime_vgem@coherency-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-snapshot:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl2/igt@syncobj_timeline@wait-all-snapshot.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7326">i915#=
7326</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110483v1/shard-skl4/igt@syncobj_timeline@wait-all-snapshot.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110483v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-tglb6/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11048=
3v1/shard-tglb8/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12339/shard-glk9/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1/sha=
rd-glk6/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>) +1 similar issu=
e</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110483v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110483v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-apl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12339/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v1=
/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110483v1/shard-apl1/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12339/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/shard-skl5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12339/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110483v=
1/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6949">i915#6949</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12339 -&gt; Patchwork_110483v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12339: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7041: 40ea6325f69eb56653171c21b5d4977982a92d0a @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110483v1: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4647816399029058782==--
