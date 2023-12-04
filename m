Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9E6803058
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 11:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AFF810E385;
	Mon,  4 Dec 2023 10:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9DED10E35E;
 Mon,  4 Dec 2023 10:35:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CDE0AA917;
 Mon,  4 Dec 2023 10:35:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6162719358367334646=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 04 Dec 2023 10:35:39 -0000
Message-ID: <170168613958.20595.776420862315688754@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Get_bigjoiner_config_before_dsc_config_during_?=
 =?utf-8?q?readout_=28rev2=29?=
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

--===============6162719358367334646==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Get bigjoiner config before dsc config during readout (rev2)
URL   : https://patchwork.freedesktop.org/series/126742/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13967_full -> Patchwork_126742v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126742v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126742v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-rkl 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126742v2_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-10/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-10/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-11/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-11/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-11/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-11/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-11/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-10/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-10/boot.html
    - shard-dg1:          ([PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66]) -> ([PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [FAIL][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-16/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-17/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-17/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-16/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-14/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-14/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-14/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-14/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-13/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-16/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-12/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-12/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-12/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-16/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-16/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-14/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-14/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-15/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-15/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-15/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-15/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-18/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-18/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-18/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-18/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-17/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-17/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-17/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-16/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/boot.html

  

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_frontbuffer_tracking@pipe-fbc-rte}:
    - shard-rkl:          NOTRUN -> [SKIP][92]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-rkl:          NOTRUN -> [FAIL][93]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state}:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][94]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html

  
