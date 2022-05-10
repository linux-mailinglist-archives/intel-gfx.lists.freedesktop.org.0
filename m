Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DDE5221EE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 19:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A5D10F3D0;
	Tue, 10 May 2022 17:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45A3D10F18D;
 Tue, 10 May 2022 17:07:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BE2BAADD9;
 Tue, 10 May 2022 17:07:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5304682863591468564=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 10 May 2022 17:07:22 -0000
Message-ID: <165220244220.26420.8061700179785747923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220413192607.27533-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220413192607.27533-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Eliminate_PIPECONF_RMWs_from_=2Ecolor=5Fcommit=28=29_?=
 =?utf-8?b?KHJldjUp?=
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

--===============5304682863591468564==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Eliminate PIPECONF RMWs from .color_commit() (rev5)
URL   : https://patchwork.freedesktop.org/series/102666/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11627_full -> Patchwork_102666v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102666v5_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_flush@basic-uc-pro-default:
    - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-6/igt@gem_exec_flush@basic-uc-pro-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][3] ([i915#1845] / [i915#4098]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-1/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-5/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  
Known issues
------------

  Here are the changes found in Patchwork_102666v5_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25]) ([i915#5032]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl10/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl6/boot.html
    - shard-apl:          ([PASS][48], [PASS][49], [FAIL][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72]) ([i915#4386]) -> ([PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl7/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl8/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl8/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl8/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl3/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl3/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl3/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl4/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl4/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl4/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl1/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl1/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][98] -> [FAIL][99] ([i915#5784])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-tglb6/igt@gem_eio@kms.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271]) +26 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][101] -> [FAIL][102] ([i915#2842]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][103] -> [FAIL][104] ([i915#2842])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][105] ([i915#2842]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-snb:          [PASS][106] -> [SKIP][107] ([fdo#109271])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-snb2/igt@gem_exec_suspend@basic-s3@smem.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-snb6/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#4613]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#4613])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#4613]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#4613]) +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl7/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][112] ([i915#2658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#3297])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][114] ([i915#3318])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_tiledy_blits:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109289])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gen3_render_tiledy_blits.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][116] -> [FAIL][117] ([i915#454])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
    - shard-kbl:          NOTRUN -> [FAIL][118] ([i915#454])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#1937])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#110892])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#5286]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#110725] / [fdo#111614])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#110723])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271]) +196 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3886]) +7 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#3886])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#3886]) +6 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl7/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109278] / [i915#3886])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#3886]) +8 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271]) +108 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][134] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][136] ([i915#1319])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([fdo#109300] / [fdo#111066])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_content_protection@content_type_change.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#5287])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#109274]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:
    - shard-glk:          [PASS][142] -> [FAIL][143] ([i915#2122]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-glk1/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk8/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][144] ([i915#79]) +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][145] -> [DMESG-WARN][146] ([i915#180]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][147] -> [DMESG-WARN][148] ([i915#180]) +4 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][149] -> [FAIL][150] ([i915#2122])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([fdo#109280]) +3 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][152] -> [FAIL][153] ([i915#1188]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [FAIL][154] ([i915#1188])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#533])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#533])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][157] ([fdo#108145] / [i915#265]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][158] ([i915#265])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][159] ([i915#265])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][160] ([fdo#108145] / [i915#265])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][161] ([fdo#109278]) +16 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
    - shard-skl:          NOTRUN -> [SKIP][162] ([fdo#109271]) +176 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
    - shard-iclb:         [PASS][163] -> [SKIP][164] ([i915#5235]) +2 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#658])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#658]) +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][167] ([fdo#109271] / [i915#658])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][168] ([fdo#109271] / [i915#658])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-iclb:         [PASS][169] -> [SKIP][170] ([fdo#109642] / [fdo#111068] / [i915#658])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][171] -> [SKIP][172] ([fdo#109441]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-skl:          [PASS][173] -> [FAIL][174] ([i915#43])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/igt@kms_vblank@pipe-a-accuracy-idle.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl2/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-iclb:         NOTRUN -> [SKIP][175] ([i915#2437])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][176] ([fdo#109271] / [i915#2437]) +1 similar issue
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][177] ([fdo#109278] / [i915#2530]) +1 similar issue
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@perf@non-zero-reason:
    - shard-iclb:         [PASS][178] -> [FAIL][179] ([i915#3089])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb4/igt@perf@non-zero-reason.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb7/igt@perf@non-zero-reason.html

  * igt@perf_pmu@busy-accuracy-50@bcs0:
    - shard-glk:          [PASS][180] -> [DMESG-WARN][181] ([i915#118])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-glk1/igt@perf_pmu@busy-accuracy-50@bcs0.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk8/igt@perf_pmu@busy-accuracy-50@bcs0.html

  * igt@prime_nv_api@i915_nv_import_vs_close:
    - shard-iclb:         NOTRUN -> [SKIP][182] ([fdo#109291])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@prime_nv_api@i915_nv_import_vs_close.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-apl:          NOTRUN -> [DMESG-WARN][183] ([i915#5098])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][184] ([i915#5098])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@create:
    - shard-skl:          NOTRUN -> [SKIP][185] ([fdo#109271] / [i915#2994]) +1 similar issue
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@sysfs_clients@create.html

  * igt@sysfs_clients@pidname:
    - shard-iclb:         NOTRUN -> [SKIP][186] ([i915#2994])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][187] ([fdo#109271] / [i915#2994]) +3 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][188] ([fdo#109271] / [i915#2994]) +3 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][189] ([i915#2582]) -> [PASS][190] +1 similar issue
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-4/igt@fbdev@write.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@fbdev@write.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [TIMEOUT][191] ([i915#3070]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb4/igt@gem_eio@in-flight-contexts-10ms.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@waits:
    - {shard-tglu}:       [INCOMPLETE][193] -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-tglu-4/igt@gem_exec_balancer@waits.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-tglu-4/igt@gem_exec_balancer@waits.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][195] ([i915#2842]) -> [PASS][196] +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][197] ([i915#2842]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - {shard-tglu}:       [FAIL][199] ([i915#2842]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-snb:          [SKIP][201] ([fdo#109271]) -> [PASS][202] +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-snb5/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][203] ([i915#5566] / [i915#716]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@basic-rte:
    - {shard-rkl}:        [SKIP][205] ([fdo#109308]) -> [PASS][206] +1 similar issue
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-1/igt@i915_pm_rpm@basic-rte.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@perf@request:
    - shard-iclb:         [DMESG-FAIL][207] ([i915#4391]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb7/igt@i915_selftest@perf@request.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@i915_selftest@perf@request.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a:
    - shard-skl:          [DMESG-WARN][209] ([i915#1982]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl7/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.html

  * igt@kms_color@pipe-b-legacy-gamma:
    - {shard-rkl}:        [SKIP][211] ([i915#4070] / [i915#4098]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-4/igt@kms_color@pipe-b-legacy-gamma.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][213] ([fdo#112022] / [i915#4070]) -> [PASS][214] +6 similar issues
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - {shard-rkl}:        [SKIP][215] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][216] +1 similar issue
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {shard-rkl}:        [SKIP][217] ([fdo#111825] / [i915#4070]) -> [PASS][218] +1 similar issue
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][219] ([i915#2346]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][221] ([i915#2346] / [i915#533]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:
    - {shard-rkl}:        [SKIP][223] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][224] +1 similar issue
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
    - {shard-rkl}:        [SKIP][225] ([i915#4098] / [i915#4369]) -> [PASS][226] +2 similar issues
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][227] ([i915#180]) -> [PASS][228] +4 similar issues
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
    - shard-kbl:          [DMESG-WARN][229] ([i915#180]) -> [PASS][230] +4 similar issues
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - {shard-rkl}:        [SKIP][231] ([i915#1849] / [i915#4098]) -> [PASS][232] +15 similar issues
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - {shard-rkl}:        [SKIP][233] ([i915#4278]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-start.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
    - {shard-rkl}:        [SKIP][235] ([i915#4098]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-4/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][237] ([fdo#108145] / [i915#265]) -> [PASS][238] +1 similar issue
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - {shard-rkl}:        [SKIP][239] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
    - shard-iclb:         [SKIP][241] ([i915#5176]) -> [PASS][242] +1 similar issue
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - {shard-rkl}:        [SKIP][243] ([i915#1072]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-5/igt@kms_psr@no_drrs.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][245] ([fdo#109441]) -> [PASS][246] +2 similar issues
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - {shard-rkl}:        [SKIP][247] ([i915#1845] / [i915#4098]) -> [PASS][248] +18 similar issues
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@prime_vgem@basic-fence-flip:
    - {shard-rkl}:        [SKIP][249] ([i915#3708] / [i915#4098]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][251] ([i915#4525]) -> [DMESG-WARN][252] ([i915#5614])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb5/igt@gem_exec_balancer@parallel.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [DMESG-WARN][253] ([i915#5614]) -> [SKIP][254] ([i915#4525])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          [DMESG-WARN][255] ([i915#4991]) -> [DMESG-WARN][256] ([i915#1888] / [i915#4991])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/igt@gem_userptr_blits@input-checking.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl2/igt@gem_userptr_blits@input-checking.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-skl:          [SKIP][257] ([fdo#109271] / [fdo#111827]) -> [SKIP][258] ([fdo#109271] / [fdo#111827] / [i915#1888])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/igt@kms_chamelium@dp-hpd-storm-disable.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl5/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_content_protection@uevent:
    - shard-glk:          [SKIP][259] ([fdo#109271] / [i915#1888]) -> [SKIP][260] ([fdo#109271])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-glk3/igt@kms_content_protection@uevent.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk9/igt@kms_content_protection@uevent.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-kbl:          [INCOMPLETE][261] -> [SKIP][262] ([fdo#109271])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][263] ([i915#2920]) -> [SKIP][264] ([fdo#111068] / [i915#658])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][265], [FAIL][266], [FAIL][267], [FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][272], [FAIL][273], [FAIL][274], [FAIL][275], [FAIL][276], [FAIL][277]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/igt@runner@aborted.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/igt@runner@aborted.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl1/igt@runner@aborted.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/igt@runner@aborted.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/igt@runner@aborted.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/igt@runner@aborted.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/igt@runner@aborted.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3089]: https://gitlab.freedesktop.org/drm/intel/issues/3089
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11627 -> Patchwork_102666v5

  CI-20190529: 20190529
  CI_DRM_11627: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6469: fe3c194ba90615e2402461348357c88a23864275 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102666v5: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/index.html

--===============5304682863591468564==
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
<tr><td><b>Series:</b></td><td>drm/i915: Eliminate PIPECONF RMWs from .colo=
r_commit() (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/102666/">https://patchwork.freedesktop.org/series/102666/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102666v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11627_full -&gt; Patchwork_102666v=
5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
102666v5_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-6/igt@gem_exec_flush@basic-uc-pro-default.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02666v5/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-default.html">INCOMPLET=
E</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-1/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12=
_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-5/igt@kms_ccs@pipe-d-bad-=
pixel-format-y_tiled_gen12_rc_ccs_cc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102666v5_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1627/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shar=
d-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11627/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11627/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11627/shard-skl7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/=
shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11627/shard-skl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11627/shard-skl3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-skl3/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1627/shard-skl2/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl9/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/s=
hard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102666v5/shard-skl9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl9/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02666v5/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_102666v5/shard-skl8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_102666v5/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl10/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/s=
hard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_102666v5/shard-skl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl1/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102666v5/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102666v5/shard-skl2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_102666v5/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl3/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/s=
hard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102666v5/shard-skl4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
02666v5/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_102666v5/shard-skl6/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl1/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1627/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11627/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11627/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11627/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11627/shard-apl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11627/shard-apl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11627/shard-apl6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1627/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11627/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11627/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102666v5/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-a=
pl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_102666v5/shard-apl3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_102666v5/shard-apl4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102666v5/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_102666v5/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_102666v5/shard-apl2/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102666v5/shard-apl6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102666v5/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_102666v5/shard-apl7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102666v5/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_102666v5/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/boot.htm=
l">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-tglb5/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@gem_exec_balancer@parallel-=
out-fence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102=
666v5/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@gem_exec_fair@basic-pace@rc=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-snb2/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-snb6/igt@gem_exec_suspend@basic-s3@smem.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gem_lmem_swapping@heavy-ra=
ndom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl7/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@gen3_render_tiledy_blits.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-icl=
b3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/454">i915#454</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i91=
5#454</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@i915_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_big_fb@linear-16bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +196 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +7 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-skl7/igt@kms_ccs@pipe-b-bad-aux-strid=
e-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_ccs@pipe-b-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +8 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_ccs@pipe-d-crc-primary-=
basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +108 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@kms_chamelium@dp-frame-dump=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@kms_chamelium@vga-hpd-after=
-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_chamelium@vga-hpd-enab=
le-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_color_chamelium@pipe-a-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_content_protection@atom=
ic-dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_content_protection@con=
tent_type_change.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109300">fdo#109300</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_cursor_crc@pipe-a-curs=
or-512x512-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_flip@2x-flip-vs-pannin=
g-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-glk1/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102666v5/shard-glk8/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a1.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/212=
2">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@kms_flip@flip-vs-expired-vb=
lank-interruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/79">i915#79</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102666v5/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102666v5/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-=
pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102666v5/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-d=
pms-edp-1-pipe-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@bpc-switch-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_hdr@bpc-switch@bpc-swit=
ch-edp-1-pipe-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_pipe_crc_basic@hang-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_pipe_crc_basic@suspend-=
read-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl8/igt@kms_plane_alpha_blend@pipe-=
a-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@kms_plane_alpha_blend@pipe-b=
-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b=
-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@kms_plane_alpha_blend@pipe=
-d-constant-alpha-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109278">fdo#109278</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_plane_scaling@planes-up=
scale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downsca=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +176 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5=
/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-fac=
tor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl3/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl6/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-glk1/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@kms_psr2_su@page_flip-xrgb88=
88.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#=
658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666=
v5/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl7/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666=
v5/shard-skl2/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb8/igt@nouveau_crc@pipe-d-source-=
outp-complete.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2530">i915#2530</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb4/igt@perf@non-zero-reason.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-i=
clb7/igt@perf@non-zero-reason.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3089">i915#3089</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-50@bcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-glk1/igt@perf_pmu@busy-accuracy-50@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-glk8/igt@perf_pmu@busy-accuracy-50@bcs0.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_vs_close:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@prime_nv_api@i915_nv_impor=
t_vs_close.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-apl2/igt@syncobj_timeline@invalid-tra=
nsfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5098">i915#5098</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@syncobj_timeline@invalid-tra=
nsfer-non-existent-point.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5098">i915#5098</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-skl1/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-iclb6/igt@sysfs_clients@pidname.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-apl7/igt@sysfs_clients@sema-50.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_102666v5/shard-kbl7/igt@sysfs_clients@split-50.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-4/igt@fbdev@write.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-=
6/igt@fbdev@write.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb4/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915=
#3070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102666v5/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-tglu-4/igt@gem_exec_balancer@waits.html">INCOMPLETE</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666=
v5/shard-tglu-4/igt@gem_exec_balancer@waits.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
2666v5/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102666v5/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102666v5/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-snb6/igt@gem_exec_flush@basic-uc-set-default.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102666v5/shard-snb5/igt@gem_exec_flush@basic-uc-set-default.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-glk4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5=
566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102666v5/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-1/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v=
5/shard-rkl-6/igt@i915_pm_rpm@basic-rte.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@request:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb7/igt@i915_selftest@perf@request.html">DMESG-FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4=
391</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102666v5/shard-iclb8/igt@i915_selftest@perf@request.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1=
-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl4/igt@kms_atomic_transition@plane-all-transition-non=
blocking-fencing@edp-1-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-skl7/igt@k=
ms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-legacy-gamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-4/igt@kms_color@pipe-b-legacy-gamma.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_102666v5/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
112022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_cursor_crc@pipe-a-curso=
r-128x42-offscreen.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edg=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_cursor_edge_walk@p=
ipe-b-256x256-right-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-ato=
mic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_cursor_legacy@basic-=
flip-after-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102666v5/shard-glk9/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/533">i915#533</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-glk4/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-x=
tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_draw_crc@dra=
w-method-xrgb2101010-pwrite-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8=
888-blt-ytiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102666v5/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +4 =
similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11627/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102666v5/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +4 =
similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-sus=
pend.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-start.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#4=
278</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_102666v5/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-4/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pip=
e-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_pipe_crc_basic@disable-crc-a=
fter-crtc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_102666v5/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-cover=
age-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-=
with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clampi=
ng@pipe-b-edp-1-scaler-with-clipping-clamping.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-=
iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scal=
er-with-clipping-clamping.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-5/igt@kms_psr@no_drrs.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-=
rkl-6/igt@kms_psr@no_drrs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
102666v5/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_102666v5/shard-rkl-6/igt@kms_rotation_crc@primary-y-til=
ed-reflect-x-0.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_102666v5/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1026=
66v5/shard-iclb2/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5614">i915#5614</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5614">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_102666v5/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in=
-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl9/igt@gem_userptr_blits@input-checking.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4991">i=
915#4991</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_102666v5/shard-skl2/igt@gem_userptr_blits@input-checking.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888"=
>i915#1888</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-skl7/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
27">fdo#111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_102666v5/shard-skl5/igt@kms_chamelium@dp-hpd-storm-disable.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111827">fdo#111827</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-glk3/igt@kms_content_protection@uevent.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i9=
15#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_102666v5/shard-glk9/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cu=
r-indfb-draw-pwrite.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-kbl1/igt@kms_frontbuffer_t=
racking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11627/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_102666v5/shard-iclb4/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11627/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11627/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11627/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11627/shard-apl3/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11627/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#525=
7</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_102666v5/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl8/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_102666v5/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard-apl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_102666v5/shard-apl2/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102666v5/shard=
-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11627 -&gt; Patchwork_102666v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11627: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6469: fe3c194ba90615e2402461348357c88a23864275 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102666v5: b90a46b7cf238262635312ddb0f150f08c9b9417 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5304682863591468564==--
