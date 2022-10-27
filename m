Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F0F60FB38
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 17:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C0B10E66F;
	Thu, 27 Oct 2022 15:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8ACCA10E3B9;
 Thu, 27 Oct 2022 15:08:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82238AA917;
 Thu, 27 Oct 2022 15:08:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1311260569738463403=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 27 Oct 2022 15:08:41 -0000
Message-ID: <166688332151.4252.302590095075880296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_DG2_OA_support_=28rev11=29?=
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

--===============1311260569738463403==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DG2 OA support (rev11)
URL   : https://patchwork.freedesktop.org/series/107584/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12304_full -> Patchwork_107584v11_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107584v11_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107584v11_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107584v11_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@global-sseu-config:
    - shard-tglb:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-tglb7/igt@perf@global-sseu-config.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@perf@global-sseu-config.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@perf@global-sseu-config:
    - {shard-rkl}:        [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-1/igt@perf@global-sseu-config.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@perf@global-sseu-config.html
    - {shard-dg1}:        [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-dg1-12/igt@perf@global-sseu-config.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-dg1-17/igt@perf@global-sseu-config.html

  
Known issues
------------

  Here are the changes found in Patchwork_107584v11_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-iclb:         NOTRUN -> [SKIP][7] ([i915#6230])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@api_intel_bb@crc32.html
    - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#6230])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@api_intel_bb@crc32.html

  * igt@feature_discovery@display-4x:
    - shard-iclb:         NOTRUN -> [SKIP][9] ([i915#1839])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@feature_discovery@display-4x.html
    - shard-tglb:         NOTRUN -> [SKIP][10] ([i915#1839])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@feature_discovery@display-4x.html

  * igt@gem_ccs@block-copy-inplace:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#3555] / [i915#5325])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@gem_ccs@block-copy-inplace.html
    - shard-iclb:         NOTRUN -> [SKIP][12] ([i915#5327])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@gem_ccs@block-copy-inplace.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#6268])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@legacy-engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#280])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#4525])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][21] ([i915#2842])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][22] ([i915#2842])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#2842]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@thriceslice:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271]) +191 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-snb5/igt@gem_exec_schedule@thriceslice.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#4613]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@gem_lmem_swapping@heavy-verify-multi.html
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#4613]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#4613]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@gem_lmem_swapping@random.html
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#4613]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk2/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#4613]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-skl:          [PASS][32] -> [SKIP][33] ([fdo#109271]) +33 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@gem_madvise@dontneed-before-exec.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          [PASS][34] -> [INCOMPLETE][35] ([i915#5161])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#4270]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#4270]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271]) +87 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#768]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3297])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#3297])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109289]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@gen7_exec_parse@load-register-reg.html
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109289]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271]) +61 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl7/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][45] -> [DMESG-WARN][46] ([i915#5566] / [i915#716])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#4281])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#6590])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#6537])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl2/igt@i915_pm_rps@engine-order.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl3/igt@i915_pm_rps@engine-order.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][51] -> [DMESG-FAIL][52] ([i915#5334])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][53] ([i915#1759])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@i915_selftest@live@gt_pm.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#2521]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][55] ([i915#2521])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html

  * igt@kms_atomic@atomic_plane_damage:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([i915#4765])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#5286]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#5286]) +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#110725] / [fdo#111614])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111615]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#110723]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#3886])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([i915#3689] / [i915#6095]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109278]) +22 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#3689] / [i915#3886])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#6095]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3886]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [i915#3886]) +3 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111615] / [i915#3689]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3689]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl9/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl1/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-snb:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-snb5/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#3359])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#3555]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109274]) +12 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipa@legacy.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109274])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][83] -> [INCOMPLETE][84] ([i915#180] / [i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#79])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#79])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180] / [i915#1982])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#2122])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#2672]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2587] / [i915#2672]) +4 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([i915#2587] / [i915#2672]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2672] / [i915#3555])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#6497]) +5 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +226 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][100] -> [DMESG-WARN][101] ([i915#1982])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109280] / [fdo#111825]) +23 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109280]) +28 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#112054] / [i915#5288]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_plane_lowres@tiling-4.html
    - shard-iclb:         NOTRUN -> [SKIP][105] ([i915#5288])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_lowres@tiling-yf@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#3536]) +5 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_plane_lowres@tiling-yf@pipe-b-edp-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#3555]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#5176]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-edp-1:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#5235]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][110] -> [SKIP][111] ([i915#5235]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][112] -> [DMESG-WARN][113] ([i915#118])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#2920]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
    - shard-glk:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#658]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
    - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#111068] / [i915#658])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([i915#7037])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@kms_psr2_su@page_flip-p010.html
    - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109642] / [fdo#111068] / [i915#658])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109441]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][124] ([fdo#109441]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-tglb:         NOTRUN -> [FAIL][125] ([i915#132] / [i915#3467]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#5289])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#5289])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_selftest@all:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#6433]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_selftest@all.html
    - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#6433]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_selftest@all.html

  * igt@perf@global-sseu-config:
    - shard-apl:          [PASS][130] -> [SKIP][131] ([fdo#109271]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl6/igt@perf@global-sseu-config.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl1/igt@perf@global-sseu-config.html
    - shard-glk:          [PASS][132] -> [SKIP][133] ([fdo#109271]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk1/igt@perf@global-sseu-config.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk9/igt@perf@global-sseu-config.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][134] ([i915#1722])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@perf@polling-small-buf.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#5608]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@perf_pmu@busy-accuracy-98.html

  * igt@perf_pmu@interrupts:
    - shard-skl:          NOTRUN -> [FAIL][136] ([i915#7318])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@perf_pmu@interrupts.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          NOTRUN -> [DMESG-WARN][137] ([i915#1982])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          [PASS][138] -> [SKIP][139] ([fdo#109271] / [i915#5608])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@perf_pmu@rc6-suspend.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@perf_pmu@rc6-suspend.html

  * igt@prime_vgem@fence-write-hang:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109295])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@prime_vgem@fence-write-hang.html
    - shard-tglb:         NOTRUN -> [SKIP][141] ([fdo#109295])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_clients@pidname:
    - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl7/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@split-50:
    - shard-iclb:         NOTRUN -> [SKIP][143] ([i915#2994])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][144] ([i915#6252]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-4/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][146] ([i915#4525]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][148] ([i915#3281]) -> [PASS][149] +6 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][150] ([i915#2190]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-self:
    - {shard-rkl}:        [SKIP][152] ([i915#3282]) -> [PASS][153] +2 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-1/igt@gem_pwrite@basic-self.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-5/igt@gem_pwrite@basic-self.html

  * igt@gem_sync@basic-store-all:
    - shard-skl:          [FAIL][154] ([i915#7199]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl5/igt@gem_sync@basic-store-all.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl2/igt@gem_sync@basic-store-all.html

  * igt@gen9_exec_parse@secure-batches:
    - {shard-rkl}:        [SKIP][156] ([i915#2527]) -> [PASS][157] +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_rpm@cursor:
    - {shard-rkl}:        [SKIP][158] ([i915#1849]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-1/igt@i915_pm_rpm@cursor.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][160] ([i915#1397]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rpm@system-suspend:
    - {shard-rkl}:        [FAIL][162] ([fdo#103375]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-4/igt@i915_pm_rpm@system-suspend.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-4/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@min-max-config-idle:
    - {shard-rkl}:        [FAIL][164] ([i915#7142]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][166] ([i915#1845] / [i915#4098]) -> [PASS][167] +11 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][168] ([i915#2346]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][170] ([i915#1257]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-3/igt@kms_dp_aux_dev.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][172] ([i915#2122]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - {shard-rkl}:        [SKIP][174] ([i915#1849] / [i915#4098]) -> [PASS][175] +10 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][176] ([fdo#109441]) -> [PASS][177] +2 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][178] ([i915#1072]) -> [PASS][179] +1 similar issue
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-3/igt@kms_psr@sprite_plane_onoff.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][180] ([i915#5461]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][182] ([i915#5519]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-b-wait-forked:
    - shard-skl:          [SKIP][184] ([fdo#109271]) -> [PASS][185] +6 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@kms_vblank@pipe-b-wait-forked.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl3/igt@kms_vblank@pipe-b-wait-forked.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][186] ([i915#2436]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][188] ([i915#1722]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-4/igt@perf@polling-small-buf.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@perf@polling-small-buf.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][190] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-rkl-4/igt@prime_vgem@coherency-gtt.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Warnings ####

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          [WARN][192] ([i915#2658]) -> [INCOMPLETE][193] ([i915#7248])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-glk3/igt@gem_pwrite@basic-exhaustion.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk3/igt@gem_pwrite@basic-exhaustion.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][194] ([i915#588]) -> [SKIP][195] ([i915#658])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_selftest@mock@vma:
    - shard-skl:          [INCOMPLETE][196] -> [INCOMPLETE][197] ([i915#6950] / [i915#7065])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl6/igt@i915_selftest@mock@vma.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@i915_selftest@mock@vma.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          [SKIP][198] ([fdo#109271] / [i915#3886]) -> [SKIP][199] ([fdo#109271]) +4 similar issues
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-skl:          [SKIP][200] ([fdo#109271] / [fdo#111827]) -> [SKIP][201] ([fdo#109271]) +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl10/igt@kms_chamelium@hdmi-audio-edid.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][202] ([i915#2920]) -> [SKIP][203] ([i915#658])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          [SKIP][204] ([fdo#109271] / [i915#658]) -> [SKIP][205] ([fdo#109271])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][206] ([fdo#111068] / [i915#658]) -> [SKIP][207] ([i915#2920]) +1 similar issue
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][208] ([i915#658]) -> [SKIP][209] ([i915#2920])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213]) ([i915#3002] / [i915#4312]) -> ([FAIL][214], [FAIL][215], [FAIL][216], [FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221]) ([i915#180] / [i915#3002] / [i915#4312])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl6/igt@runner@aborted.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl2/igt@runner@aborted.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl8/igt@runner@aborted.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl6/igt@runner@aborted.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@runner@aborted.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl8/igt@runner@aborted.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@runner@aborted.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl7/igt@runner@aborted.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@runner@aborted.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl3/igt@runner@aborted.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl1/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][227], [FAIL][228], [FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232]) ([i915#3002] / [i915#4312])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl5/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl7/igt@runner@aborted.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl9/igt@runner@aborted.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@runner@aborted.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl10/igt@runner@aborted.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@runner@aborted.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl4/igt@runner@aborted.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@runner@aborted.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl5/igt@runner@aborted.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl2/igt@runner@aborted.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl5/igt@runner@aborted.html

  * igt@sysfs_clients@sema-25:
    - shard-skl:          [SKIP][233] ([fdo#109271] / [i915#2994]) -> [SKIP][234] ([fdo#109271] / [i915#5608]) +1 similar issue
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl9/igt@sysfs_clients@sema-25.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@sysfs_clients@sema-25.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4765]: https://gitlab.freedesktop.org/drm/intel/issues/4765
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#4998]: https://gitlab.freedesktop.org/drm/intel/issues/4998
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6778]: https://gitlab.freedesktop.org/drm/intel/issues/6778
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7142]: https://gitlab.freedesktop.org/drm/intel/issues/7142
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7199]: https://gitlab.freedesktop.org/drm/intel/issues/7199
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * IGT: IGT_7027 -> IGTPW_8001
  * Linux: CI_DRM_12304 -> Patchwork_107584v11

  CI-20190529: 20190529
  CI_DRM_12304: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8001: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8001/index.html
  IGT_7027: e38045c24405e70fed6cfeec2f616454c68e6512 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107584v11: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/index.html

--===============1311260569738463403==
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
<tr><td><b>Series:</b></td><td>Add DG2 OA support (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107584/">https://patchwork.freedesktop.org/series/107584/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/index.html">https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107584v11/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12304_full -&gt; Patchwork_107584v=
11_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107584v11_full absolutely =
need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_107584v11_full, please notify your bug team to al=
low them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
107584v11_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf@global-sseu-config:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-tglb7/igt@perf@global-sseu-config.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/sha=
rd-tglb2/igt@perf@global-sseu-config.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12304/shard-rkl-1/igt@perf@global-sseu-config.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shar=
d-rkl-6/igt@perf@global-sseu-config.html">SKIP</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12304/shard-dg1-12/igt@perf@global-sseu-config.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/sha=
rd-dg1-17/igt@perf@global-sseu-config.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107584v11_full that come from kn=
own issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@api_intel_bb@crc32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6230">i=
915#6230</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@api_intel_bb@crc32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6230">i=
915#6230</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@feature_discovery@display-=
4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@feature_discovery@display-=
4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1839">i915#1839</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-inplace:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@gem_ccs@block-copy-inplace=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5325">i915#5325</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@gem_ccs@block-copy-inplace=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5327">i915#5327</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584=
v11/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-snb2/igt@gem_ctx_persistence@legacy=
-engines-hostile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/28=
0">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07584v11/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#452=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v=
11/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-glk5/igt@gem_exec_fair@basic-none-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1075=
84v11/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)=
 +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@thriceslice:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-snb5/igt@gem_exec_schedule@thricesl=
ice.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +191 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@gem_lmem_swapping@heavy-ver=
ify-multi.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_lmem_swapping@heavy-ve=
rify-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4613">i915#4613</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@gem_lmem_swapping@random.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
613">i915#4613</a>) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-glk2/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@gem_lmem_swapping@verify-r=
andom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl1/igt@gem_madvise@dontneed-before-exec.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10758=
4v11/shard-skl6/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)=
 +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-x.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584=
v11/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i915#5161</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_pxp@create-valid-prot=
ected-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4270">i915#4270</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@gem_pxp@reject-modify-con=
text-protection-off-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@gem_render_copy@y-tiled-ccs=
-to-y-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +87 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/768">i915#768</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3297">i915#3297</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@gen7_exec_parse@load-regis=
ter-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@gen7_exec_parse@load-regis=
ter-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-apl7/igt@gen7_exec_parse@oacontrol-=
tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>) +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v=
11/shard-glk3/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@i915_pm_dc@dc9-dpms.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281"=
>i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-apl2/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/sha=
rd-apl3/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584=
v11/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a=
>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@i915_selftest@live@gt_pm.=
html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1759">i915#1759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl9/igt@kms_async_flips@alternate-=
sync-async-flip@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2521">i915#2521</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@kms_async_flips@alternate-=
sync-async-flip@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_atomic@atomic_plane_d=
amage.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4765">i915#4765</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_big_fb@x-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111615">fdo#111615</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_ccs@pipe-a-crc-primar=
y-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_ccs@pipe-a-crc-sprite=
-planes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +22 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_ccs@pipe-b-bad-aux-st=
ride-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@kms_ccs@pipe-b-bad-rotati=
on-90-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-glk1/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issu=
es</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_ccs@pipe-b-missing-ccs=
-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar iss=
ues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb1/igt@kms_ccs@pipe-c-crc-primar=
y-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@kms_ccs@pipe-c-crc-sprite=
-planes-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl9/igt@kms_ccs@pipe-c-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb8/igt@kms_chamelium@hdmi-crc-non=
planar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-glk2/igt@kms_chamelium@hdmi-crc-nonp=
lanar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-apl1/igt@kms_chamelium@hdmi-frame-d=
ump.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@kms_chamelium@hdmi-hpd-wit=
h-enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_chamelium@vga-edid-re=
ad.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-snb5/igt@kms_chamelium@vga-hpd-afte=
r-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_cursor_crc@cursor-sli=
ding-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555">i915#3555</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_cursor_legacy@cursorb=
-vs-flipa@legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/sh=
ard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_107584v11/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107584v11/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-in=
terruptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107584v11/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp=
1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107584v11/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-int=
erruptible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2=
587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">=
i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915=
#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-stridechange:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_frontbuffer_tracking@=
fbcpsr-stridechange.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6497">i915#6497</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@kms_frontbuffer_tracking@f=
bcpsr-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +226 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +23 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +28 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_plane_lowres@tiling-4.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12054">fdo#112054</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5288">i915#5288</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_plane_lowres@tiling-4.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5288">i915#5288</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_plane_lowres@tiling-y=
f@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3536">i915#3536</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-edp=
-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_plane_scaling@plane-u=
pscale-with-rotation-factor-0-25@pipe-a-edp-1.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_plane_sca=
ling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-=
hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-glk8/igt@kms_plane_scaling@planes-upscale-20x20-downsca=
le-factor-0-75@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-glk8/igt@kms_plane_s=
caling@planes-upscale-20x20-downscale-factor-0-75@pipe-a-hdmi-a-1.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118=
">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-apl8/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@kms_psr2_sf@overlay-plane-=
move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-glk6/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_psr2_sf@overlay-plane-=
move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_psr2_sf@primary-plane=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl4/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb2/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7037">i915#7037</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109642">fdo#109642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v1=
1/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@kms_psr@psr2_cursor_plane=
_onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-tglb1/igt@kms_psr@psr2_cursor_rende=
r.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3467">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb1/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5289">i915#5289</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb6/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5289">i915#5289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_selftest@all.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6433">i91=
5#6433</a>) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb7/igt@kms_selftest@all.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6433">i91=
5#6433</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12304/shard-apl6/igt@perf@global-sseu-config.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard=
-apl1/igt@perf@global-sseu-config.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</=
p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12304/shard-glk1/igt@perf@global-sseu-config.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard=
-glk9/igt@perf@global-sseu-config.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</=
p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@perf@polling-small-buf.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/17=
22">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl6/igt@perf_pmu@busy-accuracy-98.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5608">i915#5608</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl10/igt@perf_pmu@interrupts.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7318"=
>i915#7318</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@perf_pmu@module-unload.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl1/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-s=
kl6/igt@perf_pmu@rc6-suspend.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-iclb3/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107584v11/shard-tglb5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-skl7/igt@sysfs_clients@pidname.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-iclb6/igt@sysfs_clients@split-50.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/29=
94">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584=
v11/shard-rkl-4/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107584v11/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107584v11/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PA=
SS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11=
/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-1/igt@gem_pwrite@basic-self.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11=
/shard-rkl-5/igt@gem_pwrite@basic-self.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl5/igt@gem_sync@basic-store-all.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7199">i915#7199</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v=
11/shard-skl2/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107584v11/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-1/igt@i915_pm_rpm@cursor.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/sh=
ard-rkl-6/igt@i915_pm_rpm@cursor.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397"=
>i915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107584v11/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-4/igt@i915_pm_rpm@system-suspend.html">FAIL</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7584v11/shard-rkl-4/igt@i915_pm_rpm@system-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7142">i915#71=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107584v11/shard-rkl-1/igt@i915_pm_rps@min-max-config-idle.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107584v11/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">=
PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107584v11/shard-glk8/igt@kms_cursor_legacy@flip-vs-curs=
or@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-3/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-=
rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107584v11/shard-skl10/igt@kms_flip@flip-vs-expired-vbl=
ank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-linear.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
49">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-ti=
ling-linear.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_107584v11/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-3/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1075=
84v11/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107584v11/shard-rkl-6/igt@kms_psr_stress_test@flip-pri=
mary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107584v11/shard-tglb3/igt@kms_psr_stress_test@invalida=
te-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl1/igt@kms_vblank@pipe-b-wait-forked.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107584v11/shard-skl3/igt@kms_vblank@pipe-b-wait-forked.html">PASS</a> +6 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
36">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_107584v11/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-cou=
nters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-4/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v1=
1/shard-rkl-6/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-rkl-4/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#1=
11656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708=
">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107584v11/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a>=
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-glk3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1075=
84v11/shard-glk3/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>)=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07584v11/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)=
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl6/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11=
/shard-skl6/igt@i915_selftest@mock@vma.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/6950">i915#6950</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7065">i915#7065</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen=
12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3886">i915#3886</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl1/igt@kms_ccs@pipe-c-=
missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +4 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl10/igt@kms_chamelium@hdmi-audio-edid.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">=
fdo#111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107584v11/shard-skl6/igt@kms_chamelium@hdmi-audio-edid.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107584v11/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move=
-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_107584v11/shard-skl6/igt@kms_psr2_sf@overlay-plane-upd=
ate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_107584v11/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl2/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12304/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v1=
1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107584v11/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-apl6/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107584v11/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-ap=
l1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107584v11/shard-apl3/igt@runner@aborted.html">FAIL=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002"=
>i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12304/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12304/shard-skl1/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_12304/shard-skl10/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v1=
1/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl4/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107584v11/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-skl5/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107584v11/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/shard-=
skl5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12304/shard-skl9/igt@sysfs_clients@sema-25.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994">i915#2994=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07584v11/shard-skl6/igt@sysfs_clients@sema-25.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) =
+1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7027 -&gt; IGTPW_8001</li>
<li>Linux: CI_DRM_12304 -&gt; Patchwork_107584v11</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12304: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGTPW_8001: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8001/index.htm=
l<br />
  IGT_7027: e38045c24405e70fed6cfeec2f616454c68e6512 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107584v11: 29da184cfd1f57054340b6452921f79af68a1a44 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1311260569738463403==--
