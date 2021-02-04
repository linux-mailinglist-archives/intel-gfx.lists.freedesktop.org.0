Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E44E30EC2E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 06:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9DD6EC7E;
	Thu,  4 Feb 2021 05:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B6986EC7E;
 Thu,  4 Feb 2021 05:44:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 225A9A0091;
 Thu,  4 Feb 2021 05:44:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 04 Feb 2021 05:44:54 -0000
Message-ID: <161241749410.4503.2340789701699481762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/vblank=3A_Avoid_storing_a_timestamp_for_the_same_frame_twice?=
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
Content-Type: multipart/mixed; boundary="===============1022555085=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1022555085==
Content-Type: multipart/alternative;
 boundary="===============5809635486538623801=="

--===============5809635486538623801==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/vblank: Avoid storing a timestamp for the same frame twice
URL   : https://patchwork.freedesktop.org/series/86672/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9727_full -> Patchwork_19581_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19581_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19581_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19581_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-hsw:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw7/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-hsw8/igt@i915_module_load@reload-with-fault-injection.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_clients@fair-7@vcs}:
    - shard-iclb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@sysfs_clients@fair-7@vcs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb2/igt@sysfs_clients@fair-7@vcs.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-uint-uint (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][5] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-uint-uint.html

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-tanh-vec4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-tanh-vec4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9727_full and Patchwork_19581_full:

### New Piglit tests (9) ###

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-float-float-float:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-not-bvec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-bitxor-int-int:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-neg-abs-int-ivec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-uvec2-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-uint-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-rshift-uint-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-selection-bool-uvec4-uvec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-tanh-vec4:
    - Statuses : 1 crash(s)
    - Exec time: [0.50] s

  