Known issues
------------

  Here are the changes found in Patchwork_126742v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119]) -> ([PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [FAIL][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144]) ([i915#8293])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb7/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb7/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb7/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb5/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb5/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb5/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb5/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb4/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb4/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb4/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb4/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb1/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb1/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb1/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb1/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb7/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb7/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb7/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb5/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb5/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb5/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb5/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb2/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb2/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb2/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb2/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb1/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb1/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb1/boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb1/boot.html
    - shard-tglu:         ([PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152], [PASS][153], [PASS][154], [PASS][155], [PASS][156], [PASS][157], [PASS][158], [PASS][159], [PASS][160], [PASS][161], [PASS][162], [PASS][163], [PASS][164], [PASS][165], [PASS][166], [PASS][167], [PASS][168], [PASS][169]) -> ([PASS][170], [PASS][171], [PASS][172], [PASS][173], [PASS][174], [PASS][175], [PASS][176], [PASS][177], [PASS][178], [PASS][179], [PASS][180], [PASS][181], [PASS][182], [PASS][183], [PASS][184], [PASS][185], [PASS][186], [PASS][187], [PASS][188], [PASS][189], [PASS][190], [FAIL][191], [PASS][192], [PASS][193], [PASS][194]) ([i915#8293])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-9/boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-9/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-9/boot.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-8/boot.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-8/boot.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-7/boot.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-7/boot.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-7/boot.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-6/boot.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-6/boot.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-6/boot.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-5/boot.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-5/boot.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-5/boot.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-4/boot.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-4/boot.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-4/boot.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/boot.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/boot.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/boot.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-2/boot.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-2/boot.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-2/boot.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-10/boot.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-10/boot.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-9/boot.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-9/boot.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-9/boot.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-8/boot.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-8/boot.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-8/boot.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-7/boot.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-7/boot.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-7/boot.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-6/boot.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-6/boot.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-6/boot.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-5/boot.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-5/boot.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-5/boot.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-4/boot.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-4/boot.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-4/boot.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/boot.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/boot.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/boot.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-2/boot.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/boot.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/boot.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#6230])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@api_intel_bb@crc32.html

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9318])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#7701]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@isolation@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#8414]) +12 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@drm_fdinfo@isolation@rcs0.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#8414]) +29 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][200] ([i915#7742]) +3 other tests fail
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@write:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#2582])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@fbdev@write.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#7697]) +3 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_basic@multigpu-create-close.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#4873])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_caching@writes.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#4098] / [i915#9323])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#9323]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#6335]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#8562])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          NOTRUN -> [FAIL][208] ([i915#6268])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([fdo#109314])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-rkl:          NOTRUN -> [SKIP][210] ([fdo#109314])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#280])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#280]) +3 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [PASS][213] -> [FAIL][214] ([i915#5784]) +1 other test fail
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/igt@gem_eio@unwedge-stress.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#4771])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@hog:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#4812])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#8555])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#4525]) +7 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#4812])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#6334])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#6344])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg1:          NOTRUN -> [FAIL][222] ([i915#9606])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-rkl:          NOTRUN -> [FAIL][223] ([i915#9606]) +1 other test fail
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3539] / [i915#4852]) +1 other test skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_exec_fair@basic-none-share.html
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#4473] / [i915#4771]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          NOTRUN -> [FAIL][226] ([i915#2842]) +7 other tests fail
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [PASS][227] -> [FAIL][228] ([i915#2876])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([fdo#109313])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#5107])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt.html
    - shard-rkl:          NOTRUN -> [SKIP][231] ([fdo#109283])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([fdo#112283]) +2 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_params@secure-non-root:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([fdo#112283])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3281]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#3281]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#3281]) +53 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#3281]) +4 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#4537] / [i915#4812])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#7276])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#4537] / [i915#4812]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][241] ([i915#7975] / [i915#8213])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#4860])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#2190])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#4613] / [i915#7582])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][245] ([fdo#109271] / [i915#4613])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#4613]) +19 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#4613]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#284])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_media_vme.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#4083]) +8 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#4077]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([fdo#111656])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#4077]) +4 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#4083])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@write:
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#4083]) +5 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_mmap_wc@write.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#3282]) +31 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@display:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#3282]) +2 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_pread@display.html

  * igt@gem_pread@snoop:
    - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#3282]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@gem_pread@snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#4270]) +18 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#4270]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_pxp@regular-baseline-src-copy-readible.html
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#4270]) +1 other test skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#8428])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#8411]) +6 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#4079]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([fdo#109312]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_softpin@evict-snoop.html
    - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#4885])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#4885])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#4077]) +7 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#3297])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([fdo#110542])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#3297])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#3297]) +9 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#3323])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#3297])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-rkl:          NOTRUN -> [FAIL][274] ([i915#3318])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([fdo#109289]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([fdo#109289])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#2527]) +18 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#2856]) +3 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gen9_exec_parse@shadow-peek.html
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#2856])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#4881])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@i915_fb_tiling.html
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#4881])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#6227])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@i915_module_load@load.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#6412])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#8399]) +2 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#6590])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@i915_pm_freq_mult@media-freq@gt0.html
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#6590])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([fdo#109289]) +20 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([fdo#109293] / [fdo#109506])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#8925])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#4387])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#6245])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([fdo#109303])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([fdo#109302])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@i915_query@query-topology-unsupported.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#5723])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][295] ([i915#9311])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@i915_selftest@mock@memory_region.html
    - shard-rkl:          NOTRUN -> [DMESG-WARN][296] ([i915#9311])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#4212])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#4212]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#5190])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#4215] / [i915#5190])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#3826])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][302] ([i915#8247]) +3 other tests fail
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][303] ([fdo#109271] / [i915#1769])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#1845] / [i915#4098]) +109 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][305] ([fdo#111615] / [i915#5286])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#5286]) +23 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][307] -> [FAIL][308] ([i915#5138])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([fdo#111614] / [i915#3638]) +15 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rotate-90.html
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#3638])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([fdo#111614])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][312] -> [FAIL][313] ([i915#3743])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#5190]) +5 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([fdo#110723]) +22 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][316] ([fdo#111615])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][317] ([fdo#111615]) +5 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#4538] / [i915#5190]) +4 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#2705]) +2 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#2705])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_big_joiner@basic.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#3742]) +2 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][322] ([i915#3742])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#4087] / [i915#7213]) +3 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#4087]) +3 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-mtlp:         NOTRUN -> [SKIP][325] ([fdo#111827])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_chamelium_color@ctm-limited-range.html
    - shard-dg2:          NOTRUN -> [SKIP][326] ([fdo#111827])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][327] ([fdo#111827]) +7 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][328] ([i915#7828])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#7828]) +4 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][330] ([i915#7828]) +3 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][331] ([i915#7828]) +49 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#3299])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-1.html
    - shard-rkl:          NOTRUN -> [SKIP][333] ([i915#3116]) +1 other test skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][334] ([i915#3299])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#7118]) +4 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg1:          NOTRUN -> [SKIP][336] ([i915#7116])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([fdo#109279] / [i915#3359]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#3359])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#3359]) +1 other test skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][340] ([i915#3555] / [i915#8814])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][341] ([i915#3555])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][342] ([i915#3359])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
    - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#3359])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_edge_walk@128x128-top-edge:
    - shard-rkl:          NOTRUN -> [SKIP][344] ([i915#4098]) +17 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_cursor_edge_walk@128x128-top-edge.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
    - shard-rkl:          NOTRUN -> [SKIP][346] ([fdo#111767] / [fdo#111825]) +5 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][347] ([i915#4103]) +2 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][348] ([i915#4213])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][349] ([i915#4103] / [i915#4213] / [i915#5608])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][350] ([fdo#109274] / [i915#5354])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][351] ([fdo#111767] / [fdo#111825])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][352] -> [FAIL][353] ([i915#2346])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#1257])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][355] ([i915#3555] / [i915#8812])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#8812])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][357] ([i915#3840])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][358] ([i915#3555] / [i915#3840]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#1849] / [i915#4098])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#3469])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][361] ([i915#3955])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([fdo#109274]) +6 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_flip@2x-flip-vs-panning.html
    - shard-snb:          NOTRUN -> [SKIP][363] ([fdo#109271]) +2 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/igt@kms_flip@2x-flip-vs-panning.html
    - shard-tglu:         NOTRUN -> [SKIP][364] ([fdo#109274] / [i915#3637])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][365] ([fdo#111825]) +54 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-mtlp:         NOTRUN -> [SKIP][366] ([i915#3637]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][367] ([i915#3637] / [i915#4098]) +13 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][368] ([i915#2672])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][369] ([i915#2587] / [i915#2672])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][370] ([i915#2672]) +3 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][371] ([i915#2672]) +14 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
    - shard-dg1:          NOTRUN -> [SKIP][372] ([i915#2587] / [i915#2672]) +1 other test skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][373] ([i915#3555] / [i915#8810])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-glk:          NOTRUN -> [SKIP][374] ([fdo#109271]) +39 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][375] ([fdo#109285] / [i915#4098])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][376] ([i915#8708]) +2 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#8708]) +13 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][378] ([i915#5354]) +17 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-rkl:          NOTRUN -> [SKIP][379] ([i915#1849] / [i915#4098] / [i915#5354]) +109 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([i915#5439])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][381] ([i915#3458])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][382] ([i915#1825]) +16 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][383] ([fdo#109280]) +4 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][384] ([fdo#111825]) +4 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][385] ([i915#3023]) +92 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][386] ([fdo#110189]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][387] ([i915#8708]) +6 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][388] ([i915#3458]) +10 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][389] ([fdo#111825] / [i915#1825]) +144 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][390] ([i915#433])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          NOTRUN -> [SKIP][391] ([i915#3555] / [i915#8228])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#3555] / [i915#8228]) +5 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][393] ([i915#4070] / [i915#4816])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][394] ([i915#6301])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg1:          NOTRUN -> [SKIP][395] ([fdo#109289])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          NOTRUN -> [SKIP][396] ([i915#4098] / [i915#8825]) +2 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][397] ([i915#4573]) +1 other test fail
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][398] ([i915#8821])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_plane_lowres@tiling-y.html
    - shard-mtlp:         NOTRUN -> [SKIP][399] ([i915#3555] / [i915#8821])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][400] ([i915#3555]) +34 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][401] ([i915#3546]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][402] ([i915#8292])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][403] ([i915#3555] / [i915#4098] / [i915#8152])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][404] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][405] ([i915#5235]) +11 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][406] ([i915#5235]) +7 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][407] ([i915#5235]) +5 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][408] ([i915#3555] / [i915#5235]) +1 other test skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][409] ([i915#6953] / [i915#8152])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][410] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +2 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][411] ([i915#5235]) +19 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][412] ([i915#6524]) +3 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][413] ([i915#1849])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][414] ([i915#9683]) +5 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][415] ([i915#9683]) +1 other test skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][416] ([fdo#111068] / [i915#9683]) +8 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_basic:
    - shard-dg2:          NOTRUN -> [SKIP][417] ([i915#9673] / [i915#9732]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-rkl:          NOTRUN -> [SKIP][418] ([i915#9673]) +5 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-rkl:          NOTRUN -> [SKIP][419] ([i915#9673] / [i915#9732]) +12 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][420] ([i915#9685]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][421] ([i915#5289])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][422] ([fdo#111615] / [i915#5289]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][423] ([i915#4235] / [i915#5190])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][424] ([i915#4235])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-270.html
    - shard-mtlp:         NOTRUN -> [SKIP][425] ([i915#4235])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][426] ([i915#3555] / [i915#4098])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_setmode@basic-clone-single-crtc.html
    - shard-rkl:          NOTRUN -> [SKIP][427] ([i915#3555] / [i915#4098]) +4 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg1:          NOTRUN -> [SKIP][428] ([i915#8623])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][429] ([i915#8623]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][430] ([fdo#109309])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_tv_load_detect@load-detect.html
    - shard-rkl:          NOTRUN -> [SKIP][431] ([fdo#109309])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][432] -> [FAIL][433] ([i915#9196])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_vrr@flip-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][434] ([i915#3555] / [i915#8808])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][435] ([i915#3555]) +3 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][436] ([i915#2437]) +3 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][437] ([i915#2436])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][438] ([i915#2434])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@perf@mi-rpc.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][439] ([i915#7484])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][440] ([i915#2435])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][441] ([i915#2433])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [PASS][442] -> [FAIL][443] ([i915#4349])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-rkl:          NOTRUN -> [SKIP][444] ([i915#8850])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][445] ([i915#5608] / [i915#8516])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html
    - shard-rkl:          NOTRUN -> [SKIP][446] ([i915#8516]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][447] ([i915#5493])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][448] ([fdo#109291])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][449] ([fdo#109295] / [i915#3291] / [i915#3708]) +1 other test skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][450] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          NOTRUN -> [SKIP][451] ([fdo#109295] / [i915#3708]) +2 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@prime_vgem@fence-read-hang.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][452] ([i915#9779])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][453] ([fdo#109307])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_perfmon@get-values-valid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][454] ([fdo#109315]) +64 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@v3d/v3d_perfmon@get-values-valid-perfmon.html

  * igt@v3d/v3d_submit_csd@valid-multisync-submission:
    - shard-dg1:          NOTRUN -> [SKIP][455] ([i915#2575]) +1 other test skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@v3d/v3d_submit_csd@valid-multisync-submission.html

  * igt@v3d/v3d_wait_bo@unused-bo-0ns:
    - shard-dg2:          NOTRUN -> [SKIP][456] ([i915#2575]) +8 other tests skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@v3d/v3d_wait_bo@unused-bo-0ns.html
    - shard-mtlp:         NOTRUN -> [SKIP][457] ([i915#2575]) +5 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@v3d/v3d_wait_bo@unused-bo-0ns.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-dg1:          NOTRUN -> [SKIP][458] ([i915#7711]) +1 other test skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][459] ([i915#7711]) +5 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable:
    - shard-rkl:          NOTRUN -> [SKIP][460] ([i915#7711]) +43 other tests skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@vc4/vc4_purgeable_bo@mark-purgeable.html

  * igt@vc4/vc4_purgeable_bo@mark-willneed:
    - shard-tglu:         NOTRUN -> [SKIP][461] ([i915#2575])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@vc4/vc4_purgeable_bo@mark-willneed.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-mtlp:         NOTRUN -> [SKIP][462] ([i915#7711]) +3 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@vc4/vc4_tiling@set-get.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-dg1:          [ABORT][463] -> [PASS][464]
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/igt@gem_ctx_persistence@many-contexts.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@saturated-hostile@vecs1:
    - shard-dg2:          [FAIL][465] -> [PASS][466]
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile@vecs1.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile@vecs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][467] ([i915#2842]) -> [PASS][468]
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][469] ([i915#2842]) -> [PASS][470]
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:
    - shard-dg1:          [FAIL][471] ([i915#3591]) -> [PASS][472] +1 other test pass
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][473] ([i915#7984]) -> [PASS][474]
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-8/igt@i915_power@sanity.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][475] ([i915#5138]) -> [PASS][476] +1 other test pass
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][477] ([i915#3743]) -> [PASS][478] +2 other tests pass
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][479] ([i915#2346]) -> [PASS][480]
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@forked-bo@all-pipes:
    - shard-mtlp:         [DMESG-WARN][481] ([i915#2017]) -> [PASS][482]
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-7/igt@kms_cursor_legacy@forked-bo@all-pipes.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a1:
    - shard-tglu:         [INCOMPLETE][483] -> [PASS][484]
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-4/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a1.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a1.html

  * {igt@kms_pm_dc@dc9-dpms}:
    - shard-tglu:         [SKIP][485] ([i915#4281]) -> [PASS][486]
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][487] ([i915#9196]) -> [PASS][488]
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [FAIL][489] ([i915#4349]) -> [PASS][490]
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-mtlp-4/igt@perf_pmu@busy-double-start@rcs0.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][491] ([i915#4936] / [i915#5493]) -> [TIMEOUT][492] ([i915#5493])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/index.html

--===============6162719358367334646==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Get bigjoiner config befor=
e dsc config during readout (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126742/">https://patchwork.freedesktop.org/series/126742/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13967_full -&gt; Patchwork_126742v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126742v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126742v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-rkl </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126742v2_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-10/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-10/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_13967/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-11/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-1/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_13967/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_13967/shard-dg2-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967=
/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_13967/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard=
-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13967/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_13967/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg2-7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13967/shard-dg2-7/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shar=
d-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126742v2/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26742v2/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2=
-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126742v2/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742=
v2/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126742v2/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/sh=
ard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126742v2/shard-dg2-1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-11/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126742v2/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg2-11/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shar=
d-dg2-10/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v2/shard-dg2-10/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-17/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-17/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_13967/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_13967/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-18/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_13967/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-19/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13=
967/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-15/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967=
/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_13967/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-14/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/sh=
ard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13967/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-16/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard=
-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13967/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg1-12/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-dg=
1-16/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v2/shard-dg1-16/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126742v2/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/s=
hard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v2/shard-dg1-14/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126742v2/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-15/boot.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/s=
hard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v2/shard-dg1-19/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126742v2/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v2/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-18/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126742v2/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/s=
hard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v2/shard-dg1-16/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126742v2/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/s=
hard-dg1-13/boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_frontbuffer_tracking@pipe-fbc-rte}:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_selftest@drm_plane_hel=
per@drm_test_check_invalid_plane_state.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state}:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_selftest@drm_plane_hel=
per@drm_test_check_plane_state.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126742v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3967/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shar=
d-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13967/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13967/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13967/shard-snb5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13967/shard-snb4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13967/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3967/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13967/shard-snb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-snb1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shar=
d-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13967/shard-snb1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
742v2/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126742v2/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v2/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v2/shard-snb6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6742v2/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126742v2/shard-snb5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v2/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/sh=
ard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v2/shard-snb4/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6742v2/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126742v2/shard-snb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v2/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/sh=
ard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v2/shard-snb1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-snb1/boot.html"=
>PASS</a>) ([i915#8293])</p>
</li>
<li>
<p>shard-tglu:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-tglu-9/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_13967/shard-tglu-8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-7/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_13967/shard-tglu-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13967/shard-tglu-7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-6/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_13967/shard-tglu-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13967/shard-tglu-6/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-5/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13=
967/shard-tglu-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13967/shard-tglu-5/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967=
/shard-tglu-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_13967/shard-tglu-4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-3/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/sh=
ard-tglu-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13967/shard-tglu-3/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard=
-tglu-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13967/shard-tglu-2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-tglu-10/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13967/shard-t=
glu-10/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126742v2/shard-tglu-9/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-9/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126742v2/shard-tglu-9/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-8/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2=
/shard-tglu-8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126742v2/shard-tglu-8/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126742v2/shard-tglu-7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2=
/shard-tglu-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126742v2/shard-tglu-6/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126742v2/shard-tglu-5/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2=
/shard-tglu-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126742v2/shard-tglu-4/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126742v2/shard-tglu-4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2=
/shard-tglu-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126742v2/shard-tglu-3/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-2/b=
oot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126742v2/shard-tglu-10/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742=
v2/shard-tglu-10/boot.html">PASS</a>) ([i915#8293])</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> ([i915#7701]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@drm_fdinfo@isolation@rcs0=
.html">SKIP</a> ([i915#8414]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> ([i915#8414]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@drm_fdinfo@most-busy-check=
-all@rcs0.html">FAIL</a> ([i915#7742]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@fbdev@write.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#258=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_caching@writes.html">=
SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4098">i915#4098</a> / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> ([i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> ([i915#6335]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_ctx_exec@basic-nohangc=
heck.html">FAIL</a> ([i915#6268])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_ctx_param@set-priority-=
not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109314">fdo#109314</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg1-19/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/shar=
d-dg1-19/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#5784]) +1 other t=
est fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@gem_exec_balancer@hog.htm=
l">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_exec_capture@many-4k-=
incremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> ([i915#9606]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_exec_fair@basic-none-sh=
are.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a> / [i915#4852]) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_exec_fair@basic-none-s=
hare.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4473">i915#4473</a> / <a href=3D"https://">i915#4771</a>) +1 other tes=
t skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_exec_fair@basic-none@b=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742=
v2/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#2876</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt=
.html">SKIP</a> ([i915#5107])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_exec_params@rsvd2-dirt.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09283">fdo#109283</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D112283">fdo#112283</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_exec_params@secure-no=
n-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_exec_reloc@basic-gtt-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3281">i915#3281</a>) +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
81">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4537">i915#4537</a> / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_exec_schedule@semaphore=
-power.html">SKIP</a> ([i915#7276])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_exec_schedule@semaphore=
-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4537">i915#4537</a> / [i915#4812]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190=
">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4613">i915#4613</a> / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@gem_lmem_swapping@parallel-=
random-engines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_lmem_swapping@random-=
engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#28=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_mmap@basic-small-bo.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
83">i915#4083</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_mmap_gtt@basic-small-=
bo-tiledx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1116=
56">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_mmap_gtt@flink-race.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_mmap_wc@bad-object.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
83">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_mmap_wc@write.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i=
915#4083</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3282">i915#3282</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_pread@display.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i9=
15#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@gem_pread@snoop.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i91=
5#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gem_pxp@regular-baseline-sr=
c-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4270">i915#4270</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4270">i915#4270</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gem_render_copy@y-tiled-t=
o-vebox-x-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_softpin@evict-snoop.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1093=
12">fdo#109312</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> ([i915#4885])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gem_tiled_blits@basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077=
">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_userptr_blits@coherency=
-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D110542">fdo#110542</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3297">i915#3297</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@gen3_render_linear_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@gen7_exec_parse@oacontrol=
-tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@gen9_exec_parse@shadow-peek=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2856">i915#2856</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2856">i915#2856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@i915_fb_tiling.html">SKIP</=
a> ([i915#4881])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@i915_module_load@resize-ba=
r.html">SKIP</a> ([i915#6412])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> ([i915#8399]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@i915_pm_freq_mult@media-fre=
q@gt0.html">SKIP</a> ([i915#6590])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> ([i915#6590])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@i915_pm_rc6_residency@medi=
a-rc6-accuracy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109289">fdo#109289</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@i915_query@hwconfig_table.=
html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_addfb_basic@addfb25-f=
ramebuffer-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-=
tiled-mismatch-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_addfb_basic@basic-y-ti=
led-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4215">i915#4215</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_atomic_transition@plan=
e-use-after-nonblocking-unbind.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +109 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111615">fdo#111615</a> / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126742v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@linear-64bpp-rot=
ate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3638">i915#3638</a>) +15 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3638">i915#3638</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> ([i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4538">i915#4538</a> / [i915#5190]) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3742">i915#3742</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_chamelium_color@ctm-li=
mited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_chamelium_color@ctm-lim=
ited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_chamelium_edid@hdmi-e=
did-change-during-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_content_protection@dp-m=
st-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3299">i915#3299</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_content_protection@dp-m=
st-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3116">i915#3116</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109279">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_cursor_crc@cursor-slidi=
ng-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-edge:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_cursor_edge_walk@128x1=
28-top-edge.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_cursor_legacy@2x-flip-v=
s-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / [i915#5354])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-v=
s-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4213">i915#4213</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_cursor_legacy@basic-bus=
y-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / [i915#5608])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354=
])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126742v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#=
1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a> / [i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_flip@2x-flip-vs-panning=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109274">fdo#109274</a>) +6 other tests skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-snb6/igt@kms_flip@2x-flip-vs-panning.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +2 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3637">i915#3637</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_flip@basic-flip-vs-wf_=
vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672=
">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +14 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a> / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@kms_flip_scaled_crc@flip-64=
bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +13 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#5354]) +17 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bc-shrfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a> / [i915#5354]) +109 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +16 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3023">i915#3023</a>) +92 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +6 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3458">i915#3458</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +144 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/433">i915#433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a> / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / [i915#8228]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4070">i915#4070</a> / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@kms_pipe_b_c_ivb@from-pip=
e-c-to-b-with-3-lanes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane@plane-panning-to=
p-left.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a> / [i915#8825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-glk2/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_plane_lowres@tiling-y.h=
tml">SKIP</a> ([i915#8821])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_plane_lowres@tiling-y.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3555">i915#3555</a> / [i915#8821])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3546">i915#3546</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / [i915=
#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a> / [i915#6953] / [i915#8152]) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5=
235]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> ([i=
915#5235]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> ([i915#5235]) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / [i915#5235]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i91=
5#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a> / [i915#6953] / [i915#8152]) +=
2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> ([i=
915#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_properties@crtc-proper=
ties-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> ([i915#9683]) +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> ([i915#9683]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111068">fdo#111068</a> / [i915#9683]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_psr@psr2_basic.html">S=
KIP</a> ([i915#9673] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@kms_psr@psr2_cursor_mmap_g=
tt.html">SKIP</a> ([i915#9673]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_psr@psr2_cursor_plane_=
onoff.html">SKIP</a> ([i915#9673] / [i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-4/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5289]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4235">i915#4235</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@kms_rotation_crc@sprite-rot=
ation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4235">i915#4235</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_rotation_crc@sprite-ro=
tation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_setmode@basic-clone-sin=
gle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@kms_setmode@basic-clone-sin=
gle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#8623]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-5/igt@kms_tv_load_detect@load-det=
ect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109309">fdo#109309</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@kms_tv_load_detect@load-det=
ect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109309">fdo#109309</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126742v2/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@kms_vrr@flip-suspend.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#243=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@perf@non-zero-reason@0-rcs=
0.html">FAIL</a> ([i915#7484])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-7/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1267=
42v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@perf_pmu@cpu-hotplug.html"=
>SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html">=
SKIP</a> ([i915#5608] / [i915#8516])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@perf_pmu@rc6-all-gts.html">=
SKIP</a> ([i915#8516]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@prime_mmap@test_aperture_l=
imit@test_aperture_limit-smem.html">INCOMPLETE</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@prime_udl.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#10929=
1</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-5/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9295">fdo#109295</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111656">fdo#111656</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@syncobj_wait@invalid-wait-=
zero-handles.html">FAIL</a> ([i915#9779])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-1/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109307">fdo#109307</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-valid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-3/igt@v3d/v3d_perfmon@get-values=
-valid-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109315">fdo#109315</a>) +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@valid-multisync-submission:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-19/igt@v3d/v3d_submit_csd@valid-=
multisync-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@unused-bo-0ns:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@v3d/v3d_wait_bo@unused-bo-0=
ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2575">i915#2575</a>) +8 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v2/shard-mtlp-2/igt@v3d/v3d_wait_bo@unused-bo-=
0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +5 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg1-13/igt@vc4/vc4_mmap@mmap-bo.html=
">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-dg2-7/igt@vc4/vc4_perfmon@destroy-va=
lid-perfmon.html">SKIP</a> ([i915#7711]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-rkl-2/igt@vc4/vc4_purgeable_bo@mark-=
purgeable.html">SKIP</a> ([i915#7711]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-willneed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@vc4/vc4_purgeable_bo@mark=
-willneed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v2/shard-mtlp-6/igt@vc4/vc4_tiling@set-get.ht=
ml">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg1-19/igt@gem_ctx_persistence@many-contexts.html">ABOR=
T</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26742v2/shard-dg1-19/igt@gem_ctx_persistence@many-contexts.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile@vecs1.=
html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v2/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile@vec=
s1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13967/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126742v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13967/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126742v2/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/359=
1">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126742v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vec=
s0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-8/igt@i915_power@sanity.html">SKIP</a> ([i915#7984=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1267=
42v2/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_126742v2/shard-mtlp-8/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-10/igt@kms_big_fb@y-tile=
d-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +2 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126742v2/shard-glk9/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126742v2/shard-mtlp-7/igt@kms_cursor_legacy@forked-bo@all-pip=
es.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-tglu-4/igt@kms_flip@blocking-absolute-wf_vblank-interru=
ptible@c-hdmi-a1.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126742v2/shard-tglu-3/igt@kms_flip@blocking-=
absolute-wf_vblank-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc9-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v2/=
shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-ed=
p-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126742v2/shard-mtlp-8/igt@kms_universal_plane@cur=
sor-fb-leak@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-mtlp-4/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126742v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_lmem_swapping@smem-oom@lmem0:<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13967/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> ([i915#4936] / [i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126742v2/shard-dg1-16/igt@gem_lmem_swapping@=
smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============6162719358367334646==--
