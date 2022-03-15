Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C65D84D94B4
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 07:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCEE910E67D;
	Tue, 15 Mar 2022 06:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CC8910E67B;
 Tue, 15 Mar 2022 06:40:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4784DA363D;
 Tue, 15 Mar 2022 06:40:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0045549924270196492=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 15 Mar 2022 06:40:53 -0000
Message-ID: <164732645325.20493.3057701198050474796@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220314234203.799268-1-matthew.d.roper@intel.com>
In-Reply-To: <20220314234203.799268-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_General_multicast_steering_updates?=
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

--===============0045549924270196492==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: General multicast steering updates
URL   : https://patchwork.freedesktop.org/series/101367/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11363_full -> Patchwork_22565_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22565_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22565_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22565_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          NOTRUN -> [CRASH][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@i915_pm_dc@dc5-psr.html

  
Known issues
------------

  Here are the changes found in Patchwork_22565_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [FAIL][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22]) ([i915#5131]) -> ([PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#5325])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tglb7/igt@gem_ccs@block-copy-compressed.html
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5327])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][46] ([i915#4991])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl1/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#232])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#2846])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][51] -> [FAIL][52] ([i915#2842]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2190])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2190])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl10/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#4613])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#4270])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#768])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#3297])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][62] ([i915#4991])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk7/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][63] -> [DMESG-WARN][64] ([i915#1436] / [i915#716])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#110892])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - shard-skl:          [PASS][68] -> [DMESG-WARN][69] ([i915#1982])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl9/igt@kms_addfb_basic@invalid-get-prop-any.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl8/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#5286])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#118])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#3743]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][74] ([i915#3763])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3777]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3777]) +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#1888] / [i915#3777])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +8 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278] / [i915#3886])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109284] / [fdo#111827])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][85] ([i915#1319])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3319])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +57 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278]) +6 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][89] -> [FAIL][90] ([i915#2346])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#426])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([i915#5287])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][93] -> [INCOMPLETE][94] ([i915#4939])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][96] -> [FAIL][97] ([i915#2122]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][98] -> [FAIL][99] ([i915#4911])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#3701])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109280]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +199 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#109280] / [fdo#111825])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][105] ([fdo#109271]) +9 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][106] -> [FAIL][107] ([i915#1188])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#3555])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][110] -> [DMESG-WARN][111] ([i915#180]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          NOTRUN -> [DMESG-WARN][112] ([i915#180])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#3536])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2437])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2530])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109291])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][122] ([i915#5098])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl4/igt@sysfs_clients@fair-3.html

  
#### Possible fixes ####

  * igt@gem_eio@suspend:
    - {shard-rkl}:        ([PASS][124], [FAIL][125]) ([i915#5115]) -> [PASS][126]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/igt@gem_eio@suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@gem_eio@suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/igt@gem_eio@suspend.html

  * igt@gem_exec_capture@pi@bcs0:
    - {shard-rkl}:        [INCOMPLETE][127] ([i915#3371]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/igt@gem_exec_capture@pi@bcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][129] ([i915#2842]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][131] ([i915#2842]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][133] ([i915#2842]) -> [PASS][134] +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][135] ([i915#2190]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][137] ([i915#4171]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk8/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][139] ([i915#180]) -> [PASS][140] +3 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][141] ([i915#4258]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-5/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][143] ([i915#4939]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl4/igt@i915_suspend@debugfs-reader.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl10/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@test-cursor:
    - {shard-rkl}:        [SKIP][145] ([i915#1845] / [i915#4098]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@kms_async_flips@test-cursor.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-6/igt@kms_async_flips@test-cursor.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-snb:          [SKIP][147] ([fdo#109271]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@busy-flip@a-dp1:
    - shard-apl:          [DMESG-WARN][149] ([i915#1982] / [i915#62]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@a-dp1.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl4/igt@kms_flip@busy-flip@a-dp1.html

  * igt@kms_flip@busy-flip@c-dp1:
    - shard-apl:          [DMESG-WARN][151] ([i915#62]) -> [PASS][152] +3 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@c-dp1.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-apl4/igt@kms_flip@busy-flip@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [FAIL][153] ([i915#79]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][155] ([i915#4839] / [i915#636]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl8/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [SKIP][157] ([i915#5176]) -> [PASS][158] +2 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-1-scaler-with-pixel-format:
    - shard-iclb:         [INCOMPLETE][159] -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/index.html

--===============0045549924270196492==
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
<tr><td><b>Series:</b></td><td>i915: General multicast steering updates</td=
></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101367/">https://patchwork.freedesktop.org/series/101367/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22565/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22565/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11363_full -&gt; Patchwork_22565_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22565_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22565_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22565_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_dc@dc5-psr:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@i915_pm_dc@dc5-psr.html">CRASH=
</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22565_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11363/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
63/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11363/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1136=
3/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html">PASS</a>) ([i915#5131]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/sha=
rd-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22565/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/=
shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22565/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_225=
65/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-4/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22565/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22565/shard-rkl-2/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22565/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22565/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22565/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-rk=
l-1/boot.html">PASS</a>)</li>
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
tree/drm-tip/Patchwork_22565/shard-tglb7/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5325])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5327])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl1/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-tg=
lb8/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/sha=
rd-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +2=
 similar issues</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/s=
hard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22565/shard-apl3/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22565/shard-skl10/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-glk7/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-t=
o-y-tiled-mc-ccs.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@gem_userptr_blits@access-cont=
rol.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-glk7/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shar=
d-glk3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@i915_pm_rpm@dpms-mode-unset-n=
on-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl1/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-=
apl8/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl9/igt@kms_addfb_basic@invalid-get-prop-any.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2565/shard-skl8/igt@kms_addfb_basic@invalid-get-prop-any.html">DMESG-WARN</=
a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565=
/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i91=
5#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#1888] / [i=
915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_color_chamelium@pipe-b-ct=
m-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-glk7/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-random.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-rapid-movement.html">SKIP</a> ([fdo#109271]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22565/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb=
2101010-render-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/shard-=
skl1/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22565/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22565/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22565/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-=
2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +199 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-tglb3/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#=
111825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-glk7/igt@kms_frontbuffer_tracking@fbcps=
r-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +9 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1=
-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22565/shard-skl6/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpm=
s-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22565/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl8/igt@kms_plane@plane-panning-bottom=
-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22565/s=
hard-iclb8/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-apl3/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl9/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@nouveau_crc@pipe-a-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-iclb8/igt@syncobj_timeline@invalid-tran=
sfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22565/shard-skl4/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-1/igt@gem_eio@suspend.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@gem_ei=
o@suspend.html">FAIL</a>) ([i915#5115]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22565/shard-rkl-1/igt@gem_eio@suspend.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a>=
 ([i915#3371]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22565/shard-rkl-1/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22565/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22565/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22565/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2565/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">=
FAIL</a> ([i915#4171]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22565/shard-glk8/igt@gem_softpin@allocator-evict-all-engine=
s.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22565/shard-apl3/igt@gem_softpin@noreloc-s3.html">PASS</a> +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a>=
 ([i915#4258]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22565/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> ([i915#4939]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22565/shard-skl10/igt@i915_suspend@debugfs-reader.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-4/igt@kms_async_flips@test-cursor.html">SKIP</a> ([=
i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22565/shard-rkl-6/igt@kms_async_flips@test-cursor.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atom=
ic.html">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22565/shard-snb4/igt@kms_cursor_legacy@flip-vs-cu=
rsor-busy-crc-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@a-dp1.html">DMESG-WARN</a> =
([i915#1982] / [i915#62]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22565/shard-apl4/igt@kms_flip@busy-flip@a-dp1.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl8/igt@kms_flip@busy-flip@c-dp1.html">DMESG-WARN</a> =
([i915#62]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22565/shard-apl4/igt@kms_flip@busy-flip@c-dp1.html">PASS</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22565/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi=
-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl8/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLE=
TE</a> ([i915#4839] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22565/shard-skl10/igt@kms_flip@flip-vs-suspend@b=
-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-=
1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">SKIP</a> ([i915#=
5176]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22565/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-=
0-5@pipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-edp-=
1-scaler-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb2/igt@kms_plane_scaling@scaler-with-pixel-format-">=
INCOMPLETE</a> -&gt; [PASS][160]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0045549924270196492==--
