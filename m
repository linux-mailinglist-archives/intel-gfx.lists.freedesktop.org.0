Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D55566969
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:32:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778FB10E5BB;
	Tue,  5 Jul 2022 11:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A88B10E021;
 Tue,  5 Jul 2022 07:49:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56408A7E03;
 Tue,  5 Jul 2022 01:53:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6773002354734612163=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 05 Jul 2022 01:53:10 -0000
Message-ID: <165698599030.2010.6249484625988582592@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220704135249.8241-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220704135249.8241-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUHJv?=
 =?utf-8?q?tect_vma_destruction_with_the_object_lock?=
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

--===============6773002354734612163==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Protect vma destruction with the object lock
URL   : https://patchwork.freedesktop.org/series/105902/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11849_full -> Patchwork_105902v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105902v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105902v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105902v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@syncobj_timeline@wait-any-complex:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/igt@syncobj_timeline@wait-any-complex.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk5/igt@syncobj_timeline@wait-any-complex.html

  
#### Warnings ####

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
    - shard-glk:          [SKIP][3] ([fdo#109271]) -> [TIMEOUT][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk5/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-audio:
    - shard-glk:          [SKIP][5] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/igt@kms_chamelium@hdmi-audio.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk5/igt@kms_chamelium@hdmi-audio.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode}:
    - shard-iclb:         NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - {shard-rkl}:        NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  
Known issues
------------

  Here are the changes found in Patchwork_105902v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33]) -> ([PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [FAIL][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58]) ([i915#4392])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk8/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk8/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk9/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk9/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#6268])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-apl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [PASS][63] -> [TIMEOUT][64] ([i915#3063])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglb7/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([i915#4525]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][67] -> [FAIL][68] ([i915#2842]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][73] -> [SKIP][74] ([fdo#109271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][75] -> [SKIP][76] ([i915#2190])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#4613]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][79] ([i915#4991])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@gem_userptr_blits@input-checking.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][80] ([i915#180]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][81] -> [DMESG-WARN][82] ([i915#5566] / [i915#716])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][84] -> [SKIP][85] ([i915#4281])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][86] -> [INCOMPLETE][87] ([i915#3921])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][90] ([i915#3743]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +44 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_cursor_legacy@cursora-vs-flipb@atomic:
    - shard-snb:          NOTRUN -> [SKIP][96] ([fdo#109271]) +5 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipb@atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][97] -> [FAIL][98] ([i915#2346]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#79]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][101] -> [INCOMPLETE][102] ([i915#1982] / [i915#4839] / [i915#4939])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#2122]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#2672]) +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +55 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][108] ([i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([i915#5235]) +5 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109441])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-wait-idle-hang:
    - shard-skl:          [PASS][114] -> [DMESG-WARN][115] ([i915#1982])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl1/igt@kms_vblank@pipe-a-wait-idle-hang.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_vblank@pipe-a-wait-idle-hang.html

  * igt@kms_vrr@flipline:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +64 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2437])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          NOTRUN -> [DMESG-WARN][118] ([i915#1982])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@perf_pmu@module-unload.html

  * igt@sysfs_clients@fair-1:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#2994])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@drm_buddy@all@buddy_alloc_smoke:
    - shard-skl:          [INCOMPLETE][121] ([i915#5800]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html

  * igt@drm_read@short-buffer-block:
    - {shard-rkl}:        [SKIP][123] ([i915#4098]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@drm_read@short-buffer-block.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@drm_read@short-buffer-block.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][125] ([i915#6268]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
    - {shard-tglu}:       [FAIL][127] ([i915#6268]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][129] ([i915#6252]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-2/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][131] ([i915#2410]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][133] ([i915#5784]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglb1/igt@gem_eio@kms.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][135] ([i915#4525]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - {shard-rkl}:        [FAIL][137] ([i915#2842]) -> [PASS][138] +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][139] ([i915#2842]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][141] ([i915#2842]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][143] ([i915#2842]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][145] ([i915#2842]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][147] ([fdo#109313]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][149] ([i915#3281]) -> [PASS][150] +12 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][151] ([i915#118]) -> [PASS][152] +2 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_partial_pwrite_pread@reads:
    - {shard-rkl}:        [SKIP][153] ([i915#3282]) -> [PASS][154] +6 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][155] ([i915#180]) -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl6/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@bb-start-param:
    - {shard-rkl}:        [SKIP][157] ([i915#2527]) -> [PASS][158] +3 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][159] ([i915#658]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@i915_pm_dc@dc5-psr.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - {shard-rkl}:        [SKIP][161] ([i915#1397]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][163] ([fdo#109308]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@i915_pm_rpm@i2c.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][165] ([i915#180]) -> [PASS][166] +6 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][167] ([i915#1845] / [i915#4098]) -> [PASS][168] +17 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-iclb:         [FAIL][169] ([i915#2346]) -> [PASS][170] +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
    - shard-iclb:         [FAIL][171] -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][173] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][175] ([i915#79]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][177] ([i915#2122]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - {shard-rkl}:        [SKIP][179] ([i915#1849] / [i915#4098]) -> [PASS][180] +12 similar issues
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
    - {shard-rkl}:        [SKIP][181] ([i915#1849] / [i915#3558]) -> [PASS][182] +1 similar issue
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - {shard-rkl}:        [SKIP][183] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][184] +1 similar issue
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - {shard-rkl}:        [SKIP][185] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_properties@plane-properties-atomic:
    - {shard-rkl}:        [SKIP][187] ([i915#1849]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][189] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][191] ([fdo#109441]) -> [PASS][192] +1 similar issue
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@sprite_render:
    - {shard-rkl}:        [SKIP][193] ([i915#1072]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-2/igt@kms_psr@sprite_render.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_psr@sprite_render.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][195] ([i915#5639]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@perf@polling-parameterized.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@perf@polling-parameterized.html
    - shard-glk:          [FAIL][197] ([i915#5639]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/igt@perf@polling-parameterized.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk1/igt@perf@polling-parameterized.html

  * igt@prime_vgem@basic-fence-read:
    - {shard-rkl}:        [SKIP][199] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@prime_vgem@basic-fence-read.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][201] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][203] ([i915#2842]) -> [FAIL][204] ([i915#2851])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs:
    - shard-skl:          [SKIP][205] ([fdo#109271] / [i915#1888]) -> [SKIP][206] ([fdo#109271])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-skl:          [INCOMPLETE][207] -> [SKIP][208] ([fdo#109271])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][209] ([i915#2920]) -> [SKIP][210] ([fdo#111068] / [i915#658])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][211] ([i915#658]) -> [SKIP][212] ([i915#2920])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [FAIL][213] ([i915#5939]) -> [SKIP][214] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][215], [FAIL][216]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][217], [FAIL][218]) ([i915#3002] / [i915#4312] / [i915#5257])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl4/igt@runner@aborted.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@runner@aborted.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@runner@aborted.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl9/igt@runner@aborted.html
    - shard-apl:          ([FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl4/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl8/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl1/igt@runner@aborted.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl6/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl3/igt@runner@aborted.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl2/igt@runner@aborted.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl1/igt@runner@aborted.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl2/igt@runner@aborted.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11849 -> Patchwork_105902v1

  CI-20190529: 20190529
  CI_DRM_11849: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105902v1: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/index.html

--===============6773002354734612163==
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
<tr><td><b>Series:</b></td><td>Protect vma destruction with the object lock=
</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105902/">https://patchwork.freedesktop.org/series/105902/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105902v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105902v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11849_full -&gt; Patchwork_105902v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105902v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105902v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105902v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@syncobj_timeline@wait-any-complex:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk3/igt@syncobj_timeline@wait-any-complex.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1059=
02v1/shard-glk5/igt@syncobj_timeline@wait-any-complex.html">TIMEOUT</a> +3 =
similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk3/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105902v1/shard-glk5/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_c=
cs.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk3/igt@kms_chamelium@hdmi-audio.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>=
 / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">fdo#11=
1827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105902v1/shard-glk5/igt@kms_chamelium@hdmi-audio.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upsca=
ling@pipe-a-default-mode}:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105902v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11849/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11849/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11849/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/sha=
rd-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11849/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11849/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11849/shard-glk3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849=
/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11849/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1849/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11849/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-glk5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shar=
d-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11849/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
902v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_105902v1/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105902v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105902v1/shard-glk3/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105902v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105902v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105902v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105902v1/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105902v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105902v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk9/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4392=
">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902=
v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl8/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105902v1/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105902v1/shard-tglb7/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915=
#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105902v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1=
/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@gem_userptr_blits@input-ch=
ecking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-kbl1/igt@gem_workarounds@suspend-res=
ume-context.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk9/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/s=
hard-glk9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@i915_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-ic=
lb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/=
shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/sha=
rd-kbl6/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@kms_ccs@pipe-d-crc-sprite-p=
lanes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +44 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@kms_chamelium@hdmi-crc-mul=
tiple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-kbl4/igt@kms_color_chamelium@pipe-c-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_color_chamelium@pipe-d-=
ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb@atomic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-snb6/igt@kms_cursor_legacy@cursora-v=
s-flipb@atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105902v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105902v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902=
v1/shard-skl3/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#48=
39</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i=
915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122<=
/a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +55 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-=
b-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-i=
clb8/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-wait-idle-hang:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl1/igt@kms_vblank@pipe-a-wait-idle-hang.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10590=
2v1/shard-skl4/igt@kms_vblank@pipe-a-wait-idle-hang.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@kms_vrr@flipline.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@perf_pmu@module-unload.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-skl4/igt@sysfs_clients@fair-1.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105902v1/shard-apl8/igt@sysfs_clients@split-25.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_buddy@all@buddy_alloc_smoke:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5800">i9=
15#5800</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105902v1/shard-skl7/igt@drm_buddy@all@buddy_alloc_smoke.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@drm_read@short-buffer-block.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
902v1/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05902v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105902v1/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902=
v1/shard-rkl-2/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105902v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglb1/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-tglb=
7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105902v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05902v1/shard-rkl-5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05902v1/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105902v1/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105902v1/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105902v1/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105902v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel=
-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105902v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105902v1/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all=
.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105902v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> +6 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl6/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105902v1/shard-apl6/igt@gem_workarounds@suspend-resume.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105902v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a> +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard=
-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1=
397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105902v1/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shar=
d-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105902v1/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html">PAS=
S</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346"=
>i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105902v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size=
.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105902v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-=
size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtil=
ed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-mmap-gtt-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105902v1/shard-glk7/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105902v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fb=
c-rgb565-draw-render.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-b-p=
lanes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_plane@plane-panning-=
bottom-right@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_plane_alpha_blend@pi=
pe-b-alpha-opaque-fb.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105902v1/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-a-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105902v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb7/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#1=
09642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11106=
8">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105902v1/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10590=
2v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-2/igt@kms_psr@sprite_render.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/=
shard-rkl-6/igt@kms_psr@sprite_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902=
v1/shard-skl10/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11849/shard-glk2/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902=
v1/shard-glk1/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105902v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-rkl-1/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#1=
11656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708=
">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105902v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5902v1/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2851">i915#2851</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl6/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_=
ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105902v1/shard-skl6/igt@kms_ccs@pipe-c-random-ccs=
-data-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-render.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@kms_frontbuffer_tra=
cking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105902v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_105902v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#5939</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1059=
02v1/shard-iclb8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#6=
58</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-skl3/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-skl10/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105902v1/shard-skl9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257<=
/a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11849/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11849/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11849/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11849/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105902v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105902v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105902v1/shard-apl2/=
igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11849 -&gt; Patchwork_105902v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11849: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6555: 1a3ffecd400b8f82c35745fa2e07992f6bdeede2 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105902v1: 66197f3ca0b462799e265b002dc5cf8dcec1c62d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6773002354734612163==--
