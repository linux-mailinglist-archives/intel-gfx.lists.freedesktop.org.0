Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FC54D8BD1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 19:34:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B1310E2D7;
	Mon, 14 Mar 2022 18:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 741CC10E26F;
 Mon, 14 Mar 2022 18:34:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70A12A9A42;
 Mon, 14 Mar 2022 18:34:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1001031446521457933=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Mon, 14 Mar 2022 18:34:54 -0000
Message-ID: <164728289442.20565.16798265840975440455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220314152753.85081-1-jose.souza@intel.com>
In-Reply-To: <20220314152753.85081-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/adlp=3A_Update_eDP_voltage_swing_table?=
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

--===============1001031446521457933==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/adlp: Update eDP voltage swing table
URL   : https://patchwork.freedesktop.org/series/101343/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11358_full -> Patchwork_22557_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22557_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22557_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22557_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@busy-create:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-kbl4/igt@gem_create@busy-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl6/igt@gem_create@busy-create.html

  
Known issues
------------

  Here are the changes found in Patchwork_22557_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [FAIL][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4392]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk9/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk7/boot.html
    - {shard-rkl}:        ([PASS][53], [PASS][54], [FAIL][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73]) ([i915#5131]) -> ([PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-6/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-6/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-6/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-6/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-6/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-6/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-2/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-2/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-2/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-2/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#5325])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb5/igt@gem_ccs@block-copy-compressed.html
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#5327])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][96] ([i915#4991])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb6/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [PASS][97] -> [INCOMPLETE][98] ([i915#4037])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][99] ([i915#5076])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl4/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][100] -> [FAIL][101] ([i915#2842])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][102] -> [FAIL][103] ([i915#2842])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#4613])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#4613])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#4613])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#4613]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#4270]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#4270])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#768]) +4 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#3297]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#109289])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][113] -> [DMESG-WARN][114] ([i915#1436] / [i915#716])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#2856]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][116] -> [INCOMPLETE][117] ([i915#4547])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][118] -> [SKIP][119] ([i915#4281])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#110892]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][121] -> [INCOMPLETE][122] ([i915#4547] / [i915#5294])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl9/igt@i915_selftest@live@execlists.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl3/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#3826])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][124] ([i915#2521])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic@atomic_plane_damage:
    - shard-iclb:         NOTRUN -> [SKIP][125] ([i915#4765])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#5286]) +3 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#5286])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][129] ([i915#3743])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#3777]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#3777])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#3777])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#110723]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#111615] / [i915#3689])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#3886]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#3886]) +5 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#3886])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#3886]) +6 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109278] / [i915#3886]) +4 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([i915#3689]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-glk:          NOTRUN -> [SKIP][141] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@kms_chamelium@hdmi-audio.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-kbl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [fdo#111827])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl7/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([fdo#109278] / [i915#1149])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([i915#3116])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#3359])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][149] ([fdo#109279] / [i915#3359])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
    - shard-glk:          NOTRUN -> [SKIP][150] ([fdo#109271]) +45 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([fdo#109278]) +31 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][152] ([fdo#109271]) +20 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl4/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([fdo#109274] / [fdo#109278]) +4 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#533])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl4/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-glk:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#533])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][156] ([i915#426])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][157] ([i915#5287]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html

  * igt@kms_dsc@basic-dsc-enable:
    - shard-iclb:         NOTRUN -> [SKIP][158] ([i915#3840])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb5/igt@kms_dsc@basic-dsc-enable.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109274]) +5 similar issues
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][160] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb6/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@busy-flip@a-edp1:
    - shard-skl:          [PASS][161] -> [DMESG-WARN][162] ([i915#1982])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl6/igt@kms_flip@busy-flip@a-edp1.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl6/igt@kms_flip@busy-flip@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][163] -> [FAIL][164] ([i915#2122])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][165] -> [DMESG-WARN][166] ([i915#180]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][167] ([i915#2122])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][168] -> [FAIL][169] ([i915#4911])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][170] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][171] ([fdo#109280]) +24 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][172] ([fdo#109271]) +145 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][173] ([i915#3555]) +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][174] ([fdo#109271] / [i915#533])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][175] ([fdo#108145] / [i915#265])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][176] ([i915#265])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-a

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/index.html

--===============1001031446521457933==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/adlp: Update eDP voltage sw=
ing table</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101343/">https://patchwork.freedesktop.org/series/101343/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22557/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11358_full -&gt; Patchwork_22557_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22557_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22557_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22557_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_create@busy-create:<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-kbl4/igt@gem_create@busy-create.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-kbl=
6/igt@gem_create@busy-create.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22557_full that come from known =
issues:</p>
<h3>CI changes</h3>
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
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22557/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-glk7/=
boot.html">PASS</a>)</p>
</li>
<li>
<p>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boo=
t.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11358/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1135=
8/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11358/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shar=
d-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11358/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11358/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-2/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11358/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11358=
/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_11358/shard-rkl-1/boot.html">PASS</a>) ([i915#5131]) -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shar=
d-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22557/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/s=
hard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22557/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2255=
7/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2557/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22557/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-4/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22557/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-2=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22557/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22557/shard-rkl-1/boot.html">PASS</a>)</=
p>
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
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/shard-tglb5/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5325])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/shard-iclb7/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5327])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb6/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/=
shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html">INCOMPLETE</a> ([i915#=
4037])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-kbl4/igt@gem_exec_balancer@parallel-con=
texts.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2557/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
557/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-apl7/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-kbl4/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb6/igt@gem_lmem_swapping@random-engi=
nes.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl6/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@gem_pxp@reject-modify-context=
-protection-off-3.html">SKIP</a> ([i915#4270]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@gem_pxp@verify-pxp-stale-ctx-=
execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb5/igt@gem_render_copy@y-tiled-mc-cc=
s-to-vebox-y-tiled.html">SKIP</a> ([i915#768]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@gem_userptr_blits@unsync-over=
lap.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@gen7_exec_parse@basic-offset.=
html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shar=
d-glk6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-skl6/ig=
t@i915_pm_dc@dc6-psr.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.=
html">SKIP</a> ([fdo#110892]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl9/igt@i915_selftest@live@execlists.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/sha=
rd-skl3/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> ([i915#4547] =
/ [i915#5294])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@kms_addfb_basic@invalid-smem-=
bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_async_flips@alternate-sync=
-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_atomic@atomic_plane_damag=
e.html">SKIP</a> ([i915#4765])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_big_fb@4-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@kms_big_fb@x-tiled-16bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777=
]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3777=
])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#110723]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-kbl7/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl7/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +4 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_chamelium@dp-hpd-storm-dis=
able.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb1/igt@kms_chamelium@hdmi-audio.html=
">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-kbl7/igt@kms_chamelium@hdmi-crc-multipl=
e.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to=
-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_cursor_crc@pipe-d-cursor-2=
56x85-rapid-movement.html">SKIP</a> ([fdo#109271]) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-kbl4/igt@kms_cursor_edge_walk@pipe-d-64=
x64-left-edge.html">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#1=
09278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/shard-apl4/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22557/shard-glk1/igt@kms_cursor_legacy@pipe-d-tortur=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb=
2101010-render-4tiled.html">SKIP</a> ([i915#5287]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@basic-dsc-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb5/igt@kms_dsc@basic-dsc-enable.html=
">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> ([fdo#109274]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb6/igt@kms_flip@2x-flip-vs-fences-in=
terruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl6/igt@kms_flip@busy-flip@a-edp1.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22557/shard-=
skl6/igt@kms_flip@busy-flip@a-edp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22557/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22557/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@c-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11358/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22557/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-=
2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +24 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-apl4/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +145 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-iclb8/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#3555]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22557/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-a</p>
</li>
</ul>

</body>
</html>

--===============1001031446521457933==--
