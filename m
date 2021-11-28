Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0B0460553
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Nov 2021 09:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6462B6EC7C;
	Sun, 28 Nov 2021 08:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 597C56EC7C;
 Sun, 28 Nov 2021 08:22:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5164CAA917;
 Sun, 28 Nov 2021 08:22:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8331259436429657583=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sun, 28 Nov 2021 08:22:14 -0000
Message-ID: <163808773429.26080.4044266559016590069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_More_FBC_refactoring_=28rev3=29?=
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

--===============8331259436429657583==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: More FBC refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/97239/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10934_full -> Patchwork_21690_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21690_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21690_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21690_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_selftest@all@check_plane_state:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_selftest@all@check_plane_state.html
    - shard-kbl:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl3/igt@kms_selftest@all@check_plane_state.html

  
Known issues
------------

  Here are the changes found in Patchwork_21690_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [FAIL][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#4392]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-tglb:         [PASS][53] -> [INCOMPLETE][54] ([i915#456])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#280])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][56] -> [TIMEOUT][57] ([i915#3063])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][58] -> [FAIL][59] ([i915#2842])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][62] -> [SKIP][63] ([fdo#109271]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl4/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_media_vme:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#284])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@gem_media_vme.html

  * igt@gem_pxp@display-protected-crc:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#4270]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#4270])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#768])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_vm_create@invalid-destroy:
    - shard-iclb:         [PASS][71] -> [DMESG-WARN][72] ([i915#4391])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-iclb3/igt@gem_vm_create@invalid-destroy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb7/igt@gem_vm_create@invalid-destroy.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][73] -> [DMESG-WARN][74] ([i915#180]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][75] ([i915#180])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen3_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#109289])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2856])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][78] -> [FAIL][79] ([i915#454])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#1937])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#1937])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#111644] / [i915#1397] / [i915#2411])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [PASS][83] -> [INCOMPLETE][84] ([i915#2411] / [i915#456] / [i915#750])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-tglb1/igt@i915_pm_rpm@system-suspend-execbuf.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110725] / [fdo#111614])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3777]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271]) +14 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-skl9/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#110723])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#111615]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [i915#3886])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3689])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111615] / [i915#3689])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-snb:          NOTRUN -> [SKIP][97] ([fdo#109271]) +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-snb5/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +101 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-glk:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-skl9/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#111828]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#3116])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][109] ([i915#1319])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl3/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#3319]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#3359]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278] / [fdo#109279])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-random:
    - shard-iclb:         NOTRUN -> [SKIP][115] ([fdo#109278]) +9 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
    - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +176 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl4/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109274] / [fdo#109278])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][118] -> [FAIL][119] ([i915#2346])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#111825]) +9 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([i915#2122])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-iclb:         [PASS][123] -> [SKIP][124] ([i915#3701])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
    - shard-apl:          [PASS][125] -> [DMESG-WARN][126] ([i915#1226])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-apl8/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html
    - shard-kbl:          [PASS][127] -> [DMESG-WARN][128] ([i915#1226])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-kbl1/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109280]) +8 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][130] ([fdo#109271]) +35 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][131] -> [INCOMPLETE][132] ([i915#2411] / [i915#456])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-tglb5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][133] ([fdo#108145] / [i915#265])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][134] ([fdo#108145] / [i915#265]) +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][135] ([fdo#108145] / [i915#265])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#3536])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#111615] / [fdo#112054])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2733])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-glk:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#658]) +2 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@page_flip:
    - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#658]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][142] ([i915#132] / [i915#3467])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][143] -> [SKIP][144] ([fdo#109441])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][145] ([fdo#109441]) +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][146] -> [FAIL][147] ([i915#31])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-apl4/igt@kms_setmode@basic.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [PASS][148] -> [INCOMPLETE][149] ([i915#3896])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-tglb2/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@kms_vrr@flipline:
    - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#109502])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2437])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_writeback@writeback-check-output.html
    - shard-kbl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2437])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#2437])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_nv_test@i915_nv_sharing:
    - shard-tglb:         NOTRUN -> [SKIP][154] ([fdo#109291]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@prime_nv_test@i915_nv_sharing.html

  * igt@prime_nv_test@nv_write_i915_cpu_mmap_read:
    - shard-iclb:         NOTRUN -> [SKIP][155] ([fdo#109291])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@prime_nv_test@nv_write_i915_cpu_mmap_read.html

  * igt@prime_vgem@fence-read-hang:
    - shard-tglb:         NOTRUN -> [SKIP][156] ([fdo#109295])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@prime_vgem@fence-read-hang.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#2994]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl2/igt@sysfs_clients@recycl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/index.html

--===============8331259436429657583==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: More FBC refactoring (rev3)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97239/">https://patchwork.freedesktop.org/series/97239/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21690/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10934_full -&gt; Patchwork_21690_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21690_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21690_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21690_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_selftest@all@check_plane_state:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_selftest@all@check_plane_s=
tate.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-kbl3/igt@kms_selftest@all@check_plane_st=
ate.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21690_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10934/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10934/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10934/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk8/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10934/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10934/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10934/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10934/shard-glk1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-gl=
k1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0934/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10934/shard-glk3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shard-glk4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/shar=
d-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10934/shard-glk4/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21690/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-glk9/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-tglb1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21690/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMP=
LETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@gem_ctx_sseu@mmap-args.html">=
SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/=
shard-tglb6/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#306=
3])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10934/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
690/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10934/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_216=
90/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915=
#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/s=
hard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl1/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@gem_lmem_swapping@random-engi=
nes.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl4/igt@gem_lmem_swapping@smem-oom.htm=
l">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@gem_media_vme.html">SKIP</a> =
([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@gem_pxp@display-protected-crc=
.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@gem_pxp@reject-modify-context=
-protection-off-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@gem_render_copy@yf-tiled-to-v=
ebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-destroy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-iclb3/igt@gem_vm_create@invalid-destroy.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/s=
hard-iclb7/igt@gem_vm_create@invalid-destroy.html">DMESG-WARN</a> ([i915#43=
91])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10934/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21690/shard-apl2/igt@gem_workarounds@suspend-resume-context.html">DMESG-WAR=
N</a> ([i915#180]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-kbl1/igt@gem_workarounds@suspend-resume-=
context.html">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@gen3_mixed_blits.html">SKIP</=
a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@gen9_exec_parse@bb-start-para=
m.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-iclb3/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-=
dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-=
dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-n=
on-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-tglb1/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
690/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a>=
 ([i915#2411] / [i915#456] / [i915#750])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-skl9/igt@kms_big_fb@yf-tiled-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#109271]) +14 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#110723])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#111615]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_ccs@pipe-a-crc-primary-ba=
sic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-bas=
ic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_ccs@pipe-b-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-snb5/igt@kms_ccs@pipe-c-random-ccs-data=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +7 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([fdo#109271]) +101 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-=
disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_chamelium@vga-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-skl9/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_color_chamelium@pipe-d-ct=
m-0-5.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@kms_content_protection@atomic=
-dpms.html">SKIP</a> ([fdo#111828]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_content_protection@dp-mst=
-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl3/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1690/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-random.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl4/igt@kms_cursor_edge_walk@pipe-d-64=
x64-left-edge.html">SKIP</a> ([fdo#109271]) +176 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-=
flipa-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21690/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@kms_flip@2x-plain-flip-interr=
uptible.html">SKIP</a> ([fdo#111825]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21690/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64=
bpp-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21690/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
eccs-to-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10934/shard-apl8/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-=
y-to-yf-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21690/shard-apl1/igt@kms_flip_tiling@flip-change-tiling=
@dp-1-pipe-a-y-to-yf-ccs.html">DMESG-WARN</a> ([i915#1226])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10934/shard-kbl1/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-=
y-to-yf-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21690/shard-kbl1/igt@kms_flip_tiling@flip-change-tiling=
@dp-1-pipe-a-y-to-yf-ccs.html">DMESG-WARN</a> ([i915#1226])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +8 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_frontbuffer_tracking@fbcps=
r-rgb565-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-tglb5/igt@kms_frontbuffer_tracking@psr-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21690/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE=
</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-al=
pha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_plane_lowres@pipe-a-tilin=
g-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb3/igt@kms_plane_lowres@pipe-a-tilin=
g-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-glk7/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl8/igt@kms_psr2_su@page_flip.html">SK=
IP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@kms_psr@psr2_cursor_plane_ono=
ff.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/sh=
ard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_psr@psr2_sprite_plane_mov=
e.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-apl4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/shard-apl2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10934/shard-tglb2/igt@kms_vblank@pipe-d-ts-continuation-suspend.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21690/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">=
INCOMPLETE</a> ([i915#3896])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_vrr@flipline.html">SKIP</=
a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-apl1/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21690/shard-kbl6/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@kms_writeback@writeback-fb-id=
.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_nv_sharing:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb6/igt@prime_nv_test@i915_nv_sharing=
.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_write_i915_cpu_mmap_read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-iclb3/igt@prime_nv_test@nv_write_i915_c=
pu_mmap_read.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-tglb5/igt@prime_vgem@fence-read-hang.ht=
ml">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21690/shard-apl2/igt@sysfs_clients@recycl">SKIP</a>=
 ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8331259436429657583==--
