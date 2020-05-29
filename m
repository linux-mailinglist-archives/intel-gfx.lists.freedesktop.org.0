Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64B71E7DB0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 14:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144C96E8EE;
	Fri, 29 May 2020 12:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3ECD6E8EB;
 Fri, 29 May 2020 12:54:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1724A0019;
 Fri, 29 May 2020 12:54:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 12:54:26 -0000
Message-ID: <159075686672.3332.7152461800341117318@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_few_asserts_aroun?=
 =?utf-8?q?d_handling_of_i915=5Frequest=5Fis=5Factive=28=29_=28rev3=29?=
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

Series: series starting with [1/2] drm/i915: Add a few asserts around handling of i915_request_is_active() (rev3)
URL   : https://patchwork.freedesktop.org/series/77781/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8552_full -> Patchwork_17814_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17814_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-tglb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [FAIL][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#1926]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#1436] / [i915#716])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][53] -> [WARN][54] ([i915#1519])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#54] / [i915#93] / [i915#95])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180] / [i915#93] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#1188])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-apl:          [FAIL][67] ([i915#1528]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-apl2/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-hsw:          [INCOMPLETE][69] ([i915#61]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw8/igt@gem_exec_whisper@basic-fds-forked-all.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-hsw5/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [DMESG-FAIL][73] ([i915#1926]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][75] ([IGT#5]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [DMESG-WARN][77] ([i915#42]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-snb1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-snb:          [SKIP][79] ([fdo#109271]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][81] ([i915#180] / [i915#95]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][87] ([i915#1542]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-hsw8/igt@perf@blocking-parameterized.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-hsw4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][89] ([i915#468]) -> [FAIL][90] ([i915#454])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][91] ([i915#1319] / [i915#1635]) -> [FAIL][92] ([fdo#110321] / [fdo#110336] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-apl1/igt@kms_content_protection@atomic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-apl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [FAIL][93] ([fdo#110321] / [i915#93] / [i915#95]) -> [TIMEOUT][94] ([i915#1319])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-kbl2/igt@kms_content_protection@lic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-kbl7/igt@kms_content_protection@lic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][95] ([i915#1925]) -> [DMESG-FAIL][96] ([i915#1925] / [i915#1926])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8552/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8552 -> Patchwork_17814

  CI-20190529: 20190529
  CI_DRM_8552: cd4a9b47339259e3a98601fff14438f17fd2d7dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5683: 757b6e72d546fd2dbc3801a73796d67b0854021b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17814: e47881371cdf60297c9afbe65f4f6fedac2ba27e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17814/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
