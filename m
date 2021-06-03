Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054139A9CB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 20:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D732D6EABF;
	Thu,  3 Jun 2021 18:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 63CDA6E204;
 Thu,  3 Jun 2021 18:09:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B0A5A7DFB;
 Thu,  3 Jun 2021 18:09:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 03 Jun 2021 18:09:17 -0000
Message-ID: <162274375733.8035.5312909800485297079@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603154027.594906-1-jason@jlekstrand.net>
In-Reply-To: <20210603154027.594906-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Get_rid_of_fence_error_propagation_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1974155646=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1974155646==
Content-Type: multipart/alternative;
 boundary="===============3534266711218659208=="

--===============3534266711218659208==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Get rid of fence error propagation (rev2)
URL   : https://patchwork.freedesktop.org/series/90891/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10165_full -> Patchwork_20274_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20274_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20274_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20274_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_reloc@basic-spin@bcs0:
    - shard-kbl:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl4/igt@gem_exec_reloc@basic-spin@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@gem_exec_reloc@basic-spin@bcs0.html
    - shard-apl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@gem_exec_reloc@basic-spin@bcs0.html

  * igt@gem_exec_schedule@deep@bcs0:
    - shard-skl:          [PASS][4] -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl5/igt@gem_exec_schedule@deep@bcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl4/igt@gem_exec_schedule@deep@bcs0.html
    - shard-glk:          [PASS][6] -> [FAIL][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk2/igt@gem_exec_schedule@deep@bcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk5/igt@gem_exec_schedule@deep@bcs0.html
    - shard-apl:          [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl3/igt@gem_exec_schedule@deep@bcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl6/igt@gem_exec_schedule@deep@bcs0.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - shard-iclb:         [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-180.html

  
Known issues
------------

  Here are the changes found in Patchwork_20274_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#3160])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk2/igt@gem_create@create-clear.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk8/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][14] ([i915#3002])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-snb7/igt@gem_ctx_persistence@legacy-engines-cleanup.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [PASS][16] -> [TIMEOUT][17] ([i915#3070])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@bcs0:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#2389])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl8/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl3/igt@gem_exec_reloc@basic-many-active@bcs0.html
    - shard-skl:          NOTRUN -> [FAIL][22] ([i915#2389])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@gem_exec_reloc@basic-many-active@bcs0.html
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#2389])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl3/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl7/igt@gem_exec_reloc@basic-many-active@bcs0.html
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2389])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk9/igt@gem_exec_reloc@basic-many-active@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk6/igt@gem_exec_reloc@basic-many-active@bcs0.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          [PASS][27] -> [TIMEOUT][28] ([i915#3183])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl2/igt@gem_exec_reloc@basic-parallel.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][29] -> [TIMEOUT][30] ([i915#3183])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl8/igt@gem_exec_reloc@basic-parallel.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl1/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2190])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#307])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][34] ([i915#3318])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][35] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][36] ([i915#3462])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@i915_selftest@live@execlists.html

  * igt@kms_ccs@pipe-c-random-ccs-data:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111304])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#3444])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][46] -> [INCOMPLETE][47] ([i915#180] / [i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][48] -> [INCOMPLETE][49] ([i915#155] / [i915#180] / [i915#636])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [DMESG-WARN][50] ([i915#1982])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2122])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2672])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +33 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#1188])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl10/igt@kms_hdr@bpc-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][57] -> [DMESG-WARN][58] ([i915#180]) +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][61] ([i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][62] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-mid:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +18 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-mid.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#43])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk4/igt@kms_vblank@pipe-b-accuracy-idle.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][76] ([fdo#109271]) +81 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-snb7/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271]) +135 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2437])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1542])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl3/igt@perf@polling.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl1/igt@perf@polling.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#1722])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl10/igt@perf@polling-small-buf.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl2/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl4/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [INCOMPLETE][89] ([i915#3426]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-snb7/igt@gem_eio@in-flight-contexts-10ms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-snb6/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][91] ([i915#2842]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [SKIP][95] ([fdo#109271]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][97] ([i915#2842]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][99] ([i915#118] / [i915#95]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk9/igt@gem_exec_whisper@basic-contexts-all.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [FAIL][101] ([i915#307]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk3/igt@gem_mmap_gtt@big-copy-odd.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [FAIL][103] ([i915#307]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gen9_exec_parse@bb-large:
    - shard-glk:          [FAIL][105] ([i915#3296]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-glk2/igt@gen9_exec_parse@bb-large.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-glk7/igt@gen9_exec_parse@bb-large.html
    - shard-kbl:          [FAIL][107] ([i915#3296]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl2/igt@gen9_exec_parse@bb-large.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@gen9_exec_parse@bb-large.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][109] ([i915#1982]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][111] ([i915#2346]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][113] ([i915#79]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][119] ([i915#180] / [i915#295]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          [FAIL][121] ([i915#3296]) -> [SKIP][122] ([fdo#109271])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl8/igt@gen9_exec_parse@bb-large.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][123] ([i915#2684]) -> [WARN][124] ([i915#1804] / [i915#2684])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [DMESG-FAIL][125] ([i915#3462]) -> [INCOMPLETE][126] ([i915#3462])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-tglb1/igt@i915_selftest@live@execlists.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb7/igt@i915_selftest@live@execlists.html
    - shard-iclb:         [INCOMPLETE][127] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][128] ([i915#3462])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb4/igt@i915_selftest@live@execlists.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb7/igt@i915_selftest@live@execlists.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][129] ([i915#2920]) -> [SKIP][130] ([i915#658]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][131] ([i915#658]) -> [SKIP][132] ([i915#2920])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl7/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          ([FAIL][147], [FAIL][148]) ([i915#180] / [i915#1814] / [i915#3363]) -> ([FAIL][149], [FAIL][150], [FAIL][151]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#3363])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl3/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl6/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][152], [FAIL][153], [FAIL][154]) ([i915#1436] / [i915#2426] / [i915#2966] / [i915#3002]) -> ([FAIL][155], [FAIL][156], [FAIL][157]) ([i915#1436] / [i915#2966] / [i915#3002])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-tglb8/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-tglb1/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-tglb7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb5/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb2/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([i915#1436] / [i915#2029] / [i915#3002] / [i915#3363]) -> ([FAIL][162], [FAIL][163], [FAIL][164]) ([i915#1436] / [i915#3002] / [i915#3363])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl2/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl6/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl3/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl5/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl7/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl8/igt@runne

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/index.html

--===============3534266711218659208==
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
<tr><td><b>Series:</b></td><td>drm/i915: Get rid of fence error propagation=
 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90891/">https://patchwork.freedesktop.org/series/90891/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20274/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20274/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10165_full -&gt; Patchwork_20274_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20274_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20274_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20274_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-spin@bcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-kbl4/igt@gem_exec_reloc@basic-spin@bcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/sh=
ard-kbl1/igt@gem_exec_reloc@basic-spin@bcs0.html">FAIL</a> +1 similar issue=
</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20274/shard-apl7/igt@gem_exec_reloc@basic-spin@bcs0.=
html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@bcs0:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-skl5/igt@gem_exec_schedule@deep@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard=
-skl4/igt@gem_exec_schedule@deep@bcs0.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-glk2/igt@gem_exec_schedule@deep@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard=
-glk5/igt@gem_exec_schedule@deep@bcs0.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-apl3/igt@gem_exec_schedule@deep@bcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard=
-apl6/igt@gem_exec_schedule@deep@bcs0.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
274/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-180.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20274_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-glk2/igt@gem_create@create-clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-gl=
k8/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-cleanup.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274=
/shard-iclb8/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3=
070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/sh=
ard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@bcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-apl8/igt@gem_exec_reloc@basic-many-active@bcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0274/shard-apl3/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> ([=
i915#2389])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20274/shard-skl6/igt@gem_exec_reloc@basic-many-activ=
e@bcs0.html">FAIL</a> ([i915#2389])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-kbl3/igt@gem_exec_reloc@basic-many-active@bcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0274/shard-kbl7/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> ([=
i915#2389])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-glk9/igt@gem_exec_reloc@basic-many-active@bcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0274/shard-glk6/igt@gem_exec_reloc@basic-many-active@bcs0.html">FAIL</a> ([=
i915#2389])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-kbl2/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/sha=
rd-kbl4/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#3183])</=
p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-apl8/igt@gem_exec_reloc@basic-parallel.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/sha=
rd-apl1/igt@gem_exec_reloc@basic-parallel.html">TIMEOUT</a> ([i915#3183])</=
p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/sh=
ard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@i915_selftest@live@execlists.h=
tml">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data=
.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_chamelium@dp-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20274/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.ht=
ml">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-a=
pl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#=
1982])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-k=
bl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#=
180] / [i915#636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_flip@absolute-wf_vblank-in=
terruptible@a-edp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0274/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> ([i9=
15#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +33 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl10/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl2/i=
gt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard=
-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +5 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20274/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-=
min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-mid:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_plane_alpha_blend@pipe-d-c=
onstant-alpha-mid.html">SKIP</a> ([fdo#109271]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-ic=
lb4/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]=
 / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274=
/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#10944=
1]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-glk4/igt@kms_vblank@pipe-b-accuracy-idle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/=
shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html">FAIL</a> ([i915#43])</=
li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-snb7/igt@kms_vblank@pipe-d-query-forked=
-hang.html">SKIP</a> ([fdo#109271]) +81 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +135 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl2/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl3/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-skl1/igt@perf=
@polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl10/igt@perf@polling-small-buf.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-sk=
l2/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-apl7/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-skl6/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-kbl4/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20274/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@=
vcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-snb7/igt@gem_eio@in-flight-contexts-10ms.html">INCOMPLE=
TE</a> ([i915#3426]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20274/shard-snb6/igt@gem_eio@in-flight-contexts-10ms.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20274/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20274/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> =
([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20274/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20274/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-glk9/igt@gem_exec_whisper@basic-contexts-all.html">DMES=
G-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20274/shard-glk6/igt@gem_exec_whisper@basic-co=
ntexts-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-glk3/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i91=
5#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20274/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a=
> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20274/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-glk2/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#=
3296]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20274/shard-glk7/igt@gen9_exec_parse@bb-large.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-kbl2/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#=
3296]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20274/shard-kbl2/igt@gen9_exec_parse@bb-large.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a>=
 ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20274/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20274/shard-skl7/igt@kms_cursor_legacy@flip-vs=
-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20274/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a=
> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20274/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#=
109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20274/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl4/igt@kms_vblank@pipe-a-=
ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl8/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915=
#3296]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20274/shard-skl3/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([fdo#109271]=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20274/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-tglb1/igt@i915_selftest@live@execlists.html">DMESG-FAIL<=
/a> ([i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20274/shard-tglb7/igt@i915_selftest@live@execlists.html">INCOMPL=
ETE</a> ([i915#3462])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-iclb4/igt@i915_selftest@live@execlists.html">INCOMPLETE<=
/a> ([i915#2782] / [i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20274/shard-iclb7/igt@i915_selftest@live@execlists=
.html">DMESG-FAIL</a> ([i915#3462])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20274/shard-iclb5/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20274/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10165/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10165/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-kbl2/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i91=
5#3363] / [i915#602]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20274/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-kb=
l1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20274/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard=
-kbl3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#=
1814] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3363]) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl3/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20274/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-apl6=
/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#180] / [i915#3002=
] / [i915#3363])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-tglb1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10165/shard-tglb7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / =
[i915#2426] / [i915#2966] / [i915#3002]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb5/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20274/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/shard-tglb7/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1436] / [i915#2966] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10165/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10165/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/shard-skl5/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1436] / [i915#2029] / [i915#3002] / [i915#3363]) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20274/s=
hard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20274/shard-skl8/igt@runne">FAIL</a>, [FAIL=
][164]) ([i915#1436] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3534266711218659208==--

--===============1974155646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1974155646==--
