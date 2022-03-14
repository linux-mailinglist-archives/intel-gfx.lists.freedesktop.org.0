Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 457ED4D8AEB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 18:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0E510E2E5;
	Mon, 14 Mar 2022 17:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2786910E2E5;
 Mon, 14 Mar 2022 17:38:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1895DA73C7;
 Mon, 14 Mar 2022 17:38:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1126755265338720119=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 14 Mar 2022 17:38:47 -0000
Message-ID: <164727952706.20567.11889690020728244220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311185149.110527-1-jose.souza@intel.com>
In-Reply-To: <20220311185149.110527-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/display=3A_Fix_HPD_sh?=
 =?utf-8?q?ort_pulse_handling_for_eDP_=28rev2=29?=
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

--===============1126755265338720119==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/display: Fix HPD short pulse handling for eDP (rev2)
URL   : https://patchwork.freedesktop.org/series/101299/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11358_full -> Patchwork_22556_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22556_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22556_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22556_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_mm@all@insert:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl3/igt@drm_mm@all@insert.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl5/igt@drm_mm@all@insert.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk2/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_softpin@allocator-evict@bcs0:
    - {shard-rkl}:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/igt@gem_softpin@allocator-evict@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-5/igt@gem_softpin@allocator-evict@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22556_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) -> ([FAIL][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56]) ([i915#4386])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl8/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl8/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [FAIL][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81]) ([i915#4392]) -> ([PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk9/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk5/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk5/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk1/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk2/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk3/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk3/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk5/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk5/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk5/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk6/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk6/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk7/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk7/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk7/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk8/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk8/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk8/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/boot.html
    - {shard-rkl}:        ([PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [FAIL][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127]) ([i915#5131]) -> ([PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-6/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-6/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-4/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-6/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-6/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-6/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-5/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-5/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-5/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-4/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-4/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-4/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1/boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1/boot.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][149] ([i915#5325])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][150] ([i915#4991]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb2/igt@gem_create@create-massive.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][151] -> [FAIL][152] ([i915#2842])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][153] -> [FAIL][154] ([i915#2842]) +4 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][155] ([i915#2842])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][156] ([fdo#112283])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][157] -> [DMESG-WARN][158] ([i915#180])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][159] -> [SKIP][160] ([i915#2190])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-apl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#4613])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl4/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-iclb:         NOTRUN -> [SKIP][162] ([i915#4613]) +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][163] ([fdo#109271] / [i915#4613]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][164] -> [FAIL][165] ([i915#644])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-iclb:         NOTRUN -> [SKIP][166] ([i915#4270]) +2 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglb:         NOTRUN -> [SKIP][167] ([i915#4270])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][168] ([i915#768]) +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][169] ([i915#3297])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][170] ([fdo#109289])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][171] ([i915#2856]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][172] -> [FAIL][173] ([i915#454])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][174] ([fdo#110892])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - shard-skl:          [PASS][175] -> [DMESG-WARN][176] ([i915#1982])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl4/igt@kms_addfb_basic@invalid-get-prop-any.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl2/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-iclb:         NOTRUN -> [SKIP][177] ([i915#3826])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic@atomic_plane_damage:
    - shard-iclb:         NOTRUN -> [SKIP][178] ([i915#4765])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][179] ([i915#5286]) +4 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb4/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][180] ([i915#5286])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][181] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][182] ([i915#3743])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][183] ([fdo#109271] / [i915#3777]) +1 similar issue
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][184] -> [DMESG-WARN][185] ([i915#118]) +2 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][186] ([fdo#109271] / [i915#3777])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][187] ([fdo#110723])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][188] ([fdo#111615] / [i915#3689])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][189] ([fdo#109271] / [i915#3886])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][190] ([fdo#109271] / [i915#3886])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][191] ([fdo#109271] / [i915#3886]) +4 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][192] ([fdo#109278] / [i915#3886]) +6 similar issues
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-skl:          NOTRUN -> [SKIP][193] ([fdo#109271] / [i915#3886]) +4 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][194] ([fdo#109271]) +113 similar issues
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][195] ([i915#3689])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-skl:          NOTRUN -> [SKIP][196] ([fdo#109271] / [fdo#111827] / [i915#1888])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-glk:          NOTRUN -> [SKIP][197] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-iclb:         NOTRUN -> [SKIP][198] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-kbl:          NOTRUN -> [SKIP][199] ([fdo#109271] / [fdo#111827])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-kbl1/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][200] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl9/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][201] ([fdo#109278] / [i915#1149]) +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][202] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][203] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][204] ([i915#3116]) +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-glk:          [PASS][205] -> [FAIL][206] ([i915#3444])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-tglb:         NOTRUN -> [SKIP][207] ([i915#3359])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-slidi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/index.html

--===============1126755265338720119==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/displ=
ay: Fix HPD short pulse handling for eDP (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101299/">https://patchwork.freedesktop.org/series/101299/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22556/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22556/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11358_full -&gt; Patchwork_22556_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22556_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22556_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22556_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_mm@all@insert:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl3/igt@drm_mm@all@insert.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl5/igt=
@drm_mm@all@insert.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk2/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.=
html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_softpin@allocator-evict@bcs0:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-rkl-1/igt@gem_softpin@allocator-evict@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2255=
6/shard-rkl-5/igt@gem_softpin@allocator-evict@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22556_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11358/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11358/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11358/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/sha=
rd-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11358/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11358/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11358/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11358/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1358/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11358/shard-apl8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-apl8/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1358/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shar=
d-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11358/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11358/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11358/shard-glk5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11358/shard-glk4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11358/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1358/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11358/shard-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-glk9/=
boot.html">PASS</a>)</p>
</li>
<li>
<p>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11358/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1135=
8/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shar=
d-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11358/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-=
5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11358/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11358/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358=
/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html">PASS</a>) ([i915#5131]) -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shar=
d-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22556/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/s=
hard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22556/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2255=
6/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22556/shard-rkl-5/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2556/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22556/shard-rkl-4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22556/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22556/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22556/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rkl-1/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-rk=
l-1/boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@gem_ccs@block-copy-compressed=
.html">SKIP</a> ([i915#5325])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb2/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#4991]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2556/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/sh=
ard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +4 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@gem_exec_params@secure-non-ro=
ot.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/s=
hard-apl7/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#18=
0])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-apl4/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb2/igt@gem_lmem_swapping@random-engi=
nes.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-skl7/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_225=
56/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@gem_pxp@reject-modify-context=
-protection-off-3.html">SKIP</a> ([i915#4270]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@gem_pxp@verify-pxp-stale-ctx-=
execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@gem_render_copy@y-tiled-mc-cc=
s-to-y-tiled-ccs.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22556/shard-skl10/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.=
html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl4/igt@kms_addfb_basic@invalid-get-prop-any.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2556/shard-skl2/igt@kms_addfb_basic@invalid-get-prop-any.html">DMESG-WARN</=
a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@kms_addfb_basic@invalid-smem-=
bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_atomic@atomic_plane_damag=
e.html">SKIP</a> ([i915#4765])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb4/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_big_fb@4-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@kms_big_fb@x-tiled-16bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2255=
6/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-glk9/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22556/shard-iclb4/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +6 s=
imilar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22556/shard-skl6/igt@kms_ccs@pipe-c-ccs-on-another-b=
o-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 si=
milar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-apl1/igt@kms_ccs@pipe-c-random-ccs-data=
-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +113 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-skl7/igt@kms_chamelium@dp-crc-fast.html=
">SKIP</a> ([fdo#109271] / [fdo#111827] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-glk9/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb5/igt@kms_chamelium@hdmi-audio.html=
">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-kbl1/igt@kms_chamelium@hdmi-crc-multipl=
e.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-skl9/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_color@pipe-d-ctm-green-to=
-red.html">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb8/igt@kms_color_chamelium@pipe-d-ct=
m-green-to-red.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-iclb7/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a> ([i915#3116]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22556/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.=
html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22556/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-slidi</p>
</li>
</ul>

</body>
</html>

--===============1126755265338720119==--
