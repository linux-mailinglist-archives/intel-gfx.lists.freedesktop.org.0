Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267D3A2D3E7
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2025 05:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C45710E342;
	Sat,  8 Feb 2025 04:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0754010E1BF;
 Sat,  8 Feb 2025 04:57:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6678174764247006199=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/hdcp=3A_Create_?=
 =?utf-8?q?force=5Fhdcp14_debug_fs_entry?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 08 Feb 2025 04:57:56 -0000
Message-ID: <173899067699.3040922.1670742264650998113@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250207061454.3030060-1-suraj.kandpal@intel.com>
In-Reply-To: <20250207061454.3030060-1-suraj.kandpal@intel.com>
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

--===============6678174764247006199==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Create force_hdcp14 debug fs entry
URL   : https://patchwork.freedesktop.org/series/144461/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16084_full -> Patchwork_144461v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144461v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144461v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144461v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@core_setmaster@master-drop-set-root:
    - shard-tglu:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-tglu-4/igt@core_setmaster@master-drop-set-root.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-6/igt@core_setmaster@master-drop-set-root.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-3:
    - shard-dg1:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][5] +25 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [PASS][6] -> [SKIP][7] +51 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  
#### Warnings ####

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][8] ([i915#1769] / [i915#3555]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][10] ([i915#5286]) -> [SKIP][11] +4 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          [SKIP][12] ([i915#3638]) -> [SKIP][13] +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][14] ([i915#12805]) -> [SKIP][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-rkl:          [SKIP][16] ([i915#6095]) -> [SKIP][17] +8 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][18] ([i915#9424]) -> [SKIP][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_content_protection@content-type-change.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          [SKIP][20] ([i915#3116]) -> [SKIP][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          [SKIP][22] ([i915#3555]) -> [SKIP][23] +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][24] ([i915#13049]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][26] ([i915#4103]) -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][28] ([i915#3555] / [i915#3840]) -> [SKIP][29] +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_dsc@dsc-basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][30] ([i915#3555] / [i915#8228]) -> [SKIP][31] +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][32] ([i915#6301]) -> [SKIP][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][34] ([i915#5289]) -> [SKIP][35] +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  
Known issues
------------

  Here are the changes found in Patchwork_144461v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#6230])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@api_intel_bb@crc32.html
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#6230])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@api_intel_bb@crc32.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         NOTRUN -> [ABORT][38] ([i915#12817] / [i915#5507])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#8414]) +8 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#8414]) +6 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#8414]) +15 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#8414]) +6 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@drm_fdinfo@most-busy-idle-check-all@ccs0.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][43] -> [SKIP][44] ([i915#2582])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@fbdev@pan.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@fbdev@pan.html

  * igt@fbdev@write:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#2582])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@fbdev@write.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4873]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_caching@writes.html
    - shard-rkl:          NOTRUN -> [DMESG-WARN][47] ([i915#12917] / [i915#12964])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_caching@writes.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3555] / [i915#9323])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#9323])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][50] -> [INCOMPLETE][51] ([i915#13356])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-2/igt@gem_ccs@suspend-resume.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-7/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][52] -> [INCOMPLETE][53] ([i915#12392])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#6335])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-rkl:          [PASS][55] -> [DMESG-WARN][56] ([i915#12964]) +3 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_persistence@file:
    - shard-snb:          NOTRUN -> [SKIP][57] ([i915#1099])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-snb1/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#8555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#280])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][62] -> [FAIL][63] ([i915#12543] / [i915#5784])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg1-12/igt@gem_eio@reset-stress.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-14/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4771])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#4036])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#4525])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture:
    - shard-mtlp:         NOTRUN -> [FAIL][67] ([i915#11965]) +1 other test fail
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@gem_exec_capture@capture.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#4812])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4812])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#4812]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3539] / [i915#4852]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3539])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][73] ([i915#3539] / [i915#4852])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3539] / [i915#4852])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2-9:        NOTRUN -> [SKIP][75] +5 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#3281]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3281]) +6 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#3281]) +2 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3281]) +6 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3281]) +5 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#7276])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#4537] / [i915#4812])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          NOTRUN -> [ABORT][83] ([i915#7975]) +1 other test abort
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4860]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4860]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4860])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4613]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#12193])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4565])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#4613]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2-9:        NOTRUN -> [TIMEOUT][91] ([i915#5493]) +1 other test timeout
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#4613])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@gem_lmem_swapping@verify.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#284])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#284])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_media_vme.html

  * igt@gem_mmap@bad-offset:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4083]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4077]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@coherency:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4077]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_wc@read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4083]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_mmap_wc@read-write.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#4083])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_mmap_wc@write-read.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4083]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3282]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#3282])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@self:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#3282])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_pread@self.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4270])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#4270]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-rkl:          [PASS][106] -> [TIMEOUT][107] ([i915#12964])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [TIMEOUT][108] ([i915#12917] / [i915#12964]) +1 other test timeout
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4270])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5190] / [i915#8428]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2-9:        NOTRUN -> [SKIP][111] ([i915#5190] / [i915#8428]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#8428]) +5 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4079])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4079])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#8411])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#4079]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-rkl:          NOTRUN -> [FAIL][117] ([i915#12941])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4879])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#3297])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#3297]) +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#3297])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3297]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3297] / [i915#4880])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3297] / [i915#4880])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3281] / [i915#3297])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#3297] / [i915#4958])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3297]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][128] +7 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#2527])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#2527] / [i915#2856]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#2527]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#2856]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#2527] / [i915#2856])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#2856])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gen9_exec_parse@secure-batches.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-dg2-9:        NOTRUN -> [SKIP][135] ([i915#2856]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@load:
    - shard-glk:          ([PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152], [PASS][153], [PASS][154], [PASS][155], [PASS][156], [PASS][157], [PASS][158]) -> ([PASS][159], [PASS][160], [PASS][161], [PASS][162], [PASS][163], [PASS][164], [PASS][165], [PASS][166], [PASS][167], [PASS][168], [PASS][169], [PASS][170], [DMESG-WARN][171], [PASS][172], [PASS][173], [PASS][174], [PASS][175], [PASS][176]) ([i915#118])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk2/igt@i915_module_load@load.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk3/igt@i915_module_load@load.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk3/igt@i915_module_load@load.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk2/igt@i915_module_load@load.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk4/igt@i915_module_load@load.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk4/igt@i915_module_load@load.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk4/igt@i915_module_load@load.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk2/igt@i915_module_load@load.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk6/igt@i915_module_load@load.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk6/igt@i915_module_load@load.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk6/igt@i915_module_load@load.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk7/igt@i915_module_load@load.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk7/igt@i915_module_load@load.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk7/igt@i915_module_load@load.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk8/igt@i915_module_load@load.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk8/igt@i915_module_load@load.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk9/igt@i915_module_load@load.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk9/igt@i915_module_load@load.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk9/igt@i915_module_load@load.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/igt@i915_module_load@load.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk1/igt@i915_module_load@load.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk1/igt@i915_module_load@load.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/igt@i915_module_load@load.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk2/igt@i915_module_load@load.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/igt@i915_module_load@load.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk2/igt@i915_module_load@load.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk3/igt@i915_module_load@load.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk8/igt@i915_module_load@load.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk3/igt@i915_module_load@load.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk8/igt@i915_module_load@load.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk7/igt@i915_module_load@load.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk7/igt@i915_module_load@load.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk3/igt@i915_module_load@load.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk7/igt@i915_module_load@load.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk4/igt@i915_module_load@load.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk6/igt@i915_module_load@load.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk6/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][177] -> [ABORT][178] ([i915#9820])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#6590]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-mtlp:         [PASS][180] -> [ABORT][181] ([i915#13193]) +1 other test abort
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-mtlp-6/igt@i915_pm_rpm@system-suspend-devices.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-7/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2-9:        NOTRUN -> [SKIP][182] ([i915#11681] / [i915#6621])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#11681] / [i915#6621])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#11681])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#11681])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#6188])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#4212])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#4212])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][189] ([i915#5190])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#4212])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-tglu:         [PASS][191] -> [FAIL][192] ([i915#10991]) +1 other test fail
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic:
    - shard-dg1:          [PASS][193] -> [FAIL][194] ([i915#13320])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-atomic.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#8709]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-18/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#8709]) +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#8709]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#12967])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_async_flips@invalid-async-flip-atomic.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#1769] / [i915#3555])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][200] ([i915#5956]) +1 other test fail
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg1:          [PASS][201] -> [FAIL][202] ([i915#5956]) +1 other test fail
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg1-12/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-18/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][203] -> [FAIL][204] ([i915#11808]) +1 other test fail
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#5286]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#5286]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#4538] / [i915#5286]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#5286])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][209] -> [FAIL][210] ([i915#5138])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-snb:          NOTRUN -> [SKIP][211] +30 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-snb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][212] +15 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#3638]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3638]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#4538] / [i915#5190]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#5190])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#6187])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#4538]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][219] ([i915#4538] / [i915#5190]) +4 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-tglu-1:       NOTRUN -> [SKIP][220] +16 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#6095]) +9 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#12313]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#12313]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][224] ([i915#10307] / [i915#6095]) +24 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#10307] / [i915#6095]) +135 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#12313])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#6095]) +29 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#6095]) +14 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#6095]) +16 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][230] ([i915#12796])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][231] ([i915#6095]) +4 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][232] ([i915#12313])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#6095]) +124 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#6095]) +80 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#3742])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3742])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#11616] / [i915#7213]) +3 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#3742])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#4087]) +3 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#11151] / [i915#7828]) +4 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#11151] / [i915#7828]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#11151] / [i915#7828]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#11151] / [i915#7828]) +5 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#11151] / [i915#7828])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#11151] / [i915#7828]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#11151] / [i915#7828]) +3 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#9424])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3299])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@legacy@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][251] ([i915#7173])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][252] ([i915#9424])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#6944] / [i915#9424])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_content_protection@uevent.html
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#7118] / [i915#9424])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#13049])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#13049]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#13049]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#13049])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#3555]) +3 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][260] ([i915#13049])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#3555]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][262] +14 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
    - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#13046] / [i915#5354]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#4103] / [i915#4213])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#9809]) +2 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#4103] / [i915#4213])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#4213])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#4103])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#9723])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#3555]) +3 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_display_modes@extended-mode-basic.html
    - shard-snb:          [PASS][271] -> [SKIP][272] +5 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-snb7/igt@kms_display_modes@extended-mode-basic.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-snb4/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#3804])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#3555]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-pwrite:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][275] ([i915#12964]) +11 other tests dmesg-warn
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_draw_crc@draw-method-pwrite.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#3840])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3555] / [i915#3840])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#3555] / [i915#3840])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#3955])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_fbcon_fbt@psr.html
    - shard-dg1:          NOTRUN -> [SKIP][280] ([i915#3469])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#4854])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@kms_feature_discovery@chamelium.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#4881])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#3637])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#3637]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#9934]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][286] ([i915#3637])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#9934]) +7 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#9934]) +1 other test skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#9934]) +4 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][290] -> [FAIL][291] ([i915#13027]) +1 other test fail
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-mtlp:         [PASS][292] -> [FAIL][293] ([i915#11989]) +2 other tests fail
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1:
    - shard-snb:          [PASS][294] -> [FAIL][295] ([i915#11989]) +2 other tests fail
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#2587] / [i915#2672]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#3555] / [i915#8810] / [i915#8813])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#3555] / [i915#8810])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][300] ([i915#2587] / [i915#2672]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][301] ([i915#2587] / [i915#2672] / [i915#3555])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [PASS][302] -> [SKIP][303] ([i915#3555]) +3 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#2587] / [i915#2672]) +3 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][305] ([i915#2672] / [i915#3555]) +1 other test skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#2672] / [i915#3555])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#2672] / [i915#8813]) +3 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#2672]) +3 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#2672] / [i915#3555])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#2672])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#2672] / [i915#3555]) +2 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][312] ([i915#2672] / [i915#3555])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][313] ([i915#2672])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#2672] / [i915#3555] / [i915#8813]) +5 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [PASS][315] -> [SKIP][316] ([i915#1849] / [i915#5354]) +6 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [PASS][317] -> [FAIL][318] ([i915#6880]) +1 other test fail
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][319] ([i915#1825]) +13 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][320] ([i915#3458]) +3 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#3458]) +9 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#3458]) +5 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][323] ([i915#8708]) +9 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][324] +19 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][325] ([i915#8708]) +3 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][326] ([i915#5354]) +14 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][327] ([i915#8708]) +8 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#1849] / [i915#5354]) +16 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#8708]) +10 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][330] ([i915#3023]) +13 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         NOTRUN -> [SKIP][331] ([i915#9766])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][332] ([i915#1825]) +12 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][333] ([i915#5354]) +15 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][334] +20 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][335] ([i915#3555] / [i915#8228])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([i915#3555] / [i915#8228])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#3555] / [i915#8228])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [PASS][338] -> [SKIP][339] ([i915#3555] / [i915#8228]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-11/igt@kms_hdr@static-swap.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-2/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][340] ([i915#3555] / [i915#8228])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          NOTRUN -> [SKIP][341] ([i915#3555]) +8 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [PASS][342] -> [SKIP][343] ([i915#12388])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-3/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][344] ([i915#12339])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_joiner@basic-ultra-joiner.html
    - shard-mtlp:         NOTRUN -> [SKIP][345] ([i915#12339])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][346] ([i915#10656])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][347] ([i915#12339])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][348] ([i915#12339])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][349] ([i915#4816])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][350] ([i915#6301])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@pixel-format:
    - shard-rkl:          [PASS][351] -> [SKIP][352] ([i915#8825]) +1 other test skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_plane@pixel-format.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane@pixel-format.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-rkl:          [PASS][353] -> [SKIP][354] ([i915#7294]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_plane_alpha_blend@alpha-7efc.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][355] ([i915#8806])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          NOTRUN -> [SKIP][356] ([i915#6953] / [i915#8152])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@intel-max-src-size.html
    - shard-dg1:          NOTRUN -> [SKIP][357] ([i915#6953])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][358] ([i915#12247] / [i915#8152]) +6 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][359] ([i915#12247]) +4 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-rkl:          [PASS][360] -> [SKIP][361] ([i915#8152])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][362] ([i915#12247] / [i915#9423])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:
    - shard-dg2-9:        NOTRUN -> [SKIP][363] ([i915#12247]) +7 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][364] ([i915#12247]) +4 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-rkl:          [PASS][365] -> [SKIP][366] ([i915#12247] / [i915#8152]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:
    - shard-rkl:          [PASS][367] -> [SKIP][368] ([i915#12247]) +9 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-rkl:          [PASS][369] -> [SKIP][370] ([i915#6953] / [i915#8152])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2-9:        NOTRUN -> [SKIP][371] ([i915#12247] / [i915#3555] / [i915#9423])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-rkl:          NOTRUN -> [SKIP][372] ([i915#12247] / [i915#3555])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][373] ([i915#12247]) +3 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][374] ([i915#12247] / [i915#6953])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][375] ([i915#12247]) +8 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          [PASS][376] -> [SKIP][377] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][378] ([i915#12343])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu-1:       NOTRUN -> [SKIP][379] ([i915#9685])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-rkl:          [PASS][380] -> [SKIP][381] ([i915#13441])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_pm_dc@dc5-dpms-negative.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-mtlp:         NOTRUN -> [FAIL][382] ([i915#12913])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@kms_pm_dc@dc6-dpms.html
    - shard-tglu:         NOTRUN -> [FAIL][383] ([i915#9295])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][384] ([i915#3361])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][385] ([i915#3828])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-dg2-9:        NOTRUN -> [SKIP][386] ([i915#9340])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#8430])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][388] ([i915#4077]) +4 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][389] ([i915#9519])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][390] -> [SKIP][391] ([i915#9519])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][392] -> [SKIP][393] ([i915#9519])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-11/igt@kms_pm_rpm@dpms-non-lpsp.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][394] ([i915#9519])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][395] ([i915#9519])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-dg2-9:        NOTRUN -> [SKIP][396] ([i915#4077]) +8 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [PASS][397] -> [SKIP][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-rkl-1/igt@kms_pm_rpm@system-suspend-modeset.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2-9:        NOTRUN -> [SKIP][399] ([i915#6524] / [i915#6805])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_prime@basic-crc-hybrid.html
    - shard-rkl:          NOTRUN -> [SKIP][400] ([i915#6524])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][401] ([i915#12316]) +2 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][402] ([i915#11520]) +2 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][403] ([i915#11520]) +4 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][404] ([i915#11520]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][405] ([i915#11520]) +1 other test skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][406] ([i915#11520]) +3 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][407] ([i915#11520]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg1:          NOTRUN -> [SKIP][408] ([i915#9683])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-cursor-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][409] ([i915#1072] / [i915#9732]) +15 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
    - shard-dg1:          NOTRUN -> [SKIP][410] ([i915#1072] / [i915#9732]) +10 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-pr-primary-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][411] ([i915#9688]) +8 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_psr@fbc-pr-primary-blt.html

  * igt@kms_psr@fbc-pr-primary-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][412] ([i915#1072] / [i915#9732]) +10 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_psr@fbc-pr-primary-mmap-gtt.html

  * igt@kms_psr@fbc-pr-sprite-blt:
    - shard-dg2:          NOTRUN -> [SKIP][413] ([i915#1072] / [i915#9732]) +9 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_psr@fbc-pr-sprite-blt.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-tglu:         NOTRUN -> [SKIP][414] ([i915#9732]) +2 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][415] ([i915#9732]) +4 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2-9:        NOTRUN -> [SKIP][416] ([i915#12755]) +1 other test skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][417] ([i915#4235])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-1/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][418] ([i915#5289])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][419] ([i915#5289])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][420] ([i915#3555])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][421] ([i915#3555] / [i915#8809])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][422] -> [FAIL][423] ([IGT#160])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-dg2-10/igt@kms_sysfs_edid_timing.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vrr@max-min:
    - shard-tglu-1:       NOTRUN -> [SKIP][424] ([i915#9906])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][425] ([i915#9906])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-mtlp:         NOTRUN -> [SKIP][426] ([i915#8808] / [i915#9906])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][427] ([i915#2437])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg2-9:        NOTRUN -> [SKIP][428] ([i915#2437])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg1:          NOTRUN -> [SKIP][429] ([i915#2437] / [i915#9412])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config:
    - shard-dg2-9:        NOTRUN -> [SKIP][430] ([i915#7387])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@perf@global-sseu-config.html

  * igt@perf@global-sseu-config-invalid:
    - shard-mtlp:         NOTRUN -> [SKIP][431] ([i915#7387])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@perf@global-sseu-config-invalid.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2-9:        NOTRUN -> [FAIL][432] ([i915#12549] / [i915#6806]) +1 other test fail
   [432]: https://intel-gfx-ci.0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/index.html

--===============6678174764247006199==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Create force_hdcp14 debug fs =
entry</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/144461/">https://patchwork.freedesktop.org/series/144461/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144461v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144461v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16084_full -&gt; Patchwork_144461v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144461v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_144461v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
144461v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_setmaster@master-drop-set-root:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-tglu-4/igt@core_setmaster@master-drop-set-root.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144461v1/shard-tglu-6/igt@core_setmaster@master-drop-set-root.html">ABORT</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-at=
omic@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_async_flips@alte=
rnate-sync-async-flip-atomic@pipe-a-hdmi-a-3.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@x-tiled-max-hw-=
stride-32bpp-rotate-180-async-flip.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@y-tiled-max=
-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> +51 other tests s=
kip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/=
shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-=
internal-panels.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-180.html">SKIP</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-=
hw-stride-32bpp-rotate-180.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP<=
/a> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144461v1/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html"=
>SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> ([i915#12805]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-=
4-tiled-lnl-ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.=
html">SKIP</a> ([i915#6095]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-ba=
sic-yf-tiled-ccs.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> ([i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_content_protection@content=
-type-change.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html">SK=
IP</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144461v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SK=
IP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x10=
.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">S=
KIP</a> ([i915#13049]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x=
170.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cursor_l=
egacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555]=
 / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144461v1/shard-rkl-8/igt@kms_dsc@dsc-basic.html">SKIP</a> +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> ([i915#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144461v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html">S=
KIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-1=
80.html">SKIP</a> ([i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144461v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@device_reset@unbind-reset=
-rebind.html">ABORT</a> ([i915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@drm_fdinfo@busy-hang@bcs0.=
html">SKIP</a> ([i915#8414]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs1.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@drm_fdinfo@busy-idle@bcs0.=
html">SKIP</a> ([i915#8414]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@drm_fdinfo@most-busy-idle=
-check-all@ccs0.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@fbdev@pan.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@fb=
dev@pan.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@fbdev@write.html">SKIP</a>=
 ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_caching@writes.html">=
SKIP</a> ([i915#4873]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_caching@writes.html">D=
MESG-WARN</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-2/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard=
-dg2-7/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#13356])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compf=
mt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-7/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-4/igt@gem_ctx_persistence@engines-mixed-process@vec=
s0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144461v1/shard-rkl-1/igt@gem_ctx_persistence@engines-mixed-proce=
ss@vecs0.html">DMESG-WARN</a> ([i915#12964]) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-snb1/igt@gem_ctx_persistence@file.ht=
ml">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-=
dg1-14/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@gem_exec_capture@capture.=
html">FAIL</a> ([i915#11965]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_fence@concurrent.=
html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_exec_fence@submit.html=
">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_exec_flush@basic-uc-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-rw=
-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_exec_flush@basic-wb-r=
w-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-r=
ead.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_exec_reloc@basic-write=
-gtt.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4=
-devices.html">ABORT</a> ([i915#7975]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-1/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_lmem_swapping@parallel=
-random.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_lmem_swapping@smem-oom=
@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@gem_lmem_swapping@verify.=
html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@gem_media_vme.html">SKIP</=
a> ([i915#284])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_mmap@bad-offset.html"=
>SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_mmap_gtt@bad-object.ht=
ml">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_mmap_gtt@coherency.ht=
ml">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_mmap_wc@read-write.ht=
ml">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_mmap_wc@write-read.htm=
l">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_partial_pwrite_pread@=
write.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_pread@self.html">SKIP=
</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_pxp@create-protected-=
buffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +1 other test =
skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-contex=
t-refcounted.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protect=
ed-dst-is-context-refcounted.html">TIMEOUT</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +1 =
other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gem_render_copy@mixed-tile=
d-to-y-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_render_tiled_blits@bas=
ic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> ([i915#4079])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gem_tiled_swapping@non-thr=
eaded.html">FAIL</a> ([i915#12941])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_unfence_active_buffers=
.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@gem_userptr_blits@relocat=
ions.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@gen3_render_linear_blits.h=
tml">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@gen9_exec_parse@unaligned-=
jump.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16084/shard-glk2/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk3/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_16084/shard-glk3/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-=
glk2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk4/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
6084/shard-glk4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk4/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_16084/shard-glk2/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk6/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_16084/shard-glk6/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard=
-glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
16084/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk7/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16084/shard-glk8/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shar=
d-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_16084/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk9/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_16084/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16084/shard-glk1/igt=
@i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144461v1/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk1=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144461v1/shard-glk2/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk9/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_144461v1/shard-glk2/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144461v1/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk8/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144461v1/shard-glk3/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144461v1/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk7/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144461v1/shard-glk7/igt@i915_module_load@load.html">=
DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144461v1/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk7/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144461v1/shard-glk4/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144461v1/shard-glk6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-glk6/igt@i9=
15_module_load@load.html">PASS</a>) ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-glk3/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144461v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-mtlp-6/igt@i915_pm_rpm@system-suspend-devices.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44461v1/shard-mtlp-7/igt@i915_pm_rpm@system-suspend-devices.html">ABORT</a>=
 ([i915#13193]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@i915_pm_rps@thresholds.ht=
ml">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@i915_pm_rps@thresholds-idl=
e.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-f=
ramebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-x-=
tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144461v1/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.h=
tml">FAIL</a> ([i915#10991]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip-at=
omic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144461v1/shard-dg1-13/igt@kms_async_flips@alternate-sync-async=
-flip-atomic.html">FAIL</a> ([i915#13320])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-4-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-18/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html">SKIP</a> (=
[i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-=
a-1-4-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_async_flips@async-flip=
-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc.html">SKIP</a> ([=
i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_async_flips@invalid-as=
ync-flip-atomic.html">SKIP</a> ([i915#12967])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#176=
9] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-14/igt@kms_atomic_transition@pla=
ne-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg1-12/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144461v1/shard-dg1-18/igt@kms_atomic_transition@plane-tog=
gle-modeset-transition.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-tglu-7/igt@kms_atomic_tran=
sition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i91=
5#11808]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-=
rotate-90.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_big_fb@4-tiled-64bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144461v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-snb1/igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-180-async-flip.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> +15 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_big_fb@linear-64bpp-ro=
tate-270.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-r=
otate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-270.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_big_fb@yf-tiled-addfb=
-size-offset-overflow.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +9 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#609=
5]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-5/igt@kms_ccs@ccs-on-another-bo-=
yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +1=
35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_ccs@crc-primary-basic=
-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +29 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +14=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#6095]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> ([i915#12796=
])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#6095]) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-14/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +124=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +80 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i=
915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> ([i915#3742])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.h=
tml">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@p=
ipe-c-dp-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@kms_chamelium_edid@dp-edi=
d-read.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_chamelium_frames@hdmi-=
crc-multiple.html">SKIP</a> ([i915#11151] / [i915#7828]) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-e=
nable-disable-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-=
fast.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> ([i915#11151] / [i915#7828]) +3 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-11/igt@kms_content_protection@le=
gacy@pipe-a-dp-3.html">FAIL</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_content_protection@uev=
ent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_cursor_crc@cursor-rap=
id-movement-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> +14 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> ([i915#13046] / [i915#5354]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions.html">SKIP</a> ([i915#9809]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i91=
5#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-snb7/igt@kms_display_modes@extended-mode-basic.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144461v1/shard-snb4/igt@kms_display_modes@extended-mode-basic.html">SKIP</a=
> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_draw_crc@draw-method-p=
write.html">DMESG-WARN</a> ([i915#12964]) +11 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> ([i915#3955])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_fbcon_fbt@psr.html">S=
KIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-10/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_fence_pin_leak.html">S=
KIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_flip@2x-blocking-abso=
lute-wf_vblank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-absolu=
te-wf_vblank-interruptible.html">SKIP</a> ([i915#9934]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> ([i915#9934]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> ([i915#9934]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144461v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html"=
>FAIL</a> ([i915#13027]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-=
edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144461v1/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check-interrup=
tible@b-edp1.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-vg=
a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144461v1/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptibl=
e@b-vga1.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i91=
5#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> ([i915#3555] / [i915#=
8810] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2587] / [i9=
15#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555]) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i91=
5#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP=
</a> ([i915#2672] / [i915#8813]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915=
#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915=
#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555] / [i915#8813]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#1849] / [i915#=
5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_144461v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-cur-indfb-move.html">FAIL</a> ([i915#6880]) +1 other test fail</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#1825]) +13 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +3 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([i915#3458]) +9 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#3458]) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +9 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +14 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +8 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1849] / [i915=
#5354]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +10 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> ([i915#3023]) +13 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#1825]) +12 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +15 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +20 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-11/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard-d=
g2-2/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_invalid_mode@bad-htota=
l.html">SKIP</a> ([i915#3555]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4461v1/shard-dg2-3/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> ([i=
915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_panel_fitting@legacy.=
html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_plane@pixel-format.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard=
-rkl-8/igt@kms_plane@pixel-format.html">SKIP</a> ([i915#8825]) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1444=
61v1/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> ([i915=
#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-5-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247] / [i9=
15#8152]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-modifiers.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#942=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-a.html">SKIP</a> ([i915#12247]) +7 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247]) +4=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-unity-scaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#815=
2]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-a:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-unity-scaling@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@p=
lanes-downscale-factor-0-75-unity-scaling@pipe-a.html">SKIP</a> ([i915#1224=
7]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144461v1/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-20x20.html">SKI=
P</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#9423])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#355=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i9=
15#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-5@pipe-c.html">SKIP</a> ([i915#12247=
]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-75.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_plane_scaling@pl=
anes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#12247]=
 / [i915#3555] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/=
shard-rkl-8/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([i915#13441])</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-3/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> ([i915#12913])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#3828])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_pm_rpm@cursor-dpms.ht=
ml">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html"=
>SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14446=
1v1/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9=
519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-11/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/sh=
ard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_pm_rpm@pm-tiling.html"=
>SKIP</a> ([i915#4077]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-rkl-1/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
461v1/shard-rkl-8/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-sf.html">SKIP</a> ([i915#12316]) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-7/igt@kms_psr2_sf@pr-overlay-pla=
ne-update-continuous-sf.html">SKIP</a> ([i915#11520]) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-pl=
ane-update-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-8/igt@kms_psr@fbc-pr-cursor-plan=
e-onoff.html">SKIP</a> ([i915#1072] / [i915#9732]) +15 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-pla=
ne-onoff.html">SKIP</a> ([i915#1072] / [i915#9732]) +10 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_psr@fbc-pr-primary-bl=
t.html">SKIP</a> ([i915#9688]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_psr@fbc-pr-primary-mma=
p-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-8/igt@kms_psr@fbc-pr-sprite-blt.=
html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-9/igt@kms_psr@fbc-psr2-sprite-r=
ender.html">SKIP</a> ([i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_psr@psr2-cursor-blt.h=
tml">SKIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_rotation_crc@bad-pixel=
-format.html">SKIP</a> ([i915#12755]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-1/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_setmode@invalid-clone=
-single-crtc.html">SKIP</a> ([i915#3555] / [i915#8809])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16084/shard-dg2-10/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144461v1/shard=
-dg2-3/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#160])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-tglu-1/igt@kms_vrr@max-min.html">SKI=
P</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-rkl-1/igt@kms_vrr@seamless-rr-switch=
-drrs.html">SKIP</a> ([i915#9906])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-1/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg1-12/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-dg2-9/igt@perf@global-sseu-config.ht=
ml">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144461v1/shard-mtlp-5/igt@perf@global-sseu-config-i=
nvalid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0">FAI=
L</a> ([i915#12549] / [i915#6806]) +1 other test fail</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6678174764247006199==--
