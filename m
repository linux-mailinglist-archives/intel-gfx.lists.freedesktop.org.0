Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 142904B13F6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 18:14:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D31010E8B1;
	Thu, 10 Feb 2022 17:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 882D410E8AA;
 Thu, 10 Feb 2022 17:14:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84D0DA66C9;
 Thu, 10 Feb 2022 17:14:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3744119381391175419=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 10 Feb 2022 17:14:08 -0000
Message-ID: <164451324853.24641.14316460710885292683@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220210103107.24492-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220210103107.24492-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_Fix_the_plane_end_Y_offset_check?=
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

--===============3744119381391175419==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: Fix the plane end Y offset check
URL   : https://patchwork.freedesktop.org/series/99958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11212_full -> Patchwork_22238_full
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

  Here are the unknown changes that may have been introduced in Patchwork_22238_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_create@madvise@smem:
    - {shard-rkl}:        [DMESG-WARN][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-rkl-5/igt@gem_exec_create@madvise@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-rkl-5/igt@gem_exec_create@madvise@smem.html

  * igt@gem_userptr_blits@stress-mm:
    - {shard-rkl}:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-rkl-2/igt@gem_userptr_blits@stress-mm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-rkl-5/igt@gem_userptr_blits@stress-mm.html

  * igt@i915_hangman@gt-engine-hang@rcs0:
    - {shard-rkl}:        [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-rkl-1/igt@i915_hangman@gt-engine-hang@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-rkl-5/igt@i915_hangman@gt-engine-hang@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22238_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) ([i915#5032]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl10/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl10/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl10/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl10/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl10/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl10/boot.html
    - shard-glk:          ([PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [FAIL][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79]) ([i915#4392]) -> ([PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk8/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk8/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk5/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk4/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk3/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk3/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk3/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk2/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk1/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk1/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk6/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk2/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk3/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk3/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk3/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk7/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk7/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk8/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk1/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk1/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk2/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@invalid-buffer:
    - shard-glk:          [PASS][105] -> [DMESG-WARN][106] ([i915#118] / [i915#1888])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk4/igt@drm_read@invalid-buffer.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@drm_read@invalid-buffer.html

  * igt@feature_discovery@display-3x:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271]) +33 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@feature_discovery@display-3x.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][108] -> [FAIL][109] ([i915#232])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-tglb6/igt@gem_eio@kms.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][110] -> [INCOMPLETE][111] ([i915#4547])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_endless@dispatch@vcs0:
    - shard-tglb:         [PASS][112] -> [INCOMPLETE][113] ([i915#3778])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@gem_exec_endless@dispatch@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][114] -> [FAIL][115] ([i915#2842])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][116] ([i915#2842])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@submit-early-slice@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][117] ([i915#3797])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/igt@gem_exec_schedule@submit-early-slice@vcs0.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#4613])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl2/igt@gem_lmem_swapping@basic.html
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#4613])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#4613])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#4613])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_media_vme:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#284])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@gem_media_vme.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][123] ([i915#2658])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][124] ([i915#2658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3323])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][126] ([i915#454])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271]) +89 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl8/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][128] ([i915#4272])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][129] ([i915#3743]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([fdo#111614])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#3777]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([fdo#111615])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#3777])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3886]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#3886])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#3886])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#3886]) +6 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl6/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-glk:          NOTRUN -> [SKIP][140] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][142] ([fdo#109271]) +40 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#109279] / [i915#3359])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][145] ([i915#180])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109278]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([fdo#109274] / [fdo#111825])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-iclb:         [PASS][148] -> [FAIL][149] ([i915#2346])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#533]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][151] -> [INCOMPLETE][152] ([i915#4839])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][153] ([fdo#109271]) +101 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109280])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][155] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][156] -> [FAIL][157] ([i915#1188])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl2/igt@kms_hdr@bpc-switch.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][158] ([i915#1188])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][159] -> [DMESG-WARN][160] ([i915#180]) +6 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([i915#1187])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][162] ([fdo#109271] / [i915#533])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [PASS][163] -> [DMESG-WARN][164] ([i915#180])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][165] ([fdo#108145] / [i915#265])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][166] ([fdo#108145] / [i915#265])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][167] -> [FAIL][168] ([fdo#108145] / [i915#265])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][169] ([fdo#108145] / [i915#265]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][170] ([fdo#109271] / [i915#658])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][171] ([fdo#109271] / [i915#658])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][172] -> [SKIP][173] ([fdo#109441]) +1 similar issue
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglb:         NOTRUN -> [SKIP][174] ([i915#2437])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][175] ([fdo#109271] / [i915#2437])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][176] ([i915#2530])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][177] ([i915#2530]) +1 similar issue
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-tglb:         NOTRUN -> [SKIP][178] ([fdo#109289])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][179] -> [FAIL][180] ([i915#1542])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl7/igt@perf@polling-parameterized.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl7/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][181] ([fdo#109291])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-tglb:         NOTRUN -> [SKIP][182] ([fdo#109291]) +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@prime_nv_pcopy@test3_3.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-skl:          NOTRUN -> [DMESG-WARN][183] ([i915#5084])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][184] ([fdo#109271] / [i915#2994]) +2 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][185] ([fdo#109271] / [i915#2994])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-apl6/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@drm_read@empty-block:
    - {shard-rkl}:        ([SKIP][186], [SKIP][187]) ([i915#1845]) -> [PASS][188] +5 similar issues
   [186]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/index.html

--===============3744119381391175419==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: Fix the plane end Y offset che=
ck</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99958/">https://patchwork.freedesktop.org/series/99958/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22238/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22238/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11212_full -&gt; Patchwork_22238_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22238_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_create@madvise@smem:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-rkl-5/igt@gem_exec_create@madvise@smem.html">DMESG-WARN=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
238/shard-rkl-5/igt@gem_exec_create@madvise@smem.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@stress-mm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-rkl-2/igt@gem_userptr_blits@stress-mm.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/sha=
rd-rkl-5/igt@gem_userptr_blits@stress-mm.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-hang@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-rkl-1/igt@i915_hangman@gt-engine-hang@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2223=
8/shard-rkl-5/igt@i915_hangman@gt-engine-hang@rcs0.html">INCOMPLETE</a> +1 =
similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22238_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1212/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11212/shard-skl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shar=
d-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11212/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11212/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11212/shard-skl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/=
shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11212/shard-skl3/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl=
2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11212/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11212/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1212/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11212/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/sh=
ard-skl10/boot.html">PASS</a>) ([i915#5032]) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl9/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl3/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl2/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22238/shard-skl1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl10/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shar=
d-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22238/shard-skl10/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1212/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11212/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shar=
d-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11212/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11212/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11212/shard-glk6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11212/shard-glk4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk=
4/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11212/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11212/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1212/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11212/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11212/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11212/shard-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22238/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-glk8/=
boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-glk4/igt@drm_read@invalid-buffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-gl=
k4/igt@drm_read@invalid-buffer.html">DMESG-WARN</a> ([i915#118] / [i915#188=
8])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@feature_discovery@display-3x.h=
tml">SKIP</a> ([fdo#109271]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-tglb8/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-s=
kl6/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/=
shard-tglb3/igt@gem_exec_endless@dispatch@vcs0.html">INCOMPLETE</a> ([i915#=
3778])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
38/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl3/igt@gem_exec_schedule@submit-early=
-slice@vcs0.html">INCOMPLETE</a> ([i915#3797])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22238/shard-apl2/igt@gem_lmem_swapping@basic.html">S=
KIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22238/shard-kbl4/igt@gem_lmem_swapping@basic.html">S=
KIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl3/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@gem_media_vme.html">SKIP</a> =
([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@gem_pread@exhaustion.html">WA=
RN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl6/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-apl8/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl3/igt@kms_async_flips@crc.html">FAIL=
</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@kms_big_fb@y-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-kbl1/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_ccs@pipe-c-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_chamelium@dp-hpd-enable-d=
isable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-apl6/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-kbl4/igt@kms_color@pipe-d-ctm-blue-to-r=
ed.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl3/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-=
256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic-transitions.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22238/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-siz=
e.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/=
shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#=
4839])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +101 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]=
) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-skl2/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard-skl9/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +6 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22238/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22238/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-glk4/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl6/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/=
shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@kms_writeback@writeback-check=
-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-kbl1/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@nouveau_crc@ctx-flip-threshol=
d-reset-after-capture.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb3/igt@perf@gen8-unprivileged-single=
-ctx-counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11212/shard-skl7/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22238/shard=
-skl7/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-iclb1/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-tglb7/igt@prime_nv_pcopy@test3_3.html">=
SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl6/igt@syncobj_timeline@invalid-trans=
fer-non-existent-point.html">DMESG-WARN</a> ([i915#5084])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-skl1/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22238/shard-apl6/igt@sysfs_clients@sema-50.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@drm_read@empty-block:<ul>
<li>{shard-rkl}:        ([SKIP][186], [SKIP][187]) ([i915#1845]) -&gt; [PAS=
S][188] +5 similar issues<br />
   [186]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3744119381391175419==--
