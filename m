Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F2D248CF1
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 19:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A752A89F2A;
	Tue, 18 Aug 2020 17:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E54BE89DCF;
 Tue, 18 Aug 2020 17:28:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD2D5A3ECB;
 Tue, 18 Aug 2020 17:28:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Tue, 18 Aug 2020 17:28:44 -0000
Message-ID: <159777172476.18758.4765654470712988296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200818153910.27894-1-sean@poorly.run>
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1716479815=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1716479815==
Content-Type: multipart/alternative;
 boundary="===============0625787172531583746=="

--===============0625787172531583746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for HDCP 1.4 over MST (rev2)
URL   : https://patchwork.freedesktop.org/series/78749/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8898_full -> Patchwork_18368_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18368_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18368_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18368_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-hsw4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-hsw1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec2.html

  * spec@glsl-1.30@execution@built-in-functions@vs-op-add-uint-uvec4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][4] +6 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@vs-op-add-uint-uvec4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8898_full and Patchwork_18368_full:

### New Piglit tests (8) ###

  * spec@glsl-1.30@execution@built-in-functions@fs-clamp-ivec4-int-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@fs-op-assign-bitor-uvec3-uvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec2:
    - Statuses : 1 crash(s)
    - Exec time: [0.63] s

  * spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@fs-op-bitxor-neg-abs-int-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-add-uint-uvec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-assign-lshift-ivec2-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-1.30@execution@built-in-functions@vs-op-bitor-neg-int-ivec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18368_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2079])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl4/igt@gem_exec_balancer@bonded-early.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl6/igt@gem_exec_balancer@bonded-early.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk1/igt@gem_exec_gttfill@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk7/igt@gem_exec_gttfill@all.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl8/igt@i915_pm_rpm@drm-resources-equal.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl1/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#198] / [i915#2278])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl1/igt@i915_selftest@mock@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-iclb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2122])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#1635] / [i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@flip-vs-fences@a-edp1:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +13 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl3/igt@kms_flip@flip-vs-fences@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@kms_flip@flip-vs-fences@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#173])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb3/igt@kms_psr@no_drrs.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl6/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-glk:          [DMESG-WARN][33] ([i915#2165]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk8/igt@gem_mmap_gtt@fault-concurrent.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk8/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][35] ([i915#1436] / [i915#1635] / [i915#716]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl3/igt@gen9_exec_parse@allowed-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][37] ([i915#1436] / [i915#716]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl2/igt@gen9_exec_parse@allowed-single.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][39] ([i915#454]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-hsw:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-hsw1/igt@i915_query@query-topology-coherent-slice-mask.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-hsw2/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [INCOMPLETE][43] ([i915#1823]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-tglb1/igt@i915_selftest@perf@request.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-tglb8/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][45] ([i915#118] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][49] ([i915#198]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [FAIL][51] ([i915#2122]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +13 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb6/igt@kms_psr@psr2_sprite_render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb4/igt@perf_pmu@module-unload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb8/igt@perf_pmu@module-unload.html

  * igt@prime_busy@after@vecs0:
    - shard-hsw:          [FAIL][61] ([i915#2258]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-hsw7/igt@prime_busy@after@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-hsw8/igt@prime_busy@after@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [INCOMPLETE][63] ([i915#1958]) -> [TIMEOUT][64] ([i915#1958])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][65] ([i915#155]) -> [DMESG-WARN][66] ([i915#180])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][67], [FAIL][68]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716]) -> [FAIL][69] ([i915#1635] / [i915#2110])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl4/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl3/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][70], [FAIL][71]) ([i915#1436] / [i915#2029]) -> ([FAIL][72], [FAIL][73]) ([i915#1436] / [i915#2110])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl3/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl2/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2165]: https://gitlab.freedesktop.org/drm/intel/issues/2165
  [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8898 -> Patchwork_18368

  CI-20190529: 20190529
  CI_DRM_8898: 7a3c826e246d18af05f662cf6425e750eb00aec5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18368: 3a5e18d9ce3659322d1b3623d8641463ce454851 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/index.html

--===============0625787172531583746==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Add support for HDCP 1.4 over MST (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/78749/">https://patchwork.freedesktop.org/series/78749/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8898_full -&gt; Patchwork_18368_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18368_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18368_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18368_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-hsw4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-hsw1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec2 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec2.html">CRASH</a></li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-add-uint-uvec4 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/pig-icl-1065g7/spec@glsl-1.30@execution@built-in-functions@vs-op-add-uint-uvec4.html">INCOMPLETE</a> +6 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8898_full and Patchwork_18368_full:</p>
<h3>New Piglit tests (8)</h3>
<ul>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-clamp-ivec4-int-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-assign-bitor-uvec3-uvec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec2:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.63] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-bitor-uint-uvec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@fs-op-bitxor-neg-abs-int-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-add-uint-uvec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-assign-lshift-ivec2-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@built-in-functions@vs-op-bitor-neg-int-ivec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18368_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-early:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl4/igt@gem_exec_balancer@bonded-early.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl6/igt@gem_exec_balancer@bonded-early.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2079">i915#2079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk1/igt@gem_exec_gttfill@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk7/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl8/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl1/igt@i915_pm_rpm@drm-resources-equal.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl1/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl3/igt@kms_flip@flip-vs-fences@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@kms_flip@flip-vs-fences@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb3/igt@kms_psr@no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb1/igt@kms_psr@no_drrs.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/173">i915#173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl4/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk8/igt@gem_mmap_gtt@fault-concurrent.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2165">i915#2165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk8/igt@gem_mmap_gtt@fault-concurrent.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl6/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl5/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-hsw1/igt@i915_query@query-topology-coherent-slice-mask.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-hsw2/igt@i915_query@query-topology-coherent-slice-mask.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@request:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-tglb1/igt@i915_selftest@perf@request.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1823">i915#1823</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-tglb8/igt@i915_selftest@perf@request.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk9/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb6/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb6/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-iclb4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-iclb8/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_busy@after@vecs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-hsw7/igt@prime_busy@after@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2258">i915#2258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-hsw8/igt@prime_busy@after@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-glk6/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-apl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8898/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18368/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8898 -&gt; Patchwork_18368</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8898: 7a3c826e246d18af05f662cf6425e750eb00aec5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18368: 3a5e18d9ce3659322d1b3623d8641463ce454851 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0625787172531583746==--

--===============1716479815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1716479815==--
