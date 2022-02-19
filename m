Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 420304BC86A
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 13:47:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3345910F875;
	Sat, 19 Feb 2022 12:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0117710F86A;
 Sat, 19 Feb 2022 12:47:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF2F5A00E8;
 Sat, 19 Feb 2022 12:47:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5652086483915737724=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 19 Feb 2022 12:47:31 -0000
Message-ID: <164527485193.29220.4470529158548790549@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
In-Reply-To: <20220216174147.3073235-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28rev4=29?=
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

--===============5652086483915737724==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Refactor ADS access to use iosys_map (rev4)
URL   : https://patchwork.freedesktop.org/series/99711/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11250_full -> Patchwork_22334_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22334_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22334_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22334_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-dual:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb6/igt@gem_exec_balancer@bonded-dual.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-tglb6/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - {shard-rkl}:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-rkl-2/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - {shard-rkl}:        NOTRUN -> [DMESG-WARN][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@perf_pmu@module-unload:
    - {shard-rkl}:        [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-rkl-4/igt@perf_pmu@module-unload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-rkl-5/igt@perf_pmu@module-unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_22334_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [FAIL][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54]) ([i915#5032])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl10/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl10/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl9/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl10/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl10/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl10/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-snb:          ([PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [FAIL][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79]) ([i915#4338]) -> ([PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb7/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb5/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-snb2/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html
    - shard-glk:          ([PASS][105], [PASS][106], [FAIL][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129]) ([i915#4392]) -> ([PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152], [PASS][153], [PASS][154])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk1/boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk2/boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk3/boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk4/boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk5/boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk5/boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk6/boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk6/boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk8/boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk9/boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk1/boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk1/boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk1/boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk2/boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk2/boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk3/boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk3/boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk3/boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk5/boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk5/boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk6/boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk6/boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk6/boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk7/boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk7/boot.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk7/boot.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk8/boot.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk8/boot.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk8/boot.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk9/boot.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk9/boot.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][155] ([i915#4991])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#1099]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_eio@in-flight-1us:
    - shard-skl:          [PASS][157] -> [TIMEOUT][158] ([i915#3063])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl4/igt@gem_eio@in-flight-1us.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl2/igt@gem_eio@in-flight-1us.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][159] -> [FAIL][160] ([i915#232])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb6/igt@gem_eio@kms.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          NOTRUN -> [TIMEOUT][161] ([i915#3063])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl9/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][162] -> [SKIP][163] ([i915#4525])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][164] ([i915#2846])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][165] -> [FAIL][166] ([i915#2842]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][167] ([i915#2842])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][168] -> [FAIL][169] ([i915#2842]) +2 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][170] -> [FAIL][171] ([i915#2842]) +1 similar issue
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-sync@rcs0:
    - shard-kbl:          [PASS][172] -> [SKIP][173] ([fdo#109271])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][174] -> [SKIP][175] ([i915#2190])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> [SKIP][176] ([fdo#109271] / [i915#4613])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][177] ([fdo#109271] / [i915#4613])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-iclb:         NOTRUN -> [SKIP][178] ([i915#4613]) +1 similar issue
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][179] ([i915#2658])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-apl:          NOTRUN -> [WARN][180] ([i915#2658])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-apl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][181] ([i915#4270]) +3 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][182] ([i915#768])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][183] ([i915#180])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-kbl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-iclb:         NOTRUN -> [SKIP][184] ([i915#3323])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-iclb:         NOTRUN -> [SKIP][185] ([i915#2856]) +1 similar issue
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][186] ([fdo#110892])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][187] ([fdo#109271]) +20 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-apl7/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][188] ([i915#1769])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][189] ([fdo#110725] / [fdo#111614])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][190] -> [DMESG-WARN][191] ([i915#118]) +1 similar issue
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][192] ([fdo#109271] / [i915#3777])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][193] ([fdo#109271] / [i915#3777])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#3777]) +2 similar issues
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][195] ([i915#3743])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][196] ([fdo#110723]) +1 similar issue
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][197] ([fdo#109271] / [i915#3886]) +1 similar issue
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][198] ([fdo#109271] / [i915#3886])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][199] ([fdo#109278] / [i915#3886]) +1 similar issue
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][200] ([fdo#109271] / [i915#3886])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][201] ([fdo#109271] / [i915#3886]) +2 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][202] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-d-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][203] ([fdo#109278] / [i915#1149])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_color@pipe-d-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][204] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-glk:          NOTRUN -> [SKIP][205] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][206] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-max.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-apl:          NOTRUN -> [SKIP][207] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-apl7/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][208] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][209] ([i915#3116])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][210] ([fdo#109278] / [fdo#109279]) +5 similar issues
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/index.html

--===============5652086483915737724==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Refactor ADS access to use ios=
ys_map (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99711/">https://patchwork.freedesktop.org/series/99711/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22334/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22334/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11250_full -&gt; Patchwork_22334_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22334_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22334_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22334_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-tglb6/igt@gem_exec_balancer@bonded-dual.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/s=
hard-tglb6/igt@gem_exec_balancer@bonded-dual.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-snb4/igt@gem_mmap_gtt@fault-concurrent-x.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/=
shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-rkl-2/igt@gem_exec_whisper@basic-contexts-forked-all.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22334/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-forked-all.html=
">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-rkl-5/igt@i915_suspend@fence-restore-ti=
led2untiled.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-rkl-4/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-rk=
l-5/igt@perf_pmu@module-unload.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22334_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11250/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11250/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11250/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/sha=
rd-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11250/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl10/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl10=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11250/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11250/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1250/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11250/shard-skl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shar=
d-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11250/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl4/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11250/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11250/shard-skl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11250/shard-skl7/boot.html">=
PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22334/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22334/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl8/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22334/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22334/shard-skl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl7/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22334/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22334/shard-skl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22334/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22334/shard-skl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22334/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22334/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22334/shard-skl2/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl1/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22334/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22334/shard-skl10/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl10/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22334/shard-skl10/boot.html">PASS</a>) ([i915#5032])</li>
</ul>
</li>
</ul>
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
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-snb2/=
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
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22334/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-glk9/=
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
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-snb4/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-skl4/igt@gem_eio@in-flight-1us.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-skl2=
/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-tglb1/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl9/igt@gem_eio@unwedge-stress.html">T=
IMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2334/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl9/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
34/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_exec_fair@basic-none-vip@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/s=
hard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-kbl1/igt@gem_exec_fair@basic-sync@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/sh=
ard-kbl4/igt@gem_exec_fair@basic-sync@rcs0.html">SKIP</a> ([fdo#109271])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22334/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-glk4/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl7/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@gem_lmem_swapping@parallel-ra=
ndom-engines.html">SKIP</a> ([i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl7/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-apl2/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_render_copy@y-tiled-ccs-t=
o-yf-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-kbl1/igt@gem_softpin@noreloc-s3.html">D=
MESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync=
.html">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@gen9_exec_parse@unaligned-jum=
p.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb2/igt@i915_pm_rpm@dpms-non-lpsp.htm=
l">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-apl7/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@kms_atomic_transition@plane-a=
ll-modeset-transition-fencing.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11250/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2233=
4/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-glk4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0.html">SKIP</a> ([fdo#110723]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-glk4/igt@kms_ccs@pipe-a-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb3/igt@kms_ccs@pipe-a-crc-sprite-pla=
nes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-apl7/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_chamelium@vga-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_color@pipe-d-ctm-red-to-b=
lue.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-snb4/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-glk4/igt@kms_color_chamelium@pipe-b-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-apl7/igt@kms_color_chamelium@pipe-c-deg=
amma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_content_protection@dp-mst=
-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22334/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21</p>
</li>
</ul>

</body>
</html>

--===============5652086483915737724==--
