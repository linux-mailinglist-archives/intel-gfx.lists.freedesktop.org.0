Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4273048BB77
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 00:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0496510E2C7;
	Tue, 11 Jan 2022 23:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87F3610E138;
 Tue, 11 Jan 2022 23:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79C74A00FD;
 Tue, 11 Jan 2022 23:33:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0781010409552712761=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashish Arora" <ashisharora.linux@outlook.com>
Date: Tue, 11 Jan 2022 23:33:39 -0000
Message-ID: <164194401946.24979.10679292529460449872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
In-Reply-To: <31D69334-DEF9-41B7-968B-B847796926FF@outlook.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Discard_large_BIOS_framebuffers_causing_display_corrup?=
 =?utf-8?b?dGlvbi4gKHJldjMp?=
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

--===============0781010409552712761==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Discard large BIOS framebuffers causing display corruption. (rev3)
URL   : https://patchwork.freedesktop.org/series/98683/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11066_full -> Patchwork_21968_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21968_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21968_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21968_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-iclb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb8/boot.html
    - shard-snb:          ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75]) -> ([PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [FAIL][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb4/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb4/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb4/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb7/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb7/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb7/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb7/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-iclb:         [PASS][101] -> [SKIP][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/igt@i915_pm_rpm@system-suspend-modeset.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/igt@i915_pm_rpm@system-suspend-modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_21968_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [FAIL][124], [PASS][125], [PASS][126], [PASS][127]) ([i915#4392]) -> ([PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk1/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk1/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk2/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk2/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk2/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk3/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk3/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk3/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk4/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk4/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk4/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk6/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk6/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk7/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk7/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk7/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk8/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk8/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk8/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk9/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk9/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk4/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk4/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk5/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk5/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk5/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk7/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk7/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk8/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk8/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk8/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk9/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk9/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk9/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk1/boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk1/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk1/boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk2/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk2/boot.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk2/boot.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk3/boot.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk3/boot.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk3/boot.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk4/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][153] ([i915#3002])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][154] -> [FAIL][155] ([i915#232])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [PASS][156] -> [SKIP][157] ([i915#4525]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][158] ([i915#4547])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl8/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][159] ([i915#2842])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][160] -> [FAIL][161] ([i915#2842]) +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@basic:
    - shard-kbl:          NOTRUN -> [SKIP][162] ([fdo#109271] / [i915#4613])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl7/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][163] ([fdo#109271] / [i915#4613]) +1 similar issue
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl8/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#4613])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-apl3/igt@gem_lmem_swapping@random.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][165] ([i915#2658])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][166] ([i915#2658])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglb:         NOTRUN -> [SKIP][167] ([i915#4270]) +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          NOTRUN -> [SKIP][168] ([fdo#109271]) +35 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-apl3/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][169] ([fdo#109271]) +37 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-iclb:         NOTRUN -> [SKIP][170] ([i915#3323])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-tglb:         NOTRUN -> [SKIP][171] ([i915#3323])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][172] ([i915#3297])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][173] -> [DMESG-WARN][174] ([i915#1436] / [i915#716])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][175] ([i915#2527] / [i915#2856]) +1 similar issue
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb8/igt@gen9_exec_parse@shadow-peek.html
    - shard-iclb:         NOTRUN -> [SKIP][176] ([i915#2856])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][177] ([fdo#109271] / [i915#1937])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         NOTRUN -> [SKIP][178] ([fdo#109289] / [fdo#111719])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][179] -> [DMESG-WARN][180] ([i915#180]) +1 similar issue
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][181] -> [DMESG-WARN][182] ([i915#118]) +1 similar issue
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][183] ([fdo#109271] / [i915#3777])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][184] ([fdo#111614])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][185] ([i915#3743])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][186] ([fdo#109271] / [i915#3777])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][187] ([fdo#111615])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][188] ([fdo#109278]) +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][189] ([fdo#109271] / [i915#3886]) +4 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][190] ([fdo#109271] / [i915#3886])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][191] ([fdo#109271] / [i915#3886])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][192] ([fdo#109271] / [i915#3886]) +4 similar issues
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][193] ([i915#3689] / [i915#3886])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][194] ([i915#3689]) +1 similar issue
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][195] ([fdo#109271]) +41 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][196] ([fdo#111615] / [i915#3689]) +2 similar issues
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][197] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-apl2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-glk:          NOTRUN -> [SKIP][198] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][199] ([fdo#109271]) +90 similar issues
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][200] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][201] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
    - shard-skl:          NOTRUN -> [SKIP][202] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
    - shard-iclb:         NOTRUN -> [SKIP][203] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][204] ([i915#1063])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][205] ([i915#3359]) +2 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][206] ([fdo#109279] / [i915#3359])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][207] ([i915#3319])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][208] ([i915#4103])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [PASS][209] -> [FAIL][210] ([i915#2346])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/index.html

--===============0781010409552712761==
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
<tr><td><b>Series:</b></td><td>drm/i915: Discard large BIOS framebuffers ca=
using display corruption. (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98683/">https://patchwork.freedesktop.org/series/98683/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21968/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11066_full -&gt; Patchwork_21968_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21968_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21968_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21968_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb8/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11066/shard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11066/shard-iclb7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1106=
6/shard-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11066/shard-iclb7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shar=
d-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11066/shard-iclb1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb6/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11066/shard-iclb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb6/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11066/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11066/shard-iclb2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066=
/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11066/shard-iclb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard=
-iclb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11066/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-iclb4/boot.html">PASS</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/s=
hard-iclb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-iclb1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb2/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2196=
8/shard-iclb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21968/shard-iclb2/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1968/shard-iclb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21968/shard-iclb3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21968/shard-iclb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21968/shard-iclb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21968/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb5=
/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21968/shard-iclb5/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-ic=
lb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21968/shard-iclb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard=
-iclb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21968/shard-iclb7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-iclb8/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/sh=
ard-iclb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21968/shard-iclb8/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1066/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11066/shard-snb7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shar=
d-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11066/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11066/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11066/shard-snb5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11066/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1066/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11066/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21968/shard-snb5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-snb5/boot.html">PAS=
S</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rpm@system-suspend-modeset:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb2/igt@i915_pm_rpm@system-suspend-modeset.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
968/shard-iclb5/igt@i915_pm_rpm@system-suspend-modeset.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21968_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11066/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11066/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11066/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11066/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11066/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11066/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11066/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1066/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11066/shard-glk8/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11066/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11066/shard-glk9/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-glk4/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shard-tg=
lb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21968/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-skl8/igt@gem_exec_capture@pi@rcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-glk6/igt@gem_exec_fair@basic-none-solo@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
968/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-kbl7/igt@gem_lmem_swapping@basic.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-skl8/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-apl3/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-glk6/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-kbl7/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@gem_pxp@verify-pxp-execution-=
after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-apl3/igt@gem_render_copy@linear-to-vebo=
x-y-tiled.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-glk6/igt@gem_render_copy@y-tiled-to-veb=
ox-x-tiled.html">SKIP</a> ([fdo#109271]) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-tglb8/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21968/shar=
d-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-tglb8/igt@gen9_exec_parse@shadow-peek.ht=
ml">SKIP</a> ([i915#2527] / [i915#2856]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-iclb2/igt@gen9_exec_parse@shadow-peek.ht=
ml">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@i915_pm_rc6_residency@media-r=
c6-accuracy.html">SKIP</a> ([fdo#109289] / [fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21968/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html">DMES=
G-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
68/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> (=
[i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-iclb2/igt@kms_ccs@pipe-b-bad-aux-stride=
-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-skl2/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_ccs@pipe-c-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@kms_ccs@pipe-d-bad-pixel-forma=
t-yf_tiled_ccs.html">SKIP</a> ([fdo#109271]) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-apl2/igt@kms_chamelium@common-hpd-after=
-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-glk6/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> ([fdo#109271]) +90 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-tglb8/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues=
</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-=
red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues<=
/p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21968/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_content_protection@srm.ht=
ml">SKIP</a> ([i915#1063])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-=
32x10-sliding.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21968/shard-tglb7/igt@kms_cursor_legacy@basic-busy-=
flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11066/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21968/shard-iclb7/igt@kms_cursor_legacy@flip-vs=
-cursor-atomic-transitions-varying-size.">FAIL</a> ([i915#2346])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0781010409552712761==--
