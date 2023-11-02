Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1267DF182
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 12:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16D910E85E;
	Thu,  2 Nov 2023 11:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5542410E85A;
 Thu,  2 Nov 2023 11:44:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E366A7DFB;
 Thu,  2 Nov 2023 11:44:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5413247659399927265=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 02 Nov 2023 11:44:31 -0000
Message-ID: <169892547130.28157.10697762722188382835@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231030155843.2251023-1-imre.deak@intel.com>
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_MST_links_=28rev8=29?=
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

--===============5413247659399927265==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on MST links (rev8)
URL   : https://patchwork.freedesktop.org/series/125490/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13814_full -> Patchwork_125490v8_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125490v8_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125490v8_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 13)
------------------------------

  Additional (1): shard-tglu0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125490v8_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html

  
Known issues
------------

  Here are the changes found in Patchwork_125490v8_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [FAIL][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html
    - shard-apl:          ([PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) -> ([FAIL][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102]) ([i915#8293])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl4/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl4/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [FAIL][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [FAIL][126], [PASS][127]) ([i915#8293]) -> ([PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk9/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk9/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk9/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk9/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk8/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk8/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk8/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk8/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk6/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk6/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk6/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk4/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk4/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk4/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk4/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk3/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk3/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk3/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk3/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk1/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk1/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk9/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk9/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk9/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk9/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk4/boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk4/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk4/boot.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk4/boot.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk6/boot.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk6/boot.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk6/boot.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk6/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8411]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#7701])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#8414]) +20 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][156] ([i915#7742]) +1 other test fail
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][157] -> [FAIL][158] ([i915#7742])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#8414]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@fbdev@info:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#1849] / [i915#2582])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@fbdev@info.html

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [PASS][161] -> [SKIP][162] ([i915#2582])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@fbdev@unaligned-read.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@fbdev@unaligned-read.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#3555])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#9323])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#7697])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([fdo#109314])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-hostile@vcs0:
    - shard-mtlp:         NOTRUN -> [FAIL][167] ([i915#2410]) +2 other tests fail
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_ctx_persistence@engines-hostile@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#8555])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#280])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [PASS][170] -> [ABORT][171] ([i915#7975] / [i915#8213])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-11/igt@gem_eio@hibernate.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#4771])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#4771])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#8555]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#4525])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#6334]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][177] ([fdo#109271] / [i915#6334])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@gem_exec_capture@capture-invisible@smem0.html
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#6334])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-dg2:          NOTRUN -> [FAIL][179] ([i915#9606]) +1 other test fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][180] ([i915#2842])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#4473] / [i915#4771]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][182] -> [FAIL][183] ([i915#2842])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#3539])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#4812])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#4812]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([fdo#109313])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#3539] / [i915#4852]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#7697])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#5107])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([fdo#112283])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_exec_params@secure-non-master.html
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([fdo#112283]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#3281]) +10 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-scanout@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3639]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@bcs0.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#3281])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#3281]) +11 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [PASS][197] -> [SKIP][198] ([i915#3281]) +7 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#4537] / [i915#4812])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#4537] / [i915#4812])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][201] ([i915#7975] / [i915#8213])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#4860]) +2 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][203] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-apl:          NOTRUN -> [SKIP][204] ([fdo#109271] / [i915#4613])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#4613])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#4613]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_lmem_swapping@random.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3282]) +7 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_mmap@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#4083]) +6 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#4077]) +12 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#4077]) +14 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4083]) +9 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3282]) +3 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#3282]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#4270]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#4270]) +3 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#4270]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_render_copy@y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#8428]) +4 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@gem_render_copy@y-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#768]) +4 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#4079])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          [PASS][220] -> [SKIP][221] ([i915#3282]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#4885])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#4879])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_unfence_active_buffers.html
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#4879])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#3297]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3297] / [i915#4880]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#3297]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][228] ([i915#3318])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([fdo#109289]) +2 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gen3_render_linear_blits.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([fdo#109289]) +6 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [PASS][231] -> [SKIP][232] ([i915#2527]) +2 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#2856]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#2856]) +3 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#4881])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_fb_tiling.html
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#4881])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@i915_fb_tiling.html

  * igt@i915_hangman@detector@vcs0:
    - shard-mtlp:         NOTRUN -> [FAIL][237] ([i915#8456]) +2 other tests fail
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_hangman@detector@vcs0.html

  * igt@i915_module_load@load:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#6227])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_module_load@load.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#7091])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#6590]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [PASS][241] -> [FAIL][242] ([i915#3591]) +1 other test fail
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([fdo#109293] / [fdo#109506])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#6621])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][245] -> [INCOMPLETE][246] ([i915#7790])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/igt@i915_pm_rps@reset.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#8925]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-idle-park@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8925]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_pm_rps@thresholds-idle-park@gt1.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#8925])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [PASS][250] -> [SKIP][251] ([i915#4387])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([fdo#109302])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@mock@memory_region:
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][253] ([i915#9311])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#4215] / [i915#5190])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#4212])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#4212]) +2 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@crc@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][257] ([i915#8247]) +3 other tests fail
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-19/igt@kms_async_flips@crc@pipe-c-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#1769] / [i915#3555]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][259] ([fdo#109271] / [i915#1769])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#1769] / [i915#3555])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#4098]) +17 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#5286])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [FAIL][263] ([i915#5138])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([fdo#111614]) +6 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([fdo#111614]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [PASS][266] -> [FAIL][267] ([i915#3743])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][268] ([fdo#109271]) +77 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#5190]) +13 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([fdo#111615]) +10 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#4538] / [i915#5190]) +7 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#6187])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([fdo#110723]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#2705])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#4087] / [i915#7213]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#4087]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#7828]) +7 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([fdo#111827]) +3 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_chamelium_color@degamma.html
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([fdo#111827]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#7828]) +12 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#7828]) +3 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#3555]) +6 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_color@deep-color.html

  * igt@kms_color@gamma@pipe-a:
    - shard-rkl:          [PASS][283] -> [SKIP][284] ([i915#4098]) +2 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@kms_color@gamma@pipe-a.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_color@gamma@pipe-a.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#3299])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#3299])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][287] ([i915#7173])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#7118]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#6944]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_content_protection@uevent.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][290] ([i915#1339])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#3359]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#3359])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][293] ([fdo#111767] / [i915#3546])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#3546]) +2 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][295] ([i915#1845] / [i915#4098]) +16 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [PASS][297] -> [SKIP][298] ([i915#1845] / [i915#4098]) +12 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#4103] / [i915#4213])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#4213])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#9226] / [i915#9261]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#9226] / [i915#9261]) +1 other test skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#9227])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#9227])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#9227])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#9226] / [i915#9261]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#8812])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#3555] / [i915#3840]) +3 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#3555] / [i915#3840])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([fdo#109274]) +10 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#3637]) +6 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][312] ([fdo#111767] / [i915#3637])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
    - shard-dg2:          NOTRUN -> [SKIP][313] ([fdo#109274] / [fdo#111767])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([fdo#111767] / [fdo#111825])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([fdo#111825]) +5 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-snb:          NOTRUN -> [SKIP][316] ([fdo#109271]) +10 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb7/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#3637] / [i915#4098]) +9 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][318] ([i915#8381])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a3:
    - shard-dg2:          [PASS][319] -> [FAIL][320] ([fdo#103375])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-7/igt@kms_flip@flip-vs-suspend@c-hdmi-a3.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_flip@flip-vs-suspend@c-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#2672]) +5 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][322] ([i915#2672]) +2 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#2672]) +2 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#2672] / [i915#3555])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#3555]) +6 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][326] ([i915#3555] / [i915#8810])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [PASS][327] -> [SKIP][328] ([i915#1849] / [i915#4098]) +5 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          [PASS][329] -> [FAIL][330] ([i915#6880])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][331] ([i915#1825]) +41 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#3458]) +23 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#5354]) +30 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#5460]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#3023]) +5 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][336] ([i915#1849] / [i915#4098]) +17 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][337] ([fdo#111825] / [i915#1825]) +11 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][338] ([i915#8708]) +26 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][339] ([i915#8708]) +11 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][340] ([i915#6118])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][341] ([i915#3555] / [i915#8228])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][342] ([i915#3555] / [i915#8228]) +1 other test skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][343] ([i915#9457]) +2 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-rkl:          NOTRUN -> [SKIP][344] ([i915#3555] / [i915#4098])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#4816])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][346] ([i915#6301])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][347] ([fdo#109289]) +2 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
    - shard-apl:          [PASS][348] -> [INCOMPLETE][349] ([i915#9392])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][350] ([i915#4573]) +1 other test fail
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][351] ([i915#3555] / [i915#8821])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][352] ([i915#3555] / [i915#8806])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][353] ([i915#6953])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#6953] / [i915#8152])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][355] ([i915#8292])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-18/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][356] ([i915#5176] / [i915#9423]) +3 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][357] ([i915#5235]) +19 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][358] ([i915#5235]) +8 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#8152]) +2 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#3555] / [i915#5235]) +2 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][361] ([i915#5235]) +19 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][362] ([i915#6524])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-rkl:          [PASS][363] -> [SKIP][364] ([i915#1849])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_properties@crtc-properties-atomic.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][365] ([fdo#109271] / [i915#658]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-rkl:          NOTRUN -> [SKIP][366] ([i915#658])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][367] ([i915#658]) +3 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][368] ([i915#1072]) +8 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_psr@sprite_blt.html

  * igt@kms_psr@sprite_plane_onoff:
    - shard-rkl:          NOTRUN -> [SKIP][369] ([i915#1072]) +4 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][370] ([i915#4235]) +1 other test skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][371] ([i915#8875] / [i915#9569])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#4235])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][373] ([i915#3555] / [i915#8809]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-mtlp:         NOTRUN -> [SKIP][374] ([i915#8623])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][375] ([fdo#109309])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [PASS][376] -> [FAIL][377] ([i915#9196])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][378] ([i915#8841]) +2 other tests dmesg-warn
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1.html

  * igt@kms_vrr@flip-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][379] ([i915#3555] / [i915#8808]) +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([i915#2437])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][381] ([fdo#109271] / [i915#2437])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@kms_writeback@writeback-fb-id.html
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#2437])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_writeback@writeback-fb-id.html
    - shard-mtlp:         NOTRUN -> [SKIP][383] ([i915#2437])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][384] ([i915#2436])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [PASS][385] -> [SKIP][386] ([i915#2434])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@perf@mi-rpc.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@perf@mi-rpc.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][387] -> [FAIL][388] ([i915#7484])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][389] -> [FAIL][390] ([i915#4349])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-rkl:          NOTRUN -> [SKIP][391] ([fdo#112283])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][392] ([i915#6806])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][393] ([i915#8516])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_udl:
    - shard-dg2:          NOTRUN -> [SKIP][394] ([fdo#109291])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][395] ([i915#3708] / [i915#4077])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][396] ([i915#3291] / [i915#3708])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][397] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][398] ([i915#3708])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@prime_vgem@fence-flip-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-mtlp:         NOTRUN -> [FAIL][399] ([i915#9583]) +3 other tests fail
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
    - shard-rkl:          NOTRUN -> [FAIL][400] ([i915#9583])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][401] ([i915#9583]) +1 other test fail
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
    - shard-glk:          NOTRUN -> [FAIL][402] ([i915#9583])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][403] ([i915#9582]) +1 other test fail
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html

  * igt@v3d/v3d_create_bo@create-bo-zeroed:
    - shard-rkl:          NOTRUN -> [SKIP][404] ([fdo#109315]) +4 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@v3d/v3d_create_bo@create-bo-zeroed.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][405] ([i915#2575]) +16 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][406] ([i915#2575]) +14 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-glk:          NOTRUN -> [SKIP][407] ([fdo#109271]) +72 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:
    - shard-rkl:          NOTRUN -> [SKIP][408] ([i915#7711]) +5 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done.html

  * igt@vc4/vc4_mmap@mmap-bo:
    - shard-dg2:          NOTRUN -> [SKIP][409] ([i915#7711]) +10 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@vc4/vc4_mmap@mmap-bo.html

  * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
    - shard-mtlp:         NOTRUN -> [SKIP][410] ([i915#7711]) +7 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][411] ([i915#8411]) -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][413] ([i915#7297]) -> [PASS][414]
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [SKIP][415] ([i915#6252]) -> [PASS][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@hibernate:
    - shard-mtlp:         [ABORT][417] ([i915#7975] / [i915#8213] / [i915#9262]) -> [PASS][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-2/igt@gem_eio@hibernate.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][419] ([i915#2842]) -> [PASS][420]
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-rkl:          [SKIP][421] ([i915#3281]) -> [PASS][422] +6 other tests pass
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-mtlp:         [FAIL][423] ([fdo#103375]) -> [PASS][424] +4 other tests pass
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-5/igt@gem_exec_suspend@basic-s3@smem.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-6/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][425] ([i915#4936] / [i915#5493]) -> [PASS][426]
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [SKIP][427] ([i915#1850]) -> [PASS][428]
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_pread@self:
    - shard-rkl:          [SKIP][429] ([i915#3282]) -> [PASS][430]
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@gem_pread@self.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_pread@self.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          [SKIP][431] ([i915#2527]) -> [PASS][432]
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][433] ([i915#6537]) -> [PASS][434]
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/igt@i915_pm_rps@engine-order.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/igt@i915_pm_rps@engine-order.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][435] ([i915#7984]) -> [PASS][436]
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@i915_power@sanity.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@i915_power@sanity.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][437] ([i915#5138]) -> [PASS][438]
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][439] ([i915#3743]) -> [PASS][440] +1 other test pass
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * {igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs}:
    - shard-rkl:          [SKIP][441] ([i915#4098]) -> [PASS][442] +11 other tests pass
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][443] ([i915#2346]) -> [PASS][444] +1 other test pass
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [SKIP][445] ([i915#1849] / [i915#4098]) -> [PASS][446] +8 other tests pass
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][447] ([i915#79]) -> [PASS][448]
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-mtlp:         [ABORT][449] ([i915#9414]) -> [PASS][450]
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-dg2:          [FAIL][451] ([i915#8717]) -> [PASS][452]
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_pm_rpm@i2c.html
    - shard-rkl:          [SKIP][453] ([fdo#109308]) -> [PASS][454]
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_pm_rpm@i2c.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress-no-wait}:
    - shard-rkl:          [SKIP][455] ([i915#9519]) -> [PASS][456]
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * {igt@kms_pm_rpm@modeset-non-lpsp}:
    - shard-dg2:          [SKIP][457] ([i915#9519]) -> [PASS][458]
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * {igt@kms_pm_rpm@system-suspend-modeset}:
    - shard-dg2:          [FAIL][459] ([fdo#103375]) -> [PASS][460]
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-dg2-5/igt@kms_pm_rpm@system-suspend-modeset.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [SKIP][461] ([i915#1849]) -> [PASS][462] +1 other test pass
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [SKIP][463] ([i915#1845] / [i915#4098]) -> [PASS][464] +13 other tests pass
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-rkl:          [INCOMPLETE][465] ([i915#9475]) -> [PASS][466]
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [FAIL][467] ([i915#9196]) -> [PASS][468]
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][469] ([i915#4839]) -> [PASS][470]
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][471] ([i915#4349]) -> [PASS][472]
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html

  
#### Warnings ####

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][473] ([i915#3555]) -> [SKIP][474] ([i915#7957])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][475] ([i915#2842]) -> [SKIP][476] ([i915#9591])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_pread@exhaustion:
    - shard-rkl:          [SKIP][477] ([i915#3282]) -> [WARN][478] ([i915#2658])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@gem_pread@exhaustion.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [WARN][479] ([i915#2658]) -> [SKIP][480] ([i915#3282])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][481] ([i915#2532]) -> [SKIP][482] ([i915#2527])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][483] ([i915#1845] / [i915#4098]) -> [SKIP][484] ([i915#1769] / [i915#3555])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-rkl:          [SKIP][485] ([i915#5286]) -> [SKIP][486] ([i915#4098]) +2 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][487] ([i915#4098]) -> [SKIP][488] ([i915#5286]) +4 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][489] ([fdo#111614] / [i915#3638]) -> [SKIP][490] ([i915#1845] / [i915#4098])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][491] ([i915#1845] / [i915#4098]) -> [SKIP][492] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][493] ([i915#1845] / [i915#4098]) -> [SKIP][494] ([fdo#110723]) +5 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][495] ([fdo#110723]) -> [SKIP][496] ([i915#1845] / [i915#4098]) +1 other test skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-rkl:          [SKIP][497] ([i915#1845] / [i915#4098]) -> [SKIP][498] ([fdo#111615])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][499] ([i915#7118]) -> [SKIP][500] ([i915#1845] / [i915#4098])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          [SKIP][501] ([i915#4098]) -> [SKIP][502] ([fdo#109279] / [i915#3359])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-rkl:          [SKIP][503] ([i915#4098]) -> [SKIP][504] ([i915#3555]) +1 other test skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][505] ([i915#4098]) -> [SKIP][506] ([i915#3359]) +1 other test skip
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][507] ([i915#3359]) -> [SKIP][508] ([i915#4098])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-rkl:          [SKIP][509] ([i915#1845] / [i915#4098]) -> [SKIP][510] ([fdo#111825]) +3 other tests skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][511] ([fdo#111825]) -> [SKIP][512] ([i915#1845] / [i915#4098]) +1 other test skip
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][513] ([i915#1845] / [i915#4098]) -> [SKIP][514] ([i915#4103])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][515] ([i915#3555] / [i915#3840]) -> [SKIP][516] ([i915#4098])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][517] ([fdo#110189] / [i915#3955]) -> [SKIP][518] ([i915#3955])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][519] ([i915#3955]) -> [SKIP][520] ([fdo#110189] / [i915#3955])
   [519]: https://intel-gfx-ci.0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html

--===============5413247659399927265==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on MST links=
 (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125490/">https://patchwork.freedesktop.org/series/125490/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125490v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13814_full -&gt; Patchwork_125490v=
8_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125490v8_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125490v8_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 13)</h2>
<p>Additional (1): shard-tglu0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125490v8_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_create@create-ext-cpu-=
access-big.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
spr-indfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-spr-indfb-onoff.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125490v8_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3814/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shar=
d-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13814/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13814/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13814/shard-snb5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13814/shard-snb4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13814/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13814/shard-snb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3814/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13814/shard-snb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-snb1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shar=
d-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13814/shard-snb1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
490v8/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125490v8/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125490v8/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125490v8/shard-snb5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5490v8/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125490v8/shard-snb5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125490v8/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/sh=
ard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125490v8/shard-snb4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5490v8/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125490v8/shard-snb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb2/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125490v8/shard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/sh=
ard-snb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125490v8/shard-snb1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb1/boot.html"=
>PASS</a>) ([i915#8293])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3814/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13814/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13814/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13814/shard-apl3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13814/shard-apl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13814/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13814/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3814/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shar=
d-apl7/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125490v8/shard-apl4/boot.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125490v8/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-a=
pl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125490v8/shard-apl6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v=
8/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125490v8/shard-apl7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125490v8/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125490v8/shard-apl1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125490v8/shard-apl1/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125490v8/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125490v8/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125490v8/shard-apl4/boot.html">PASS</a>) ([i915#8293])</=
p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13814/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13814/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13814/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13814/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13814/shard-glk6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13814/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13814/shard-glk4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3814/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/shar=
d-glk1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13814/shard-glk1/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125490v8/shard-glk9/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk9/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8=
/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125490v8/shard-glk9/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125490v8/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125490v8/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125490v8/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125490v8/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125490v8/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125490v8/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk4/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/s=
hard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125490v8/shard-glk4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25490v8/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125490v8/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-glk6/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@drm_fdinfo@busy-hang@bcs0.=
html">SKIP</a> ([i915#8414]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@drm_fdinfo@most-busy-check=
-all@rcs0.html">FAIL</a> ([i915#7742]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125490v8/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-h=
ang.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@fbdev@info.html">SKIP</a> =
([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-r=
kl-5/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_ctx_persistence@engin=
es-hostile@vcs0.html">FAIL</a> ([i915#2410]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_ctx_persistence@heart=
beat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2=
-6/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> ([i915#8555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_balancer@parallel=
-bb-first.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_exec_capture@capture-=
invisible@lmem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@gem_exec_capture@capture-inv=
isible@smem0.html">SKIP</a> ([fdo#109271] / [i915#6334])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> ([i915#9606]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_exec_fair@basic-none-=
vip.html">SKIP</a> ([i915#4473] / [i915#4771]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5490v8/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([=
i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_exec_fair@basic-thrott=
le.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_fence@submit.htm=
l">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_exec_fence@submit3.htm=
l">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> ([fdo#109313])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> ([fdo#112283])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> ([fdo#112283]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> ([i915#3281]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_exec_reloc@basic-scano=
ut@bcs0.html">SKIP</a> ([i915#3639]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_exec_reloc@basic-wc-ac=
tive.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_exec_reloc@basic-wc-cp=
u.html">SKIP</a> ([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12549=
0v8/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3=
281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_fenced_exec_thrash@to=
o-many-fences.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-glk2/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_lmem_swapping@random.=
html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_madvise@dontneed-befor=
e-pwrite.html">SKIP</a> ([i915#3282]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_mmap@bad-size.html">S=
KIP</a> ([i915#4083]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_mmap_gtt@basic-write-=
cpu-read-gtt.html">SKIP</a> ([i915#4077]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-co=
py.html">SKIP</a> ([i915#4077]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_mmap_wc@copy.html">SKI=
P</a> ([i915#4083]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> ([i915#3282]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282]) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_pxp@create-protected-=
buffer.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gem_pxp@reject-modify-cont=
ext-protection-off-1.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@gem_render_copy@y-tiled.h=
tml">SKIP</a> ([i915#8428]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@gem_render_copy@yf-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/sha=
rd-rkl-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#3282]) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_softpin@evict-snoop.h=
tml">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@gem_userptr_blits@access-=
control.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@gen3_render_linear_blits.h=
tml">SKIP</a> ([fdo#109289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gen3_render_tiledx_blits.h=
tml">SKIP</a> ([fdo#109289]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/=
shard-rkl-1/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> ([i915#2856]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@i915_fb_tiling.html">SKIP<=
/a> ([i915#4881])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@detector@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_hangman@detector@vcs=
0.html">FAIL</a> ([i915#8456]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> ([i915#7091])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125490v8/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL<=
/a> ([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-snb4/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_pm_rps@thresholds-id=
le-park@gt0.html">SKIP</a> ([i915#8925]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@i915_pm_rps@thresholds-id=
le-park@gt1.html">SKIP</a> ([i915#3555] / [i915#8925]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0=
.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/sha=
rd-rkl-7/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_addfb_basic@bo-too-sma=
ll-due-to-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg1-19/igt@kms_async_flips@crc@pipe-=
c-hdmi-a-1.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769] / [i915#3555]=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@kms_atomic_transition@plane-=
all-modeset-transition-internal-panels.html">SKIP</a> ([fdo#109271] / [i915=
#1769])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i91=
5#3555])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-r=
otate-0.html">SKIP</a> ([i915#4098]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> ([fdo#111614]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> ([fdo#111614]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271]) +77 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-r=
otate-180.html">SKIP</a> ([i915#5190]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#111615]) +10 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#110723]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_big_joiner@2x-modeset=
.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> ([i915#4087] / [i915#7213]) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> ([fdo#111827]) +3 other tests skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> ([fdo#111827]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> ([i915#7828]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_chamelium_frames@hdmi-=
crc-multiple.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_color@deep-color.html"=
>SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@kms_color@gamma@pipe-a.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard=
-rkl-5/igt@kms_color@gamma@pipe-a.html">SKIP</a> ([i915#4098]) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_content_protection@ue=
vent@pipe-a-dp-4.html">FAIL</a> ([i915#1339])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> ([fdo#111767] / [i915#3546])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_cursor_legacy@cursora=
-vs-flipb-legacy.html">SKIP</a> ([i915#3546]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_cursor_legacy@cursorb-=
vs-flipa-legacy.html">SKIP</a> ([i915#1845] / [i915#4098]) +16 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [i915#5354]) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125490v8/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">S=
KIP</a> ([i915#1845] / [i915#4098]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i91=
5#4213])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4213])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@d=
rrs-hdmi-a-2.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip<=
/p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@d=
rrs-hdmi-a-2.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-1.html">SKIP</a> ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@f=
bc-hdmi-a-2.html">SKIP</a> ([i915#9227])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_dirtyfb@dirtyfb-ioctl@f=
bc-hdmi-a-2.html">SKIP</a> ([i915#9227])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg1-19/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-1.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> ([fdo#109274]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip@2x-dpms-vs-vblan=
k-race-interruptible.html">SKIP</a> ([i915#3637]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> ([fdo#111767] / [i915#3637])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111767])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip@2x-flip-vs-rmfb-i=
nterruptible.html">SKIP</a> ([fdo#111767] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip@2x-flip-vs-wf_vbl=
ank-interruptible.html">SKIP</a> ([fdo#111825]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-snb7/igt@kms_flip@2x-modeset-vs-vbla=
nk-race.html">SKIP</a> ([fdo#109271]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip@basic-flip-vs-wf_=
vblank.html">SKIP</a> ([i915#3637] / [i915#4098]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-7/igt@kms_flip@flip-vs-suspend@c-hdmi-a3.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5490v8/shard-dg2-1/igt@kms_flip@flip-vs-suspend@c-hdmi-a3.html">FAIL</a> ([=
fdo#103375])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i=
915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a=
> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) +6 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1849] / [i915#=
4098]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-fullscreen.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-spr-indfb-fullscreen.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +41 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +23=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) +30 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-y.html">SKIP</a> ([i915#5460]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1849] / [i915#4=
098]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#111825] / [i915#1=
825]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +26 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +11 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_getfb@getfb-reject-ccs=
.html">SKIP</a> ([i915#6118])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_hdr@static-swap.html">=
SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_invalid_mode@clock-to=
o-high@pipe-c-edp-1.html">SKIP</a> ([i915#9457]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_invalid_mode@int-max-c=
lock.html">SKIP</a> ([i915#3555] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> ([fdo#109289]) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125490v8/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
b-dp-1.html">INCOMPLETE</a> ([i915#9392])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-dp-1.html">FAIL</a> ([i915#4573]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_plane_multiple@tiling=
-y.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_plane_scaling@intel-max=
-src-size.html">SKIP</a> ([i915#6953])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_plane_scaling@intel-max=
-src-size.html">SKIP</a> ([i915#6953] / [i915#8152])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg1-18/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg1-13/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> ([i915=
#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> ([i=
915#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_plane_scaling@planes-=
downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> ([i915#5235]) +8 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#8152]) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> ([i915#3555=
] / [i915#5235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg1-18/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> ([=
i915#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_properties@crtc-properties-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125490v8/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html">SKIP<=
/a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> ([i915#658]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_psr@sprite_blt.html">=
SKIP</a> ([i915#1072]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_psr@sprite_plane_onoff=
.html">SKIP</a> ([i915#1072]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> ([i915#4235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_rotation_crc@sprite-ro=
tation-270.html">INCOMPLETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> ([i915#3555] / [i915#8809]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@kms_tv_load_detect@load-de=
tect.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125490v8/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak=
@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-snb1/igt@kms_vblank@ts-continuation-=
suspend@pipe-b-hdmi-a-1.html">DMESG-WARN</a> ([i915#8841]) +2 other tests d=
mesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@kms_vrr@flip-suspend.html=
">SKIP</a> ([i915#3555] / [i915#8808]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> ([i915#2437])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> ([i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@perf@mi-rpc.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@=
perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/=
shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484])</=
li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1254=
90v8/shard-mtlp-3/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> ([i915=
#4349])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> ([i915#6806])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@prime_udl.html">SKIP</a> (=
[fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-6/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([fdo#109295] / [fdo#111656] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@syncobj_timeline@invalid-=
multi-wait-all-available-unsubmitted-signaled.html">FAIL</a> ([i915#9583]) =
+3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submit=
ted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@syncobj_timeline@invalid-m=
ulti-wait-all-available-unsubmitted-submitted.html">FAIL</a> ([i915#9583])<=
/li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@syncobj_timeline@invalid-m=
ulti-wait-available-unsubmitted.html">FAIL</a> ([i915#9583]) +1 other test =
fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-glk3/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted.html">FAIL</a> ([i915#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@syncobj_timeline@invalid-s=
ingle-wait-available-unsubmitted.html">FAIL</a> ([i915#9582]) +1 other test=
 fail</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_create_bo@create-bo-zeroed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@v3d/v3d_create_bo@create-b=
o-zeroed.html">SKIP</a> ([fdo#109315]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-1/igt@v3d/v3d_job_submission@arr=
ay-job-submission.html">SKIP</a> ([i915#2575]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@v3d/v3d_submit_csd@bad-bo=
.html">SKIP</a> ([i915#2575]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-glk2/igt@v3d/v3d_submit_csd@bad-pad.=
html">SKIP</a> ([fdo#109271]) +72 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-read-waits-until-write-done:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@vc4/vc4_dmabuf_poll@poll-r=
ead-waits-until-write-done.html">SKIP</a> ([i915#7711]) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-dg2-7/igt@vc4/vc4_mmap@mmap-bo.html"=
>SKIP</a> ([i915#7711]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-invalid-pointer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125490v8/shard-mtlp-8/igt@vc4/vc4_perfmon@get-value=
s-invalid-pointer.html">SKIP</a> ([i915#7711]) +7 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SK=
IP</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125490v8/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg2-11/igt@gem_c=
cs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">SKIP</a> ([i915#6252]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@gem_ctx_persistence@legacy-en=
gines-hang@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-2/igt@gem_eio@hibernate.html">ABORT</a> ([i915#797=
5] / [i915#8213] / [i915#9262]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125490v8/shard-mtlp-5/igt@gem_eio@hibernate.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125490v8/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> ([=
i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125490v8/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html">PASS</a> +6=
 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-5/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a=
> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125490v8/shard-mtlp-6/igt@gem_exec_suspend@basic-s3@smem.html">PA=
SS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> ([i915#4936] / [i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125490v8/shard-dg1-13/igt@gem_lmem_swapping@=
smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> ([=
i915#1850]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125490v8/shard-rkl-7/igt@gem_mmap_wc@set-cache-level.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@gem_pread@self.html">SKIP</a> ([i915#3282]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8=
/shard-rkl-5/igt@gem_pread@self.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html">SKIP<=
/a> ([i915#2527]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125490v8/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-apl1/igt@i915_pm_rps@engine-order.html">FAIL</a> ([i915=
#6537]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125490v8/shard-apl1/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12549=
0v8/shard-rkl-5/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125490v8/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-tglu-8/igt@kms_=
big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</=
a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tile=
d-gen12-rc-ccs.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_ccs@pipe-=
a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html">PASS</a> +11 other tes=
ts pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl7/igt@kms_cursor=
_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> +1 ot=
her test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849]=
 / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125490v8/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html">PASS</a> +8 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-=
hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125490v8/shard-glk8/igt@kms_flip@2x-flip-vs-exp=
ired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp=
1.html">ABORT</a> ([i915#9414]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125490v8/shard-mtlp-3/igt@kms_flip@flip-vs-suspend=
-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13814/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> ([i915#8717]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/=
shard-dg2-6/igt@kms_pm_rpm@i2c.html">PASS</a></p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13814/shard-rkl-5/igt@kms_pm_rpm@i2c.html">SKIP</a> ([fdo#109308]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8=
/shard-rkl-1/igt@kms_pm_rpm@i2c.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress-no-wait}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-=
wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (=
[i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125490v8/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@system-suspend-modeset}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-dg2-5/igt@kms_pm_rpm@system-suspend-modeset.html">FAIL<=
/a> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125490v8/shard-dg2-11/igt@kms_pm_rpm@system-suspend-modeset.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_properties@plane-properties-le=
gacy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-90.html">SK=
IP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_rotation_crc@prima=
ry-rotation-90.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-27=
0.html">INCOMPLETE</a> ([i915#9475]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-4/igt@kms_rotation_crc@pri=
mary-y-tiled-reflect-x-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125490v8/shard-tglu-6/igt@kms_universal_plane@=
cursor-fb-leak@pipe-d-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a=
-dp-1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-apl1/igt@kms_vblank@ts-con=
tinuation-dpms-suspend@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</=
a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125490v8/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html">P=
ASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125490v8/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html">SKI=
P</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125490v8/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a=
> ([i915#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@gem_pread@exhaustion.html">SKIP</a> ([i915#32=
82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5490v8/shard-rkl-5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([=
i915#2658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125490v8/shard-rkl-1/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> ([=
i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([=
i915#2532]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125490v8/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([=
i915#2527])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1845] / [i915#4098]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/=
shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP=
</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.htm=
l">SKIP</a> ([i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@4-tiled-=
max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</=
a> ([fdo#111614] / [i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@linear-8bpp-ro=
tate-90.html">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp=
-rotate-90.html">SKIP</a> ([fdo#111614] / [i915#3638]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKI=
P</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@yf-tiled-16b=
pp-rotate-90.html">SKIP</a> ([fdo#110723]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP=
</a> ([fdo#110723]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125490v8/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.ht=
ml">SKIP</a> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i9=
15#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb.html">S=
KIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> ([i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125490v8/shard-rkl-5/igt@kms_content_protection@atomic-dpms.htm=
l">SKIP</a> ([i915#1845] / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html"=
>SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125490v8/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-5=
12x170.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html=
">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-=
max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125490v8/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170=
.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> ([i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-=
movement-512x170.html">SKIP</a> ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.ht=
ml">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-1/igt@kms_cursor_legac=
y@2x-cursor-vs-flip-legacy.html">SKIP</a> ([fdo#111825]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tra=
nsitions-varying-size.html">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/shard-rkl-5/igt@kms_c=
ursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a=
> ([i915#1845] / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> ([i915#1845] / [i915#4098=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1254=
90v8/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic=
-transitions-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#35=
55] / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125490v8/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([=
i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13814/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([fdo#110189=
] / [i915#3955]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125490v8/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#=
3955])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.0">SKIP</a> ([i915#=
3955]) -&gt; [SKIP][520] ([fdo#110189] / [i915#3955])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5413247659399927265==--
