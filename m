Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B833F8300F5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 09:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5583C10E030;
	Wed, 17 Jan 2024 08:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E2E10E030;
 Wed, 17 Jan 2024 08:02:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3354738053781256709=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915=3A_Cursor_vblank_e?=
 =?utf-8?q?vasion_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 17 Jan 2024 08:02:26 -0000
Message-ID: <170547854646.519920.15688172788191792164@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

--===============3354738053781256709==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Cursor vblank evasion (rev2)
URL   : https://patchwork.freedesktop.org/series/127744/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14100_full -> Patchwork_127744v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/index.html

Participating hosts (9 -> 9)
------------------------------

  Additional (1): shard-snb-0 
  Missing    (1): pig-kbl-iris 

Known issues
------------

  Here are the changes found in Patchwork_127744v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41]) ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk1/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk1/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][42], [PASS][43], [PASS][44], [PASS][45], [FAIL][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64]) ([i915#8293]) -> ([PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-3/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-3/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-5/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-5/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-5/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-6/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-6/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#8411])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#6230])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@api_intel_bb@crc32.html

  * igt@core_getversion:
    - shard-dg2:          [PASS][90] -> [FAIL][91] ([i915#9950])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@core_getversion.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@core_getversion.html

  * igt@core_hotunplug@unbind-rebind:
    - shard-dg2:          [PASS][92] -> [SKIP][93] ([i915#10076])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@core_hotunplug@unbind-rebind.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@core_hotunplug@unbind-rebind.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#7701])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@device_reset@cold-reset-bound.html
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#7701])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#8414]) +5 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          NOTRUN -> [FAIL][97] ([i915#7742])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][98] -> [SKIP][99] ([i915#2582]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@fbdev@nullptr.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@fbdev@nullptr.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3281]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#7697]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#9310])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_compute@compute-square.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][103] -> [FAIL][104] ([i915#6268])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#8555])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#280])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_ctx_sseu@engines.html
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#280])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#280]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][109] -> [ABORT][110] ([i915#7975] / [i915#8213] / [i915#8398])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-8/igt@gem_eio@hibernate.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#6334])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#6344])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@capture@vcs1-smem:
    - shard-mtlp:         [PASS][113] -> [DMESG-WARN][114] ([i915#5591])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-5/igt@gem_exec_capture@capture@vcs1-smem.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_capture@capture@vcs1-smem.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-glk:          NOTRUN -> [FAIL][115] ([i915#9606])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [PASS][116] -> [FAIL][117] ([i915#2842]) +1 other test fail
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#4473])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][119] ([i915#2842]) +2 other tests fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][120] -> [FAIL][121] ([i915#2842])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([fdo#112283]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3281]) +5 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3281]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3281]) +4 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#4537] / [i915#4812])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#4812])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][128] -> [INCOMPLETE][129] ([i915#9275])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4860])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_fence_thrash@bo-copy.html
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4860])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#4860])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#2190])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-dg2:          [PASS][134] -> [SKIP][135] ([i915#9643])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_lmem_evict@dontneed-evict-race.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@basic:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#4613]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#9643]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#4613]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#284])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_media_vme.html

  * igt@gem_mmap@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#4083]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#4077]) +2 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_mmap_gtt@medium-copy-odd.html
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4077])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#4083])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3282]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pread@snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#3282])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_pread@snoop.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4270]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#4270]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#4270]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_readwrite@new-obj:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#3282]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_readwrite@new-obj.html
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3282]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#2575] / [i915#5190])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#8428])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_render_copy@yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#8411])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3297])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#3297] / [i915#4958])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#3297]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_vm_create@execbuf:
    - shard-dg2:          [PASS][157] -> [SKIP][158] ([i915#2575]) +199 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_vm_create@execbuf.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_vm_create@execbuf.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([fdo#109289]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#2856])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2856])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gen9_exec_parse@shadow-peek.html
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#2527]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2527])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#4881])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload:
    - shard-dg2:          [PASS][165] -> [FAIL][166] ([i915#10111])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@i915_module_load@reload.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@i915_module_load@reload.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][167] -> [ABORT][168] ([i915#9697] / [i915#9820])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         NOTRUN -> [INCOMPLETE][169] ([i915#9200])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-dg2:          [PASS][170] -> [SKIP][171] ([i915#9980]) +7 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@i915_pm_rpm@gem-idle.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_pm_rps@thresholds-idle@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#8925])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-7/igt@i915_pm_rps@thresholds-idle@gt0.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][173] ([i915#9311])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [PASS][174] -> [WARN][175] ([i915#10099])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@i915_suspend@basic-s3-without-i915.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#4212])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8709]) +11 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][178] ([i915#8247]) +3 other tests fail
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([fdo#112022] / [i915#2575])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#5286]) +2 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#4538] / [i915#5286]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([fdo#111614]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#3638]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([fdo#111614]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#5190])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([fdo#111615]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#4538]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#4538] / [i915#5190])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([fdo#110723]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#2705])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-mc-ccs:
    - shard-dg2:          [PASS][192] -> [SKIP][193] ([fdo#109315]) +51 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-mc-ccs.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#5354] / [i915#6095]) +7 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf-tiled-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#5354] / [i915#6095]) +23 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_ccs@pipe-a-random-ccs-data-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#5354] / [i915#6095]) +10 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#5354]) +13 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf-tiled-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#5354] / [i915#6095])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf-tiled-ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#5354]) +11 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#3742])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([fdo#111827])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([fdo#111827])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_chamelium_color@ctm-max.html
    - shard-dg1:          NOTRUN -> [SKIP][203] ([fdo#111827])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#7828]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#7828])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#7828]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#7828]) +2 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3116])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#3116] / [i915#3299])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#7118])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#7118])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-5/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#6944])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#8814])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3555]) +4 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#3359]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#4103] / [i915#4213])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#4103] / [i915#4213])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][218] ([fdo#109274] / [i915#5354])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#9809]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-snb:          [PASS][220] -> [SKIP][221] ([fdo#109271] / [fdo#111767])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][222] ([i915#2346])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][223] -> [DMESG-WARN][224] ([i915#1982])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-1/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3804])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#8812])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_draw_crc@draw-method-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#8812])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#4854])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#1839])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_feature_discovery@display-2x.html
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#1839])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#1839])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#8381])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([fdo#109274]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3637])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([fdo#111825] / [i915#9934]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([fdo#111825]) +2 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([fdo#109315]) +40 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#2587] / [i915#2672])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([fdo#109315] / [i915#5190]) +8 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#2672])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#2672])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#2672])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([fdo#111825] / [i915#1825]) +17 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([fdo#111825]) +16 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
    - shard-snb:          [PASS][245] -> [SKIP][246] ([fdo#109271]) +6 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [PASS][247] -> [FAIL][248] ([i915#6880])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#3458]) +9 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#8708]) +5 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3023]) +10 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#8708]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#8708]) +2 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([fdo#110189])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#3458])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][256] ([i915#1825]) +5 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#3555] / [i915#8228])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3555] / [i915#8228])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#4816])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([fdo#109289])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
    - shard-dg1:          NOTRUN -> [SKIP][261] ([fdo#109289])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][262] ([i915#7862]) +1 other test fail
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][263] ([i915#8292])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][264] ([fdo#109271]) +230 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#9423]) +5 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#9423]) +11 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#5176] / [i915#9423]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#5235]) +11 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#5235]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#2575] / [i915#9423]) +13 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#5235] / [i915#9423]) +11 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#5235]) +3 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#9980]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][274] -> [SKIP][275] ([i915#9519]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg1:          NOTRUN -> [SKIP][276] ([fdo#109293] / [fdo#109506])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#9683])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][278] ([fdo#111068] / [i915#9683]) +1 other test skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#3555]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-snb:          NOTRUN -> [SKIP][280] ([fdo#109271])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#3555] / [i915#8809])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#3555]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#3555]) +2 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#2437])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][285] ([fdo#109271] / [i915#2437])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@low-oa-exponent-permissions:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#5608]) +17 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@perf@low-oa-exponent-permissions.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][287] ([fdo#109289]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@invalid-init:
    - shard-dg2:          [PASS][288] -> [SKIP][289] ([i915#5608]) +10 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@perf_pmu@invalid-init.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#8516])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#2575]) +5 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#2575]) +3 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_cl@multi-and-single-sync:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([fdo#109315]) +6 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@v3d/v3d_submit_cl@multi-and-single-sync.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#2575]) +173 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
    - shard-dg1:          NOTRUN -> [SKIP][295] ([i915#7711]) +4 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#7711]) +2 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#7711]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#7711]) +1 other test skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [FAIL][299] ([i915#7742]) -> [PASS][300] +1 other test pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][301] ([i915#5784]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-19/igt@gem_eio@unwedge-stress.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-17/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [FAIL][303] ([i915#2842]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@gem_exec_fair@basic-none@vecs0.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][305] ([i915#2842]) -> [PASS][306] +1 other test pass
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][307] ([i915#9849]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [INCOMPLETE][309] ([i915#9200] / [i915#9849]) -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [INCOMPLETE][311] ([i915#9849]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][313] ([i915#3591]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][315] ([i915#10031]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][317] ([i915#3743]) -> [PASS][318] +3 other tests pass
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [DMESG-WARN][319] ([i915#10007]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [SKIP][321] ([fdo#109271]) -> [PASS][322] +16 other tests pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][323] ([i915#9295]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][325] ([IGT#2]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_sysfs_edid_timing.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-snb:          [FAIL][327] ([i915#9196]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          [SKIP][329] ([i915#8411]) -> [SKIP][330] ([i915#2575])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@api_intel_bb@blit-reloc-purge-cache.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          [SKIP][331] ([i915#8414]) -> [SKIP][332] ([i915#5608]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          [SKIP][333] ([fdo#109314]) -> [SKIP][334] ([i915#2575])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@gem_ctx_param@set-priority-not-supported.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          [SKIP][335] ([i915#8555]) -> [SKIP][336] ([i915#2575]) +3 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          [SKIP][337] ([i915#4771]) -> [SKIP][338] ([i915#2575])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          [SKIP][339] ([i915#4812]) -> [SKIP][340] ([i915#2575]) +4 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_balancer@bonded-false-hang.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          [FAIL][341] ([i915#9606]) -> [SKIP][342] ([i915#2575])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_capture@many-4k-incremental.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          [SKIP][343] ([i915#3539] / [i915#4852]) -> [SKIP][344] ([i915#2575]) +3 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@gem_exec_fair@basic-none-share.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          [SKIP][345] ([i915#3539]) -> [SKIP][346] ([i915#2575]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_fair@basic-sync.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          [SKIP][347] ([fdo#109283] / [i915#5107]) -> [SKIP][348] ([fdo#109283] / [i915#2575])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_params@rsvd2-dirt.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          [SKIP][349] ([i915#3281]) -> [SKIP][350] ([i915#2575]) +12 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          [SKIP][351] ([i915#4537] / [i915#4812]) -> [SKIP][352] ([i915#2575]) +1 other test skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          [SKIP][353] ([i915#4860]) -> [SKIP][354] ([i915#2575])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_fenced_exec_thrash@2-spare-fences.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          [SKIP][355] ([i915#8289]) -> [SKIP][356] ([i915#2575])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_media_fill@media-fill.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-dg2:          [SKIP][357] ([i915#284]) -> [SKIP][358] ([i915#2575])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_media_vme.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_media_vme.html

  * igt@gem_mmap@basic:
    - shard-dg2:          [SKIP][359] ([i915#4083]) -> [SKIP][360] ([i915#2575]) +6 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_mmap@basic.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-dg1:          [SKIP][361] ([i915#4077]) -> [SKIP][362] ([i915#4077] / [i915#4423])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@gem_mmap_gtt@basic-write-read-distinct.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-dg2:          [SKIP][363] ([i915#4077]) -> [SKIP][364] ([i915#2575]) +15 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_mmap_gtt@big-copy-odd.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          [SKIP][365] ([i915#3282]) -> [SKIP][366] ([i915#2575]) +7 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_partial_pwrite_pread@write-uncached.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          [WARN][367] ([i915#2658]) -> [INCOMPLETE][368] ([i915#10042])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk8/igt@gem_pread@exhaustion.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk7/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg2:          [SKIP][369] ([i915#4270]) -> [SKIP][370] ([i915#2575]) +2 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-2.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-dg2:          [SKIP][371] ([i915#5190]) -> [SKIP][372] ([i915#2575] / [i915#5190]) +9 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_render_copy@y-tiled-ccs-to-linear.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          [SKIP][373] ([i915#4079]) -> [SKIP][374] ([i915#2575])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_tiled_pread_basic.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_tiled_pread_basic.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          [SKIP][375] ([i915#4879]) -> [SKIP][376] ([i915#2575])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@gem_unfence_active_buffers.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          [SKIP][377] ([i915#3297]) -> [SKIP][378] ([i915#2575]) +2 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          [SKIP][379] ([i915#3297] / [i915#4880]) -> [SKIP][380] ([i915#2575])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          [SKIP][381] ([i915#3297] / [i915#4958]) -> [SKIP][382] ([i915#2575])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          [SKIP][383] ([fdo#109289]) -> [SKIP][384] ([i915#2575]) +6 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          [SKIP][385] ([i915#2856]) -> [SKIP][386] ([i915#2575]) +4 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gen9_exec_parse@bb-start-param.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_fb_tiling:
    - shard-dg2:          [SKIP][387] ([i915#4881]) -> [SKIP][388] ([i915#2575])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@i915_fb_tiling.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@i915_fb_tiling.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          [SKIP][389] ([i915#4387]) -> [SKIP][390] ([i915#2575])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@i915_pm_sseu@full-enable.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          [SKIP][391] ([i915#4212]) -> [SKIP][392] ([i915#2575]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@kms_addfb_basic@clobberred-modifier.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][393] ([fdo#111614]) -> [SKIP][394] ([fdo#109315]) +5 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][395] ([i915#5190]) -> [SKIP][396] ([fdo#109315] / [i915#5190]) +7 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][397] ([i915#4538] / [i915#5190]) -> [SKIP][398] ([fdo#109315] / [i915#5190]) +7 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          [SKIP][399] ([i915#2705]) -> [SKIP][400] ([fdo#109315])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_big_joiner@basic.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-dg1:          [SKIP][401] ([i915#5354] / [i915#6095]) -> [SKIP][402] ([i915#4423] / [i915#5354] / [i915#6095]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-dg2:          [SKIP][403] ([fdo#111827]) -> [SKIP][404] ([i915#2575]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_chamelium_color@ctm-limited-range.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          [SKIP][405] ([i915#7828]) -> [SKIP][406] ([i915#2575]) +15 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][407] ([i915#9424]) -> [SKIP][408] ([i915#2575])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_content_protection@mei-interface.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          [SKIP][409] ([i915#9433]) -> [SKIP][410] ([i915#9424])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][411] ([i915#7118]) -> [SKIP][412] ([i915#2575])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_content_protection@srm.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][413] ([i915#3359]) -> [SKIP][414] ([i915#2575]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg1:          [SKIP][415] ([fdo#111825]) -> [SKIP][416] ([fdo#111825] / [i915#4423])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          [SKIP][417] ([fdo#109274] / [i915#5354]) -> [SKIP][418] ([i915#2575]) +4 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][419] ([i915#4103] / [i915#4213]) -> [SKIP][420] ([i915#2575])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][421] ([i915#9833]) -> [SKIP][422] ([fdo#109315])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [SKIP][423] ([i915#1257]) -> [SKIP][424] ([i915#2575])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_dp_aux_dev.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][425] ([i915#3555] / [i915#3840]) -> [SKIP][426] ([fdo#109315]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_dsc@dsc-basic.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_dsc@dsc-basic.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          [SKIP][427] ([i915#9337]) -> [SKIP][428] ([i915#2575])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          [SKIP][429] ([i915#8381]) -> [SKIP][430] ([i915#2575])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-dg2:          [SKIP][431] ([fdo#109274] / [fdo#111767]) -> [SKIP][432] ([i915#2575])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          [SKIP][433] ([fdo#109274]) -> [SKIP][434] ([i915#2575]) +4 other tests skip
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          [FAIL][435] ([i915#6880]) -> [SKIP][436] ([fdo#109315])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          [SKIP][437] ([i915#5354]) -> [SKIP][438] ([fdo#109315]) +109 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][439] ([i915#8708]) -> [SKIP][440] ([fdo#109315]) +28 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][441] ([i915#10055]) -> [SKIP][442] ([fdo#109315])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][443] ([i915#3458]) -> [SKIP][444] ([fdo#109315]) +29 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][445] ([i915#8708]) -> [SKIP][446] ([i915#4423] / [i915#8708])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-dg1:          [SKIP][447] ([i915#3458]) -> [SKIP][448] ([i915#3458] / [i915#4423]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][449] ([i915#3555] / [i915#8228]) -> [SKIP][450] ([i915#2575]) +3 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][451] ([i915#6301]) -> [SKIP][452] ([i915#2575])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_panel_fitting@legacy.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          [SKIP][453] ([i915#3555] / [i915#8821]) -> [SKIP][454] ([i915#2575])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@kms_plane_lowres@tiling-yf.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          [SKIP][455] ([i915#3555] / [i915#8806]) -> [SKIP][456] ([i915#2575])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_plane_multiple@tiling-yf.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          [SKIP][457] ([fdo#109274] / [i915#5354] / [i915#9423]) -> [SKIP][458] ([i915#2575] / [i915#9423])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          [SKIP][459] ([i915#9685]) -> [SKIP][460] ([fdo#109315])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][461] ([i915#4281]) -> [SKIP][462] ([i915#3361])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          [SKIP][463] ([i915#8430]) -> [SKIP][464] ([fdo#109315])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][465] ([i915#9519]) -> [SKIP][466] ([i915#9980])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg2:          [SKIP][467] ([fdo#109293] / [fdo#109506]) -> [SKIP][468] ([i915#9980]) +1 other test skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_pm_rpm@pc8-residency.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-dg2:          [SKIP][469] ([i915#4077]) -> [SKIP][470] ([i915#9980])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_pm_rpm@pm-tiling.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          [SKIP][471] ([i915#9683]) -> [SKIP][472] ([fdo#109315]) +6 other tests skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_psr2_su@page_flip-xrgb8888.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          [SKIP][473] ([i915#4235]) -> [SKIP][474] ([i915#2575]) +2 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          [SKIP][475] ([i915#8623]) -> [SKIP][476] ([i915#2575])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flipline:
    - shard-dg2:          [SKIP][477] ([i915#3555]) -> [SKIP][478] ([i915#2575]) +5 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-3/igt@kms_vrr@flipline.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg2:          [SKIP][479] ([i915#2437] / [i915#9412]) -> [SKIP][480] ([i915#2575])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][481] ([i915#9351]) -> [INCOMPLETE][482] ([i915#5493])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          [SKIP][483] ([i915#3708] / [i915#4077]) -> [SKIP][484] ([i915#2575]) +1 other test skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@prime_vgem@basic-gtt.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          [SKIP][485] ([i915#3291] / [i915#3708]) -> [SKIP][486] ([i915#2575]) +1 other test skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@prime_vgem@basic-write.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          [SKIP][487] ([i915#3708]) -> [SKIP][488] ([i915#2575])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@prime_vgem@fence-flip-hang.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@prime_vgem@fence-flip-hang.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-dg2:          [FAIL][489] ([i915#9781]) -> [SKIP][490] ([i915#2575])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@syncobj_timeline@invalid-wait-zero-handles.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@syncobj_timeline@invalid-wait-zero-handles.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10007]: https://gitlab.freedesktop.org/drm/intel/issues/10007
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#10042]: https://gitlab.freedesktop.org/drm/intel/issues/10042
  [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
  [i915#10076]: https://gitlab.freedesktop.org/drm/intel/issues/10076
  [i915#10099]: https://gitlab.freedesktop.org/drm/intel/issues/10099
  [i915#10111]: https://gitlab.freedesktop.org/drm/intel/issues/10111
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https:/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/index.html

--===============3354738053781256709==
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
<tr><td><b>Series:</b></td><td>drm/i915: Cursor vblank evasion (rev2)</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127744/">https://patchwork.freedesktop.org/series/127744/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127744v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14100_full -&gt; Patchwork_127744v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v=
2/index.html</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>Additional (1): shard-snb-0 <br />
  Missing    (1): pig-kbl-iris </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127744v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14100/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14100/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14100/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14100/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14100/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14100/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100=
/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14100/shard-glk3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk1/boot.h=
tml">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127744v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk9/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/s=
hard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127744v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27744v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127744v2/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk7/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127744v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127744v2/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127744v2/shard-glk1/boot.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk1/boot.html"=
>PASS</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14100/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14100/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14100/shard-rkl-6/boot.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-6/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_141=
00/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14100/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14100/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14100/shard-rkl-3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1410=
0/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shar=
d-rkl-1/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/=
shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127744v2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard=
-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127744v2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_127744v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-5/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v=
2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_127744v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-6/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127744v2/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/sha=
rd-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127744v2/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127744v2/shard-rkl-1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@core_getversion:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@core_getversion.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-1=
1/igt@core_getversion.html">FAIL</a> ([i915#9950])</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-10/igt@core_hotunplug@unbind-rebind.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v=
2/shard-dg2-11/igt@core_hotunplug@unbind-rebind.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/10076">i915#10076</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> ([i915#7701])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@drm_fdinfo@busy-hang@rcs0=
.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@drm_fdinfo@virtual-idle.ht=
ml">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/i=
gt@fbdev@nullptr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2582">i915#2582</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_bad_reloc@negative-re=
loc-lut.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_compute@compute-squar=
e.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12774=
4v2/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> ([i915#6=
268])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_ctx_sseu@engines.html=
">SKIP</a> ([i915#280])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-tglu-8/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tgl=
u-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213] / [i9=
15#8398])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk9/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / [i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vcs1-smem:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-mtlp-5/igt@gem_exec_capture@capture@vcs1-smem.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27744v2/shard-mtlp-5/igt@gem_exec_capture@capture@vcs1-smem.html">DMESG-WAR=
N</a> ([i915#5591])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@gem_exec_capture@many-4k-in=
cremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27744v2/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> ([i915#4473])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk9/igt@gem_exec_fair@basic-none@rc=
s0.html">FAIL</a> ([i915#2842]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([=
i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-r=
ead.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_reloc@basic-writ=
e-wc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_exec_reloc@basic-write=
-wc-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_exec_schedule@semapho=
re-power.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12774=
4v2/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i=
915#9275])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_fence_thrash@bo-copy.h=
tml">SKIP</a> ([i915#4860])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_lmem_evict@dontneed-evict-race.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-dg2-11/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (=
[i915#9643])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_lmem_swapping@basic.ht=
ml">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_lmem_swapping@paralle=
l-random-engines.html">SKIP</a> ([i915#9643]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk8/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_mmap@bad-offset.html"=
>SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_mmap_gtt@medium-copy-o=
dd.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_mmap_wc@write-read-di=
stinct.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads-snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_pread@snoop.html">SKI=
P</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_pxp@create-regular-con=
text-1.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_pxp@reject-modify-con=
text-protection-on.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gem_readwrite@new-obj.html=
">SKIP</a> ([i915#3282]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gem_readwrite@new-obj.htm=
l">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_render_copy@y-tiled-c=
cs-to-yf-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2575">i915#2575</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_render_copy@yf-tiled.=
html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@gem_userptr_blits@sd-prob=
e.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@execbuf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_vm_create@execbuf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-=
dg2-11/igt@gem_vm_create@execbuf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +199 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@gen7_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@gen9_exec_parse@bb-chaine=
d.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2856])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@i915_fb_tiling.html">SKIP=
</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@i915_module_load@reload.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shar=
d-dg2-11/igt@i915_module_load@reload.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/10111">i915#10111</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-rkl-3/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9697] / [i915#9820])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@i915_module_load@reload-w=
ith-fault-injection.html">INCOMPLETE</a> ([i915#9200])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@i915_pm_rpm@gem-idle.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-d=
g2-11/igt@i915_pm_rpm@gem-idle.html">SKIP</a> ([i915#9980]) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-7/igt@i915_pm_rps@thresholds-idl=
e@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10099">i915#1009=
9</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_async_flips@crc@pipe-=
d-edp-1.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-use-after-nonblocking-unbind-fencing.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D112022">fdo#112022</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_big_fb@4-tiled-64bpp-r=
otate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_big_fb@linear-8bpp-ro=
tate-270.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / [i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-270.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_ccs@pipe-a-bad-pixel-format-4-tiled-dg2-m=
c-ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg2-11/igt@kms_ccs@pipe-a-bad-pixel-format-4-t=
iled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109315">fdo#109315</a>) +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_ccs@pipe-a-crc-primary=
-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +7 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf-tiled-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_ccs@pipe-a-random-ccs=
-data-yf-tiled-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +23 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_ccs@pipe-c-bad-aux-st=
ride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +10=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-4-tiled-dg2-rc-ccs.html">SKIP</a> ([i915#5354]) +13 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf-tiled-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_ccs@pipe-c-crc-primar=
y-rotation-180-yf-tiled-ccs.html">SKIP</a> ([i915#5354] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_ccs@pipe-d-random-ccs-=
data-y-tiled-ccs.html">SKIP</a> ([i915#5354]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_cdclk@mode-transition=
.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_chamelium_color@ctm-ma=
x.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_chamelium_color@ctm-m=
ax.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.h=
tml">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-=
after-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd=
-with-enabled-mode.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_content_protection@leg=
acy.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-5/igt@kms_content_protection@lic=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-64x21.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_cursor_legacy@cursora-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> ([i915#9809]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-tran=
sitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v2/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipb-=
atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v2/shard-mtlp-1/igt@kms_cursor_legacy@single-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> ([i915#8812])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-modese=
t-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_flip@2x-flip-vs-panni=
ng.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a> / [i915#9934]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) +40 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2=
587</a> / <a href=3D"https:/">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a> / [i=
915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https:/">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https:/">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https:/">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +17 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +16 other tests ski=
p</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb=
-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v2/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p=
-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127744v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">FAIL<=
/a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3458]) +9 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3023]) +10 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +5 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_pipe_b_c_ivb@pipe-b-do=
uble-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk3/igt@kms_plane_alpha_blend@alpha=
-basic@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk8/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)=
 +230 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#9423=
]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">SKIP</a> ([i915#942=
3]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#=
5176] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html">SKIP</a> ([=
i915#5235]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> ([i915#5235]=
) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#9423]) +13 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-7/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> ([i=
915#5235] / [i915#9423]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-6/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i=
915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html=
">SKIP</a> ([i915#9980]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_pm_rpm@pc8-residency.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-4/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-18/igt@kms_psr2_sf@primary-plane=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#9683]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-tglu-7/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-snb2/igt@kms_setmode@basic-clone-sin=
gle-crtc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_setmode@invalid-clone=
-single-crtc.html">SKIP</a> ([i915#3555] / [i915#8809])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@kms_vrr@flip-dpms.html">SK=
IP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-glk9/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@low-oa-exponent-permissions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@perf@low-oa-exponent-perm=
issions.html">SKIP</a> ([i915#5608]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@perf@unprivileged-single-=
ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@perf_pmu@invalid-init.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-=
dg2-11/igt@perf_pmu@invalid-init.html">SKIP</a> ([i915#5608]) +10 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@v3d/v3d_perfmon@get-value=
s-invalid-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@bad-mul=
tisync-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multi-and-single-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@v3d/v3d_submit_cl@multi-an=
d-single-sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@v3d/v3d_submit_cl@simple-f=
lush-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +173 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@vc4/vc4_dmabuf_poll@poll-=
write-waits-until-write-done.html">SKIP</a> ([i915#7711]) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@vc4/vc4_perfmon@destroy-va=
lid-perfmon.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-rkl-1/igt@vc4/vc4_tiling@get-bad-han=
dle.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-mtlp-5/igt@vc4/vc4_wait_bo@used-bo-0=
ns.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> ([i915#77=
42]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-19/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915=
#5784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127744v2/shard-dg1-17/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-5/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-rkl-7/igt@gem_exec_fair@basic-none@vecs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> ([i915#9849]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-19/igt@i915_module_load@rel=
oad-with-fault-injection.html">PASS</a></li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-glk4/igt@i915_module_load@reload-with-fault-injection.h=
tml">INCOMPLETE</a> ([i915#9200] / [i915#9849]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-glk1/igt@i915_modul=
e_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> ([i915#9849]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-2/igt@i915_module_load@reloa=
d-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127744v2/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@=
gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10031">i91=
5#10031</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v2/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-tglu-5/igt@kms_big_fb=
@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +3 other =
tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-v=
ga1-hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/10007">i915#10007</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb1/igt@kms_flip@2x-flip-=
vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-snb7/igt@kms_frontbuffer_tr=
acking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +16 other tests=
 pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#929=
5]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
744v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2=
/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi=
-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127744v2/shard-snb2/igt@kms_universal_plane@curs=
or-fb-leak@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127744v2/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([=
i915#8414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127744v2/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> (=
[i915#5608]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@gem_ctx_param@set-priority-not-supported.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10931=
4">fdo#109314</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127744v2/shard-dg2-11/igt@gem_ctx_param@set-priority-not-suppor=
ted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html">S=
KIP</a> ([i915#8555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-host=
ile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> =
([i915#4771]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_127744v2/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2=
575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_exec_balancer@bonded-false-hang.html">SKI=
P</a> ([i915#4812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_exec_capture@many-4k-incremental.html">FA=
IL</a> ([i915#9606]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_capture@many-4k-incrementa=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@gem_exec_fair@basic-none-share.html">SKIP</a>=
 ([i915#3539] / [i915#4852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_fair@basic-none-sh=
are.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_exec_fair@basic-sync.html">SKIP</a> ([i91=
5#3539]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127744v2/shard-dg2-11/igt@gem_exec_fair@basic-sync.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109283">fdo#109283<=
/a> / [i915#5107]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109283">fdo=
#109283</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/25=
75">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SK=
IP</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-norelo=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts-chai=
n.html">SKIP</a> ([i915#4537] / [i915#4812]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_exec_sc=
hedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_fenced_exec_thrash@2-spare-fences.html">S=
KIP</a> ([i915#4860]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fen=
ces.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_media_fill@media-fill.html">SKIP</a> ([i9=
15#8289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127744v2/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)=
</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_media_vme.html">SKIP</a> ([i915#284]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/s=
hard-dg2-11/igt@gem_media_vme.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_mmap@basic.html">SKIP</a> ([i915#4083]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2=
/shard-dg2-11/igt@gem_mmap@basic.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +6 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-16/igt@gem_mmap_gtt@basic-write-read-distinct.html"=
>SKIP</a> ([i915#4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127744v2/shard-dg1-15/igt@gem_mmap_gtt@basic-write-read-di=
stinct.html">SKIP</a> ([i915#4077] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_mmap_gtt@big-copy-odd.html">SKIP</a> ([i9=
15#4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127744v2/shard-dg2-11/igt@gem_mmap_gtt@big-copy-odd.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)=
 +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_partial_pwrite_pread@write-uncached.html"=
>SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_partial_pwrite_pread@write-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-glk8/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/=
shard-glk7/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/10042">i915#10042</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-=
2.html">SKIP</a> ([i915#4270]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_pxp@reject-modify-con=
text-protection-off-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_render_copy@y-tiled-ccs-to-linear.html">S=
KIP</a> ([i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-lin=
ear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a> / [i915#5190]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_tiled_pread_basic.html">SKIP</a> ([i915#4=
079]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27744v2/shard-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@gem_unfence_active_buffers.html">SKIP</a> ([i=
915#4879]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v2/shard-dg2-11/igt@gem_unfence_active_buffers.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html"=
>SKIP</a> ([i915#3297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_userptr_blits@create-destroy=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overla=
p-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_us=
erptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i=
915#3297] / [i915#4958]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127744v2/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575=
">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
44v2/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 ([i915#2856]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-dg2-11/igt@gen9_exec_parse@bb-start-param.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915=
#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2=
/shard-dg2-11/igt@i915_fb_tiling.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-10/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i9=
15#4387]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_127744v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-10/igt@kms_addfb_basic@clobberred-modifier.html">SK=
IP</a> ([i915#4212]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v2/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">f=
do#109315</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow=
.html">SKIP</a> ([i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109315">fdo#109315</a> / [i915#5190]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SK=
IP</a> ([i915#4538] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-3=
2bpp-rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109315">fdo#109315</a> / [i915#5190]) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#27=
05]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-dg2-11/igt@kms_big_joiner@basic.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-16/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12=
-mc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_c=
cs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#4423] =
/ [i915#5354] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@kms_chamelium_color@ctm-limited-range.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827">=
fdo#111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127744v2/shard-dg2-11/igt@kms_chamelium_color@ctm-limited-range.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/25=
75">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-=
non-4k.html">SKIP</a> ([i915#7828]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_chamelium_edid@d=
p-edid-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2575">i915#2575</a>) +15 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_content_protection@mei-interface.html">SK=
IP</a> ([i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg2-11/igt@kms_content_protection@mei-interfac=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-12/igt@kms_content_protection@mei-interface.html">S=
KIP</a> ([i915#9433]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127744v2/shard-dg1-17/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_content_protection@srm.html">SKIP</a> ([i=
915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v2/shard-dg2-11/igt@kms_content_protection@srm.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> ([i915#3359]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-51=
2x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-16/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipa-=
atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111825">fdo#111825</a> / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
74">fdo#109274</a> / [i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_cursor_legacy@curs=
orb-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
44v2/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomi=
c-transitions-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 ([i915#9833]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-dg2-11/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo=
#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-d=
g2-11/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555]=
 / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127744v2/shard-dg2-11/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html">SKIP</a> =
([i915#9337]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_127744v2/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#25=
75</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html=
">SKIP</a> ([i915#8381]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-inte=
rruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274"=
>fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-rmfb-inte=
rruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo=
#109274</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i9=
15#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-fullscreen.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKI=
P</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09315">fdo#109315</a>) +109 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuf=
fer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) +28 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1005=
5">i915#10055</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tilin=
g-y.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_frontbuffer_=
tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109315</a>) +29 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur=
-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_fr=
ontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (=
[i915#4423] / [i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-=
pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127744v2/shard-dg1-15/igt@kms_frontbuffer_trac=
king@psr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458] / [i915#4423]) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_hdr@static-toggle-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i91=
5#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127744v2/shard-dg2-11/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-10/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([=
i915#3555] / [i915#8821]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_lowres@tiling-yf.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/257=
5">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
[i915#3555] / [i915#8806]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109274"=
>fdo#109274</a> / [i915#5354] / [i915#9423]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_plane_s=
caling@2x-scaler-multi-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#9685]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo=
#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1277=
44v2/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (=
[i915#8430]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127744v2/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo#109=
315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no=
-wait.html">SKIP</a> ([i915#9980])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109293">fdo#109293</a=
> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109506">fdo#1=
09506</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v2/shard-dg2-11/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> ([i91=
5#9980]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> ([i915#40=
77]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7744v2/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> ([i915#9980])</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a>=
 ([i915#9683]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127744v2/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109315">fdo=
#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0=
.html">SKIP</a> ([i915#4235]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern-with-cha=
melium.html">SKIP</a> ([i915#8623]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_tiled_display@ba=
sic-test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-3/igt@kms_vrr@flipline.html">SKIP</a> ([i915#3555])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744=
v2/shard-dg2-11/igt@kms_vrr@flipline.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +5 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@kms_writeback@writeback-check-output-xrgb2101=
010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a> / [i915#9412]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@kms_writeback@wri=
teback-check-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> ([i915#9351]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_127744v2/shard-dg2-6/igt@prime_mmap@test_=
aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> ([i915#5493])<=
/li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#37=
08] / [i915#4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127744v2/shard-dg2-11/igt@prime_vgem@basic-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-1/igt@prime_vgem@basic-write.html">SKIP</a> ([i915#=
3291] / [i915#3708]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127744v2/shard-dg2-11/igt@prime_vgem@basic-write.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2=
575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-7/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([i=
915#3708]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127744v2/shard-dg2-11/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a=
>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14100/shard-dg2-6/igt@syncobj_timeline@invalid-wait-zero-handles.ht=
ml">FAIL</a> ([i915#9781]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127744v2/shard-dg2-11/igt@syncobj_timeline@invalid-wait=
-zero-handles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============3354738053781256709==--
