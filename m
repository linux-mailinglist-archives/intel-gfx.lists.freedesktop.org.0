Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4964861D85E
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 08:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A4210E0DC;
	Sat,  5 Nov 2022 07:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E9F2210E0B6;
 Sat,  5 Nov 2022 07:20:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9192EA7DFC;
 Sat,  5 Nov 2022 07:20:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2022565144480613223=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eric Farman" <farman@linux.ibm.com>
Date: Sat, 05 Nov 2022 07:20:49 -0000
Message-ID: <166763284955.3519.8389441728153658554@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221104142007.1314999-1-farman@linux.ibm.com>
In-Reply-To: <20221104142007.1314999-1-farman@linux.ibm.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdmZp?=
 =?utf-8?q?o-ccw_parent_rework_=28rev3=29?=
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

--===============2022565144480613223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: vfio-ccw parent rework (rev3)
URL   : https://patchwork.freedesktop.org/series/109899/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12344_full -> Patchwork_109899v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109899v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109899v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 9)
------------------------------

  Missing    (2): shard-rkl shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109899v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@flink-race:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl3/igt@gem_mmap_gtt@flink-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_109899v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([FAIL][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#4386])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl8/boot.html
    - shard-snb:          ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) -> ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [FAIL][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101]) ([i915#4338])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][102] ([i915#2842])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#4613]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#4613]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#3323])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_module_load@load:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#6227])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl3/igt@i915_module_load@load.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-skl:          NOTRUN -> [FAIL][107] ([i915#7036]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][108] -> [SKIP][109] ([i915#4281])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][110] -> [DMESG-WARN][111] ([i915#5591])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-tglb1/igt@i915_selftest@live@hangcheck.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-tglb8/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][112] -> [DMESG-WARN][113] ([i915#180])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#3886]) +7 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#3886]) +5 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#3546])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_color@ctm-red-to-blue.html

  * igt@kms_cursor_legacy@cursora-vs-flipa:
    - shard-snb:          NOTRUN -> [SKIP][119] ([fdo#109271]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipa.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][120] -> [FAIL][121] ([i915#2122])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][122] -> [FAIL][123] ([i915#79])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][124] ([i915#2122]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#2587] / [i915#2672]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#3555])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#2672]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271]) +248 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271]) +116 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][131] ([i915#4573]) +8 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][132] -> [SKIP][133] ([i915#5176]) +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#658]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#658]) +4 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][136] -> [SKIP][137] ([fdo#109441]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][138] ([i915#6493])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2437])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2437])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@non-zero-reason:
    - shard-skl:          NOTRUN -> [TIMEOUT][141] ([i915#6943])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@perf@non-zero-reason.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/igt@sysfs_clients@pidname.html
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2994]) +2 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl9/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][144] ([i915#6268]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][146] ([i915#4525]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][148] ([i915#2842]) -> [PASS][149] +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][150] ([i915#2842]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][152] ([i915#2842]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][154] ([i915#2190]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [DMESG-WARN][156] ([i915#180]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][158] ([i915#5566] / [i915#716]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][160] ([i915#3989] / [i915#454]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][162] ([i915#5334]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
    - shard-glk:          [FAIL][164] ([i915#2521]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][166] ([i915#79]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][168] ([i915#2122]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [DMESG-WARN][170] ([i915#1982]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][172] ([fdo#109441]) -> [PASS][173] +3 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          [INCOMPLETE][174] ([i915#7248]) -> [WARN][175] ([i915#2658])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/igt@gem_pwrite@basic-exhaustion.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl7/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         [INCOMPLETE][176] ([i915#7248]) -> [WARN][177] ([i915#2658])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          [INCOMPLETE][178] ([i915#7248]) -> [WARN][179] ([i915#2658])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-glk3/igt@gem_pwrite@basic-exhaustion.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][180] ([i915#180] / [i915#1982]) -> [DMESG-WARN][181] ([i915#1982])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][182] ([i915#2920]) -> [SKIP][183] ([i915#658]) +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][184] ([i915#658]) -> [SKIP][185] ([i915#2920])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][186] ([fdo#111068] / [i915#658]) -> [SKIP][187] ([i915#2920])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][193], [FAIL][194], [FAIL][195]) ([i915#180] / [i915#3002] / [i915#4312])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/igt@runner@aborted.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/igt@runner@aborted.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/igt@runner@aborted.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/igt@runner@aborted.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/igt@runner@aborted.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/igt@runner@aborted.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@runner@aborted.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6943]: https://gitlab.freedesktop.org/drm/intel/issues/6943
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12344 -> Patchwork_109899v3

  CI-20190529: 20190529
  CI_DRM_12344: 36c4da734877fd1d69f0b9601dd7c3fa118d18f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109899v3: 36c4da734877fd1d69f0b9601dd7c3fa118d18f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/index.html

--===============2022565144480613223==
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
<tr><td><b>Series:</b></td><td>vfio-ccw parent rework (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109899/">https://patchwork.freedesktop.org/series/109899/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109899v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109899v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12344_full -&gt; Patchwork_109899v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109899v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109899v3_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 9)</h2>
<p>Missing    (2): shard-rkl shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109899v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_mmap_gtt@flink-race:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl3/igt@gem_mmap_gtt@flink-race.htm=
l">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109899v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2344/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12344/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12344/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12344/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12344/shard-apl6/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12344/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2344/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12344/shard-apl8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl2/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
899v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109899v3/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109899v3/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109899v3/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9899v3/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109899v3/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109899v3/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109899v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9899v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109899v3/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109899v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/sh=
ard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109899v3/shard-apl8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl8/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4386=
">i915#4386</a>)</p>
</li>
<li>
<p>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2344/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shar=
d-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12344/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12344/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/=
shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12344/shard-snb4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12344/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12344/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2344/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12344/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
899v3/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_109899v3/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109899v3/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109899v3/shard-snb6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9899v3/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109899v3/shard-snb6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109899v3/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb5/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/sh=
ard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109899v3/shard-snb5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9899v3/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109899v3/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109899v3/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/sh=
ard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109899v3/shard-snb2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-snb2/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4338=
">i915#4338</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl3/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@i915_pipe_stress@stress-xrg=
b8888-ytiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7036">i915#7036</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-ic=
lb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-tglb1/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3=
/shard-tglb8/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-apl7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/s=
hard-apl1/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_ccs@pipe-a-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +7 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_ccs@pipe-b-crc-sprite-p=
lanes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_chamelium@hdmi-crc-nonp=
lanar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_chamelium@hdmi-hpd-with=
-enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_color@ctm-red-to-blue.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-snb2/igt@kms_cursor_legacy@cursora-v=
s-flipa.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_109899v3/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@=
bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109899v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_flip@plain-flip-fb-recr=
eate-interruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_flip_scaled_crc@flip-64=
bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1=
09271</a>) +248 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">=
i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_frontbuffer_tracking@fb=
cpsr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4573">i915#4573</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb7/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v=
3/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_sysfs_edid_timing.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6493"=
>i915#6493</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@kms_writeback@writeback-inva=
lid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109899v3/shard-skl4/igt@kms_writeback@writeback-inva=
lid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-skl7/igt@perf@non-zero-reason.html">=
TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/694=
3">i915#6943</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109899v3/shard-apl6/igt@sysfs_clients@pidname.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109899v3/shard-skl9/igt@sysfs_clients@pidname.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109899v3/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109899v3/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09899v3/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109899v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09899v3/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/=
shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i=
915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109899v3/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-apl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109899v3/shard-apl6/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3=
/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109899v3/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_109899v3/shard-glk8/igt@kms_async_flips@alternate=
-sync-async-flip@pipe-c-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_109899v3/shard-glk7/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_109899v3/shard-glk9/igt@kms_flip@2x-plain-flip-fb-rec=
reate@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-i=
ndfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-skl9/igt@kms_frontbuf=
fer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109899v3/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12344/shard-apl1/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#72=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109899v3/shard-apl7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12344/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7=
248</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109899v3/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)=
</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12344/shard-glk3/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#72=
48</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109899v3/shard-glk9/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109899v3/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109899v3/shard-iclb6/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109899v3/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continu=
ous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12344/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109899v3/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12344/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12344/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12344/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12344/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9899v3/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109899v3/shard-apl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109899v3/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12344 -&gt; Patchwork_109899v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12344: 36c4da734877fd1d69f0b9601dd7c3fa118d18f6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109899v3: 36c4da734877fd1d69f0b9601dd7c3fa118d18f6 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2022565144480613223==--
