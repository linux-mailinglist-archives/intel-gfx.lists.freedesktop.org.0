Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0ABE4EB447
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 21:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A36410E357;
	Tue, 29 Mar 2022 19:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 146B910E357;
 Tue, 29 Mar 2022 19:51:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EB5FA77A5;
 Tue, 29 Mar 2022 19:51:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4861010853623001511=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 29 Mar 2022 19:51:46 -0000
Message-ID: <164858350605.5797.13621144058200995229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325142249.81443-1-jose.souza@intel.com>
In-Reply-To: <20220325142249.81443-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_Wa=5F22014226127?=
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

--===============4861010853623001511==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Add Wa_22014226127
URL   : https://patchwork.freedesktop.org/series/101792/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11405 -> Patchwork_22684
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/index.html

Participating hosts (48 -> 44)
------------------------------

  Missing    (4): fi-bdw-samus fi-tgl-1115g4 fi-bsw-cyan bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_22684 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bsw-nick:        NOTRUN -> [INCOMPLETE][1] ([i915#5441])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][2] ([i915#5441])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_tiled_blits@basic:
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-cfl-guc/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-guc/igt@gem_render_tiled_blits@basic.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][5] ([i915#5441])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-ilk-650/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-n3050:       [PASS][6] -> [INCOMPLETE][7] ([i915#5441])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-kefka:       [PASS][8] -> [INCOMPLETE][9] ([i915#5441])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-8809g:       [PASS][10] -> [INCOMPLETE][11] ([i915#5441])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-kbl-8809g/igt@gem_render_tiled_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-kbl-8809g/igt@gem_render_tiled_blits@basic.html
    - fi-glk-dsi:         [PASS][12] -> [INCOMPLETE][13] ([i915#5441])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-glk-dsi/igt@gem_render_tiled_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-glk-dsi/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@allocator-basic:
    - fi-snb-2520m:       NOTRUN -> [SKIP][14] ([fdo#109271]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-snb-2520m/igt@gem_softpin@allocator-basic.html

  * igt@gem_tiled_blits@basic:
    - fi-elk-e7500:       [PASS][15] -> [INCOMPLETE][16] ([i915#5441])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-elk-e7500/igt@gem_tiled_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-elk-e7500/igt@gem_tiled_blits@basic.html
    - fi-skl-6700k2:      [PASS][17] -> [INCOMPLETE][18] ([i915#5441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-skl-6700k2/igt@gem_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-skl-6700k2/igt@gem_tiled_blits@basic.html
    - fi-blb-e6850:       [PASS][19] -> [INCOMPLETE][20] ([i915#5441])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-blb-e6850/igt@gem_tiled_blits@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-blb-e6850/igt@gem_tiled_blits@basic.html
    - fi-snb-2520m:       NOTRUN -> [INCOMPLETE][21] ([i915#5441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-snb-2520m/igt@gem_tiled_blits@basic.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-bsw-nick:        NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-bsw-nick:        NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#5341])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bwr-2160:        NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#5341])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#533])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-bwr-2160:        NOTRUN -> [SKIP][27] ([fdo#109271]) +45 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][28] ([fdo#109271]) +9 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][29] ([fdo#109271]) +37 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {fi-ehl-2}:         [INCOMPLETE][30] ([i915#5441]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-ilk-650:         [INCOMPLETE][32] ([i915#5441]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-ilk-650/igt@gem_render_linear_blits@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-ilk-650/igt@gem_render_linear_blits@basic.html
    - fi-snb-2520m:       [INCOMPLETE][34] ([i915#5441]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-snb-2520m/igt@gem_render_linear_blits@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-snb-2520m/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-bsw-nick:        [INCOMPLETE][36] ([i915#5441]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
    - fi-cfl-8109u:       [INCOMPLETE][38] ([i915#5441]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-bwr-2160:        [INCOMPLETE][40] ([i915#5441]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bwr-2160/igt@gem_tiled_blits@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bwr-2160/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][42] ([i915#4494] / [i915#4957]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@sanitycheck:
    - {bat-rpls-2}:       [DMESG-WARN][44] ([i915#4391]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@uncore:
    - {bat-rpls-2}:       [INCOMPLETE][46] -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/bat-rpls-2/igt@i915_selftest@live@uncore.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/bat-rpls-2/igt@i915_selftest@live@uncore.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - {shard-tglu}:       [INCOMPLETE][48] ([i915#5441]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - {shard-dg1}:        [INCOMPLETE][50] ([i915#5441]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {shard-rkl}:        [SKIP][52] ([fdo#111825] / [i915#4070]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][54] ([i915#1849] / [i915#4098]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [INCOMPLETE][56] ([i915#1982]) -> [INCOMPLETE][57] ([i915#5441])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       [FAIL][58] ([i915#4312]) -> [FAIL][59] ([i915#3428] / [i915#4312])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-n3050/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][60] ([fdo#109271] / [i915#2403] / [i915#4312]) -> [FAIL][61] ([i915#2403] / [i915#4312])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-blb-e6850/igt@runner@aborted.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-blb-e6850/igt@runner@aborted.html
    - fi-bsw-kefka:       [FAIL][62] ([i915#4312]) -> [FAIL][63] ([i915#3428] / [i915#4312])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-kefka/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][64] ([i915#3428] / [i915#4312]) -> [FAIL][65] ([i915#4312])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-nick/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111719]: https://bugs.freedesktop.org/show_bug.cgi?id=111719
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4086]: https://gitlab.freedesktop.org/drm/intel/issues/4086
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342
  [i915#5401]: https://gitlab.freedesktop.org/drm/intel/issues/5401
  [i915#5441]: https://gitlab.freedesktop.org/drm/intel/issues/5441
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658


Build changes
-------------

  * Linux: CI_DRM_11405 -> Patchwork_22684

  CI-20190529: 20190529
  CI_DRM_11405: 631579c25b67cc4a6ee014440ddcac6c72b9bf50 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22684: 48b22f6bc605e1534cca91ed46f3e5fe553158bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

48b22f6bc605 drm/i915/dg2: Add Wa_22014226127

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/index.html

--===============4861010853623001511==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Add Wa_22014226127</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101792/">https://patchwork.freedesktop.org/series/101792/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11405 -&gt; Patchwork_22684</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/index.html</p>
<h2>Participating hosts (48 -&gt; 44)</h2>
<p>Missing    (4): fi-bdw-samus fi-tgl-1115g4 fi-bsw-cyan bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22684 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-cfl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-ilk-650/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-kbl-8809g/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-kbl-8809g/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-glk-dsi/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-glk-dsi/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-snb-2520m/igt@gem_softpin@allocator-basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-elk-e7500/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-elk-e7500/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-skl-6700k2/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-skl-6700k2/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-blb-e6850/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-blb-e6850/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-snb-2520m/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bwr-2160/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-ilk-650/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-ilk-650/igt@gem_render_linear_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-snb-2520m/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-snb-2520m/igt@gem_render_linear_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bwr-2160/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bwr-2160/igt@gem_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/bat-rpls-2/igt@i915_selftest@live@uncore.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/bat-rpls-2/igt@i915_selftest@live@uncore.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11405/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22684/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11405 -&gt; Patchwork_22684</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11405: 631579c25b67cc4a6ee014440ddcac6c72b9bf50 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6393: 1d267ea1b829fa10b31a37ccf6b4a970f032784a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22684: 48b22f6bc605e1534cca91ed46f3e5fe553158bb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>48b22f6bc605 drm/i915/dg2: Add Wa_22014226127</p>

</body>
</html>

--===============4861010853623001511==--
