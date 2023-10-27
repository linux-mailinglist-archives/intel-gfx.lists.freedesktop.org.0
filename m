Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B6D7D9376
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 11:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7798F10E95E;
	Fri, 27 Oct 2023 09:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9724D10E95A;
 Fri, 27 Oct 2023 09:21:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F0DDAADE1;
 Fri, 27 Oct 2023 09:21:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4400551671241669992=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Soumya Negi" <soumya.negi97@gmail.com>
Date: Fri, 27 Oct 2023 09:21:31 -0000
Message-ID: <169839849155.19709.2336985049596796263@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231026044309.17213-1-soumya.negi97@gmail.com>
In-Reply-To: <20231026044309.17213-1-soumya.negi97@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Remove_=7B=7D_from_if-else?=
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

--===============4400551671241669992==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Remove {} from if-else
URL   : https://patchwork.freedesktop.org/series/125614/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13787_full -> Patchwork_125614v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125614v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125614v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125614v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-dg1:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-dg1-12/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg1-15/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2:
    - shard-rkl:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-4/igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_125614v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54]) ([i915#8293])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#9318])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#7701])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8414]) +11 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#8414]) +6 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][59] -> [FAIL][60] ([i915#7742])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ccs@block-copy-uncompressed:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#7957])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_ccs@block-copy-uncompressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#9323])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][63] -> [INCOMPLETE][64] ([i915#7297])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#6335])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([fdo#109314])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#8555]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#8555])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#1099])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#280])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][71] ([i915#7975] / [i915#8213])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-external:
    - shard-mtlp:         [PASS][72] -> [ABORT][73] ([i915#9262])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-6/igt@gem_eio@in-flight-external.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-4/igt@gem_eio@in-flight-external.html

  * igt@gem_eio@in-flight-suspend:
    - shard-mtlp:         [PASS][74] -> [ABORT][75] ([i915#7892] / [i915#9262])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-2/igt@gem_eio@in-flight-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@hog:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4812])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#4525])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4473] / [i915#4771])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][79] -> [FAIL][80] ([i915#2842])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][81] ([i915#2842])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3539]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3539] / [i915#4852]) +2 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#5107])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_params@secure-non-root:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([fdo#112283])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3281]) +4 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [PASS][87] -> [SKIP][88] ([i915#3281]) +3 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3281]) +4 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3281]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4537] / [i915#4812])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4860]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#4613]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#4613]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#4613])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][97] -> [TIMEOUT][98] ([i915#5493])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3282]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#8289])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#284])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          [PASS][102] -> [SKIP][103] ([fdo#111656])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4077]) +4 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4077]) +10 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4083]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4083]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_pread@exhaustion:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3282]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-rkl:          [PASS][109] -> [SKIP][110] ([i915#3282]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@gem_pread@snoop.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu:         NOTRUN -> [WARN][111] ([i915#2658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#4270])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4270]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4270]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#4270]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3282]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-snb:          NOTRUN -> [SKIP][117] ([fdo#109271]) +76 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#8428]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#5190]) +8 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#4079])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#109312])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3297]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3297]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3297])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_workarounds@reset-fd:
    - shard-mtlp:         [PASS][125] -> [ABORT][126] ([i915#9414])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-8/igt@gem_workarounds@reset-fd.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-4/igt@gem_workarounds@reset-fd.html

  * igt@gen3_render_mixed_blits:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109289])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#2527]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2527] / [i915#2856]) +3 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#2856]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#2856])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-rkl:          [PASS][132] -> [SKIP][133] ([i915#2527])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@load:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#6227])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl3/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#8399])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [PASS][136] -> [FAIL][137] ([i915#3591])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-rkl:          [PASS][138] -> [WARN][139] ([i915#2681])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([fdo#109293])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][141] -> [INCOMPLETE][142] ([i915#7790])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-snb4/igt@i915_pm_rps@reset.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#8437])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([fdo#109302])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][145] ([i915#9311])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4212])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#4212])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][148] ([i915#8247]) +3 other tests fail
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_interruptible@legacy-setmode:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#1845] / [i915#4098]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_atomic_interruptible@legacy-setmode.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#1769] / [i915#3555])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#5286])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][152] -> [FAIL][153] ([i915#5138])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([fdo#111615] / [i915#5286]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([fdo#111614]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#111614]) +2 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-rkl:          [PASS][157] -> [SKIP][158] ([i915#1845] / [i915#4098]) +10 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([fdo#111615]) +4 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][160] -> [FAIL][161] ([i915#3743])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([fdo#110723]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([fdo#111615]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4538] / [i915#5190]) +4 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#6187])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2705])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#2705])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#7213])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([fdo#111827])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([fdo#111827])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([fdo#111827])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([fdo#111827])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#7828]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#7828]) +8 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#7828]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#7828])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@ctm-signed@pipe-a:
    - shard-rkl:          [PASS][177] -> [SKIP][178] ([i915#4098]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_color@ctm-signed@pipe-a.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_color@ctm-signed@pipe-a.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3555]) +6 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_color@deep-color.html

  * igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma:
    - shard-rkl:          NOTRUN -> [FAIL][180] ([i915#6892]) +1 other test fail
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#7118])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#6944] / [i915#7116] / [i915#7118])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][183] ([i915#7173])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3359])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8814])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#3359])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([fdo#111767] / [i915#3546])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([fdo#109274])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#4103])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#4213])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([fdo#109274] / [i915#5354]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-snb:          NOTRUN -> [SKIP][192] ([fdo#109271] / [fdo#111767])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#3546])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][194] -> [FAIL][195] ([i915#2346])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9226] / [i915#9261]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9227])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#3469]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([fdo#109274] / [i915#3637])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([fdo#109274] / [fdo#111767] / [i915#3637])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([fdo#109274]) +6 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#3637]) +2 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-apl:          NOTRUN -> [SKIP][203] ([fdo#109271]) +89 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl2/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([fdo#111825]) +5 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#3637] / [i915#4098]) +3 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#8381]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][207] ([i915#8841]) +1 other test dmesg-warn
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#2672]) +4 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#2672]) +2 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#3555]) +5 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#3555] / [i915#8810])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([fdo#109285])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [PASS][215] -> [SKIP][216] ([i915#1849] / [i915#4098]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#1825]) +12 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([fdo#111825] / [i915#1825]) +6 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3023]) +5 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#8708]) +12 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#5354]) +21 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#8708]) +8 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3458]) +17 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([fdo#109280]) +13 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([fdo#110189]) +14 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#1839])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([fdo#109289]) +3 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([fdo#109289])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][230] ([i915#4573]) +1 other test fail
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#3555])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#3582]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8806])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][234] ([i915#8292])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#5176] / [i915#9423]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#5235]) +3 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#6953] / [i915#8152])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#3555] / [i915#5235]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#3555] / [i915#4098] / [i915#8152])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#5235]) +9 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#5235]) +7 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#5235]) +11 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#6524] / [i915#6805])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([fdo#111068] / [i915#658])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#658]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][247] ([fdo#109271] / [i915#658])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@no_drrs:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#1072]) +5 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@suspend:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#1072]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_psr@suspend.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#5461] / [i915#658])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#5289])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#4235] / [i915#5190])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#4235]) +2 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#3555] / [i915#4098])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][255] ([i915#5465]) +1 other test fail
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#3555] / [i915#4098]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#3555] / [i915#8809])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#8623])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#4098]) +10 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_universal_plane@universal-plane-pageflip-windowed.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#2437])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][261] ([fdo#109271] / [i915#2437])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl2/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@global-sseu-config:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#7387])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@perf@global-sseu-config.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][263] ([i915#6806])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#8516])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_udl:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([fdo#109291])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@prime_udl.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#3708] / [i915#4077])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.html

  * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
    - shard-snb:          [PASS][267] -> [INCOMPLETE][268] ([i915#2295])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-snb5/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled.html

  * igt@v3d/v3d_create_bo@create-bo-0:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([fdo#109315]) +2 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@v3d/v3d_create_bo@create-bo-0.html

  * igt@v3d/v3d_get_bo_offset@create-get-offsets:
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#2575]) +5 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@v3d/v3d_get_bo_offset@create-get-offsets.html

  * igt@v3d/v3d_submit_csd@single-out-sync:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#2575]) +11 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@v3d/v3d_submit_csd@single-out-sync.html

  * igt@v3d/v3d_wait_bo@bad-bo:
    - shard-tglu:         NOTRUN -> [SKIP][272] ([fdo#109315] / [i915#2575]) +4 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@v3d/v3d_wait_bo@bad-bo.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#7711]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#7711]) +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#7711]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#2575]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][277] ([i915#7742]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@fbdev@unaligned-write:
    - shard-rkl:          [SKIP][279] ([i915#2582]) -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@fbdev@unaligned-write.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@fbdev@unaligned-write.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [FAIL][281] ([i915#2842]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][283] ([i915#2842]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-mtlp:         [DMESG-FAIL][285] ([i915#8962]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-rkl:          [SKIP][287] ([i915#3281]) -> [PASS][288] +4 other tests pass
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][289] ([i915#7975] / [i915#8213]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][291] ([i915#3282]) -> [PASS][292] +3 other tests pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@gem_partial_pwrite_pread@reads.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][293] ([i915#8411]) -> [PASS][294] +1 other test pass
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          [SKIP][295] ([i915#2527]) -> [PASS][296] +1 other test pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          [SKIP][297] -> [PASS][298] +2 other tests pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_rps@reset:
    - shard-tglu:         [INCOMPLETE][299] -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-tglu-5/igt@i915_pm_rps@reset.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][301] ([i915#5334]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html

  * {igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc}:
    - shard-rkl:          [SKIP][303] ([i915#4098]) -> [PASS][304] +5 other tests pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][305] ([i915#1845] / [i915#4098]) -> [PASS][306] +13 other tests pass
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][307] ([i915#2346]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-rkl:          [SKIP][309] ([i915#1849] / [i915#4098]) -> [PASS][310] +11 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * {igt@kms_plane@pixel-format-source-clamping@pipe-a}:
    - shard-rkl:          [INCOMPLETE][311] -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_plane@pixel-format-source-clamping@pipe-a.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_plane@pixel-format-source-clamping@pipe-a.html

  * {igt@kms_pm_rpm@dpms-non-lpsp}:
    - shard-rkl:          [SKIP][313] ([i915#9519]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * {igt@kms_pm_rpm@system-suspend-modeset}:
    - shard-rkl:          [SKIP][315] ([fdo#109308]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [FAIL][317] ([i915#9196]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][319] ([i915#2436]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [SKIP][321] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][323] -> [INCOMPLETE][324] ([i915#9364])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [SKIP][325] -> [FAIL][326] ([i915#2842])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@kms_async_flips@crc@pipe-b-edp-1:
    - shard-mtlp:         [DMESG-FAIL][327] ([i915#8561]) -> [FAIL][328] ([i915#8247])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_async_flips@crc@pipe-b-edp-1.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          [SKIP][329] ([i915#9531]) -> [SKIP][330] ([i915#1845] / [i915#4098])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][331] ([i915#5286]) -> [SKIP][332] ([i915#4098]) +1 other test skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][333] ([i915#4098]) -> [SKIP][334] ([i915#5286]) +3 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-rkl:          [SKIP][335] ([fdo#111614] / [i915#3638]) -> [SKIP][336] ([i915#1845] / [i915#4098])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][337] ([i915#1845] / [i915#4098]) -> [SKIP][338] ([fdo#111614] / [i915#3638]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-rkl:          [SKIP][339] ([i915#1845] / [i915#4098]) -> [SKIP][340] ([fdo#110723]) +4 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-rkl:          [SKIP][341] ([fdo#110723]) -> [SKIP][342] ([i915#1845] / [i915#4098]) +1 other test skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][343] ([i915#1845] / [i915#4098]) -> [SKIP][344] ([i915#3116])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          [SKIP][345] ([i915#1845] / [i915#4098]) -> [SKIP][346] ([i915#7118])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_content_protection@srm.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          [SKIP][347] ([i915#7118]) -> [SKIP][348] ([i915#1845] / [i915#4098])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_content_protection@uevent.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          [SKIP][349] ([i915#4098]) -> [SKIP][350] ([fdo#109279] / [i915#3359])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][351] ([i915#3555]) -> [SKIP][352] ([i915#4098]) +3 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][353] ([i915#4098]) -> [SKIP][354] ([i915#3359])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-rkl:          [SKIP][355] ([fdo#111825]) -> [SKIP][356] ([i915#1845] / [i915#4098])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][357] ([i915#1845] / [i915#4098]) -> [SKIP][358] ([fdo#111825]) +2 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          [SKIP][359] ([i915#4098]) -> [SKIP][360] ([i915#3555] / [i915#3840])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          [SKIP][361] ([fdo#111825]) -> [SKIP][362] ([fdo#111825] / [i915#4423]) +1 other test skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-dg1-15/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-dg1-18/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][363] ([i915#1849] / [i915#4098]) -> [SKIP][364] ([fdo#111825])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          [SKIP][365] ([i915#1849] / [i915#4098]) -> [SKIP][366] ([i915#3023]) +17 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          [SKIP][367] ([i915#3023]) -> [SKIP][368] ([i915#1849] / [i915#4098]) +11 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][369] ([fdo#111825] / [i915#1825]) -> [SKIP][370] ([i915#1849] / [i915#4098]) +19 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][371] ([i915#1849] / [i915#4098]) -> [SKIP][372] ([fdo#111825] / [i915#1825]) +24 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [SKIP][373] ([i915#1845] / [i915#4098]) -> [SKIP][374] ([i915#3555] / [i915#8228])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          [SKIP][375] ([i915#3555] / [i915#8228]) -> [SKIP][376] ([i915#1845] / [i915#4098])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][377] ([i915#4098]) -> [SKIP][378] ([i915#3555]) +2 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6892]: https://gitlab.freedesktop.org/drm/intel/issues/6892
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
  [i915#8437]: https://gitlab.freedesktop.org/drm/intel/issues/8437
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531


Build changes
-------------

  * Linux: CI_DRM_13787 -> Patchwork_125614v1

  CI-20190529: 20190529
  CI_DRM_13787: e3cd22f3d0e8b7b9bd36785fdc35b4109244e121 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7558: f347c169c0ee259f5ac3e58d8524f1e4127d061f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125614v1: e3cd22f3d0e8b7b9bd36785fdc35b4109244e121 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/index.html

--===============4400551671241669992==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Remove {} from if-else</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125614/">https://patchwork.freedesktop.org/series/125614/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125614v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125614v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13787_full -&gt; Patchwork_125614v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125614v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_125614v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
125614v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-dg1-12/igt@gem_exec_whisper@basic-contexts-forked-all.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125614v1/shard-dg1-15/igt@gem_exec_whisper@basic-contexts-forked-all=
.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_render_copy@linear-to-=
vebox-yf-tiled.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-4/igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125614v1/shard-rkl-4/igt@kms_plane_multiple@tiling-y@pipe-b-hdmi-a-2=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125614v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13787/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13787/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13787/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/sha=
rd-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13787/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk1/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk9/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13787/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13787/shard-glk9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787=
/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13787/shard-glk8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3787/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13787/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shard-glk4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13787/shar=
d-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13787/shard-glk4/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
614v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125614v1/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125614v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125614v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5614v1/shard-glk6/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125614v1/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125614v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125614v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5614v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125614v1/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125614v1/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125614v1/shard-glk1/boot.html">PASS</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@drm_fdinfo@busy-idle@bcs0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8414">i915#8414</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@drm_fdinfo@most-busy-chec=
k-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125614v1/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742"=
>i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-uncompressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@gem_ccs@block-copy-uncompr=
essed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7957">i915#7957</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-com=
pfmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125614v1/shard-dg2-2/igt@gem_ccs@suspend-resume@xm=
ajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_ctx_persistence@hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@gem_ctx_persistence@legacy-=
engines-hostile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280">=
i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-6/igt@gem_eio@in-flight-external.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/=
shard-mtlp-4/igt@gem_eio@in-flight-external.html">ABORT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-2/igt@gem_eio@in-flight-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/s=
hard-mtlp-4/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/7892">i915#7892</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_exec_balancer@hog.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/481=
2">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_exec_fair@basic-deadl=
ine.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25614v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-rw=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_exec_params@secure-no=
n-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25614v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
81">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_lmem_swapping@heavy-v=
erify-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-apl7/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
614v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_madvise@dontneed-befo=
re-exec.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_media_fill@media-fill=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard=
-rkl-7/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_mmap_gtt@medium-copy-=
xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_mmap_wc@bad-offset.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
83">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_pread@exhaustion.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282=
">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@gem_pread@snoop.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2=
/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@gem_pwrite@basic-exhausti=
on.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gem_pxp@create-protected-=
buffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_pxp@reject-modify-con=
text-protection-off-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_readwrite@write-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@gem_render_copy@x-tiled-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +76 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-c=
cs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-=
to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5190">i915#5190</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_render_tiled_blits@bas=
ic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@reset-fd:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-8/igt@gem_workarounds@reset-fd.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/sh=
ard-mtlp-4/igt@gem_workarounds@reset-fd.html">ABORT</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gen3_render_mixed_blits.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@gen9_exec_parse@bb-secure.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@gen9_exec_parse@cmd-crossing-page.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
614v1/shard-rkl-4/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-apl3/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125614v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#35=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25614v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-snb2/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8437">i915#8437</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@i915_query@query-topology=
-unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@i915_selftest@mock@memory_=
region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_atomic_interruptible@l=
egacy-setmode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4098">i915#4098</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125614v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_big_fb@linear-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
614v1/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#40=
98</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125614v1/shard-tglu-8/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705"=
>i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_chamelium_color@ctm-l=
imited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_chamelium_color@ctm-n=
egative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_chamelium_color@ctm-r=
ed-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_chamelium_frames@dp-f=
rame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-=
without-ddc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_color@ctm-signed@pipe-a.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/=
shard-rkl-5/igt@kms_color@ctm-signed@pipe-a.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color@pipe-a-hdmi-a-2-gamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_color@deep-color@pipe-=
a-hdmi-a-2-gamma.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6892">i915#6892</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_content_protection@sr=
m@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-ons=
creen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@kms_cursor_legacy@cursorb-v=
s-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb=
-vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_125614v1/shard-glk9/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i=
915#3469</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-absol=
ute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-apl2/igt@kms_flip@2x-plain-flip-fb-r=
ecreate.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +89 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111825">fdo#111825</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_flip@dpms-off-confusio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_flip@flip-vs-fences.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
381">i915#8381</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@kms_flip@flip-vs-suspend@b-=
hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8841">i915#8841</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125614v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915=
#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p=
-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +12 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +12 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +21 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3458">i915#3458</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +13 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109289">fdo#109289</a>) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_pipe_b_c_ivb@pipe-b-d=
pms-off-modeset-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-apl2/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4573">i915#4573</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_plane_lowres@tiling-4=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-n=
one@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3582">i915#3582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg1-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_plane_scaling@planes-s=
caler-unity-scaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +9 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-c-dp-4.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-7/igt@kms_psr2_sf@overlay-plane=
-update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-apl3/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@no_drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_psr@no_drrs.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915=
#1072</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_psr@suspend.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915=
#1072</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-1/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-6/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4235">i915#4235</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-snb1/igt@kms_setmode@basic@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@kms_setmode@invalid-clone=
-single-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_universal_plane@univer=
sal-plane-pageflip-windowed.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4098">i915#4098</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-apl2/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@perf@global-sseu-config.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-6/igt@prime_udl.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#1092=
91</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-snb5/igt@syncobj_timeline@multi-wait-for-submit-unsubmi=
tted-signaled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125614v1/shard-snb1/igt@syncobj_timeline@multi-wait-f=
or-submit-unsubmitted-signaled.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_create_bo@create-bo-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@v3d/v3d_create_bo@create-b=
o-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_bo_offset@create-get-offsets:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@v3d/v3d_get_bo_offset@cre=
ate-get-offsets.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@single-out-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@v3d/v3d_submit_csd@single=
-out-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@bad-bo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@v3d/v3d_wait_bo@bad-bo.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@vc4/vc4_perfmon@destroy-in=
valid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-tglu-9/igt@vc4/vc4_wait_seqno@bad-se=
qno-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125614v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@fbdev@unaligned-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/=
shard-rkl-2/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125614v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125614v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-wb=
.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125614v1/shard-mtlp-7/igt@gem_exec_flush@basic-batch-k=
ernel-default-wb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5614v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt.html">PASS</a> +4 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/797=
5">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125614v1/shard-tglu-7/igt@gem_exec_suspend@basic-s4-device=
s@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125614v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> +3 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">=
i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125614v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5614v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html">PASS</a> +1 other=
 test pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">S=
KIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125614v1/shard-rkl-7/igt@i915_hangman@engine-engine-error@bcs0.html">PASS<=
/a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-tglu-5/igt@i915_pm_rps@reset.html">INCOMPLETE</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/sha=
rd-tglu-9/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125614v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-=
rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotatio=
n-90-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125614v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bc-shrfb-scaledprimary.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@pixel-format-source-clamping@pipe-a}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_plane@pixel-format-source-clamping@pipe-a=
.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_plane@pixel-format-source-clamp=
ing@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614=
v1/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@system-suspend-modeset}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#=
109308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125614v1/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125614v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
36">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125614v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-coun=
ters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i91=
5#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125614v1/shard-rkl-4/igt@prime_vgem@basic-fence-flip.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html">AB=
ORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125614v1/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9364"=
>i915#9364</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v=
1/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html">DMESG=
-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561"=
>i915#8561</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125614v1/shard-mtlp-6/igt@kms_async_flips@crc@pipe-b-edp-1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i=
915#8247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9531">i915#9531</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mu=
table-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i91=
5#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125614v1/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125614v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#52=
86</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125614v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125614v1/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614=
">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125614v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1107=
23">fdo#110723</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125614v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125614v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-1.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4=
098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125614v1/shard-rkl-7/igt@kms_content_protection@srm.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25614v1/shard-rkl-5/igt@kms_content_protection@uevent.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125614v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x170.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
79">fdo#109279</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125614v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125614v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359"=
>i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125614v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-to=
ggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125614v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flip=
a-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125614=
v1/shard-rkl-4/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-dg1-15/igt@kms_flip@2x-plain-flip-fb-recreate-interrupt=
ible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125614v1/shard-dg1-18/igt@kms_flip@2x-plain-flip-fb-re=
create-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-flip=
track-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_frontbuffer=
_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_frontbuffer_trac=
king@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +17 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc=
psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>) +11 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-5/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_125614v1/shard-rkl-2/igt@kms_frontbuffer_t=
racking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +24 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25614v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i91=
5#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125614v1/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13787/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5614v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2=
 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13787 -&gt; Patchwork_125614v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13787: e3cd22f3d0e8b7b9bd36785fdc35b4109244e121 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7558: f347c169c0ee259f5ac3e58d8524f1e4127d061f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125614v1: e3cd22f3d0e8b7b9bd36785fdc35b4109244e121 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4400551671241669992==--
