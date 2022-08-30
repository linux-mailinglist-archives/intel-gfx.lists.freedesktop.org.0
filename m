Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D445A6B2C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 19:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97DCC10E308;
	Tue, 30 Aug 2022 17:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47C2A10E308;
 Tue, 30 Aug 2022 17:48:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E41CA7E03;
 Tue, 30 Aug 2022 17:48:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2825534370824536966=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 30 Aug 2022 17:48:14 -0000
Message-ID: <166188169421.27289.7500125780775819022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220826210233.406482-1-matthew.d.roper@intel.com>
In-Reply-To: <20220826210233.406482-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/dg2=3A_Add_preemption_changes_for_Wa=5F14015141?=
 =?utf-8?q?709=22?=
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

--===============2825534370824536966==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/i915/dg2: Add preemption changes for Wa_14015141709"
URL   : https://patchwork.freedesktop.org/series/107818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12035_full -> Patchwork_107818v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (12 -> 11)
------------------------------

  Missing    (1): shard-rkl 

Known issues
------------

  Here are the changes found in Patchwork_107818v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-snb:          [PASS][3] -> [DMESG-WARN][4] ([i915#5090]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-snb4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@gem_lmem_swapping@heavy-multi.html
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][15] ([i915#4991])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#454])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][18] -> [INCOMPLETE][19] ([i915#3921])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +219 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +13 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_color_chamelium@gamma:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@kms_color_chamelium@gamma.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2122])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][29] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2672]) +8 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#3555])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([i915#5314])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@kms_frontbuffer_tracking@psr-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][34] ([i915#265])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][35] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][36] ([i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][37] ([fdo#108145] / [i915#265]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([i915#5235]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +99 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#658]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb1/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2437]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_writeback@writeback-fb-id.html
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2437])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl7/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2994]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@sysfs_clients@sema-25.html
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2994]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][50] ([i915#2842]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-apl:          [FAIL][52] ([i915#2842]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][54] ([i915#5566] / [i915#716]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][56] ([i915#454]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][60] ([i915#4767]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][62] ([i915#2122]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][68] ([i915#4525]) -> [FAIL][69] ([i915#6117])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][70] ([i915#658]) -> [SKIP][71] ([i915#588])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][72] ([i915#2920]) -> [SKIP][73] ([i915#658])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][74] ([i915#658]) -> [SKIP][75] ([i915#2920])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][76] ([fdo#111068] / [i915#658]) -> [SKIP][77] ([i915#2920])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl8/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl2/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl2/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl3/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5314]: https://gitlab.freedesktop.org/drm/intel/issues/5314
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12035 -> Patchwork_107818v1

  CI-20190529: 20190529
  CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107818v1: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/index.html

--===============2825534370824536966==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm/i915/dg2: Add preemption ch=
anges for Wa_14015141709&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107818/">https://patchwork.freedesktop.org/series/107818/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107818v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12035_full -&gt; Patchwork_107818v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): shard-rkl </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107818v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107818v1/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-snb6/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/sha=
rd-snb4/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5090">i915#5090</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107818v1/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
818v1/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
818v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v=
1/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@gem_lmem_swapping@heavy-mult=
i.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@gem_lmem_swapping@heavy-mult=
i.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-icl=
b6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/=
shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +219 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +13 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_chamelium@hdmi-crc-nonp=
lanar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@kms_color_chamelium@gamma.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_107818v1/shard-glk9/igt@kms_flip@2x-plain-fli=
p-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_107818v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-=
dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb6/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107818v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-suspend.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5314">i915#53=
14</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-=
c-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-=
dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_scaling@planes-up=
scale-20x20-downscale-factor-0-75@pipe-c-dp-1.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +99 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/sha=
rd-iclb1/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/shard-apl7/igt@kms_writeback@writeback-fb-i=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@sysfs_clients@sema-25.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@sysfs_clients@sema-25.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12035/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107818v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12035/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107818v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-apl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107818v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/sh=
ard-iclb5/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107818v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-=
dp-1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818=
v1/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk9/igt@kms_flip@2x-pla=
in-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107818v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10781=
8v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +3 similar issue=
s</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107818v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07818v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107818v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107818v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12035/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12035/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl1/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_107818v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl3/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12035/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12035/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2035/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1203=
5/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shar=
d-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-k=
bl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#300=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i9=
15#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/52=
57">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/sh=
ard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7818v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107818v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kb=
l7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1=
/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107818v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107818v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt=
@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12035 -&gt; Patchwork_107818v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107818v1: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2825534370824536966==--
