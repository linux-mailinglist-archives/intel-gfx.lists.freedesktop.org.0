Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096D9C5FC57
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Nov 2025 01:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D24710EB9D;
	Sat, 15 Nov 2025 00:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F5F10EB9A;
 Sat, 15 Nov 2025 00:52:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8671450789855243721=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/dp=3A_Restrict_?=
 =?utf-8?q?max_source_rate_for_WCL_to_HBR3?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 15 Nov 2025 00:52:47 -0000
Message-ID: <176316796771.56641.8984857590295130767@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8671450789855243721==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Restrict max source rate for WCL to HBR3
URL   : https://patchwork.freedesktop.org/series/157561/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17546_full -> Patchwork_157561v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_157561v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_157561v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_157561v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][1] -> [FAIL][2] +1 other test fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@perf@rc6-disable:
    - shard-rkl:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@perf@rc6-disable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@perf@rc6-disable.html

  
Known issues
------------

  Here are the changes found in Patchwork_157561v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#6230])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#8411]) +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][7] -> [SKIP][8] ([i915#14544] / [i915#2582]) +1 other test skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@fbdev@pan.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@fbdev@pan.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][10] -> [INCOMPLETE][11] ([i915#12392] / [i915#13356])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][12] ([i915#13356]) +1 other test incomplete
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][13] ([i915#13390])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#4525])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_reloc@basic-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3281]) +2 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_exec_reloc@basic-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [PASS][16] -> [ABORT][17] ([i915#15131]) +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@gem_exec_suspend@basic-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#4613] / [i915#7582])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][20] ([i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#284])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_media_vme.html

  * igt@gem_pread@snoop:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#3282]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_pread@snoop.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][23] ([i915#12964])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][24] ([i915#12917] / [i915#12964])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3297])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][26] +9 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#2527])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#2527] / [i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][29] -> [INCOMPLETE][30] ([i915#13356] / [i915#13820]) +1 other test incomplete
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#14498])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-dg2:          [PASS][32] -> [ABORT][33] ([i915#14385]) +1 other test abort
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][34] ([i915#7707])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#12454] / [i915#12712])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-glk:          NOTRUN -> [INCOMPLETE][36] ([i915#12761])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][37] ([i915#12761] / [i915#14995])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#1769] / [i915#3555])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#5286])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#5286]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#5286]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3638]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4423] / [i915#6095])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#6095]) +35 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#10307] / [i915#6095]) +98 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#6095]) +98 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#12313])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#14098] / [i915#6095]) +38 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#12313])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#10307] / [i915#10434] / [i915#6095])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#6095]) +7 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#6095]) +14 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#6095]) +14 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#11151] / [i915#7828]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#11151] / [i915#14544] / [i915#7828])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#11151] / [i915#7828]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#11151] / [i915#7828]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@ctm-negative:
    - shard-rkl:          [PASS][58] -> [SKIP][59] ([i915#12655] / [i915#14544])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_color@ctm-negative.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_color@ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][61] ([i915#7173])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#9424]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][63] ([i915#13566]) +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][64] -> [FAIL][65] ([i915#13566]) +1 other test fail
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          NOTRUN -> [FAIL][66] ([i915#13566]) +2 other tests fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#3555])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-128x128:
    - shard-rkl:          [PASS][68] -> [SKIP][69] ([i915#14544]) +39 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-rkl:          [PASS][70] -> [FAIL][71] ([i915#13566]) +1 other test fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-64x21.html
    - shard-tglu-1:       NOTRUN -> [FAIL][72] ([i915#13566]) +1 other test fail
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - shard-rkl:          [PASS][73] -> [SKIP][74] ([i915#11190] / [i915#14544]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#4103])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#13691])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][77] -> [SKIP][78] ([i915#3555])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#13749])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#13707])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#3555] / [i915#3840])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#3555] / [i915#3840])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][83] ([i915#12964]) +5 other tests dmesg-warn
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3955])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#9934]) +4 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][86] ([i915#12745] / [i915#4839])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][87] ([i915#4839])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][88] -> [TIMEOUT][89] ([i915#14033]) +1 other test timeout
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#3637] / [i915#9934]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#3637] / [i915#9934]) +2 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][92] ([i915#12917] / [i915#12964])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@kms_flip@absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          [PASS][93] -> [SKIP][94] ([i915#14544] / [i915#3637]) +6 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_flip@bo-too-big-interruptible.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#14544] / [i915#3637])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-rkl:          [PASS][96] -> [ABORT][97] ([i915#15132]) +1 other test abort
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#2672] / [i915#3555])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#2587] / [i915#2672])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#2672] / [i915#3555])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#2587] / [i915#2672])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-rkl:          [PASS][102] -> [SKIP][103] ([i915#14544] / [i915#3555]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#2672] / [i915#3555]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#2672]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][106] +13 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-rkl:          [PASS][107] -> [SKIP][108] ([i915#14544] / [i915#1849] / [i915#5354]) +5 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][109] ([i915#10056])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#15102])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#1825]) +19 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#9766])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-glk10:        NOTRUN -> [SKIP][113] +51 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk10/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#15102]) +4 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][115] +119 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15102] / [i915#3023]) +4 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#14544] / [i915#1849] / [i915#5354]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#15102]) +4 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] +16 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3555] / [i915#8228])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [PASS][121] -> [SKIP][122] ([i915#3555] / [i915#8228]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_hdr@static-toggle.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#3555] / [i915#8228])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#14544] / [i915#3555] / [i915#8826])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          [PASS][125] -> [SKIP][126] ([i915#14544] / [i915#8826])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_invalid_mode@overflow-vrefresh.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#12394])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][128] ([i915#13026]) +1 other test incomplete
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk10/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-rkl:          [PASS][129] -> [SKIP][130] ([i915#14544] / [i915#7294])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_plane_alpha_blend@alpha-7efc.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#13958])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#12247] / [i915#14544])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#14544] / [i915#3555] / [i915#8152])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-rkl:          [PASS][136] -> [SKIP][137] ([i915#12247] / [i915#14544] / [i915#8152]) +5 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:
    - shard-rkl:          [PASS][138] -> [SKIP][139] ([i915#12247] / [i915#14544]) +3 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          [PASS][140] -> [SKIP][141] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#5354])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [PASS][143] -> [SKIP][144] ([i915#13441] / [i915#14544])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_pm_dc@dc5-dpms-negative.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#15073]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#14544] / [i915#15073])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#14544] / [i915#15073])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#15073])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-rkl:          [PASS][151] -> [INCOMPLETE][152] ([i915#14419])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-8/igt@kms_pm_rpm@system-suspend-idle.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6524])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#11520]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#11520]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#11520]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][157] ([i915#11520]) +6 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:
    - shard-glk10:        NOTRUN -> [SKIP][158] ([i915#11520]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk10/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#11520] / [i915#14544])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#9683])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@pr-sprite-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#9732]) +4 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_psr@pr-sprite-render.html

  * igt@kms_psr@psr2-no-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#1072] / [i915#14544] / [i915#9732])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr@psr2-no-drrs.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#1072] / [i915#9732]) +8 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#9732]) +4 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#14544]) +6 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_rmfb@rmfb-ioctl.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#5289]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3555]) +2 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_sharpness_filter@invalid-plane-with-filter:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#15232]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_sharpness_filter@invalid-plane-with-filter.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][170] ([i915#12276]) +3 other tests incomplete
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk5/igt@kms_vblank@ts-continuation-suspend.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#11920])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_vrr@lobf.html

  * igt@kms_vrr@max-min:
    - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#9906])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#9906])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#2437] / [i915#9412])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3708])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-wait:
    - shard-rkl:          [PASS][176] -> [DMESG-WARN][177] ([i915#12964]) +9 other tests dmesg-warn
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@prime_vgem@fence-wait.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@prime_vgem@fence-wait.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#14544] / [i915#3708])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html

  * igt@sysfs_heartbeat_interval@precise@rcs0:
    - shard-rkl:          [PASS][179] -> [FAIL][180] ([i915#14783])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@rcs0.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-rkl:          [INCOMPLETE][181] ([i915#13390]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-rkl:          [DMESG-WARN][183] ([i915#12964]) -> [PASS][184] +15 other tests pass
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][185] ([i915#5493]) -> [PASS][186] +1 other test pass
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [TIMEOUT][187] ([i915#5493]) -> [PASS][188] +1 other test pass
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-dg1:          [DMESG-WARN][189] ([i915#4423]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-19/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-15/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_busy@basic:
    - shard-rkl:          [SKIP][191] ([i915#11190] / [i915#14544]) -> [PASS][192] +2 other tests pass
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_busy@basic.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_busy@basic.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [INCOMPLETE][193] ([i915#12796]) -> [PASS][194] +1 other test pass
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_color@gamma:
    - shard-rkl:          [SKIP][195] ([i915#12655] / [i915#14544]) -> [PASS][196] +1 other test pass
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_color@gamma.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_color@gamma.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [SKIP][197] ([i915#14544]) -> [PASS][198] +35 other tests pass
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-tglu:         [FAIL][199] ([i915#13566]) -> [PASS][200] +1 other test pass
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-3/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-rkl:          [ABORT][201] ([i915#15132]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglu:         [FAIL][203] ([i915#2346]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][205] ([i915#14033] / [i915#14350]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][207] ([i915#14033]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-rkl:          [SKIP][209] ([i915#14544] / [i915#3637]) -> [PASS][210] +2 other tests pass
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-tglu-1:       [FAIL][211] ([i915#14600]) -> [PASS][212] +1 other test pass
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-1/igt@kms_flip@plain-flip-fb-recreate.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [SKIP][213] ([i915#14544] / [i915#3555]) -> [PASS][214] +2 other tests pass
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-rkl:          [SKIP][215] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][216] +5 other tests pass
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [SKIP][217] ([i915#3555] / [i915#8228]) -> [PASS][218] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@kms_hdr@static-swap.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_hdr@static-swap.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-rkl:          [SKIP][219] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-rkl:          [SKIP][221] ([i915#14544] / [i915#8152]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          [SKIP][223] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-rkl:          [SKIP][225] ([i915#12247] / [i915#14544]) -> [PASS][226] +2 other tests pass
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-rkl:          [SKIP][227] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-rkl:          [SKIP][229] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][230] +2 other tests pass
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-rkl:          [SKIP][231] ([i915#14544] / [i915#1849]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][233] ([i915#15073]) -> [PASS][234] +1 other test pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-rkl:          [SKIP][235] ([i915#12916] / [i915#14544]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_rpm@i2c.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][237] ([i915#15073]) -> [PASS][238] +1 other test pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][239] ([i915#4349]) -> [PASS][240] +4 other tests pass
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - shard-rkl:          [FAIL][241] ([i915#14783]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@vcs0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@vcs0.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][243] ([i915#14544] / [i915#8411]) -> [SKIP][244] ([i915#8411])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][245] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][246] ([i915#3555] / [i915#9323])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][247] ([i915#13008]) -> [SKIP][248] ([i915#13008] / [i915#14544])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          [SKIP][249] ([i915#7697]) -> [SKIP][250] ([i915#14544] / [i915#7697])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][251] ([i915#14544] / [i915#8562]) -> [SKIP][252] ([i915#8562])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][253] ([i915#280]) -> [SKIP][254] ([i915#14544] / [i915#280])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_ctx_sseu@engines.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][255] ([i915#4525]) -> [SKIP][256] ([i915#14544] / [i915#4525])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          [SKIP][257] ([i915#14544] / [i915#4525]) -> [SKIP][258] ([i915#4525])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-rkl:          [SKIP][259] ([i915#3281]) -> [SKIP][260] ([i915#14544] / [i915#3281]) +2 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-read.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          [SKIP][261] ([i915#14544] / [i915#3281]) -> [SKIP][262] ([i915#3281]) +7 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#4613] / [i915#7582]) -> [SKIP][264] ([i915#4613] / [i915#7582])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          [SKIP][265] ([i915#14544] / [i915#4613]) -> [SKIP][266] ([i915#4613]) +2 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][267] ([i915#4613]) -> [SKIP][268] ([i915#14544] / [i915#4613]) +2 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][269] ([i915#3282]) -> [SKIP][270] ([i915#14544] / [i915#3282]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pwrite@basic-self:
    - shard-rkl:          [SKIP][271] ([i915#14544] / [i915#3282]) -> [SKIP][272] ([i915#3282]) +2 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_pwrite@basic-self.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-rkl:          [SKIP][273] ([i915#4270]) -> [SKIP][274] ([i915#14544] / [i915#4270])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_pxp@create-valid-protected-context.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [SKIP][275] ([i915#14544] / [i915#4270]) -> [TIMEOUT][276] ([i915#12917] / [i915#12964])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][277] ([i915#8411]) -> [SKIP][278] ([i915#14544] / [i915#8411])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@noreloc-s3:
    - shard-rkl:          [ABORT][279] ([i915#15131]) -> [DMESG-WARN][280] ([i915#12964])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_softpin@noreloc-s3.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#3297]) -> [SKIP][282] ([i915#3297])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][283] ([i915#3281] / [i915#3297]) -> [SKIP][284] ([i915#14544] / [i915#3281] / [i915#3297])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_userptr_blits@relocations.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#2527]) -> [SKIP][286] ([i915#2527]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][287] ([i915#2527]) -> [SKIP][288] ([i915#14544] / [i915#2527]) +4 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][289] ([i915#8399]) -> [SKIP][290] ([i915#14544] / [i915#8399])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][291] ([i915#6590]) -> [SKIP][292] ([i915#14544] / [i915#6590]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][293] ([i915#14544] / [i915#4387]) -> [SKIP][294] ([i915#4387])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@i915_pm_sseu@full-enable.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][295] ([i915#12454] / [i915#12712] / [i915#14544]) -> [SKIP][296] ([i915#12454] / [i915#12712])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][297] ([i915#1769] / [i915#3555]) -> [SKIP][298] ([i915#14544])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][299] ([i915#14544]) -> [SKIP][300] ([i915#5286]) +3 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][301] ([i915#5286]) -> [SKIP][302] ([i915#14544]) +3 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          [SKIP][303] ([i915#14544]) -> [SKIP][304] ([i915#3638])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][305] ([i915#3638]) -> [SKIP][306] ([i915#14544]) +3 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][307] ([i915#14544]) -> [SKIP][308] +10 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_busy@extended-modeset-hang-newfb-with-reset:
    - shard-rkl:          [DMESG-WARN][309] ([i915#12964]) -> [SKIP][310] ([i915#14544]) +3 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][311] ([i915#14544]) -> [SKIP][312] ([i915#14098] / [i915#6095]) +8 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-ccs:
    - shard-dg1:          [SKIP][313] ([i915#6095]) -> [SKIP][314] ([i915#4423] / [i915#6095])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@kms_ccs@bad-pixel-format-y-tiled-ccs.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@kms_ccs@bad-pixel-format-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][315] ([i915#14544]) -> [SKIP][316] ([i915#12313])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][317] ([i915#12805]) -> [SKIP][318] ([i915#14544])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][319] ([i915#12796]) -> [INCOMPLETE][320] ([i915#12796] / [i915#14694]) +1 other test incomplete
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-rkl:          [SKIP][321] ([i915#14098] / [i915#6095]) -> [SKIP][322] ([i915#14544]) +5 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][323] ([i915#12313]) -> [SKIP][324] ([i915#14544])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-rkl:          [SKIP][325] ([i915#11151] / [i915#7828]) -> [SKIP][326] ([i915#11151] / [i915#14544] / [i915#7828]) +6 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          [SKIP][327] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][328] ([i915#11151] / [i915#7828]) +3 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [FAIL][329] ([i915#7173]) -> [SKIP][330] ([i915#7118] / [i915#9424])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_content_protection@atomic.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][331] ([i915#7118] / [i915#9424]) -> [FAIL][332] ([i915#7173])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
    - shard-rkl:          [SKIP][333] ([i915#7118] / [i915#9424]) -> [SKIP][334] ([i915#14544])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][335] ([i915#3116]) -> [SKIP][336] ([i915#14544])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][337] ([i915#14544]) -> [SKIP][338] ([i915#7118] / [i915#9424])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_content_protection@legacy.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][339] ([i915#9433]) -> [SKIP][340] ([i915#9424])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-15/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [SKIP][341] ([i915#14544]) -> [FAIL][342] ([i915#13566])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-rkl:          [FAIL][343] ([i915#13566]) -> [SKIP][344] ([i915#14544])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][345] ([i915#14544]) -> [SKIP][346] ([i915#13049]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][347] -> [SKIP][348] ([i915#14544]) +14 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          [SKIP][349] ([i915#9067]) -> [SKIP][350] ([i915#14544])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][351] ([i915#14544]) -> [SKIP][352] ([i915#4103])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          [SKIP][353] ([i915#1257]) -> [SKIP][354] ([i915#1257] / [i915#14544])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_dp_aux_dev.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][355] ([i915#14544]) -> [SKIP][356] ([i915#3840])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          [SKIP][357] ([i915#3840]) -> [SKIP][358] ([i915#14544])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][359] ([i915#14544]) -> [SKIP][360] ([i915#3555] / [i915#3840])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#1839]) -> [SKIP][362] ([i915#1839])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          [SKIP][363] ([i915#1839]) -> [SKIP][364] ([i915#14544] / [i915#1839])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_feature_discovery@display-4x.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][365] ([i915#658]) -> [SKIP][366] ([i915#14544] / [i915#658])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_feature_discovery@psr2.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-rkl:          [SKIP][367] ([i915#14544] / [i915#9934]) -> [SKIP][368] ([i915#9934]) +2 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          [SKIP][369] ([i915#9934]) -> [SKIP][370] ([i915#14544] / [i915#9934]) +5 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_flip@2x-plain-flip.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#3555]) -> [SKIP][372] ([i915#2672] / [i915#3555]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-rkl:          [SKIP][373] ([i915#2672] / [i915#3555]) -> [SKIP][374] ([i915#14544] / [i915#3555])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [DMESG-WARN][375] ([i915#12964]) -> [SKIP][376] ([i915#14544] / [i915#1849] / [i915#5354])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][377] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][378] ([i915#1825]) +24 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][379] ([i915#15102]) -> [SKIP][380] ([i915#14544]) +3 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][381] ([i915#14544]) -> [SKIP][382] ([i915#15102]) +2 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][383] ([i915#15102] / [i915#3023]) -> [SKIP][384] ([i915#14544] / [i915#1849] / [i915#5354]) +10 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [SKIP][385] ([i915#15102] / [i915#3458]) -> [SKIP][386] ([i915#10433] / [i915#15102] / [i915#3458]) +1 other test skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][387] ([i915#4423] / [i915#8708]) -> [SKIP][388] ([i915#8708])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][389] ([i915#1825]) -> [SKIP][390] ([i915#14544] / [i915#1849] / [i915#5354]) +21 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
    - shard-dg1:          [SKIP][391] -> [SKIP][392] ([i915#4423]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][393] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][394] ([i915#15102] / [i915#3023]) +7 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
    - shard-dg2:          [SKIP][395] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][396] ([i915#15102] / [i915#3458]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][397] ([i915#14544]) -> [SKIP][398] ([i915#3555] / [i915#8228])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_hdr@bpc-switch.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [SKIP][399] ([i915#3555] / [i915#8228]) -> [SKIP][400] ([i915#14544]) +1 other test skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][401] ([i915#12713]) -> [SKIP][402] ([i915#13331])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          [SKIP][403] ([i915#14544]) -> [SKIP][404] ([i915#12713])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          [SKIP][405] ([i915#13522]) -> [SKIP][406] ([i915#13522] / [i915#14544])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_pipe_stress@stress-xrgb8888-untiled:
    - shard-rkl:          [SKIP][407] ([i915#14544]) -> [DMESG-WARN][408] ([i915#12964]) +1 other test dmesg-warn
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-untiled.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-untiled.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][409] ([i915#13958]) -> [SKIP][410] ([i915#14544])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-yf.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][411] ([i915#14544]) -> [SKIP][412] ([i915#14259]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [DMESG-WARN][414] ([i915#12964])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          [SKIP][415] ([i915#12343]) -> [SKIP][416] ([i915#12343] / [i915#14544])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_pm_backlight@brightness-with-dpms.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#5354]) -> [SKIP][418] ([i915#5354])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][419] ([i915#9295]) -> [DMESG-FAIL][420] ([i915#12964])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#15073]) -> [SKIP][422] ([i915#15073])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][423] ([i915#14544] / [i915#6524]) -> [SKIP][424] ([i915#6524])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][425] ([i915#11520]) -> [SKIP][426] ([i915#11520] / [i915#14544]) +4 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-rkl:          [SKIP][427] ([i915#11520] / [i915#14544]) -> [SKIP][428] ([i915#11520]) +3 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          [SKIP][429] ([i915#9683]) -> [SKIP][430] ([i915#14544] / [i915#9683])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_psr2_su@page_flip-xrgb8888.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-dg1:          [SKIP][431] ([i915#1072] / [i915#9732]) -> [SKIP][432] ([i915#1072] / [i915#4423] / [i915#9732])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-16/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-rkl:          [SKIP][433] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][434] ([i915#1072] / [i915#9732]) +13 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-primary-mmap-cpu:
    - shard-rkl:          [SKIP][435] ([i915#1072] / [i915#9732]) -> [SKIP][436] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_psr@psr-primary-mmap-cpu.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr@psr-primary-mmap-cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-rkl:          [SKIP][437] ([i915#9685]) -> [SKIP][438] ([i915#14544] / [i915#9685])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-rkl:          [SKIP][439] ([i915#3555]) -> [SKIP][440] ([i915#14544]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-center.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-rkl:          [SKIP][441] ([i915#14544]) -> [SKIP][442] ([i915#3555]) +1 other test skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-none.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_sharpness_filter@filter-dpms:
    - shard-rkl:          [SKIP][443] ([i915#14544]) -> [SKIP][444] ([i915#15232])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_sharpness_filter@filter-dpms.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_sharpness_filter@filter-dpms.html

  * igt@kms_sharpness_filter@invalid-filter-with-scaling-mode:
    - shard-rkl:          [SKIP][445] ([i915#15232]) -> [SKIP][446] ([i915#14544])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg1:          [SKIP][447] ([i915#3555] / [i915#4423]) -> [SKIP][448] ([i915#3555])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-16/igt@kms_vrr@flip-dpms.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-16/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          [SKIP][449] ([i915#3555] / [i915#9906]) -> [SKIP][450] ([i915#14544])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_vrr@negative-basic.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][451] ([i915#14544]) -> [SKIP][452] ([i915#9906])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][454] ([i915#2437] / [i915#9412])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][455] ([i915#14544] / [i915#2436]) -> [SKIP][456] ([i915#2436])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          [SKIP][457] ([i915#14544] / [i915#2435]) -> [SKIP][458] ([i915#2435])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          [SKIP][459] ([i915#3291] / [i915#3708]) -> [SKIP][460] ([i915#14544] / [i915#3291] / [i915#3708])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@prime_vgem@basic-write.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@prime_vgem@basic-write.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14385]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14385
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
  [i915#14783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14783
  [i915#14995]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15232]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17546 -> Patchwork_157561v1

  CI-20190529: 20190529
  CI_DRM_17546: fcced1dc80e617aa10794e4abc525895212e3678 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8623: 8623
  Patchwork_157561v1: fcced1dc80e617aa10794e4abc525895212e3678 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/index.html

--===============8671450789855243721==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Restrict max source rate for WCL to HBR3</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157561/">https://patchwork.freedesktop.org/series/157561/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17546_full -&gt; Patchwork_157561v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_157561v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_157561v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_157561v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@rc6-disable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@perf@rc6-disable.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@perf@rc6-disable.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_157561v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@fbdev@pan.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@fbdev@pan.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk1/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk6/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_exec_reloc@basic-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_pxp@create-protected-buffer.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gen7_exec_parse@chained-batch.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-7/igt@i915_pm_rpm@gem-execbuf-stress.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14385">i915#14385</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_async_flips@async-flip-suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995">i915#14995</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +98 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_color@ctm-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_color@ctm-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x128:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +5 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@kms_flip@absolute-wf_vblank-interruptible@a-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_flip@bo-too-big-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk10/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +119 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_invalid_mode@overflow-vrefresh.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk10/igt@kms_plane@plane-panning-bottom-right-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441">i915#13441</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-8/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk10/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_psr@pr-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-no-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr@psr2-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@rmfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_rmfb@rmfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@invalid-plane-with-filter:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_sharpness_filter@invalid-plane-with-filter.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk5/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@prime_vgem@fence-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@prime_vgem@fence-wait.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +9 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14783">i915#14783</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-3/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_fenced_exec_thrash@no-spare-fences.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@gem_fenced_exec_thrash@no-spare-fences.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-19/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-15/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_busy@basic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@gamma:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_color@gamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_color@gamma.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html">PASS</a> +35 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-3/igt@kms_cursor_crc@cursor-random-128x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-10/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_flip@dpms-off-confusion-interruptible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu-1:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-tglu-1/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-tglu-1/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_hdr@static-swap.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_rpm@i2c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#12916</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14783">i915#14783</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-3/igt@sysfs_heartbeat_interval@precise@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_pwrite@basic-self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@gem_pwrite@basic-self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@gem_softpin@noreloc-s3.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb-with-reset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@kms_ccs@bad-pixel-format-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-14/igt@kms_ccs@bad-pixel-format-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_content_protection@atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-1/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-15/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +21 other tests skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i915#13331</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522">i915#13522</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_plane_scaling@invalid-num-scalers.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-16/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_psr@psr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr@psr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@filter-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_sharpness_filter@filter-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@kms_sharpness_filter@filter-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sharpness_filter@invalid-filter-with-scaling-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-2/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15232">i915#15232</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_sharpness_filter@invalid-filter-with-scaling-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-dg1-16/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-dg1-16/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-7/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17546/shard-rkl-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157561v1/shard-rkl-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17546 -&gt; Patchwork_157561v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17546: fcced1dc80e617aa10794e4abc525895212e3678 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8623: 8623<br />
  Patchwork_157561v1: fcced1dc80e617aa10794e4abc525895212e3678 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8671450789855243721==--
