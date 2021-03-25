Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0633485A4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 01:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CF16EADC;
	Thu, 25 Mar 2021 00:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A09B6EADC;
 Thu, 25 Mar 2021 00:07:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41511A00CC;
 Thu, 25 Mar 2021 00:07:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Thu, 25 Mar 2021 00:07:46 -0000
Message-ID: <161663086625.15544.16371550148972569743@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210324123725.4170214-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20210324123725.4170214-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/audio=3A_set_HDA_link_parameters_in_driver_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1486377717=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1486377717==
Content-Type: multipart/alternative;
 boundary="===============8039572468938090076=="

--===============8039572468938090076==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/audio: set HDA link parameters in driver (rev2)
URL   : https://patchwork.freedesktop.org/series/87040/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9889_full -> Patchwork_19848_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19848_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19848_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19848_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-glk9/igt@gem_workarounds@suspend-resume-context.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk5/igt@gem_workarounds@suspend-resume-context.html

  
Known issues
------------

  Here are the changes found in Patchwork_19848_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1888] / [i915#3160])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-glk3/igt@gem_create@create-clear.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk2/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-snb7/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#2369] / [i915#3063])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2842]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2849])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#2389])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][18] ([i915#2389]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1610] / [i915#2803])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1610] / [i915#2803])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl9/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl5/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1610])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl2/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl3/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#2190])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#307])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271]) +264 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-snb7/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#1699]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl6/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [INCOMPLETE][31] ([i915#2502] / [i915#2667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][32] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-b:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#3168])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-b.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb5/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-b.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#2705])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-random-ccs-data:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111304])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][42] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#2122])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-skl:          NOTRUN -> [FAIL][47] ([i915#2628])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2672])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +84 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][51] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145] / [i915#265]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2733])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][60] ([IGT#2])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +180 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl1/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2437])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#3028])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb1/igt@sysfs_clients@recycle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb8/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@replace@vcs0:
    - shard-iclb:         [FAIL][67] ([i915#2410]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb3/igt@gem_ctx_persistence@replace@vcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb5/igt@gem_ctx_persistence@replace@vcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][69] ([i915#2842]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][71] ([i915#2842]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][75] ([i915#2842]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          [DMESG-WARN][77] ([i915#1610] / [i915#2803]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl9/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-kbl:          [DMESG-WARN][79] ([i915#1610] / [i915#2803]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [DMESG-WARN][81] ([i915#118] / [i915#95]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk9/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][83] ([i915#1436] / [i915#716]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][85] ([i915#2574]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:
    - shard-kbl:          [FAIL][87] ([i915#3168]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl10/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl9/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][91] ([i915#2598]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][95] ([i915#2122]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][97] ([i915#2122]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][99] ([i915#1188]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl2/igt@kms_hdr@bpc-switch.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][101] ([i915#198]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@sysfs_clients@busy@bcs0:
    - shard-kbl:          [FAIL][103] ([i915#3009]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-kbl2/igt@sysfs_clients@busy@bcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl6/igt@sysfs_clients@busy@bcs0.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [INCOMPLETE][105] -> [DMESG-WARN][106] ([i915#180])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][107] ([i915#2684]) -> [WARN][108] ([i915#1804] / [i915#2684]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][109] ([i915#2920]) -> [SKIP][110] ([i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-iclb:         [SKIP][111] ([i915#658]) -> [SKIP][112] ([i915#2920])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116]) ([i915#180] / [i915#3002]) -> ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123]) ([fdo#109271] / [i915#1610] / [i915#180] / [i915#1814] / [i915#2426] / [i915#2724] / [i915#3002])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl1/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl1/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl6/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl6/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl3/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl6/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl3/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl9/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl9/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl6/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl2/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl10/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl8/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl5/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl8/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl9/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2628]: https://gitlab.freedesktop.org/drm/intel/issues/2628
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3009]: https://gitlab.freedesktop.org/drm/intel/issues/3009
  [i915#3028]: https://gitlab.freedesktop.org/drm/intel/issues/3028
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
  [i915#3160]: https://gitlab.freedesktop.org/drm/intel/issues/3160
  [i915#3168]: https://gitlab.freedesktop.org/drm/intel/issues/3168
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 12)
------------------------------

  No

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/index.html

--===============8039572468938090076==
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
<tr><td><b>Series:</b></td><td>drm/i915/audio: set HDA link parameters in d=
river (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87040/">https://patchwork.freedesktop.org/series/87040/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19848/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19848/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9889_full -&gt; Patchwork_19848_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19848_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19848_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19848_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_workarounds@suspend-resume-context:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-glk9/igt@gem_workarounds@suspend-resume-context.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19848/shard-glk5/igt@gem_workarounds@suspend-resume-context.html">INCOMPLET=
E</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19848_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-glk3/igt@gem_create@create-clear.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-glk=
2/igt@gem_create@create-clear.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3160">i915#3160</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-snb7/igt@gem_ctx_persistence@idempotent=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tgl=
b3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2369">i915#2369</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-glk4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/sha=
rd-glk1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/sh=
ard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1984=
8/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl1/igt@gem_exec_reloc@basic-many-active@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9848/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl7/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9889/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848=
/shard-kbl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2=
803</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9889/shard-skl9/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848=
/shard-skl5/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2803">i915#2=
803</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl2/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1984=
8/shard-apl3/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-tglb7/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848=
/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-snb7/igt@gem_userptr_blits@mmap-offset-=
invalidate-active@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +264 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl6/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl7/igt@gem_userptr_blits@vma-merge.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2502">i915#2502</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2667">i915#2667</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl8/igt@i915_suspend@fence-restore-til=
ed2untiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1=
-pipe-b:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb4/igt@kms_atomic_transition@plane-all-transition-non=
blocking-fencing@edp-1-pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb5/igt@kms_atomic_tran=
sition@plane-all-transition-nonblocking-fencing@edp-1-pipe-b.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3168">i915#316=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-s=
kl6/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-snb7/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm=
-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9848/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19848/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interrupt=
ible@c-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2628">i915#2628</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl7/igt@kms_frontbuffer_tracking@fbcps=
r-farfromfence-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +84 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl1/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-c=
overage-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19848/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl1/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2733">i915#2=
733</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-skl9/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb6/ig=
t@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl7/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19848/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl1/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +180 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb1/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-iclb=
8/igt@sysfs_clients@recycle.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3028">i915#3028</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@replace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb3/igt@gem_ctx_persistence@replace@vcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#24=
10</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19848/shard-iclb5/igt@gem_ctx_persistence@replace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
848/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9889/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1984=
8/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +3 similar is=
sues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9889/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1984=
8/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
848/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl9/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19848/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">=
i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19848/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vcs1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19848/shard-glk9/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19848/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#257=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19848/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:<=
/p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-kbl3/igt@kms_atomic_transition@plane-all-transition-nonb=
locking@dp-1-pipe-b.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3168">i915#3168</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19848/shard-kbl3/igt@kms_atomic_transitio=
n@plane-all-transition-nonblocking@dp-1-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl10/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interrupt=
ible@a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19848/shard-skl9/igt@kms_flip@flip-vs-dpms-=
off-vs-modeset-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i=
915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19848/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19848/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible=
@c-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19848/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@c-hd=
mi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19848/shard-glk2/igt@kms_flip@plain-flip-ts-check-inter=
ruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl2/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-sk=
l6/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/198">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19848/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pip=
e-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-kbl2/igt@sysfs_clients@busy@bcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3009">i915#3009</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/sha=
rd-kbl6/igt@sysfs_clients@busy@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">IN=
COMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19848/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19848/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19848/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dm=
g-area-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915=
#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19848/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915#29=
20</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9889/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-apl6/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19848/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl3/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19848/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-apl=
3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19848/shard-apl8/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-=
apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19848/shard-apl8/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/161=
0">i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2724">i915#2724</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3002">i915#3002</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9889/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9889/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
89/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9889/shard-skl2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9889/sh=
ard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19848/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl8/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19848/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19848/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl5/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19848/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19848/shard-skl9/igt@runner=
@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2724">i915#2724</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3002">i915#3002</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No</p>

</body>
</html>

--===============8039572468938090076==--

--===============1486377717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1486377717==--
