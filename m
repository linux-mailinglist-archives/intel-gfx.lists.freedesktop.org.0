Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8519462697D
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Nov 2022 13:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3A710E141;
	Sat, 12 Nov 2022 12:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DBD5C10E128;
 Sat, 12 Nov 2022 12:47:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4588AA0ED;
 Sat, 12 Nov 2022 12:47:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3945475400778797953=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 12 Nov 2022 12:47:26 -0000
Message-ID: <166825724683.14829.3754468069873626910@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Finish_=28de=29gamma_readout_=28rev4=29?=
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

--===============3945475400778797953==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Finish (de)gamma readout (rev4)
URL   : https://patchwork.freedesktop.org/series/79614/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12371_full -> Patchwork_79614v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_79614v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_79614v4_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_79614v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2] +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-iclb:         [PASS][7] -> [DMESG-WARN][8] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl2/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
    - shard-glk:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk5/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-tglb7/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb1/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl7/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb1/igt@kms_plane@pixel-format@pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb6/igt@kms_plane@pixel-format@pipe-a-planes.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - {shard-rkl}:        [SKIP][19] ([i915#1845] / [i915#4098]) -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - {shard-dg1}:        [PASS][21] -> [DMESG-WARN][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-dg1-18/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-dg1-12/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - {shard-dg1}:        [PASS][23] -> [INCOMPLETE][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-dg1-12/igt@kms_plane@pixel-format@pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-dg1-17/igt@kms_plane@pixel-format@pipe-a-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_79614v4_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49]) -> ([PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [FAIL][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74]) ([i915#4338])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [FAIL][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99]) ([i915#4386]) -> ([PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl1/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl1/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl1/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl2/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl2/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl2/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl2/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl7/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl7/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl7/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl7/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl2/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl2/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl2/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][125] -> [SKIP][126] ([i915#4525])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][127] ([i915#2846])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][128] -> [FAIL][129] ([i915#2846])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][130] ([i915#2842])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][131] -> [FAIL][132] ([i915#2842])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2190])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2190])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#4613]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#4613]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][137] -> [DMESG-WARN][138] ([i915#180]) +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/igt@gem_workarounds@suspend-resume.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][139] -> [SKIP][140] ([i915#4281])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][141] ([i915#5584])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-2.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#5286])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][143] ([fdo#111615])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#3886]) +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html
    - shard-glk:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#3886]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#3689] / [i915#3886]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#3886]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#3689]) +2 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-glk:          NOTRUN -> [SKIP][149] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color_chamelium@ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl4/igt@kms_color_chamelium@ctm-red-to-blue.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#7118])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([i915#3555])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:
    - shard-skl:          [PASS][155] -> [INCOMPLETE][156] ([i915#6951])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][157] ([fdo#109274] / [fdo#111825])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglb:         NOTRUN -> [SKIP][158] ([fdo#109274] / [fdo#111825] / [i915#3637]) +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][159] -> [FAIL][160] ([i915#79])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1:
    - shard-tglb:         [PASS][161] -> [FAIL][162] ([i915#79])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][163] -> [FAIL][164] ([i915#79])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][165] -> [FAIL][166] ([i915#2122])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][167] ([i915#3555])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][168] ([i915#2672]) +5 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][169] ([i915#2672] / [i915#3555]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][170] ([fdo#109271]) +49 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][171] ([fdo#109271]) +33 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][172] ([i915#6497]) +3 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][173] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][174] ([fdo#109271]) +94 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-skl:          [PASS][175] -> [DMESG-WARN][176] ([i915#1982])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - shard-glk:          [PASS][177] -> [INCOMPLETE][178] ([IGT#6])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk3/igt@kms_plane@pixel-format@pipe-a-planes.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk1/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][179] -> [SKIP][180] ([i915#5235]) +2 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][181] ([fdo#109271] / [i915#658])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][182] -> [SKIP][183] ([fdo#109441]) +4 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [PASS][184] -> [SKIP][185] ([i915#5519])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglb:         NOTRUN -> [SKIP][186] ([fdo#111615] / [i915#5289])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         NOTRUN -> [SKIP][187] ([i915#2437])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_writeback@writeback-check-output.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][188] ([fdo#109271] / [i915#2994]) +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][189] ([i915#658]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-3/igt@feature_discovery@psr1.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][191] ([i915#6268]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglb:         [FAIL][193] ([i915#6268]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][195] ([i915#4525]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - {shard-rkl}:        [SKIP][197] ([i915#6247]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][199] ([i915#2842]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][201] ([i915#2842]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][203] ([i915#2190]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@relocations:
    - {shard-rkl}:        [SKIP][205] ([i915#3281]) -> [PASS][206] +1 similar issue
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-6/igt@gem_userptr_blits@relocations.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-5/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][207] ([i915#5566] / [i915#716]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/igt@gen9_exec_parse@allowed-single.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@gen9_exec_parse@allowed-single.html
    - shard-glk:          [DMESG-WARN][209] ([i915#5566] / [i915#716]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@unaligned-jump:
    - {shard-rkl}:        [SKIP][211] ([i915#2527]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - {shard-rkl}:        [SKIP][213] ([i915#4098]) -> [PASS][214] +2 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_backlight@fade:
    - {shard-rkl}:        [SKIP][215] ([i915#3012]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-5/igt@i915_pm_backlight@fade.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@i915_pm_backlight@fade.html

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-rkl}:        [SKIP][217] ([i915#3361]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][219] ([i915#3989] / [i915#454]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-apl:          [FAIL][221] ([i915#4275]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/igt@i915_pm_dc@dc9-dpms.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - {shard-dg1}:        [FAIL][223] ([i915#3591]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@fences-dpms:
    - {shard-rkl}:        [SKIP][225] ([i915#1849]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-3/igt@i915_pm_rpm@fences-dpms.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][227] ([fdo#109308]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-3/igt@i915_pm_rpm@pm-tiling.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - {shard-rkl}:        [FAIL][229] ([i915#7478]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-4/igt@i915_pm_rpm@system-suspend-devices.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][231] ([i915#5584]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - {shard-rkl}:        [SKIP][233] ([i915#1845] / [i915#4098]) -> [PASS][234] +16 similar issues
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_color@gamma@pipe-a-edp-1:
    - shard-skl:          [DMESG-WARN][235] ([i915#1982]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl4/igt@kms_color@gamma@pipe-a-edp-1.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl1/igt@kms_color@gamma@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][237] ([i915#72]) -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][239] ([i915#79]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][241] -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:
    - {shard-dg1}:        [FAIL][243] ([fdo#103375]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-dg1-18/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - {shard-rkl}:        [SKIP][245] ([i915#1849] / [i915#4098]) -> [PASS][246] +8 similar issues
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_plane@plane-position-hole@pipe-b-planes:
    - {shard-rkl}:        [SKIP][247] ([i915#1849] / [i915#3558]) -> [PASS][248] +1 similar issue
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-5/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [SKIP][249] ([i915#5235]) -> [PASS][250] +2 similar issues
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][251] ([fdo#109441]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@suspend:
    - {shard-rkl}:        [SKIP][253] ([i915#1072]) -> [PASS][254] +1 similar issue
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-5/igt@kms_psr@suspend.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_psr@suspend.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-iclb:         [SKIP][255] ([i915#5519]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][257] ([i915#5519]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf@mi-rpc:
    - {shard-rkl}:        [SKIP][259] ([i915#2434]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-rkl-6/igt@perf@mi-rpc.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-idle@vcs1:
    - {shard-dg1}:        [FAIL][261] ([i915#4349]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-dg1-15/igt@perf_pmu@busy-idle@vcs1.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-dg1-17/igt@perf_pmu@busy-idle@vcs1.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         [WARN][263] ([i915#2658]) -> [INCOMPLETE][264] ([i915#7248])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-tglb8/igt@gem_pwrite@basic-exhaustion.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          [FAIL][265] ([i915#4573]) -> [DMESG-FAIL][266] ([IGT#6]) +1 similar issue
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][267] ([i915#2920]) -> [SKIP][268] ([i915#658]) +1 similar issue
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][269] ([i915#658]) -> [SKIP][270] ([i915#2920]) +1 similar issue
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][271] ([fdo#111068] / [i915#658]) -> [SKIP][272] ([i915#2920])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][273], [FAIL][274], [FAIL][275]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][276], [FAIL][277], [FAIL][278], [FAIL][279], [FAIL][280], [FAIL][281], [FAIL][282], [FAIL][283], [FAIL][284], [FAIL][285], [FAIL][286], [FAIL][287]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/igt@runner@aborted.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/igt@runner@aborted.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/igt@runner@aborted.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@runner@aborted.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/igt@runner@aborted.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/igt@runner@aborted.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@runner@aborted.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@runner@aborted.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@runner@aborted.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/igt@runner@aborted.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/igt@runner@aborted.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl2/igt@runner@aborted.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/igt@runner@aborted.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@runner@aborted.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4275]: https://gitlab.freedesktop.org/drm/intel/issues/4275
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5584]: https://gitlab.freedesktop.org/drm/intel/issues/5584
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6951]: https://gitlab.freedesktop.org/drm/intel/issues/6951
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7478]: https://gitlab.freedesktop.org/drm/intel/issues/7478
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12371 -> Patchwork_79614v4

  CI-20190529: 20190529
  CI_DRM_12371: 3abfcf048c08ca9c7bbaba0c57c699453fd37a2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_79614v4: 3abfcf048c08ca9c7bbaba0c57c699453fd37a2e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/index.html

--===============3945475400778797953==
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
<tr><td><b>Series:</b></td><td>drm/i915: Finish (de)gamma readout (rev4)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/79614/">https://patchwork.freedesktop.org/series/79614/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/index.html">https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12371_full -&gt; Patchwork_79614v4=
_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_79614v4_full absolutely ne=
ed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_79614v4_full, please notify your bug team to allo=
w them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
79614v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-snb6/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614=
v4/shard-snb7/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a> +6 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v4/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">DMESG-WARN</a> =
+4 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-skl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v4/shard-skl7/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">INCOMPLETE</a> =
+3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v4/shard-iclb7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WARN</a> +=
4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-apl2/igt@kms_plane@pixel-format-source-clamping@pipe-a-p=
lanes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-apl7/igt@kms_plane@pixel-format-source-clamping=
@pipe-a-planes.html">DMESG-WARN</a> +8 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-glk5/igt@kms_plane@pixel-format-source-clamping@pipe-a-p=
lanes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-glk7/igt@kms_plane@pixel-format-source-clamping=
@pipe-a-planes.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-tglb7/igt@kms_plane@pixel-format-source-clamping@pipe-b-=
planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v4/shard-tglb1/igt@kms_plane@pixel-format-source-clampi=
ng@pipe-b-planes.html">DMESG-WARN</a> +8 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-skl7/igt@kms_plane@pixel-format-source-clamping@pipe-b-p=
lanes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-skl1/igt@kms_plane@pixel-format-source-clamping=
@pipe-b-planes.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb1/igt@kms_plane@pixel-format@pipe-a-planes.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v4/shard-iclb6/igt@kms_plane@pixel-format@pipe-a-planes.html">INCOMPLE=
TE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_79614v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html">DM=
ESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-dg1-18/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-dg1-12/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">DMESG-WARN=
</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-dg1-12/igt@kms_plane@pixel-format@pipe-a-planes.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_79614v4/shard-dg1-17/igt@kms_plane@pixel-format@pipe-a-planes.html">INCOMP=
LETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_79614v4_full that come from know=
n issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12371/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12371/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12371/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12371/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12371/shard-snb6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12371/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2371/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12371/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12371/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7961=
4v4/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_79614v4/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_79614v4/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard=
-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-snb2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4=
/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_79614v4/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_79614v4/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v4/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb6/boot.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-=
snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_79614v4/shard-snb6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-snb5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v4/shard-snb5/boot.html">PASS</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4338">i915#4338</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12371/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12371/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12371/shard-apl2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/sha=
rd-apl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12371/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12371/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12371/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12371/shard-apl6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2371/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12371/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12371/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_79614v4/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_79614v4/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl2/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard=
-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-apl2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_79614v4/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_79614v4/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v4/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-=
apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_79614v4/shard-apl7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v4/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79=
614v4/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_79614v4/shard-apl8/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@gem_exec_fair@basic-deadline.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/sh=
ard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@gem_exec_fair@basic-none-rru=
l@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_796=
14v4/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)=
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@gem_huc_copy@huc-copy.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@gem_huc_copy@huc-copy.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@gem_lmem_swapping@heavy-mult=
i.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-apl8/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4=
/shard-apl3/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-icl=
b3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hd=
mi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-glk8/igt@kms_atomic_transition@plane-=
all-modeset-transition-fencing@pipe-b-hdmi-a-2.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5584">i915#5584</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@kms_chamelium@dp-crc-single.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_chamelium@dp-hpd-after-=
suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@kms_chamelium@vga-hpd-after-=
suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-skl4/igt@kms_color_chamelium@ctm-red-=
to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_content_protection@srm.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_cursor_crc@cursor-offsc=
reen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl10/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_79614v4/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6951">i915#6951</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_cursor_legacy@2x-long-c=
ursor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_flip@2x-flip-vs-absolut=
e-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3637">i915#3637</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_79614v4/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@d-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_79614v4/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@d-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_79614v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl6/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79=
614v4/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-32=
bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-iclb7/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-skl4/igt@kms_frontbuffer_tracking@fbc=
-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +49 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-glk5/igt@kms_frontbuffer_tracking@fbc=
psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +33 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6497">i915#6497</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@kms_frontbuffer_tracking@psr=
-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +94 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl7/igt@kms_plane@pixel-format-source-clamping@pipe-a-=
planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v4/shard-skl1/igt@kms_plane@pixel-format-source-clampin=
g@pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-glk3/igt@kms_plane@pixel-format@pipe-a-planes.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-glk1/igt@kms_plane@pixel-format@pipe-a-planes.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6"=
>IGT#6</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_plane_scali=
ng@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@kms_psr2_sf@cursor-plane-mov=
e-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-ic=
lb5/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_79614v4/shard-iclb6/igt@kms_psr_stress_test@invalidate-prima=
ry-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-tglb3/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@sysfs_clients@create.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-3/igt@feature_discovery@psr1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/sh=
ard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_79614v4/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6247">i915#624=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v4/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_79614v4/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/s=
hard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-6/igt@gem_userptr_blits@relocations.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_7=
9614v4/shard-rkl-5/igt@gem_userptr_blits@relocations.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-apl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915=
#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_79614v4/shard-apl3/igt@gen9_exec_parse@allowed-single.html">PASS</a=
></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12371/shard-glk6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915=
#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_79614v4/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a=
></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
79614v4/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-1/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_79614v4/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.ht=
ml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-5/igt@i915_pm_backlight@fade.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/=
shard-rkl-6/igt@i915_pm_backlight@fade.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/s=
hard-rkl-4/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/=
shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-apl8/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4275">i915#4275</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shar=
d-apl8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_79614v4/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-3/igt@i915_pm_rpm@fences-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4=
/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-3/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4=
/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-4/igt@i915_pm_rpm@system-suspend-devices.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7478">i915=
#7478</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_79614v4/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transi=
tion-fencing@pipe-b-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5584">i915#5584</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-glk8/igt@kms=
_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_big_fb@x-ti=
led-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +16 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl4/igt@kms_color@gamma@pipe-a-edp-1.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v4/shard-skl1/igt@kms_color@gamma@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/72">i915#72</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_79614v4/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor=
-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v4/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.=
html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptibl=
e@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@d-hdm=
i-a4.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D103375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v4/shard-dg1-18/igt@kms_flip@flip-vs-suspend-inte=
rruptible@d-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_frontbuffer_tracking@ps=
r-indfb-scaledprimary.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-5/igt@kms_plane@plane-position-hole@pipe-b-planes.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_79614v4/shard-rkl-6/igt@kms_plane@plane-position-hole@pi=
pe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms=
_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10=
9441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_79614v4/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-5/igt@kms_psr@suspend.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-r=
kl-6/igt@kms_psr@suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms_psr_stress_test@flip-prima=
ry-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v4/shard-tglb7/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-rkl-5=
/igt@perf@mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-dg1-15/igt@perf_pmu@busy-idle@vcs1.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
4/shard-dg1-17/igt@perf_pmu@busy-idle@vcs1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-tglb8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_796=
14v4/shard-tglb7/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4573">i915#4573</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_79614v4/shard-apl8/igt@kms_plane_alpha_blend@alpha-basic@pipe=
-c-dp-1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/igt-gpu-tools/issues/6">IGT#6</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_79614v4/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-c=
ontinuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12371/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_79614v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12371/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12371/shard-apl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12371/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79=
614v4/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_79614v4/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_79614v4/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl7/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_79614v4/shard-apl1/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard=
-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_79614v4/shard-apl2/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_79614v=
4/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_79614v4/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_79614v4/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12371 -&gt; Patchwork_79614v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12371: 3abfcf048c08ca9c7bbaba0c57c699453fd37a2e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7051: 7da9f813cdacb80d4471fc6ddb493bae9c46913d @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_79614v4: 3abfcf048c08ca9c7bbaba0c57c699453fd37a2e @ git://anong=
it.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3945475400778797953==--
