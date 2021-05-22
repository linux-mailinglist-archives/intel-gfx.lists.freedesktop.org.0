Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EAB38D27F
	for <lists+intel-gfx@lfdr.de>; Sat, 22 May 2021 02:22:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607F06E1C0;
	Sat, 22 May 2021 00:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9516F6E1C0;
 Sat, 22 May 2021 00:22:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C6FFA7DFC;
 Sat, 22 May 2021 00:22:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Sat, 22 May 2021 00:22:18 -0000
Message-ID: <162164293853.490.13982692063977981970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210520151254.959958-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210520151254.959958-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness?=
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
Content-Type: multipart/mixed; boundary="===============0581579703=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0581579703==
Content-Type: multipart/alternative;
 boundary="===============9220889292357313352=="

--===============9220889292357313352==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/90375/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10113_full -> Patchwork_20162_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20162_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20162_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20162_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 4 (NEW):
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][1] +2 similar issues
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_10113_full and Patchwork_20162_full:

### New Piglit tests (3) ###

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20162_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@gem_ctx_persistence@engines-hostile-preempt.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#2410])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_ringsize@idle@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][5] ([i915#3316])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][6] ([i915#280])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#307])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][14] -> [INCOMPLETE][15] ([i915#2055] / [i915#3468]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][16] ([i915#2055] / [i915#3468])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#198] / [i915#3468])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][19] ([i915#2055])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#3468])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][22] ([i915#198] / [i915#3468])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#2428])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-apl:          NOTRUN -> [INCOMPLETE][25] ([i915#3468])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-glk:          NOTRUN -> [INCOMPLETE][26] ([i915#3468])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk3/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][27] ([i915#3468])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@gem_mmap_gtt@fault-concurrent-x.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][28] ([i915#3468] / [i915#3485])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][29] ([i915#3468])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          NOTRUN -> [INCOMPLETE][30] ([i915#3468])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#768])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109312])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_softpin@evict-snoop.html
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109312])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3323])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][35] ([i915#3318])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109289])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#112306])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#112306])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +17 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110725] / [fdo#111614])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111615]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#110723])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271]) +201 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111304])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_chamelium@hdmi-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_chamelium@hdmi-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk3/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl7/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109300] / [fdo#111066])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_content_protection@lic.html
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111828])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3359])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109278] / [fdo#109279])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271]) +140 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +14 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111825]) +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#2065])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#2065])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109285])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html
    - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#109285])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +55 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271]) +14 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109280]) +17 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109289]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][72] ([i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([fdo#108145] / [i915#265]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#658])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
    - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2920])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109441])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][82] -> [SKIP][83] ([fdo#109441])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][84] ([IGT#2])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180] / [i915#295])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vrr@flip-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109502])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2530])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@nouveau_crc@pipe-a-source-rg.html
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#2530])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][90] ([i915#180])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109291])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@prime_nv_pcopy@test3_5.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109291]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@prime_nv_pcopy@test_semaphore.html

  * igt@sysfs_clients@recycle:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][97] ([i915#2369] / [i915#3063]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][99] ([i915#2846]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-skl:          [FAIL][105] -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl9/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-iclb:         [INCOMPLETE][107] ([i915#3468]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [INCOMPLETE][109] ([i915#3468]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-glk:          [INCOMPLETE][111] ([i915#3468]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_pwrite@basic-random:
    - shard-glk:          [DMESG-WARN][113] ([i915#118] / [i915#95]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_pwrite@basic-random.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk6/igt@gem_pwrite@basic-random.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][115] ([i915#1436] / [i915#716]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][117] ([i915#198]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl3/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][119] ([i915#2782]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][121] ([fdo#108145] / [i915#265]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][125] ([i915#1542]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@perf@polling-parameterized.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl10/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][127] ([i915#1722]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl7/igt@perf@polling-small-buf.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@perf@polling-small-buf.html

  * igt@perf_pmu@rc6-suspend:
    - shard-apl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-apl6/igt@perf_pmu@rc6-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl6/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][131] ([i915#1804] / [i915#2684]) -> [WARN][132] ([i915#2684]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [DMESG-FAIL][133] ([i915#3462]) -> [INCOMPLETE][134] ([i915#3462])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb5/igt@i915_selftest@live@execlists.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb1/igt@i915_selftest@live@execlists.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][135] ([i915#2920]) -> [SKIP][136] ([i915#658]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [F

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/index.html

--===============9220889292357313352==
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
<tr><td><b>Series:</b></td><td>Per client engine busyness</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90375/">https://patchwork.freedesktop.org/series/90375/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10113_full -&gt; Patchwork_20162_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20162_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20162_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20162_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 4 (NEW):<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href="None">INCOMPLETE</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10113_full and Patchwork_20162_full:</p>
<h3>New Piglit tests (3)</h3>
<ul>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 64 4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20162_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@gem_ctx_persistence@engines-hostile-preempt.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@idle@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.html">INCOMPLETE</a> ([i915#3316])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl7/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl7/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#2055])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk3/igt@gem_mmap_gtt@fault-concurrent.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468] / [i915#3485])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gen7_exec_parse@basic-allowed.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([fdo#112306])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([fdo#112306])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#109271]) +17 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> ([fdo#111615]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> ([fdo#110723])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@kms_ccs@pipe-a-ccs-on-another-bo.html">SKIP</a> ([fdo#109271]) +201 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@kms_ccs@pipe-c-bad-aux-stride.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_chamelium@hdmi-hpd-after-suspend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl6/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@kms_chamelium@vga-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk3/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl7/igt@kms_color_chamelium@pipe-d-gamma.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_content_protection@lic.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_content_protection@lic.html">SKIP</a> ([fdo#111828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html">SKIP</a> ([fdo#109271]) +140 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html">SKIP</a> ([fdo#109278]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#111825]) +8 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#2065])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#2065])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#109280]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_psr@psr2_sprite_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb3/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@nouveau_crc@pipe-a-source-rg.html">SKIP</a> ([i915#2530])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@nouveau_crc@pipe-a-source-rg.html">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl7/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@prime_nv_pcopy@test3_5.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb6/igt@prime_nv_pcopy@test_semaphore.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl7/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@gem_exec_reloc@basic-wc-gtt-active.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl9/igt@gem_exec_reloc@basic-wc-gtt-active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_pwrite@basic-random.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-glk6/igt@gem_pwrite@basic-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl4/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl3/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl7/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-skl5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-apl6/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-apl6/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb5/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> ([i915#3462]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-tglb1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20162/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -&gt; ([FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [F</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9220889292357313352==--

--===============0581579703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0581579703==--
