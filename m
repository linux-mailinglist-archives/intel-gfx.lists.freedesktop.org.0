Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E182A60624F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 15:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDF110F211;
	Thu, 20 Oct 2022 13:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2674E10E480;
 Thu, 20 Oct 2022 13:57:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A05ADAADDA;
 Thu, 20 Oct 2022 13:57:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8904295481887495916=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 20 Oct 2022 13:57:05 -0000
Message-ID: <166627422561.8588.11566202573456719573@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Allow_panel_fixed_modes_to_have_differing_sync_polarit?=
 =?utf-8?q?ies_=28rev2=29?=
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

--===============8904295481887495916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Allow panel fixed modes to have differing sync polarities (rev2)
URL   : https://patchwork.freedesktop.org/series/109467/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12265_full -> Patchwork_109467v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109467v2_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_wait@write-wait@rcs0:
    - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-6/igt@gem_wait@write-wait@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-2/igt@gem_wait@write-wait@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_109467v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [FAIL][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4386]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/boot.html
    - shard-skl:          ([PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [FAIL][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#5032]) -> ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl9/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl9/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl4/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl10/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl10/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl10/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl7/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl6/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl6/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl6/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl3/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl1/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl1/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl1/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          NOTRUN -> [INCOMPLETE][98] ([i915#6949] / [i915#7165])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +81 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_create@create-massive:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][100] ([i915#4991])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][101] -> [SKIP][102] ([i915#4525]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-tglb:         NOTRUN -> [FAIL][103] ([i915#2842]) +4 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#2842])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][106] -> [SKIP][107] ([i915#2190])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#4613])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#4613])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#4613])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#4270])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_softpin@evict-single-offset:
    - shard-apl:          NOTRUN -> [FAIL][112] ([i915#4171])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@gem_softpin@evict-single-offset.html
    - shard-tglb:         [PASS][113] -> [FAIL][114] ([i915#4171])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb2/igt@gem_softpin@evict-single-offset.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb7/igt@gem_softpin@evict-single-offset.html

  * igt@gem_tiled_wb:
    - shard-skl:          NOTRUN -> [TIMEOUT][115] ([i915#6990] / [i915#7065])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@gem_tiled_wb.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#3323])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          NOTRUN -> [FAIL][117] ([i915#6537])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-glk:          [PASS][118] -> [DMESG-FAIL][119] ([i915#7270])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-glk2/igt@i915_selftest@live@gem_contexts.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-glk2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         [PASS][120] -> [FAIL][121] ([i915#3743])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][122] ([fdo#111615])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#3689])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#3689] / [i915#6095]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#111615] / [i915#3689])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#3886]) +3 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#3886]) +6 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-after-suspend:
    - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_chamelium@dp-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][131] ([i915#7121] / [i915#7173])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_content_protection@atomic-dpms@pipe-a-dp-1.html

  * igt@kms_content_protection@uevent@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][132] ([i915#1339] / [i915#7144])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_content_protection@uevent@pipe-a-dp-1.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][134] ([i915#6375])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([i915#2672] / [i915#3555])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#2672])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#2587] / [i915#2672]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglb:         NOTRUN -> [SKIP][139] ([i915#6497]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271]) +106 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][141] -> [SKIP][142] ([i915#5235]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#658]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#658]) +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][145] ([i915#132] / [i915#3467])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][146] -> [SKIP][147] ([fdo#109441]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][148] -> [DMESG-WARN][149] ([i915#180]) +2 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2994]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl7/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@pidname:
    - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#2994])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2994])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - {shard-rkl}:        [SKIP][153] ([i915#6252]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][155] ([i915#4525]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][157] ([i915#2846]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][159] ([i915#2842]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglb:         [FAIL][161] ([i915#2842]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][163] ([i915#2842]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - {shard-rkl}:        [SKIP][165] ([i915#6251]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-4/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - {shard-rkl}:        [SKIP][167] ([i915#3281]) -> [PASS][168] +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - {shard-rkl}:        [INCOMPLETE][169] -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-2/igt@gem_mmap_wc@write-gtt-read-wc.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-5/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][171] ([i915#6258]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][173] ([i915#3989] / [i915#454]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [WARN][175] ([i915#1804]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][177] ([fdo#109308]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-tglb:         [INCOMPLETE][179] -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb3/igt@i915_pm_rpm@system-suspend.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@min-max-config-idle:
    - {shard-rkl}:        [FAIL][181] ([i915#7142]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-6/igt@i915_pm_rps@min-max-config-idle.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-4/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-skl:          [INCOMPLETE][183] ([i915#4817]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/igt@i915_suspend@basic-s3-without-i915.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-untiled:
    - {shard-rkl}:        [FAIL][185] ([fdo#103375]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         [FAIL][187] -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         [FAIL][189] ([i915#3743]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - {shard-rkl}:        [SKIP][191] ([i915#1845] / [i915#4098]) -> [PASS][192] +19 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-glk:          [FAIL][193] ([i915#5852] / [i915#6703]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][195] ([i915#1257]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@kms_dp_aux_dev.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][197] ([i915#180]) -> [PASS][198] +3 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [SKIP][199] ([i915#3555]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][201] ([i915#1849] / [i915#4098]) -> [PASS][202] +12 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_properties@plane-properties-legacy:
    - {shard-rkl}:        [SKIP][203] ([i915#1849]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr@suspend:
    - {shard-rkl}:        [SKIP][205] ([i915#1072]) -> [PASS][206] +2 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@kms_psr@suspend.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_psr@suspend.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
    - {shard-rkl}:        [SKIP][207] ([i915#4070] / [i915#4098]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html

  * igt@perf@enable-disable:
    - shard-skl:          [FAIL][209] ([i915#7107]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/igt@perf@enable-disable.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl1/igt@perf@enable-disable.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][211] ([i915#5639]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-glk8/igt@perf@polling-parameterized.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-glk1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][213] ([i915#4525]) -> [FAIL][214] ([i915#6117])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][215] ([i915#658]) -> [SKIP][216] ([i915#2920])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][217] ([fdo#111068] / [i915#658]) -> [SKIP][218] ([i915#2920]) +1 similar issue
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227], [FAIL][228]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235], [FAIL][236], [FAIL][237], [FAIL][238]) ([i915#180] / [i915#3002] / [i915#4312])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/igt@runner@aborted.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/igt@runner@aborted.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/igt@runner@aborted.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/igt@runner@aborted.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/igt@runner@aborted.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/igt@runner@aborted.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/igt@runner@aborted.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/igt@runner@aborted.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/igt@runner@aborted.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/igt@runner@aborted.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/igt@runner@aborted.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl2/igt@runner@aborted.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][239], [FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243]) ([i915#3002] / [i915#4312]) -> ([FAIL][244], [FAIL][245], [FAIL][246], [FAIL][247]) ([i915#3002] / [i915#4312] / [i915#6949])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/igt@runner@aborted.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl10/igt@runner@aborted.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl4/igt@runner@aborted.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl9/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@runner@aborted.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/igt@runner@aborted.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/igt@runner@aborted.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
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
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5852]: https://gitlab.freedesktop.org/drm/intel/issues/5852
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6703]: https://gitlab.freedesktop.org/drm/intel/issues/6703
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
  [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
  [i915#7107]: https://gitlab.freedesktop.org/drm/intel/issues/7107
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
  [i915#7142]: https://gitlab.freedesktop.org/drm/intel/issues/7142
  [i915#7144]: https://gitlab.freedesktop.org/drm/intel/issues/7144
  [i915#7165]: https://gitlab.freedesktop.org/drm/intel/issues/7165
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7270]: https://gitlab.freedesktop.org/drm/intel/issues/7270


Build changes
-------------

  * Linux: CI_DRM_12265 -> Patchwork_109467v2

  CI-20190529: 20190529
  CI_DRM_12265: 4b6735c46604c09644bf6281bfeaec548bf4b065 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7020: 05b7eaf9ade2216d17c069c89439015757ee25f7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109467v2: 4b6735c46604c09644bf6281bfeaec548bf4b065 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/index.html

--===============8904295481887495916==
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
<tr><td><b>Series:</b></td><td>drm/i915: Allow panel fixed modes to have di=
ffering sync polarities (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109467/">https://patchwork.freedesktop.org/series/109467/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109467v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109467v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12265_full -&gt; Patchwork_109467v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109467v2_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_wait@write-wait@rcs0:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-6/igt@gem_wait@write-wait@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/sha=
rd-rkl-2/igt@gem_wait@write-wait@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109467v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2265/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shar=
d-apl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12265/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12265/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12265/shard-apl3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12265/shard-apl6/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12265/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2265/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12265/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12265/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109467v2/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-a=
pl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109467v2/shard-apl7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v=
2/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109467v2/shard-apl8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109467v2/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109467v2/shard-apl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109467v2/shard-apl3/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109467v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109467v2/shard-apl2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109467v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109467v2/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/boot.htm=
l">PASS</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2265/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12265/shard-skl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shar=
d-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12265/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12265/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12265/shard-skl5/boot.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/=
shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12265/shard-skl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12265/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2265/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12265/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/sh=
ard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-s=
kl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109467v2/shard-skl9/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v=
2/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109467v2/shard-skl7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109467v2/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109467v2/shard-skl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-sk=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109467v2/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109467v2/shard-skl4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109467v2/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109467v2/shard-skl1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl=
1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109467v2/shard-skl10/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl10/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v=
2/shard-skl10/boot.html">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@dmabuf@all@dma_fence_chain=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6949">i915#6949</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7165">i915#7165</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@gem_ccs@ctrl-surf-copy-new-=
ctx.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_create@create-massive.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109467v2/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_exec_fair@basic-none@b=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v=
2/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@gem_lmem_swapping@basic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@gem_lmem_swapping@parallel-=
multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@gem_softpin@evict-single-off=
set.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4171">i915#4171</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12265/shard-tglb2/igt@gem_softpin@evict-single-offset.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467=
v2/shard-tglb7/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@gem_tiled_wb.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6990">i915#=
6990</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7065"=
>i915#7065</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@i915_pm_rps@engine-order.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
37">i915#6537</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-glk2/igt@i915_selftest@live@gem_contexts.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467=
v2/shard-glk2/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7270">i915#7270</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-tglb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary=
-rotation-180-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-=
data-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-after-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_chamelium@dp-hpd-after-=
suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@kms_chamelium@hdmi-crc-mul=
tiple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_chamelium@hdmi-edid-re=
ad.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_content_protection@atom=
ic-dpms@pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/7121">i915#7121</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_content_protection@ueve=
nt@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1339">i915#1339</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7144">i915#7144</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_flip@2x-flip-vs-modese=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6375">i915#6=
375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-iclb4/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_frontbuffer_tracking@f=
bcpsr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6497">i915#6497</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +106 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl10/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@kms_psr@psr2_cursor_plane_=
onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v=
2/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109467v2/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-skl7/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-tglb1/igt@sysfs_clients@pidname.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@sysfs_clients@recycle-many.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
252">i915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_109467v2/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-ha=
ng@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109467v2/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
467v2/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12265/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109467v2/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12265/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109467v2/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09467v2/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6251">i915#625=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109467v2/shard-rkl-4/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09467v2/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-read.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-2/igt@gem_mmap_wc@write-gtt-read-wc.html">INCOMPLET=
E</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09467v2/shard-rkl-5/igt@gem_mmap_wc@write-gtt-read-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6258">i=
915#6258</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109467v2/shard-rkl-4/igt@i915_hangman@engine-engine-error@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2=
/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i91=
5#1804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109467v2/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#10=
9308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109467v2/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-tglb3/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1094=
67v2/shard-tglb1/igt@i915_pm_rpm@system-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-6/igt@i915_pm_rps@min-max-config-idle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7142">i915#71=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109467v2/shard-rkl-4/igt@i915_pm_rps@min-max-config-idle.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-skl1/igt@i915_suspend@basic-s3-without-i915.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817"=
>i915#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109467v2/shard-skl1/igt@i915_suspend@basic-s3-without-i915.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-4/igt@i915_suspend@fence-restore-untiled.html">FAIL=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo=
#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109467v2/shard-rkl-1/igt@i915_suspend@fence-restore-untiled.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-tglb3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_109467v2/shard-tglb5/igt@kms_big_fb@x-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109467v2/shard-tglb7/igt@kms_big_fb@y-tiled-m=
ax-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_big_fb@y-tiled-=
max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_til=
ed_ccs.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5852">i915#5852</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/6703">i915#6703</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109467v2/shard-glk6/igt@kms_ccs@pipe-b-crc-prima=
ry-rotation-180-yf_tiled_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-r=
kl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109467v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interrupt=
ible@b-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bp=
p-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-iclb3=
/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe=
-a-default-mode.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_frontbuf=
fer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +12 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109467v2/shard-rkl-6/igt@kms_properties@plane-properties-legacy.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@kms_psr@suspend.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-=
rkl-6/igt@kms_psr@suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-=
windowed-pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-rkl-6/igt@kms_universal_=
plane@universal-plane-pageflip-windowed-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-skl7/igt@perf@enable-disable.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/7107">i915#7107</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/sha=
rd-skl1/igt@perf@enable-disable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-glk8/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10946=
7v2/shard-glk1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109467v2/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_109467v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109467v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12265/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12265/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl2/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2265/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1226=
5/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-apl8/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467=
v2/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109467v2/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl8/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_109467v2/shard-apl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/sh=
ard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109467v2/shard-apl3/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12265/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12265/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12265/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12265/shard-skl9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard=
-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109467v2/shard-skl9/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1094=
67v2/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109467v2/shard-skl4/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6949">i915#6949</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12265 -&gt; Patchwork_109467v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12265: 4b6735c46604c09644bf6281bfeaec548bf4b065 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7020: 05b7eaf9ade2216d17c069c89439015757ee25f7 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109467v2: 4b6735c46604c09644bf6281bfeaec548bf4b065 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8904295481887495916==--
