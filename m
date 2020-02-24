Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCDA16A6B3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 14:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F93A6E492;
	Mon, 24 Feb 2020 13:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB6736E492;
 Mon, 24 Feb 2020 13:00:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7781A47E4;
 Mon, 24 Feb 2020 13:00:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 24 Feb 2020 13:00:01 -0000
Message-ID: <158254920168.28362.684453709813534520@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev2=29?=
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

Series: Refactor Gen11+ SAGV support (rev2)
URL   : https://patchwork.freedesktop.org/series/73703/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7983_full -> Patchwork_16662_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16662_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16662_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16662_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] +26 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb7/igt@kms_psr@cursor_mmap_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb5/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@cursor_render:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +33 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-tglb1/igt@kms_psr@cursor_render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@kms_psr@cursor_render.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> ([FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40]) ([i915#584] / [k.org#205379])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb3/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb2/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb2/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb5/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb3/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb3/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb3/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb2/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb2/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb1/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb5/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb5/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb7/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb7/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb8/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb8/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb6/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb6/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb5/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb8/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb7/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb8/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb6/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb5/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb7/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb8/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb6/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb8/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb6/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb7/igt@runner@aborted.html

  
#### Warnings ####

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-glk:          [SKIP][41] ([fdo#109271]) -> [FAIL][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk4/igt@kms_color@pipe-d-ctm-0-25.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-glk1/igt@kms_color@pipe-d-ctm-0-25.html

  
Known issues
------------

  Here are the changes found in Patchwork_16662_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_sanitycheck:
    - shard-glk:          [PASS][43] -> [INCOMPLETE][44] ([i915#58] / [k.org#198133]) +28 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk6/igt@i915_selftest@live_sanitycheck.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-glk5/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-iclb:         [PASS][45] -> [INCOMPLETE][46] ([i915#1120])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb7/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][47] -> [INCOMPLETE][48] ([i915#82])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-iclb:         [PASS][49] -> [INCOMPLETE][50] ([i915#140]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb4/igt@kms_frontbuffer_tracking@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-iclb:         [PASS][51] -> [INCOMPLETE][52] ([i915#123]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [PASS][53] -> [INCOMPLETE][54] ([i915#460])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@perf_pmu@busy-idle-check-all-vcs1:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#112080])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb2/igt@perf_pmu@busy-idle-check-all-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb8/igt@perf_pmu@busy-idle-check-all-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-snb:          [PASS][57] -> [TIMEOUT][58] ([fdo#112271])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_bad_reloc@negative-reloc-lut-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb5/igt@gem_bad_reloc@negative-reloc-lut-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb2/igt@gem_bad_reloc@negative-reloc-lut-bsd2.html

  
#### Warnings ####

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-glk:          [SKIP][61] ([fdo#109271]) -> [INCOMPLETE][62] ([i915#58] / [k.org#198133]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-glk7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         [SKIP][63] ([fdo#109278] / [fdo#112010] / [i915#1149]) -> [FAIL][64] ([i915#1149])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb6/igt@kms_color@pipe-d-ctm-0-25.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-iclb7/igt@kms_color@pipe-d-ctm-0-25.html
    - shard-tglb:         [FAIL][65] ([i915#1149] / [i915#315]) -> [FAIL][66] ([i915#1149])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-tglb2/igt@kms_color@pipe-d-ctm-0-25.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/shard-tglb6/igt@kms_color@pipe-d-ctm-0-25.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7983 -> Patchwork_16662

  CI-20190529: 20190529
  CI_DRM_7983: 85ccd7de7d75735a667c4133b0927481986a2a1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16662: c3ca73c4675f21f48e476f075d2bc0b5bad7e0a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
