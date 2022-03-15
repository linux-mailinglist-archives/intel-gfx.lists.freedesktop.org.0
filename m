Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E414D9520
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 08:21:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28FD910E399;
	Tue, 15 Mar 2022 07:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64EBD10E399;
 Tue, 15 Mar 2022 07:21:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FB39A00A0;
 Tue, 15 Mar 2022 07:21:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2014000983865137231=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 15 Mar 2022 07:21:16 -0000
Message-ID: <164732887638.20491.3885748400661728499@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315020805.844962-1-matthew.d.roper@intel.com>
In-Reply-To: <20220315020805.844962-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reduce_stack_usage_in_debugfs_due_to_SSEU_=28rev2=29?=
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

--===============2014000983865137231==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reduce stack usage in debugfs due to SSEU (rev2)
URL   : https://patchwork.freedesktop.org/series/101369/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11363_full -> Patchwork_22567_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22567_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22567_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22567_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          NOTRUN -> [CRASH][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@i915_pm_dc@dc5-psr.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_schedule@smoketest@bcs0:
    - {shard-rkl}:        [PASS][2] -> ([PASS][3], [INCOMPLETE][4])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@gem_exec_schedule@smoketest@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-4/igt@gem_exec_schedule@smoketest@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/igt@gem_exec_schedule@smoketest@bcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_22567_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#5131]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#5325])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglb8/igt@gem_ccs@block-copy-compressed.html
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#5327])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#232])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglb6/igt@gem_eio@kms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][49] -> [FAIL][50] ([i915#2842]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][51] ([i915#2842])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [PASS][52] -> [FAIL][53] ([i915#2842])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][54] -> [DMESG-WARN][55] ([i915#118]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2190])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2190])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#4270]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#768]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@access-control:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#3297])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][64] ([i915#4991])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][65] ([i915#1436] / [i915#716])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#2856])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][67] -> [DMESG-WARN][68] ([i915#1982]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#454])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([i915#4281])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#110892]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][74] -> [INCOMPLETE][75] ([i915#3921])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-snb4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_atomic@atomic_plane_damage:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#4765])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#5286]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110725] / [fdo#111614])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][81] ([i915#3743])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#110723])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +4 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [i915#3886]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278] / [i915#1149])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#3116])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][92] ([i915#1319])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +139 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278]) +15 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#426])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#5287])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][99] -> [DMESG-WARN][100] ([i915#180])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][101] -> [INCOMPLETE][102] ([i915#4839])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#3701]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109280]) +10 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +122 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271]) +9 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
    - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1188])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl8/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#3555]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][114] -> [FAIL][115] ([fdo#108145] / [i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#3536]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
    - shard-iclb:         [PASS][117] -> [SKIP][118] ([i915#5235]) +2 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#111068] / [i915#658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109441])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109441]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][124] -> [INCOMPLETE][125] ([i915#4939])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl3/igt@kms_psr@suspend.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt@kms_psr@suspend.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][126] ([IGT#2])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#533]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#2437])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#2530])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109289])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#109291]) +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@prime_nv_test@nv_i915_sharing.html

  * igt@prime_vgem@basic-userptr:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([i915#3301])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@prime_vgem@basic-userptr.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][133] ([i915#5098])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@sysfs_clients@split-10:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2994])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl1/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_eio@suspend:
    - {shard-rkl}:        ([PASS][135], [FAIL][136]) ([i915#5115]) -> [PASS][137]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/igt@gem_eio@suspend.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@gem_eio@suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@gem_eio@suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][138] ([i915#2481] / [i915#3070]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb4/igt@gem_eio@unwedge-stress.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb7/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][140] ([i915#3063]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@gem_eio@unwedge-stress.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][142] ([i915#2842]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][144] ([i915#2842]) -> [PASS][145] +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][146] ([i915#2842]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fence@syncobj-import:
    - shard-skl:          [FAIL][148] -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl2/igt@gem_exec_fence@syncobj-import.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@gem_exec_fence@syncobj-import.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][150] ([i915#180]) -> [PASS][151] +4 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live@gt_pm:
    - {shard-rkl}:        [DMESG-FAIL][152] ([i915#4258]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][154] ([i915#4939]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl4/igt@i915_suspend@debugfs-reader.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - {shard-tglu}:       [DMESG-WARN][156] ([i915#402]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-snb:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/index.html

--===============2014000983865137231==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reduce stack usage in debugfs due =
to SSEU (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101369/">https://patchwork.freedesktop.org/series/101369/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22567/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11363_full -&gt; Patchwork_22567_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22567_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22567_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22567_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_dc@dc5-psr:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@i915_pm_dc@dc5-psr.html">CRAS=
H</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_schedule@smoketest@bcs0:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-6/igt@gem_exec_schedule@smoketest@bcs0.html">PASS</=
a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_225=
67/shard-rkl-4/igt@gem_exec_schedule@smoketest@bcs0.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/ig=
t@gem_exec_schedule@smoketest@bcs0.html">INCOMPLETE</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22567_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11363/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
63/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11363/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1136=
3/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html">PASS</a>) ([i915#5131]) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22567/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/=
shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22567/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_225=
67/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-rkl-4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22567/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22567/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22567/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22567/shard-rkl-1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-tglb8/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5325])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_ccs@block-copy-compressed.=
html">SKIP</a> ([i915#5327])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglb2/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2256=
7/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#28=
42]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/=
shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22567/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html">DMES=
G-WARN</a> ([i915#118]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-apl8/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-skl7/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl2/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-glk8/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@gem_lmem_swapping@parallel-ra=
ndom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@gem_pxp@reject-modify-context=
-protection-off-3.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_render_copy@y-tiled-ccs-t=
o-y-tiled-mc-ccs.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_userptr_blits@access-cont=
rol.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-glk8/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl6/igt@gen9_exec_parse@allowed-single=
.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@gen9_exec_parse@batch-zero-le=
ngth.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
567/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html">DMESG-WARN</a>=
 ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/ig=
t@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.=
html">SKIP</a> ([fdo#110892]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/sha=
rd-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_atomic@atomic_plane_damag=
e.html">SKIP</a> ([i915#4765])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rota=
te-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 sim=
ilar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22567/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +3 sim=
ilar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-str=
ide-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_chamelium@vga-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to=
-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_color_chamelium@pipe-b-ct=
m-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-glk8/igt@kms_color_chamelium@pipe-d-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-rapid-movement.html">SKIP</a> ([fdo#109271]) +139 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-2=
56x256-left-edge.html">SKIP</a> ([fdo#109278]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_cursor_legacy@2x-long-fli=
p-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb=
2101010-render-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_flip@2x-blocking-wf_vblan=
k.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22567/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22567/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22567/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +10 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +122 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-glk8/igt@kms_frontbuffer_tracking@fbcps=
r-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +9 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1=
-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22567/shard-skl8/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpm=
s-edp-1-pipe-a.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#3555]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22567/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">=
DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22567/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-ic=
lb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-=
edp-1-planes-upscale-downscale.html">SKIP</a> ([i915#5235]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb5/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_psr@psr2_cursor_render.ht=
ml">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/s=
hard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> ([fdo#109441]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl3/igt@kms_psr@suspend.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt=
@kms_psr@suspend.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_writeback@writeback-fb-id=
.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@nouveau_crc@pipe-a-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@perf@unprivileged-single-ctx-=
counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@prime_nv_test@nv_i915_sharing=
.html">SKIP</a> ([fdo#109291]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@syncobj_timeline@invalid-tran=
sfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22567/shard-apl1/igt@sysfs_clients@split-10.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11363/shard-rkl-1/igt@gem_eio@suspend.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@gem_ei=
o@suspend.html">FAIL</a>) ([i915#5115]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@gem_eio@suspend.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11363/shard-iclb4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22567/shard-iclb7/igt@gem_eio@unwedge-stress.html">PASS</a>=
</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11363/shard-rkl-6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22567/shard-rkl-1/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22567/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22567/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22567/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-import:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl2/igt@gem_exec_fence@syncobj-import.html">FAIL</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/sh=
ard-skl6/igt@gem_exec_fence@syncobj-import.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([=
i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22567/shard-apl8/igt@gem_softpin@noreloc-s3.html">PASS</a> +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a>=
 ([i915#4258]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22567/shard-rkl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-skl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> ([i915#4939]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22567/shard-skl7/igt@i915_suspend@debugfs-reader.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11363/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-180.html">DME=
SG-WARN</a> ([i915#402]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22567/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-180=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-snb:</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2014000983865137231==--
