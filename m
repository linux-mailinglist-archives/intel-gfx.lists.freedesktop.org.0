Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E280049680B
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jan 2022 00:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1899610E4B5;
	Fri, 21 Jan 2022 23:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33A2710E4B5;
 Fri, 21 Jan 2022 23:00:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CEE3A77A5;
 Fri, 21 Jan 2022 23:00:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8361026235640432706=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Fri, 21 Jan 2022 23:00:42 -0000
Message-ID: <164280604213.19941.10902393827352761788@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220121192450.208535-1-jose.souza@intel.com>
In-Reply-To: <20220121192450.208535-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_errors_when_there_is_no_free_DSM?=
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

--===============8361026235640432706==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix errors when there is no free DSM
URL   : https://patchwork.freedesktop.org/series/99161/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11118_full -> Patchwork_22060_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22060_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22060_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22060_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl10/igt@drm_mm@all@replace.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl3/igt@drm_mm@all@replace.html

  
Known issues
------------

  Here are the changes found in Patchwork_22060_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][5] ([i915#2846])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl10/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk4/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-tglb:         NOTRUN -> [SKIP][13] ([fdo#109283])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_spin_batch@user-each:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2898])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl8/igt@gem_spin_batch@user-each.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl6/igt@gem_spin_batch@user-each.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl9/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#4281])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +18 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +23 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-snb6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +5 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689] / [i915#3886])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-tglb8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-snb6/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +174 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3359])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +82 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#79])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([i915#3701])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#4911])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][47] ([i915#1188])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#1188])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          NOTRUN -> [INCOMPLETE][50] ([i915#2828])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533]) +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#265]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][61] ([i915#180] / [i915#295])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2437])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2437])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2437])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_nv_pcopy@test3_1:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109291])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@prime_nv_pcopy@test3_1.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2994]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl2/igt@sysfs_clients@create.html
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2994]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl10/igt@sysfs_clients@create.html

  * igt@sysfs_clients@pidname:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2994])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][71] ([i915#4525]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][75] ([i915#2842]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-tglb:         [INCOMPLETE][77] -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-tglb8/igt@i915_selftest@live@gt_heartbeat.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-glk:          [DMESG-WARN][81] ([i915#118]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][83] ([i915#72]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][85] ([i915#180] / [i915#1982]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][87] ([i915#2122]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][89] ([i915#79]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [FAIL][91] ([i915#79]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences-interruptible@a-vga1:
    - shard-snb:          [DMESG-WARN][93] -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html

  * igt@kms_flip@flip-vs-fences-interruptible@b-vga1:
    - shard-snb:          [INCOMPLETE][95] -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][97] ([i915#3701]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-glk:          [FAIL][99] ([i915#4911]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][103] ([i915#31]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-apl1/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][105] ([i915#1542]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl6/igt@perf@polling-parameterized.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl9/igt@perf@polling-parameterized.html

  * igt@syncobj_wait@wait-all-for-submit-snapshot:
    - shard-skl:          [FAIL][107] -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl2/igt@syncobj_wait@wait-all-for-submit-snapshot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl5/igt@syncobj_wait@wait-all-for-submit-snapshot.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][109] ([i915#658]) -> [SKIP][110] ([i915#588])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][111] ([i915#1804] / [i915#2684]) -> [WARN][112] ([i915#2684])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][113] ([i915#2920]) -> [SKIP][114] ([fdo#111068] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-iclb:         [SKIP][115] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][116] ([i915#4148])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl1/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl4/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl6/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl6/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@aborted.html
    - shard-skl:          ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#2029] / [i915#3002] / [i915#4312]) -> ([FAIL][134], [FAIL][135]) ([i915#3002] / [i915#4312])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl5/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://g

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/index.html

--===============8361026235640432706==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix errors when there is no free D=
SM</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99161/">https://patchwork.freedesktop.org/series/99161/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22060/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11118_full -&gt; Patchwork_22060_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22060_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22060_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22060_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@drm_mm@all@replace:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl10/igt@drm_mm@all@replace.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-skl3/i=
gt@drm_mm@all@replace.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22060_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22060/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525<=
/a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-skl10/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11118/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shar=
d-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-apl2/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/28=
46">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2060/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/sh=
ard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@gem_exec_params@no-blt.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109283"=
>fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/s=
hard-apl4/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl8/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://g">i915#4613</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl8/igt@gem_spin_batch@user-each.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-s=
kl6/igt@gem_spin_batch@user-each.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2898">i915#2898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl9/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/33=
18">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@i915_pm_rpm@dpms-lpsp.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2206=
0/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-snb6/igt@kms_big_fb@y-tiled-addfb-size-=
offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3777">i915#3777</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3777">i915#3777</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-ro=
tation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl2/igt@kms_ccs@pipe-b-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-tglb8/igt@kms_ccs@pipe-c-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-snb6/igt@kms_chamelium@hdmi-hpd-fast.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +174 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-=
32x10-sliding.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-6=
4x64-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +82 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22060/shard-glk2/igt@kms_flip@2x-flip-vs-expi=
red-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/s=
hard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22060/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">=
i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard=
-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl7/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-c.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2828">i915#2828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +3 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-apl2/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22060/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-=
min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-apl7/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shar=
d-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuat=
ion-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-skl10/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-apl8/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-tglb5/igt@prime_nv_pcopy@test3_1.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291"=
>fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-apl2/igt@sysfs_clients@create.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-skl10/igt@sysfs_clients@create.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22060/shard-kbl7/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22060/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html=
">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22060/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-=
fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22060/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2060/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-tglb8/igt@i915_selftest@live@gt_heartbeat.html">INCOMPL=
ETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22060/shard-tglb5/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-apl2/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
060/shard-apl7/igt@i915_suspend@sysfs-reader.html">PASS</a> +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22060/shard-glk8/igt@kms_cursor_crc@pipe-a-cursor-64x64-ons=
creen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.htm=
l">FAIL</a> ([i915#72]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22060/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-l=
egacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22060/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22060/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_=
vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22060/shard-skl4/igt@kms_flip@flip-vs-expired-v=
blank-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22060/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi=
-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.h=
tml">DMESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22060/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@a-v=
ga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-snb2/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22060/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@b-v=
ga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-iclb8/igt@kms_flip_scaled_c=
rc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64b=
pp-ytile-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-glk9/igt@kms_flip_scal=
ed_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22060/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-apl1/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-apl8/i=
gt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060=
/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@wait-all-for-submit-snapshot:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl2/igt@syncobj_wait@wait-all-for-submit-snapshot.html=
">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22060/shard-skl5/igt@syncobj_wait@wait-all-for-submit-snapshot.html">PA=
SS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22060/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22060/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22060/shard-iclb3/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
>fdo#111068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22060/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4148">i915#4148</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11118/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11118/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22060/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22060/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22060/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4312">i915#4312</a> / [i915#602])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11118/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11118/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11118/shard-skl4/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22060/shard-skl2/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22060/=
shard-skl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8361026235640432706==--
