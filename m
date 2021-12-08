Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F7E46CDD4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 07:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68926E923;
	Wed,  8 Dec 2021 06:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 051556E1E8;
 Wed,  8 Dec 2021 06:36:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBDCCA66C8;
 Wed,  8 Dec 2021 06:36:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3973369485980600941=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Adrian Larumbe" <adrian.larumbe@collabora.com>
Date: Wed, 08 Dec 2021 06:36:48 -0000
Message-ID: <163894540895.8230.9595570828127931583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211207175301.321119-1-adrian.larumbe@collabora.com>
In-Reply-To: <20211207175301.321119-1-adrian.larumbe@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_make_GuC_FW_a_requirement_for_Gen12_and_beyond_dev?=
 =?utf-8?q?ices?=
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

--===============3973369485980600941==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: make GuC FW a requirement for Gen12 and beyond devices
URL   : https://patchwork.freedesktop.org/series/97676/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10970_full -> Patchwork_21777_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21777_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21777_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21777_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-snb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-snb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_21777_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_create@create-massive.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][4] ([i915#4547])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][8] -> [SKIP][9] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2849])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@gem_lmem_swapping@parallel-random-verify.html
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pread@exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gem_pread@exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3323])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#3297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2856])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#111644] / [i915#1397] / [i915#2411])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#110892])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#3921])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#118])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110725] / [fdo#111614]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111614])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110723])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [i915#3886]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689] / [i915#3886])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +64 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl6/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][49] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_content_protection@atomic-dpms.html
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109300] / [fdo#111066])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3359])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][52] -> [INCOMPLETE][53] ([i915#300])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#533])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#111825] / [i915#3966])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109274]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111825]) +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +60 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#1188])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109278]) +12 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +5 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][71] ([i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([fdo#108145] / [i915#265]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3536])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#658]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][80] -> [SKIP][81] ([fdo#109441]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_selftest@all@check_plane_state:
    - shard-skl:          NOTRUN -> [INCOMPLETE][82] ([i915#4663])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_selftest@all@check_plane_state.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +72 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109502])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_vrr@flip-dpms.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#1542])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl10/igt@perf@polling-parameterized.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl7/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@nv_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109291])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@prime_nv_api@nv_self_import_to_different_fd.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109295])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl6/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - {shard-rkl}:        [SKIP][91] ([i915#4098]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@drm_read@short-buffer-block.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@drm_read@short-buffer-block.html

  * igt@drm_read@short-buffer-wakeup:
    - {shard-rkl}:        [SKIP][93] ([i915#1845] / [i915#4098]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@drm_read@short-buffer-wakeup.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][95] ([i915#2582]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@fbdev@nullptr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [TIMEOUT][99] ([i915#3063]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [INCOMPLETE][101] ([i915#4547]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][103] ([i915#2842]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][105] ([i915#2842]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][107] ([i915#1436] / [i915#716]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl6/igt@gen9_exec_parse@allowed-all.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@gem-pread:
    - {shard-rkl}:        [SKIP][109] ([fdo#109308]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@i915_pm_rpm@gem-pread.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][111] ([i915#636]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl1/igt@i915_suspend@forcewake.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][113] ([i915#1845]) -> [PASS][114] +17 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - {shard-rkl}:        ([SKIP][115], [PASS][116]) ([i915#1845]) -> [PASS][117]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_color@pipe-a-degamma:
    - {shard-rkl}:        [SKIP][118] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_color@pipe-a-degamma.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - {shard-rkl}:        ([SKIP][120], [PASS][121]) ([i915#1149] / [i915#4098]) -> [PASS][122]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-25.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][123] ([i915#1982]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - {shard-rkl}:        ([SKIP][125], [SKIP][126]) ([fdo#112022] / [i915#4070]) -> [PASS][127]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement:
    - {shard-rkl}:        [SKIP][128] ([fdo#112022] / [i915#4070]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - {shard-rkl}:        [SKIP][130] ([fdo#111825] / [i915#4070]) -> [PASS][131] +3 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][132] ([i915#2346]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][134] ([fdo#111314]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][136] ([i915#79]) -> [PASS][137] +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [FAIL][138] ([i915#2122]) -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-sk

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/index.html

--===============3973369485980600941==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: make GuC FW a requirement for Gen12 and beyond devices</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97676/">https://patchwork.freedesktop.org/series/97676/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10970_full -&gt; Patchwork_21777_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21777_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21777_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21777_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-snb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-snb7/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21777_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl6/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([fdo#111825] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_flip@2x-flip-vs-wf_vblank.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> ([fdo#111825]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +60 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109278]) +12 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_plane_lowres@pipe-a-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_selftest@all@check_plane_state.html">INCOMPLETE</a> ([i915#4663])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@kms_vblank@pipe-d-wait-forked-hang.html">SKIP</a> ([fdo#109271]) +72 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@kms_vrr@flip-dpms.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl7/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@prime_nv_api@nv_self_import_to_different_fd.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-iclb6/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl6/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@drm_read@short-buffer-block.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@drm_read@short-buffer-wakeup.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@fbdev@nullptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-tglb5/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@i915_pm_rpm@gem-pread.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl1/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl8/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_color@pipe-a-degamma.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_color@pipe-a-degamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-25.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a>) ([i915#1149] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-rapid-movement.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10970/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21777/shard-sk">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3973369485980600941==--
