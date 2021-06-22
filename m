Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2566F3B01C8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 12:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D3526E48C;
	Tue, 22 Jun 2021 10:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 115246E086;
 Tue, 22 Jun 2021 10:51:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 088CCAADCF;
 Tue, 22 Jun 2021 10:51:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 22 Jun 2021 10:51:15 -0000
Message-ID: <162435907500.30777.1274170155249787822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622075409.2673805-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210622075409.2673805-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm=3A_add_a_locked_version_of_drm=5Fis=5Fcurrent=5Fmast?=
 =?utf-8?b?ZXIi?=
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
Content-Type: multipart/mixed; boundary="===============1979930857=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1979930857==
Content-Type: multipart/alternative;
 boundary="===============5795602289451264326=="

--===============5795602289451264326==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm: add a locked version of drm_is_current_master"
URL   : https://patchwork.freedesktop.org/series/91758/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10259_full -> Patchwork_20424_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20424_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20424_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20424_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_mmap_gtt@basic-small-bo-tiledy.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs}:
    - shard-tglb:         NOTRUN -> [SKIP][3] +100 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * {igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc}:
    - shard-skl:          NOTRUN -> [FAIL][4] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  
Known issues
------------

  Here are the changes found in Patchwork_20424_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][5] ([fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@feature_discovery@chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][6] ([fdo#111827])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@feature_discovery@chamelium.html

  * igt@feature_discovery@display-3x:
    - shard-iclb:         NOTRUN -> [SKIP][7] ([i915#1839]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb7/igt@feature_discovery@display-3x.html

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#1839]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@feature_discovery@display-4x.html

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][9] ([i915#3002]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_create@create-massive.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][10] ([i915#3002]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb6/igt@gem_create@create-massive.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([fdo#109314])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_ctx_param@set-priority-not-supported.html
    - shard-iclb:         NOTRUN -> [SKIP][12] ([fdo#109314])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1099]) +13 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglb:         NOTRUN -> [SKIP][14] ([i915#280]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         NOTRUN -> [TIMEOUT][15] ([i915#2369] / [i915#3063])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         NOTRUN -> [TIMEOUT][16] ([i915#2369] / [i915#2481] / [i915#3070])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb1/igt@gem_eio@unwedge-stress.html
    - shard-snb:          NOTRUN -> [FAIL][17] ([i915#3354])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][18] ([i915#2846])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
    - shard-skl:          NOTRUN -> [FAIL][19] ([i915#2846])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl1/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          NOTRUN -> [FAIL][20] ([i915#2846])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk4/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][21] ([i915#2846])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][22] ([i915#2852])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][23] ([i915#2842]) +16 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][24] ([i915#2842]) +12 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][25] ([i915#2842]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][26] ([i915#2842])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][27] ([i915#2849])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109313])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109313])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109283]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109283]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#112283]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][33] ([i915#3633]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html
    - shard-glk:          NOTRUN -> [FAIL][34] ([i915#3633]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_exec_reloc@basic-wide-active@bcs0.html
    - shard-skl:          NOTRUN -> [FAIL][35] ([i915#3633]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][36] ([i915#3633]) +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][37] ([i915#3633]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][38] ([i915#3633]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][39] ([i915#3633]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl3/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          NOTRUN -> [DMESG-WARN][40] ([i915#118] / [i915#95]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#2190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2190])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl7/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#2190])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk4/igt@gem_huc_copy@huc-copy.html
    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2190])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2190])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl2/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2190])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_media_vme:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#284])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@gem_media_vme.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][48] ([i915#2658]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@gem_pread@exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][49] ([i915#2658]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_pread@exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][50] ([i915#2658]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl1/igt@gem_pread@exhaustion.html
    - shard-iclb:         NOTRUN -> [WARN][51] ([i915#2658]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][52] ([i915#2658]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@gem_pwrite@basic-exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][53] ([i915#2658]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +816 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#768]) +18 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109312]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_softpin@evict-snoop.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109312]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#110542])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109290])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3323])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#3323])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#3323])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3323])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl3/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#3323])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][66] ([i915#3002]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl7/igt@gem_userptr_blits@input-checking.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][67] ([i915#3002]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gem_userptr_blits@input-checking.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][68] ([i915#3002]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl6/igt@gem_userptr_blits@input-checking.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][69] ([i915#3002]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][70] ([i915#3002])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl3/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#3297]) +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#3297]) +10 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][73] ([i915#2724])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb7/igt@gem_userptr_blits@vma-merge.html
    - shard-iclb:         NOTRUN -> [FAIL][74] ([i915#3318])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb1/igt@gem_userptr_blits@vma-merge.html
    - shard-glk:          NOTRUN -> [FAIL][75] ([i915#3318])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk7/igt@gem_userptr_blits@vma-merge.html
    - shard-tglb:         NOTRUN -> [FAIL][76] ([i915#3318])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          NOTRUN -> [FAIL][77] ([i915#3318])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109289]) +22 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gen3_render_linear_blits.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109289]) +23 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb7/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#112306]) +15 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][81] ([i915#1436] / [i915#716])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3296])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@gen9_exec_parse@bb-large.html
    - shard-apl:          NOTRUN -> [FAIL][83] ([i915#3296])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl8/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          NOTRUN -> [FAIL][84] ([i915#3296])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#2527]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2527]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#112306]) +15 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#2856])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@gen9_exec_parse@shadow-peek.html
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2856])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#1904])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][91] ([i915#454])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html
    - shard-skl:          NOTRUN -> [FAIL][92] ([i915#454])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][93] ([i915#454]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3288])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@i915_pm_dc@dc9-dpms.html
    - shard-iclb:         NOTRUN -> [FAIL][95] ([i915#3343])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#1937])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#1937])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#1902])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#1902])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109289] / [fdo#111719])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglb:         NOTRUN -> [WARN][101] ([i915#2681])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@i915_pm_rc6_residency@rc6-fence.html
    - shard-iclb:         NOTRUN -> [WARN][102] ([i915#2684])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [WARN][103] ([i915#2681] / [i915#2684])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-iclb:         NOTRUN -> [WARN][104] ([i915#1804] / [i915#2684])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#111644] / [i915#1397] / [i915#2411]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109293] / [fdo#109506]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#110892]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#109506] / [i915#2411]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#109288])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@i915_pm_sseu@full-enable.html
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109288])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109303])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@i915_query@query-topology-known-pci-ids.html
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109303])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@query-topology-unsupported:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109302])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@i915_query@query-topology-unsupported.html
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109302])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][115] ([i915#2373])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][116] ([i915#1759] / [i915#2291])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@i915_selftest@live@gt_pm.html
    - shard-skl:          NOTRUN -> [DMESG-FAIL][117] ([i915#1886] / [i915#2291])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl4/igt@i915_selftest@live@gt_pm.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([i915#404])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#404])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#1769]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#1769]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#110725] / [fdo#111614]) +18 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#111614]) +19 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#110723]) +6 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#111615]) +25 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2705]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@kms_big_joiner@basic.html
    - shard-iclb:         NOTRUN -> [SKIP][127] ([i915#2705]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109284] / [fdo#111827]) +75 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [fdo#111827]) +79 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [fdo#111827]) +57 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [DMESG-WARN][131] ([i915#1982])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl5/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109278] / [i915#1149]) +9 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [fdo#111827]) +81 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#109284] / [fdo#111827]) +89 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@kms_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html

--===============5795602289451264326==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm: add a locked version of drm_is_current_master&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91758/">https://patchwork.freedesktop.org/series/91758/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10259_full -&gt; Patchwork_20424_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20424_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20424_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20424_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_mmap_gtt@basic-small-bo-tiledy.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs}:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> +100 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc}:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20424_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@feature_discovery@chamelium.html">SKIP</a> ([fdo#111827])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@feature_discovery@chamelium.html">SKIP</a> ([fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb7/igt@feature_discovery@display-3x.html">SKIP</a> ([i915#1839]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> ([fdo#109314])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_ctx_param@set-priority-not-supported.html">SKIP</a> ([fdo#109314])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb6/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) +12 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109313])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([fdo#109313])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@gem_exec_params@secure-non-root.html">SKIP</a> ([fdo#112283]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#3633]) +3 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#3633]) +3 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#3633]) +3 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#3633]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#3633]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#3633]) +3 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl3/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#3633]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([fdo#109271]) +816 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_softpin@evict-snoop.html">SKIP</a> ([fdo#109312]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([fdo#109312]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#110542])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#109290])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl3/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) +10 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-snb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb1/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl5/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gen3_render_linear_blits.html">SKIP</a> ([fdo#109289]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb7/igt@gen7_exec_parse@bitmasks.html">SKIP</a> ([fdo#109289]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([fdo#112306]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl2/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl8/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([fdo#112306]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#1904])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3288])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#3343])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> ([fdo#109289] / [fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1804] / [i915#2684])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([fdo#109293] / [fdo#109506]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#110892]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb2/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109506] / [i915#2411]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([fdo#109288])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([fdo#109288])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb3/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb6/igt@i915_query@query-topology-unsupported.html">SKIP</a> ([fdo#109302])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@i915_query@query-topology-unsupported.html">SKIP</a> ([fdo#109302])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb7/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl4/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#404])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#404])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110723]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb1/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111615]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-apl6/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-skl5/igt@kms_color@pipe-b-ctm-blue-to-red.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-iclb4/igt@kms_color@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109278] / [i915#1149]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-glk5/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20424/shard-tglb6/igt@kms_">SKIP</a> ([fdo#109284] / [fdo#111827]) +89 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5795602289451264326==--

--===============1979930857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1979930857==--
