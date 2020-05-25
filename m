Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719291E131F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 19:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D096A6E0CA;
	Mon, 25 May 2020 17:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF28C6E0C5;
 Mon, 25 May 2020 17:01:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B92A3A47E8;
 Mon, 25 May 2020 17:01:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 17:01:16 -0000
Message-ID: <159042607675.4526.9492530969083611720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525124912.16019-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525124912.16019-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Only_query_DP_state_of_a_DDI_encoder?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/display: Only query DP state of a DDI encoder
URL   : https://patchwork.freedesktop.org/series/77635/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8530_full -> Patchwork_17770_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17770_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-hsw:          NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw7/igt@gem_exec_reloc@basic-concurrent0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17770_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-hsw:          ([FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26]) ([i915#1892]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-hsw1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-hsw1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#1528])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#62] / [i915#92])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-kbl2/igt@gem_partial_pwrite_pread@write.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-kbl1/igt@gem_partial_pwrite_pread@write.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#1119] / [i915#118] / [i915#95])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-glk4/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#165] / [i915#62] / [i915#92]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-kbl1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][60] -> [FAIL][61] ([i915#54] / [i915#62])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-apl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][64] -> [DMESG-FAIL][65] ([i915#1925])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-glk4/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-glk1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1188]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([fdo#108145] / [i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109642] / [fdo#111068])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * {igt@kms_flip@dpms-vs-vblank-race@c-edp1}:
    - shard-skl:          [FAIL][78] ([i915#407]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-skl5/igt@kms_flip@dpms-vs-vblank-race@c-edp1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-skl4/igt@kms_flip@dpms-vs-vblank-race@c-edp1.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][80] ([fdo#109441]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][82] ([i915#31]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl8/igt@kms_setmode@basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][86] ([fdo#109271]) -> [INCOMPLETE][87] ([i915#82])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-snb6/igt@i915_pm_dc@dc5-psr.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-snb1/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][88] ([i915#1319] / [i915#1635]) -> [FAIL][89] ([fdo#110321] / [fdo#110336])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl8/igt@kms_content_protection@atomic.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][90] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][91] ([i915#1319])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][92] ([fdo#110321]) -> [TIMEOUT][93] ([i915#1319] / [i915#1635])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl2/igt@kms_content_protection@lic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][94] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][95] ([fdo#110321])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-apl2/igt@kms_content_protection@srm.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          [FAIL][96] ([fdo#108145] / [i915#265]) -> [FAIL][97] ([fdo#108145] / [i915#265] / [i915#62])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8530/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1892]: https://gitlab.freedesktop.org/drm/intel/issues/1892
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8530 -> Patchwork_17770

  CI-20190529: 20190529
  CI_DRM_8530: 5837860f93ba9d456fc0432300968332c0aa65b4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17770: 2c9b4a36cccde04c5c805aa0fc45faa685302bb1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17770/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