Known issues
------------

  Here are the changes found in Patchwork_19581_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#2485] / [i915#2813])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl9/igt@drm_mm@all@replace.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl3/igt@drm_mm@all@replace.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1610])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#1610] / [i915#2803])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#2803])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_exec_schedule@u-semaphore-codependency:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1610])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl4/igt@gem_exec_schedule@u-semaphore-codependency.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl7/igt@gem_exec_schedule@u-semaphore-codependency.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#112306])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb2/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1982])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#54]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +42 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][35] -> [FAIL][36] ([i915#2370]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#2346])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
    - shard-snb:          [PASS][39] -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-kbl:          NOTRUN -> [FAIL][45] ([i915#2641])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271]) +30 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [FAIL][47] ([i915#1188])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#112054])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][56] ([i915#2100])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][57] ([IGT#2])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_sysfs_edid_timing.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#1542])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl1/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl8/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][60] ([i915#2842]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [DMESG-WARN][62] ([i915#1610] / [i915#2803]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [INCOMPLETE][64] ([i915#151] / [i915#155]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-iclb:         [DMESG-FAIL][66] ([i915#2291] / [i915#541]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb8/igt@i915_selftest@live@gt_heartbeat.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][68] ([i915#54]) -> [PASS][69] +5 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_flip@nonexisting-fb-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][70] ([i915#1982]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl3/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl9/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][72] ([i915#2122]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][74] ([i915#1188]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl9/igt@kms_hdr@bpc-switch.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * {igt@sysfs_clients@busy@vcs0}:
    - shard-skl:          [FAIL][80] ([i915#3019]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl6/igt@sysfs_clients@busy@vcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl6/igt@sysfs_clients@busy@vcs0.html

  * {igt@sysfs_clients@recycle}:
    - shard-iclb:         [FAIL][82] ([i915#3028]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb7/igt@sysfs_clients@recycle.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb2/igt@sysfs_clients@recycle.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-iclb:         [FAIL][84] -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@sysfs_clients@recycle-many.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb1/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [FAIL][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb2/igt@sysfs_clients@recycle-many.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb5/igt@sysfs_clients@recycle-many.html

  * {igt@sysfs_clients@sema-10@vecs0}:
    - shard-glk:          [SKIP][88] ([fdo#109271] / [i915#3026]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk8/igt@sysfs_clients@sema-10@vecs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk6/igt@sysfs_clients@sema-10@vecs0.html

  * {igt@sysfs_clients@split-25@vcs0}:
    - shard-skl:          [SKIP][90] ([fdo#109271]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl9/igt@sysfs_clients@split-25@vcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl10/igt@sysfs_clients@split-25@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][92] ([i915#2851]) -> [FAIL][93] ([i915#2842])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][94] ([i915#2842]) -> [FAIL][95] ([i915#2849])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][96] ([i915#1804] / [i915#2684]) -> [WARN][97] ([i915#2681] / [i915#2684])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][98] ([i915#2920]) -> [SKIP][99] ([i915#658]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][100] ([i915#658]) -> [SKIP][101] ([i915#2920]) +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][102], [FAIL][103]) ([i915#2295] / [i915#2505] / [i915#3002]) -> ([FAIL][104], [FAIL][105], [FAIL][106]) ([i915#142] / [i915#2292] / [i915#2295] / [i915#2505] / [i915#3002])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw8/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-hsw8/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-hsw1/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-hsw8/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110]) ([i915#1814] / [i915#2295] / [i915#3002]) -> ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118]) ([i915#1814] / [i915#2295] / [i915#3002] / [i915#602])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl4/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl2/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl1/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][119], [FAIL][120], [FAIL][121]) ([i915#2295] / [i915#3002]) -> ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1610] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#3002])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl3/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl8/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl3/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl8/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl3/igt@runner@aborted.html
    - shard-glk:          ([FAIL][128], [FAIL][129]) ([i915#2295] / [i915#3002] / [k.org#202321]) -> ([FAIL][130], [FAIL][131], [FAIL][132]) ([i915#2295] / [i915#2426] / [i915#3002] / [k.org#202321])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk7/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk4/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][133], [FAIL][134], [FAIL][135]) ([i915#2295] / [i915#2667] / [i915#3002]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb8/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2100]: https://gitlab.freedesktop.org/drm/intel/issues/2100
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2485]: https://gitlab.freedesktop.org/drm/intel/issues/2485
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2641]: https://gitlab.freedesktop.org/drm/intel/issues/2641
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2813]: https://gitlab.freedesktop.org/drm/intel/issues/2813
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3019]: https://gitlab.freedesktop.org/drm/intel/issues/3019
  [i915#3026]: https://gitlab.freedesktop.org/drm/intel/issues/3026
  [i915#3028]: https://gitlab.freedesktop.org/drm/intel/issues/3028
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [k.org#202321]: ht

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/index.html

--===============5809635486538623801==
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
<tr><td><b>Series:</b></td><td>drm/vblank: Avoid storing a timestamp for th=
e same frame twice</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86672/">https://patchwork.freedesktop.org/series/86672/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19581/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19581/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9727_full -&gt; Patchwork_19581_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19581_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19581_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19581_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@reload-with-fault-injection:<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-hsw7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19581/shard-hsw8/igt@i915_module_load@reload-with-fault-injection.htm=
l">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@sysfs_clients@fair-7@vcs}:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb6/igt@sysfs_clients@fair-7@vcs.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-i=
clb2/igt@sysfs_clients@fair-7@vcs.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-=
uint-uint (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/pig-icl-1065g7/spec@arb_tessellation_shader@e=
xecution@built-in-functions@tcs-op-bitxor-uint-uint.html">INCOMPLETE</a> +7=
 similar issues</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-tanh-vec4 =
(NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/pig-icl-1065g7/spec@arb_tessellation_shader@e=
xecution@built-in-functions@tcs-tanh-vec4.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9727_full and Patchwork_19=
581_full:</p>
<h3>New Piglit tests (9)</h3>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-mix-float-=
float-float:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-not-bvec2:=
</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-=
bitxor-int-int:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitand-=
neg-abs-int-ivec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-u=
vec2-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-=
uint-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-rshift-=
uint-uint:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-selecti=
on-bool-uvec4-uvec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-tanh-vec4:=
</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.50] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19581_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl9/igt@drm_mm@all@replace.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-skl3/igt=
@drm_mm@all@replace.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2485">i915#2485</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2813">i915#2813</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
581/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581=
/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sha=
rd-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sh=
ard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581=
/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-glk6/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581=
/shard-glk4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2=
803</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
81/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2803=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-codependency:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl4/igt@gem_exec_schedule@u-semaphore-codependency.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19581/shard-skl7/igt@gem_exec_schedule@u-semaphore-codependency.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-tglb2/igt@gen9_exec_parse@basic-rejecte=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D112306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-iclb4/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_chamelium@dp-frame-dump.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-s=
kl8/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19581/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-25=
6x256-left-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19581/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#23=
70</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19581/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#=
2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untile=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19581/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-unt=
iled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sh=
ard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sh=
ard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytile.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2641">i915#2641</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-skl1/igt@kms_hdr@bpc-switch-suspend.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118=
8">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19581/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-tglb2/igt@kms_plane_multiple@atomic-pip=
e-d-tiling-yf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D112054">fdo#112054</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sha=
rd-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-skl4/igt@kms_setmode@invalid-clone-excl=
usive-crtc.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2100">i915#2100</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-=
skl8/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9581/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19581/shard-skl4/igt@gem_exec_schedule@u-fairslice@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i=
915#151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/15=
5">i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19581/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb8/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2291">i9=
15#2291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
1">i915#541</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19581/shard-iclb5/igt@i915_selftest@live@gt_heartbeat.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19581/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl3/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19581/shard-skl9/igt@kms_flip@nonexisting-fb-interruptibl=
e@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19581/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-sk=
l3/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19581/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-cons=
tant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19581/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@busy@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl6/igt@sysfs_clients@busy@vcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3019">i915#3019</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sha=
rd-skl6/igt@sysfs_clients@busy@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb7/igt@sysfs_clients@recycle.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3028">i915#3028</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sha=
rd-iclb2/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-iclb6/igt@sysfs_clients@recycle-many.html">FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-=
iclb1/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-tglb2/igt@sysfs_clients@recycle-many.html">FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-=
tglb5/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@vecs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk8/igt@sysfs_clients@sema-10@vecs0.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3026">i915#=
3026</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19581/shard-glk6/igt@sysfs_clients@sema-10@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@split-25@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl9/igt@sysfs_clients@split-25@vcs0.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
81/shard-skl10/igt@sysfs_clients@split-25@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#2=
851</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19581/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19581/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19581/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19581/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dm=
g-area-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19581/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-=
area-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-hsw8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw8/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19581/shard-hsw8/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581=
/shard-hsw1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19581/shard-hsw8/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/142"=
>i915#142</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2292">i915#2292</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3002">i915#3002</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9727/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3002">i915#3002</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shar=
d-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19581/shard-kbl1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1958=
1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19581/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9581/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9727/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-apl=
1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19581/shard-apl8/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-=
apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19581/shard-apl8/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/sha=
rd-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19581/shard-apl3/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i9=
15#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
14">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3002">i915#3002</a> / <a href=3D"ht">k.org#202321</a>) -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-glk4=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19581/shard-glk7/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-g=
lk4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"ht">k.=
org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9727/shard-tglb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/=
shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb8/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9581/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19581/shard-tglb7/igt@runner@aborted=
.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2667">i915#2667</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2803">i915#2803</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3002">i915#3002</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============5809635486538623801==--

--===============1022555085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1022555085==--
