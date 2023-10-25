Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3511E7D7623
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 22:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BB210E5EF;
	Wed, 25 Oct 2023 20:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CFBB10E5EA;
 Wed, 25 Oct 2023 20:58:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88D22A0093;
 Wed, 25 Oct 2023 20:58:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8542838229970441978=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 25 Oct 2023 20:58:06 -0000
Message-ID: <169826748653.20490.9752990743176642339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRHJv?=
 =?utf-8?q?p_some_unnecessary_patches?=
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

--===============8542838229970441978==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Drop some unnecessary patches
URL   : https://patchwork.freedesktop.org/series/125524/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13783_full -> Patchwork_125524v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125524v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125524v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-mtlp0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125524v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-rkl:          [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-mtlp:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-1/igt@gem_eio@in-flight-contexts-1us.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-rkl:          NOTRUN -> [SKIP][5] +5 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][7] ([i915#9408]) -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-12/igt@device_reset@unbind-reset-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][9] ([i915#2842]) -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][11] ([i915#3555]) -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_color@deep-color.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_color@deep-color.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@planar-pixel-format-settings}:
    - shard-rkl:          [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_plane@planar-pixel-format-settings.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html

  
Known issues
------------

  Here are the changes found in Patchwork_125524v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39]) -> ([PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [FAIL][64]) ([i915#8293])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl3/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#8411])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8411])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [PASS][67] -> [SKIP][68] ([i915#8411])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#7701])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#8414]) +20 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_read@empty-block:
    - shard-rkl:          [PASS][71] -> [SKIP][72] ([i915#1845] / [i915#4098]) +25 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@drm_read@empty-block.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@drm_read@empty-block.html

  * igt@fbdev@info:
    - shard-rkl:          [PASS][73] -> [SKIP][74] ([i915#1849] / [i915#2582])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@fbdev@info.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@fbdev@info.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#7697]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][76] -> [FAIL][77] ([i915#6268])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([fdo#109314])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#8555]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#280])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][81] ([i915#7975] / [i915#8213])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_eio@hibernate.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [PASS][82] -> [FAIL][83] ([i915#5784])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-19/igt@gem_eio@unwedge-stress.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg1-15/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4812])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][85] ([i915#2842])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][86] -> [FAIL][87] ([i915#2842])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][88] ([i915#2842])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3539] / [i915#4852]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3539]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([fdo#112283])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#3281]) +16 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [PASS][93] -> [SKIP][94] ([i915#3281]) +7 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-scanout@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3639]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3281]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4537] / [i915#4812])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4860]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#4613])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#8289])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#284])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4077]) +12 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4083]) +6 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          [PASS][104] -> [SKIP][105] ([i915#1850])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [PASS][106] -> [SKIP][107] ([i915#3282]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#4270])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4270]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#4270])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_readwrite@read-write:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#3282]) +4 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@gem_readwrite@read-write.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4079]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3282])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4885])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3297]) +3 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3297] / [i915#4880])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3297] / [i915#4958])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][118] ([i915#3318])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-dg2:          NOTRUN -> [FAIL][119] ([fdo#103375])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-mtlp:         [PASS][120] -> [ABORT][121] ([i915#9414]) +1 other test abort
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-8/igt@gem_workarounds@suspend-resume-context.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-4/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([fdo#109289]) +8 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#2527])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2856]) +3 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4881])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#6227])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@i915_module_load@load.html
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#6227])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][128] -> [ABORT][129] ([i915#8489] / [i915#8668])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#7091])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271]) +77 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk5/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][132] -> [INCOMPLETE][133] ([i915#9407])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#6621])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#8925])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#6245])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][137] ([i915#9311])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk5/igt@i915_selftest@mock@memory_region.html
    - shard-dg2:          NOTRUN -> [DMESG-WARN][138] ([i915#9311])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4212])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#6228])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_interruptible@atomic-setmode:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#1845] / [i915#4098]) +10 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([fdo#111614]) +7 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][143] -> [FAIL][144] ([i915#5138])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#5286]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([fdo#111615] / [i915#5286])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([fdo#111614])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][148] -> [FAIL][149] ([i915#3743])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#5190]) +20 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][151] ([fdo#111615])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#4538] / [i915#5190]) +7 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([fdo#110723])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#2705])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#2705])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#3742])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#4087] / [i915#7213]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4087]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#7828]) +14 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#7828]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#7828])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3555]) +4 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_color@deep-color.html

  * igt@kms_color@legacy-gamma-reset@pipe-b:
    - shard-rkl:          [PASS][163] -> [SKIP][164] ([i915#4098]) +5 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_color@legacy-gamma-reset@pipe-b.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][165] ([i915#7173])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#3116] / [i915#3299])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3299]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#7118])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#7118])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3359]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#4103] / [i915#4213] / [i915#5608])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-apl:          [PASS][174] -> [FAIL][175] ([i915#2346])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][176] -> [DMESG-WARN][177] ([i915#2017])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9227])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9226] / [i915#9261]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#8812])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#3840])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3840])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([fdo#109274] / [fdo#111767]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([fdo#109274]) +9 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
    - shard-tglu:         NOTRUN -> [SKIP][185] ([fdo#109274] / [i915#3637]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([fdo#111825])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][187] ([fdo#109271]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-snb6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][188] -> [FAIL][189] ([i915#79])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3637] / [i915#4098]) +6 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_flip@flip-vs-rmfb-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3555]) +11 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#2672]) +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#2672]) +6 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([fdo#109285])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [PASS][195] -> [SKIP][196] ([i915#1849] / [i915#4098]) +16 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [FAIL][197] ([i915#6880])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#5354]) +37 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#8708]) +28 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([fdo#110189]) +4 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([fdo#111825] / [i915#1825]) +6 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([fdo#109280]) +7 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#3023]) +4 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#3458]) +26 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3555] / [i915#8228]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3555] / [i915#8228])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([fdo#109289]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [PASS][208] -> [INCOMPLETE][209] ([i915#9392])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][210] ([i915#8292])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3555] / [i915#4098] / [i915#8152])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#5176] / [i915#9423]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#5235]) +5 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#8152])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#5235]) +15 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#5235]) +15 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-rkl:          [PASS][219] -> [SKIP][220] ([i915#1849])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([fdo#111068] / [i915#658])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][222] ([i915#658])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-glk:          NOTRUN -> [SKIP][223] ([fdo#109271] / [i915#658]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#658]) +6 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_dpms:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#1072]) +8 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_psr@psr2_dpms.html

  * igt@kms_psr@sprite_blt:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#1072])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#5289])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#4235] / [i915#5190])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#3555] / [i915#4098]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3555] / [i915#4098]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#8623])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [PASS][232] -> [FAIL][233] ([i915#9196]) +1 other test fail
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:
    - shard-snb:          [PASS][234] -> [FAIL][235] ([i915#9196])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html

  * igt@kms_vblank@wait-forked-busy-hang:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#4098]) +23 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_vblank@wait-forked-busy-hang.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([fdo#109289])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#2436])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][239] -> [FAIL][240] ([i915#4349])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-1/igt@perf_pmu@busy-double-start@bcs0.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][241] ([i915#6806])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [PASS][242] -> [SKIP][243] ([fdo#109295] / [i915#3291] / [i915#3708])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@prime_vgem@basic-read.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([fdo#109295] / [i915#3708])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3708]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@prime_vgem@fence-read-hang.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([fdo#109315]) +2 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@create-single-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][247] ([fdo#109315] / [i915#2575])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@v3d/v3d_perfmon@create-single-perfmon.html

  * igt@v3d/v3d_submit_cl@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#2575]) +17 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@v3d/v3d_submit_cl@bad-bo.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#2575]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_wait_bo@unused-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#7711]) +10 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@vc4/vc4_wait_bo@unused-bo-1ns.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#7711]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][252] ([i915#7742]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@eof:
    - shard-rkl:          [SKIP][254] ([i915#2582]) -> [PASS][255] +1 other test pass
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@fbdev@eof.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@fbdev@eof.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][256] ([i915#2842]) -> [PASS][257] +1 other test pass
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          [SKIP][258] ([fdo#109313]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][260] ([i915#3281]) -> [PASS][261] +8 other tests pass
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-tglu:         [INCOMPLETE][262] ([i915#6755] / [i915#7392]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-3/igt@gem_exec_whisper@basic-fds-priority-all.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][264] ([i915#5493]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          [SKIP][266] ([fdo#111656]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_mmap_gtt@coherency.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          [SKIP][268] ([i915#3282]) -> [PASS][269] +7 other tests pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][270] ([i915#2527]) -> [PASS][271] +3 other tests pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][272] ([i915#3743]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc}:
    - shard-rkl:          [SKIP][274] ([i915#4098]) -> [PASS][275] +6 other tests pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][276] ([i915#1845] / [i915#4098]) -> [PASS][277] +14 other tests pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][278] ([i915#2346]) -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          [FAIL][280] ([i915#2346]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [SKIP][282] ([i915#1849] / [i915#4098]) -> [PASS][283] +6 other tests pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * {igt@kms_pm_dc@dc9-dpms}:
    - shard-tglu:         [SKIP][284] ([i915#4281]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-dg2:          [SKIP][286] ([i915#9519]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg2-3/igt@kms_pm_rpm@dpms-lpsp.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html

  * {igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:
    - shard-dg1:          [SKIP][288] ([i915#9519]) -> [PASS][289] +1 other test pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-19/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * {igt@kms_pm_rpm@modeset-non-lpsp}:
    - shard-rkl:          [SKIP][290] ([i915#9519]) -> [PASS][291] +2 other tests pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [FAIL][292] ([i915#9196]) -> [PASS][293]
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [SKIP][294] ([fdo#109289]) -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf_pmu@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][296] ([i915#4349]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@perf_pmu@most-busy-check-all@rcs0.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-2/igt@perf_pmu@most-busy-check-all@rcs0.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][298] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][300] ([i915#3555]) -> [SKIP][301] ([i915#7957])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          [SKIP][302] ([i915#7957]) -> [SKIP][303] ([i915#3555])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][304] ([i915#4098] / [i915#9323]) -> [SKIP][305] ([i915#7957])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [DMESG-WARN][306] ([i915#4936] / [i915#5493]) -> [TIMEOUT][307] ([i915#5493])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [SKIP][308] ([i915#5286]) -> [SKIP][309] ([i915#4098]) +6 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][310] ([i915#4098]) -> [SKIP][311] ([i915#5286]) +4 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][312] ([i915#1845] / [i915#4098]) -> [SKIP][313] ([fdo#111614] / [i915#3638]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          [SKIP][314] ([fdo#111614] / [i915#3638]) -> [SKIP][315] ([i915#1845] / [i915#4098]) +5 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][316] ([i915#1845] / [i915#4098]) -> [SKIP][317] ([fdo#110723]) +2 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          [SKIP][318] ([i915#1845] / [i915#4098]) -> [SKIP][319] ([fdo#111615])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          [SKIP][320] ([fdo#110723]) -> [SKIP][321] ([i915#1845] / [i915#4098]) +5 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][322] ([i915#1845] / [i915#4098]) -> [SKIP][323] ([i915#7118])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_content_protection@atomic.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][324] ([i915#1845] / [i915#4098]) -> [SKIP][325] ([i915#3116])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          [SKIP][326] ([i915#7118]) -> [SKIP][327] ([i915#1845] / [i915#4098])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_content_protection@lic.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][328] ([i915#3359]) -> [SKIP][329] ([i915#4098]) +2 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][330] ([i915#3555]) -> [SKIP][331] ([i915#4098]) +5 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][332] ([i915#1845] / [i915#4098]) -> [SKIP][333] ([fdo#111825]) +2 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][334] ([i915#4103]) -> [SKIP][335] ([i915#1845] / [i915#4098])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-rkl:          [SKIP][336] ([fdo#111825]) -> [SKIP][337] ([i915#1845] / [i915#4098]) +7 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][338] ([i915#1845] / [i915#4098]) -> [SKIP][339] ([i915#4103])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][340] ([i915#4098]) -> [SKIP][341] ([i915#3555] / [i915#3840])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][342] ([i915#3955]) -> [SKIP][343] ([fdo#110189] / [i915#3955])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][344] ([fdo#109285] / [i915#4098]) -> [SKIP][345] ([fdo#109285])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][346] ([i915#1849] / [i915#4098]) -> [SKIP][347] ([i915#3023]) +12 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][348] ([fdo#111825]) -> [SKIP][349] ([i915#1849] / [i915#4098])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][350] ([i915#1849] / [i915#4098]) -> [SKIP][351] ([fdo#111825])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][352] ([i915#3023]) -> [SKIP][353] ([i915#1849] / [i915#4098]) +29 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][354] ([i915#1849] / [i915#4098]) -> [SKIP][355] ([i915#5439])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][356] ([i915#1849] / [i915#4098]) -> [SKIP][357] ([fdo#111825] / [i915#1825]) +26 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][358] ([fdo#111825] / [i915#1825]) -> [SKIP][359] ([i915#1849] / [i915#4098]) +43 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][360] ([i915#3555] / [i915#8228]) -> [SKIP][361] ([i915#4098])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][362] ([i915#3555] / [i915#8228]) -> [SKIP][363] ([i915#1845] / [i915#4098]) +1 other test skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_hdr@static-swap.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_hdr@static-swap.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][364] ([i915#4816]) -> [SKIP][365] ([i915#4070] / [i915#4816])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][366] ([fdo#111615] / [i915#5289]) -> [SKIP][367] ([i915#1845] / [i915#4098]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519


Build changes
-------------

  * Linux: CI_DRM_13783 -> Patchwork_125524v1

  CI-20190529: 20190529
  CI_DRM_13783: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125524v1: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/index.html

--===============8542838229970441978==
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
<tr><td><b>Series:</b></td><td>Drop some unnecessary patches</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125524/">https://patchwork.freedesktop.org/series/125524/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125524v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13783_full -&gt; Patchwork_125524v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125524v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125524v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-mtlp0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125524v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125524v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-1/igt@gem_eio@in-flight-contexts-1us.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12552=
4v1/shard-mtlp-2/igt@gem_eio@in-flight-contexts-1us.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_cursor_crc@cursor-susp=
end@pipe-a-hdmi-a-3.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-12/igt@device_reset@unbind-reset-rebind.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9408"=
>i915#9408</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125524v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">A=
BORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25524v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/=
shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@planar-pixel-format-settings}:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_plane@planar-pixel-format-settings.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125524v1/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html">SKI=
P</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125524v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13783/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13783/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/sha=
rd-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13783/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13783/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783=
/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13783/shard-apl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-ap=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3783/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13783/shar=
d-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13783/shard-apl6/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125524v1/shard-apl3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125524v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/sh=
ard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125524v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5524v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125524v1/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125524v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125524v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5524v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125524v1/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125524v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/sh=
ard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125524v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl3/boot.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125524v1/shard-rkl-7/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#84=
11</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@drm_read@empty-block.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-r=
kl-5/igt@drm_read@empty-block.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +25 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@f=
bdev@info.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524=
v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-19/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shar=
d-dg1-15/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_exec_fair@basic-none-v=
ip@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-glk2/igt@gem_exec_fair@basic-pace-sol=
o@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-se=
t-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25524v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_reloc@basic-scano=
ut@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3639">i915#3639</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_exec_schedule@preempt-=
queue.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_fenced_exec_thrash@no-=
spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-glk5/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_media_fill@media-fill.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#28=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i9=
15#4083</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/=
shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1850">i915#1850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524=
v1/shard-rkl-7/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@gem_pxp@dmabuf-shared-prote=
cted-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@gem_readwrite@read-write.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
85">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@gem_workarounds@suspend-re=
sume.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-8/igt@gem_workarounds@suspend-resume-context.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125524v1/shard-mtlp-4/igt@gem_workarounds@suspend-resume-context.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9414">=
i915#9414</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@i915_fb_tiling.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915=
#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@i915_module_load@load.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227=
">i915#6227</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227"=
>i915#6227</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125524v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@i915_pipe_stress@stress-x=
rgb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-glk5/igt@i915_pm_freq_api@freq-reset=
-multiple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +77 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407">i915#94=
07</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/662=
1">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@i915_query@hwconfig_table.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-glk5/igt@i915_selftest@mock@memory_re=
gion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9311">i915#9311</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_atomic_interruptible@a=
tomic-setmode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4098">i915#4098</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_big_fb@4-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125524v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125524v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-=
hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +20 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +7 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7828">i915#7828</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_chamelium_hpd@hdmi-hp=
d-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_color@legacy-gamma-reset@pipe-b.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25524v1/shard-rkl-5/igt@kms_color@legacy-gamma-reset@pipe-b.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_content_protection@at=
omic@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_content_protection@lic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125524v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125524v1/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@=
psr-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning=
-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>) +9 other tests skip</p>
</li>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3637">i915#3637</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_flip@2x-nonexisting-fb=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-snb6/igt@kms_flip@2x-plain-flip-inte=
rruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125524v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_flip@flip-vs-rmfb-inte=
rruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +11 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +16 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +37 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8708">i915#8708</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_pipe_b_c_ivb@pipe-b-d=
pms-off-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125524v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9392">i915#9392</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg1-15/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_properties@plane-properties-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125524v1/shard-rkl-5/igt@kms_properties@plane-properties-legacy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-u=
pdate-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@kms_psr2_sf@overlay-plane=
-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-glk2/igt@kms_psr2_su@frontbuffer-xrgb=
8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@kms_psr2_su@frontbuffer-xrg=
b8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/658">i915#658</a>) +6 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_psr@psr2_dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_psr@sprite_blt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-2/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125524v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125524v1/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b=
-vga-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_vblank@wait-forked-bus=
y-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@perf@gen12-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-5/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-1/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1255=
24v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-=
rkl-7/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@v3d/v3d_get_param@base-par=
ams.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-single-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@v3d/v3d_perfmon@create-si=
ngle-perfmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-6/igt@v3d/v3d_submit_cl@bad-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
575">i915#2575</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@vc4/vc4_purgeable_bo@acce=
ss-purgeable-bo-mem.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@unused-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-dg2-11/igt@vc4/vc4_wait_bo@unused-bo=
-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seq=
no-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742=
">i915#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125524v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@fbdev@eof.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1=
/igt@fbdev@eof.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125524v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 o=
ther test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109313">fdo#109313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel=
-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281"=
>i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125524v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.h=
tml">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-3/igt@gem_exec_whisper@basic-fds-priority-all.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6755">i915#6755</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7392">i915#7392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125524v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-=
priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i91=
5#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125524v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524=
v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-d=
isplay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writ=
es-after-reads-display.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +3 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125524v1/shard-tglu-3/igt@kms_big_fb@x-tiled=
-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs-cc}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12=
-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-=
format-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic.html">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125524v1/shard-apl2/igt@kms_cursor_legacy@f=
lip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13783/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125524v1/shard-glk2/igt@kms_cursor_legacy@f=
lip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracki=
ng@fbc-rgb101010-draw-mmap-gtt.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc9-dpms}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/=
shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg2-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/=
shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-19/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i9=
15#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125524v1/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +2 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125524v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125524v1/shard-rkl-7/igt@perf@gen12-group-exclusive-stream-=
ctx-handle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@perf_pmu@most-busy-check-all@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#=
4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125524v1/shard-rkl-2/igt@perf_pmu@most-busy-check-all@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#1=
11656</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708=
">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125524v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25524v1/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1=
/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9323">i9=
15#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125524v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#79=
57</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125524v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_big_fb@4-til=
ed-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +6 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125524v1/shard-rkl-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1116=
14">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fd=
o#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125524v1/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125524v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
0723">fdo#110723</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflo=
w.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-si=
ze-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D110723">fdo#110723</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_big_fb@yf-til=
ed-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125524v1/shard-rkl-1/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845=
">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-=
type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_content_protection@lic.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1255=
24v1/shard-rkl-5/igt@kms_content_protection@lic.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359">i9=
15#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125524v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125524v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
45">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cur=
sor-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_cursor_legacy@ba=
sic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-si=
ze.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-f=
lipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4098">i915#4098</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-toggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_cursor_legacy@sh=
ort-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125524v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#=
3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shar=
d-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125524v1/shard-rkl-7/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_=
tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +12 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tra=
cking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer=
_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +29 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849=
">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-ti=
ling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-1/igt@kms_frontbu=
ffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#182=
5</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_frontbuffer=
_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +43 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_hdr@static-swap.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
524v1/shard-rkl-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125524v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pi=
pe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13783/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-1=
80.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125524v1/shard-rkl-5/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13783 -&gt; Patchwork_125524v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13783: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125524v1: effc8753aee06b5bd8f6f93dcdee9bb759efc8e7 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8542838229970441978==--
