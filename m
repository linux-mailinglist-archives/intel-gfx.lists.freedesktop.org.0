Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C43443600
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 19:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D4427375C;
	Tue,  2 Nov 2021 18:48:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE9307375C;
 Tue,  2 Nov 2021 18:48:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E5D04A7525;
 Tue,  2 Nov 2021 18:48:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5379282206443076506=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 02 Nov 2021 18:48:26 -0000
Message-ID: <163587890690.15504.17150768654925082347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211102155055.100138-1-matthew.auld@intel.com>
In-Reply-To: <20211102155055.100138-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fixup_dma=5Ffence=5Fwait_usage?=
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

--===============5379282206443076506==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: fixup dma_fence_wait usage
URL   : https://patchwork.freedesktop.org/series/96504/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10828_full -> Patchwork_21505_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21505_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21505_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21505_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  
Known issues
------------

  Here are the changes found in Patchwork_21505_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [FAIL][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][53] ([i915#3002])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][54] -> [TIMEOUT][55] ([i915#2369] / [i915#3063] / [i915#3648])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][61] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-iclb:         [PASS][62] -> [INCOMPLETE][63] ([i915#2295])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-iclb2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][64] -> [DMESG-WARN][65] ([i915#118])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#4270]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#1436] / [i915#716])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl1/igt@gen9_exec_parse@allowed-single.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl4/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [PASS][69] -> [DMESG-WARN][70] ([i915#1436] / [i915#1982] / [i915#716])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#2856]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][72] ([i915#454])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html
    - shard-tglb:         NOTRUN -> [FAIL][73] ([i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@pc8-residency:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109293] / [fdo#109506])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@i915_pm_rpm@pc8-residency.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-tglb:         [PASS][75] -> [INCOMPLETE][76] ([i915#2411] / [i915#456])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [PASS][77] -> [INCOMPLETE][78] ([i915#456])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb2/igt@i915_suspend@forcewake.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111614]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#111615]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3777])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +6 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#3689] / [i915#3886])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#3689]) +4 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271]) +135 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][93] -> [DMESG-WARN][94] ([i915#1982]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109284] / [fdo#111827]) +7 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][96] ([i915#1319])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_content_protection@srm.html
    - shard-apl:          NOTRUN -> [TIMEOUT][97] ([i915#1319])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][98] ([i915#2105])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3359]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#3319])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109279] / [i915#3359]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109278])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#2346])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl8/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#426])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][107] ([i915#180]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][108] -> [DMESG-WARN][109] ([i915#180])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109280]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#111825]) +20 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][112] ([i915#1188])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180]) +7 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-kbl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +115 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109289])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#533]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#533])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][120] ([i915#265]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][121] ([i915#265])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#3536]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_plane_lowres@pipe-c-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658]) +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#2920])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][128] -> [FAIL][129] ([i915#31])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/igt@kms_setmode@basic.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271]) +159 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2437])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2437])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_writeback@writeback-pixel-formats.html
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2437])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#2530])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@prime_nv_pcopy@test1_macro:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([fdo#109291]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@prime_nv_pcopy@test1_macro.html

  * igt@sysfs_clients@fair-7:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#2994])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl3/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-skl2/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@sysfs_clients@sema-10.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-kbl:          [PASS][140] -> [FAIL][141] ([i915#1755])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl1/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-tglb:         [INCOMPLETE][142] ([i915#456]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][144] ([i915#180]) -> [PASS][145] +8 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][146] ([i915#2846]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][148] ([i915#2842] / [i915#3468]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][150] ([i915#2842]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [FAIL][152] ([i915#2842]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_gttfill@engines@rcs0:
    - shard-glk:          [DMESG-WARN][154] ([i915#118]) -> [PASS][155] +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/igt@gem_exec_gttfill@engines@rcs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][156] ([i915#180] / [i915#636]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][158] ([i915#180]) -> [PASS][159] +4 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][160] ([i915#2411] / [i915#456]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_hdr@bpc-switch-d

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/index.html

--===============5379282206443076506==
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
<tr><td><b>Series:</b></td><td>drm/i915: fixup dma_fence_wait usage</td></t=
r>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96504/">https://patchwork.freedesktop.org/series/96504/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21505/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10828_full -&gt; Patchwork_21505_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21505_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21505_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21505_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@cursor-vs-flip-toggle:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21505/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL=
</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21505_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10828/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10828/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10828/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10828/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10828/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10828/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10828/shard-glk6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0828/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10828/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10828/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk2/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21505/shard-glk1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk1/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tg=
lb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]=
 / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_215=
05/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/=
shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@gem_exec_fair@basic-throttle@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-iclb2/igt@gem_exec_flush@basic-batch-kernel-default-uc.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21505/shard-iclb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.=
html">INCOMPLETE</a> ([i915#2295])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority-all.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21505/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority-all.ht=
ml">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@gem_pxp@fail-invalid-protecte=
d-context.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10828/shard-apl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/sh=
ard-apl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#143=
6] / [i915#716])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10828/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/sh=
ard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#143=
6] / [i915#1982] / [i915#716])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@gen9_exec_parse@basic-rejecte=
d.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html">FAIL<=
/a> ([i915#454])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@i915_pm_rpm@pc8-residency.htm=
l">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
505/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a>=
 ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tg=
lb7/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-strid=
e-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl2/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_ccs@pipe-c-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_ccs@pipe-c-crc-primary-ro=
tation-180-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +135 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-s=
kl7/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_color_chamelium@pipe-d-de=
gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_content_protection@srm.html=
">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_content_protection@srm.html=
">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl8/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-=
32x10-offscreen.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-random.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
suspend.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21505/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl8/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl1/igt@kms_flip@flip-vs-suspend-inter=
ruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21505/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-=
2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109280]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +20 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL<=
/a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard=
-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +7 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl3/igt@kms_panel_fitting@legacy.html"=
>SKIP</a> ([fdo#109271]) +115 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_pipe_b_c_ivb@disable-pipe=
-b-enable-pipe-c.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_plane_lowres@pipe-c-tilin=
g-none.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-apl2/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar iss=
ues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-tglb3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-glk8/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-glk9/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +159 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl9/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21505/shard-apl3/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@nouveau_crc@pipe-a-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test1_macro:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb3/igt@prime_nv_pcopy@test1_macro.ht=
ml">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@sysfs_clients@fair-7.html">SK=
IP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-apl3/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-skl2/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21505/shard-kbl7/igt@sysfs_clients@sema-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-kbl1/igt@sysfs_timeslice_duration@timeout@vecs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21505/shard-kbl7/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a>=
 ([i915#1755])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">=
INCOMPLETE</a> ([i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21505/shard-tglb3/igt@gem_ctx_isolation@preservation-s=
3@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21505/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@=
vcs0.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21505/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21505/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21505/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21505/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@engines@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-glk1/igt@gem_exec_gttfill@engines@rcs0.html">DMESG-WARN=
</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21505/shard-glk5/igt@gem_exec_gttfill@engines@rcs0.html">PASS</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21505/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21505/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS<=
/a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10828/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html"=
>INCOMPLETE</a> ([i915#2411] / [i915#456]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21505/shard-tglb6/igt@kms_frontbuffer_t=
racking@fbcpsr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-d</p>
</li>
</ul>

</body>
</html>

--===============5379282206443076506==--
