Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68D3890B59
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 21:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9D910E8EE;
	Thu, 28 Mar 2024 20:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C7710E8EE;
 Thu, 28 Mar 2024 20:30:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8144471348920171112=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Implemnt_vblank?=
 =?utf-8?q?_sycnhronized_mbus_joining_changes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Mar 2024 20:30:18 -0000
Message-ID: <171165781828.1064396.9042632710615039879@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

--===============8144471348920171112==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implemnt vblank sycnhronized mbus joining changes
URL   : https://patchwork.freedesktop.org/series/131700/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14495_full -> Patchwork_131700v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131700v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131700v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/index.html

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131700v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-suspend:
    - shard-dg2:          ([PASS][1], [PASS][2]) -> [INCOMPLETE][3]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@gem_eio@in-flight-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-7/igt@gem_eio@in-flight-suspend.html

  * igt@kms_flip@dpms-off-confusion@d-hdmi-a3:
    - shard-dg2:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_flip@dpms-off-confusion@d-hdmi-a3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-5/igt@kms_flip@dpms-off-confusion@d-hdmi-a3.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a:
    - shard-mtlp:         [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-a.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-a.html

  
#### Warnings ####

  * igt@gem_workarounds@basic-read-context:
    - shard-dg2:          ([PASS][8], [TIMEOUT][9]) -> [TIMEOUT][10]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_workarounds@basic-read-context.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@gem_workarounds@basic-read-context.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@gem_workarounds@basic-read-context.html

  * igt@kms_vrr@flipline:
    - shard-dg2:          ([TIMEOUT][11], [SKIP][12]) ([i915#3555]) -> [TIMEOUT][13]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_vrr@flipline.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@kms_vrr@flipline.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_vrr@flipline.html

  
Known issues
------------

  Here are the changes found in Patchwork_131700v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [PASS][14] -> [FAIL][15] ([i915#7742])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8414])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#8414])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-idle.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg1:          [PASS][18] -> [FAIL][19] ([i915#10086]) +2 other tests fail
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#8555])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_eio@kms:
    - shard-tglu:         ([PASS][21], [PASS][22]) -> [INCOMPLETE][23] ([i915#10513])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@gem_eio@kms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@gem_eio@kms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-9/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][24] ([i915#2846])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#2842])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglu:         ([PASS][27], [PASS][28]) -> [FAIL][29] ([i915#2842]) +1 other test fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@gem_exec_fair@basic-throttle@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#5107])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4860])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][33] ([i915#10446])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#4077])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@write:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4083])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_mmap_wc@write.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#4270])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@gem_pxp@display-protected-crc.html
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4270])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_pxp@display-protected-crc.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#5190] / [i915#8428])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#8428])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          NOTRUN -> [ABORT][41] ([i915#5566])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#2856])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gen9_exec_parse@basic-rejected.html
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#2527])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][44] +144 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#6645])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
    - shard-tglu:         ([PASS][46], [PASS][47]) -> [FAIL][48] ([i915#2521])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#5286]) +1 other test skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#6187])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4538] / [i915#5190]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#6095]) +43 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#10307] / [i915#6095]) +73 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#6095]) +23 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#6095]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-edp-1.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#7828])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#7828]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#7828]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8814])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#4103])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#4213])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#5354]) +3 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          ([PASS][65], [PASS][66]) -> [FAIL][67] ([i915#6880])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][68] +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#8708]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#1825]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3023]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#1825]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#6301])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#9423]) +11 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5176] / [i915#9423]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#5235]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][77] -> [SKIP][78] ([i915#9519])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#9808]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#9683])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_psr2_su@page_flip-p010.html
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4348])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#1072] / [i915#9732]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_psr@fbc-pr-sprite-plane-move.html

  * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#1072] / [i915#9732])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#9688]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3555]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#5030]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#5030] / [i915#9041])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-snb:          ([PASS][88], [PASS][89]) -> [FAIL][90] ([i915#9196])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
    - shard-rkl:          NOTRUN -> [FAIL][91] ([i915#9196])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#9917])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#9917])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@v3d/v3d_perfmon@create-two-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#2575])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@v3d/v3d_perfmon@create-two-perfmon.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          ([FAIL][95], [FAIL][96]) ([i915#2846]) -> [PASS][97]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-3/igt@gem_exec_fair@basic-deadline.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         ([FAIL][98], [FAIL][99]) ([i915#2842]) -> [PASS][100]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg2:          ([FAIL][101], [PASS][102]) ([i915#10378]) -> [PASS][103]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         ([PASS][104], [ABORT][105]) ([i915#10029]) -> [PASS][106]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-3/igt@gem_mmap_offset@clear@smem0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          ([INCOMPLETE][107], [INCOMPLETE][108]) ([i915#9820] / [i915#9849]) -> [PASS][109]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][110] ([i915#10131] / [i915#9820]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_power@sanity:
    - shard-mtlp:         ([SKIP][112], [PASS][113]) ([i915#7984]) -> [PASS][114]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-7/igt@i915_power@sanity.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-6/igt@i915_power@sanity.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@i915_selftest@live@gt_pm:
    - shard-snb:          ([PASS][115], [ABORT][116]) -> [PASS][117]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb2/igt@i915_selftest@live@gt_pm.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb5/igt@i915_selftest@live@gt_pm.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-snb6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         ([PASS][118], [FAIL][119]) ([i915#3743]) -> [PASS][120]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_color@legacy-gamma@pipe-c:
    - shard-mtlp:         ([PASS][121], [ABORT][122]) -> [PASS][123]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-7/igt@kms_color@legacy-gamma@pipe-c.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-2/igt@kms_color@legacy-gamma@pipe-c.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-8/igt@kms_color@legacy-gamma@pipe-c.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][124] ([i915#2346]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          ([FAIL][126], [PASS][127]) ([i915#6880]) -> [PASS][128]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          ([PASS][129], [SKIP][130]) ([i915#9519]) -> [PASS][131] +1 other test pass
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [FAIL][132] ([i915#8717]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-11/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          ([SKIP][134], [SKIP][135]) ([i915#9519]) -> [PASS][136]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          ([SKIP][137], [PASS][138]) ([i915#9519]) -> [PASS][139] +1 other test pass
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-rkl:          [SKIP][140] ([i915#9519]) -> [PASS][141] +1 other test pass
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][142] ([IGT#2]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         ([FAIL][144], [FAIL][145]) ([i915#9196]) -> [PASS][146]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4:
    - shard-dg1:          ([FAIL][147], [PASS][148]) ([i915#9196]) -> [PASS][149]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html

  
#### Warnings ####

  * igt@gem_eio@reset-stress:
    - shard-dg2:          ([FAIL][150], [PASS][151]) ([i915#5784]) -> [FAIL][152] ([i915#5784])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@gem_eio@reset-stress.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_eio@reset-stress.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         ([FAIL][153], [PASS][154]) ([i915#2842]) -> [FAIL][155] ([i915#2842])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@gem_exec_fair@basic-none-share@rcs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          ([FAIL][156], [PASS][157]) ([i915#2842]) -> [FAIL][158] ([i915#2842])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@heavy-multi@lmem0:
    - shard-dg1:          ([PASS][159], [FAIL][160]) ([i915#10378]) -> [FAIL][161] ([i915#10378])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-15/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-17/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-multi@lmem0.html
    - shard-dg2:          ([FAIL][162], [PASS][163]) ([i915#10378]) -> [FAIL][164] ([i915#10378])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_lmem_swapping@heavy-multi@lmem0.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg2:          [FAIL][165] ([i915#10446]) -> [FAIL][166] ([i915#10378])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          ([WARN][167], [INCOMPLETE][168]) ([i915#7356] / [i915#9820] / [i915#9849]) -> [WARN][169] ([i915#7356])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         ([PASS][170], [FAIL][171]) ([i915#5138]) -> [FAIL][172] ([i915#5138])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         ([FAIL][173], [PASS][174]) ([i915#3743]) -> [FAIL][175] ([i915#3743])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          ([SKIP][176], [SKIP][177]) ([i915#9424] / [i915#9433]) -> [SKIP][178] ([i915#9424])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-17/igt@kms_content_protection@mei-interface.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          ([SKIP][179], [PASS][180]) ([i915#9519]) -> [SKIP][181] ([i915#9519]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          ([PASS][182], [SKIP][183]) ([i915#9519]) -> [SKIP][184] ([i915#9519])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
    - shard-dg2:          [SKIP][185] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][186] ([i915#1072] / [i915#9732]) +5 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-2/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr-primary-page-flip:
    - shard-dg2:          ([SKIP][187], [SKIP][188]) ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][189] ([i915#1072] / [i915#9732]) +14 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_psr@fbc-psr-primary-page-flip.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_psr@fbc-psr-primary-page-flip.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-7/igt@kms_psr@fbc-psr-primary-page-flip.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-dg2:          [SKIP][190] ([i915#1072] / [i915#9732]) -> [SKIP][191] ([i915#1072] / [i915#9673] / [i915#9732]) +4 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         ([PASS][192], [FAIL][193]) ([i915#9196]) -> [FAIL][194] ([i915#9196]) +1 other test fail
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [i915#10029]: https://gitlab.freedesktop.org/drm/intel/issues/10029
  [i915#10086]: https://gitlab.freedesktop.org/drm/intel/issues/10086
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10434]: https://gitlab.freedesktop.org/drm/intel/issues/10434
  [i915#10446]: https://gitlab.freedesktop.org/drm/intel/issues/10446
  [i915#10513]: https://gitlab.freedesktop.org/drm/intel/issues/10513
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#9041]: https://gitlab.freedesktop.org/drm/intel/issues/9041
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917


Build changes
-------------

  * Linux: CI_DRM_14495 -> Patchwork_131700v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14495: 07c774152cf8a034784b40978a77b5ee66e4779b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7786: 1e4a3cd0a4bb3419fb70ed3e01259485b056dcfd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131700v1: 07c774152cf8a034784b40978a77b5ee66e4779b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/index.html

--===============8144471348920171112==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implemnt vblank sycnhronized mbus joining changes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131700/">https://patchwork.freedesktop.org/series/131700/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14495_full -&gt; Patchwork_131700v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131700v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131700v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/index.html</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131700v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@gem_eio@in-flight-suspend.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@gem_eio@in-flight-suspend.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-7/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_flip@dpms-off-confusion@d-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-5/igt@kms_flip@dpms-off-confusion@d-hdmi-a3.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-a.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_workarounds@basic-read-context:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_workarounds@basic-read-context.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@gem_workarounds@basic-read-context.html">TIMEOUT</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@gem_workarounds@basic-read-context.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_vrr@flipline.html">TIMEOUT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@kms_vrr@flipline.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_vrr@flipline.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131700v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10086">i915#10086</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@gem_eio@kms.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@gem_eio@kms.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-9/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10513">i915#10513</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_lmem_swapping@verify-ccs@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10446">i915#10446</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_mmap_gtt@medium-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_mmap_wc@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> +144 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-64x21.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9808">i915#9808</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_psr@fbc-pr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5030">i915#5030</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5030">i915#5030</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9041">i915#9041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9917">i915#9917</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@v3d/v3d_perfmon@create-two-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-3/igt@gem_exec_fair@basic-deadline.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-3/igt@gem_mmap_offset@clear@smem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html">ABORT</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10029">i915#10029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-7/igt@i915_power@sanity.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-snb:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb2/igt@i915_selftest@live@gt_pm.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-snb5/igt@i915_selftest@live@gt_pm.html">ABORT</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-snb6/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma@pipe-c:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-7/igt@kms_color@legacy-gamma@pipe-c.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-2/igt@kms_color@legacy-gamma@pipe-c.html">ABORT</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-8/igt@kms_color@legacy-gamma@pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8717">i915#8717</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-11/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@gem_eio@reset-stress.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_eio@reset-stress.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-2/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi@lmem0:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-15/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-17/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-10/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10446">i915#10446</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-3/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html">WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7356">i915#7356</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7356">i915#7356</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg1-17/igt@kms_content_protection@mei-interface.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-2/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip:</p>
<ul>
<li>shard-dg2:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-11/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-5/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-7/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-dg2-2/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14495/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131700v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14495 -&gt; Patchwork_131700v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14495: 07c774152cf8a034784b40978a77b5ee66e4779b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7786: 1e4a3cd0a4bb3419fb70ed3e01259485b056dcfd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131700v1: 07c774152cf8a034784b40978a77b5ee66e4779b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8144471348920171112==--
