Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 348D12761B3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 22:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB32A6E9F8;
	Wed, 23 Sep 2020 20:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5832F6E9F7;
 Wed, 23 Sep 2020 20:11:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FC44A47E9;
 Wed, 23 Sep 2020 20:11:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 23 Sep 2020 20:11:04 -0000
Message-ID: <160089186429.4496.4975553624116324915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200923132435.17039-1-anshuman.gupta@intel.com>
In-Reply-To: <20200923132435.17039-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_misc_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1441847469=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1441847469==
Content-Type: multipart/alternative;
 boundary="===============0032031582446140837=="

--===============0032031582446140837==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP misc (rev4)
URL   : https://patchwork.freedesktop.org/series/73345/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9043_full -> Patchwork_18557_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18557_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-u64vec3-uint64_t (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-u64vec3-uint64_t.html

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-uint64_t-u64vec3 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-uint64_t-u64vec3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9043_full and Patchwork_18557_full:

### New Piglit tests (11) ###

  * spec@arb_gpu_shader_int64@execution@built-in-functions@cs-op-mod-u64vec4-uint64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-mod-uint64_t-u64vec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-int64_t-int64_t:
    - Statuses : 1 crash(s)
    - Exec time: [0.50] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-u64vec3-uint64_t:
    - Statuses : 1 crash(s)
    - Exec time: [0.80] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-mult-i64vec4-int64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-div-i64vec3-int64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-div-int64_t-i64vec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-lshift-int64_t-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-uint64_t-u64vec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-ne-uint64_t-uint64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@built-in-functions@vs-abs-int64_t:
    - Statuses : 1 crash(s)
    - Exec time: [0.56] s

  

Known issues
------------

  Here are the changes found in Patchwork_18557_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@engines@rcs0:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-glk3/igt@gem_exec_gttfill@engines@rcs0.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1635] / [i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#1982]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl8/igt@kms_hdr@bpc-switch.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Possible fixes ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [INCOMPLETE][19] ([i915#750]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-tglb2/igt@drm_import_export@prime.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-tglb8/igt@drm_import_export@prime.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][21] ([i915#658]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@feature_discovery@psr2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_param@vm:
    - shard-skl:          [DMESG-WARN][23] ([i915#1982]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl2/igt@gem_ctx_param@vm.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl1/igt@gem_ctx_param@vm.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][25] ([i915#1436] / [i915#716]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [INCOMPLETE][27] ([i915#198] / [i915#2278]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl5/igt@i915_selftest@mock@contexts.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl1/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][29] ([i915#1982]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][31] ([i915#300]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-hsw:          [INCOMPLETE][35] ([CI#80]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-hsw2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-hsw5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-skl:          [FAIL][37] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][41] ([i915#49]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][43] ([i915#1188]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][49] ([i915#1635] / [i915#31]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-apl6/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][51] ([i915#198]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-query-busy:
    - shard-apl:          [DMESG-WARN][53] ([i915#1635] / [i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-apl1/igt@kms_vblank@pipe-b-query-busy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-apl6/igt@kms_vblank@pipe-b-query-busy.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][55] ([fdo#109349]) -> [DMESG-WARN][56] ([i915#1226])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [DMESG-FAIL][57] ([i915#1982]) -> [DMESG-WARN][58] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2469]: https://gitlab.freedesktop.org/drm/intel/issues/2469
  [i915#2476]: https://gitlab.freedesktop.org/drm/intel/issues/2476
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9043 -> Patchwork_18557

  CI-20190529: 20190529
  CI_DRM_9043: 51069e2949f3b0ed967c0125ffe9ca4bf0b9b4fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18557: f4e59bc0cc3b8f2d8c63faa920ab9c64582ac3c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/index.html

--===============0032031582446140837==
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
<tr><td><b>Series:</b></td><td>HDCP misc (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/73345/">https://patchwork.freedesktop.org/series/73345/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9043_full -&gt; Patchwork_18557_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18557_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-u64vec3-uint64_t (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-u64vec3-uint64_t.html">CRASH</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-uint64_t-u64vec3 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-uint64_t-u64vec3.html">INCOMPLETE</a> +7 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9043_full and Patchwork_18557_full:</p>
<h3>New Piglit tests (11)</h3>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@cs-op-mod-u64vec4-uint64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@fs-op-mod-uint64_t-u64vec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-int64_t-int64_t:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.50] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-add-u64vec3-uint64_t:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.80] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-mult-i64vec4-int64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-div-i64vec3-int64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-div-int64_t-i64vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-lshift-int64_t-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-mod-uint64_t-u64vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@tcs-op-ne-uint64_t-uint64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@vs-abs-int64_t:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.56] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18557_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@engines@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-glk3/igt@gem_exec_gttfill@engines@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-tglb2/igt@drm_import_export@prime.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-tglb8/igt@drm_import_export@prime.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@vm:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl2/igt@gem_ctx_param@vm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl1/igt@gem_ctx_param@vm.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-kbl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-kbl7/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl5/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl1/igt@i915_selftest@mock@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-hsw2/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-hsw5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/177">i915#177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/52">i915#52</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-apl6/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-apl3/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-busy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-apl1/igt@kms_vblank@pipe-b-query-busy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-apl6/igt@kms_vblank@pipe-b-query-busy.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9043/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18557/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9043 -&gt; Patchwork_18557</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9043: 51069e2949f3b0ed967c0125ffe9ca4bf0b9b4fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18557: f4e59bc0cc3b8f2d8c63faa920ab9c64582ac3c9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0032031582446140837==--

--===============1441847469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1441847469==--
