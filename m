Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7984766D65
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDA7F892F2;
	Fri, 28 Jul 2023 12:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38ED788CE4;
 Fri, 28 Jul 2023 12:40:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CB19A0BA8;
 Fri, 28 Jul 2023 12:40:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2628532481061044551=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Fri, 28 Jul 2023 12:40:11 -0000
Message-ID: <169054801116.19730.9383906817546131225@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230728041150.2524032-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230728041150.2524032-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRFND?=
 =?utf-8?q?_misc_fixes_=28rev5=29?=
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

--===============2628532481061044551==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DSC misc fixes (rev5)
URL   : https://patchwork.freedesktop.org/series/117662/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13435_full -> Patchwork_117662v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-kbl-iris 

Known issues
------------

  Here are the changes found in Patchwork_117662v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html
    - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#7456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#7701])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8414]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#7697])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1099]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#5099])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][10] -> [INCOMPLETE][11] ([i915#7892])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-10/igt@gem_eio@kms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#4036])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2846])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][15] -> [FAIL][16] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#4812])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#3281]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#3281]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3281])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][22] -> [TIMEOUT][23] ([i915#5493])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4077])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_mmap_gtt@big-bo.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4077])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4083]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3282]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][28] ([i915#2658])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#4270])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3282])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_readwrite@beyond-eob.html
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3282])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#8428])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#3297])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-dg2:          [PASS][34] -> [FAIL][35] ([fdo#103375]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-7/igt@gem_workarounds@suspend-resume-fd.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([fdo#109289])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][37] -> [ABORT][38] ([i915#5566])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-apl7/igt@gen9_exec_parse@allowed-single.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-apl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#2856])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_module_load@load:
    - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#6227])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@i915_module_load@load.html

  * igt@i915_pm_dc@dc5-dpms-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#8018])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@i915_pm_dc@dc5-dpms-negative.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][42] -> [SKIP][43] ([i915#4281])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-tglu-7/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-dg1:          [PASS][44] -> [SKIP][45] ([i915#1937])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#1902])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#1902])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [PASS][48] -> [FAIL][49] ([i915#3591])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@cursor:
    - shard-tglu:         [PASS][50] -> [FAIL][51] ([i915#7940]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-tglu-4/igt@i915_pm_rpm@cursor.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-tglu-6/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][52] -> [SKIP][53] ([i915#1397]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg1:          [PASS][54] -> [SKIP][55] ([i915#1397])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg1:          [PASS][56] -> [FAIL][57] ([i915#7940])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([fdo#109302])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@i915_query@query-topology-unsupported.html
    - shard-rkl:          NOTRUN -> [SKIP][59] ([fdo#109302])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4212])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][61] ([i915#8247]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#5286])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([fdo#111614]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([fdo#110723])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#5190]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html
    - shard-rkl:          NOTRUN -> [SKIP][66] ([fdo#111615])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([fdo#111615]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#2705])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3689] / [i915#5354]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3734] / [i915#5354] / [i915#6095])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#6095]) +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5354] / [i915#6095])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#3886] / [i915#6095]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#5354]) +9 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#5354]) +4 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#111827])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_chamelium_color@gamma.html
    - shard-rkl:          NOTRUN -> [SKIP][77] ([fdo#111827])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_hpd@hdmi-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#7828]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#7828])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#7828])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#3299])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][82] ([i915#7173])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html

  * igt@kms_content_protection@mei_interface:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#7118])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_content_protection@mei_interface.html
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#7118])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#8814])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3359])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4213])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-mtlp:         [PASS][88] -> [FAIL][89] ([i915#8248])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3546])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([fdo#111825]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#2346])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3637]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][95] -> [FAIL][96] ([i915#79])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#8381])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#2672]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#2672])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#8810])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2:          [PASS][101] -> [FAIL][102] ([i915#6880])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#8708]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3023]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#8708]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([fdo#111825] / [i915#1825]) +10 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3458])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][108] ([fdo#109271]) +29 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][109] ([fdo#109271]) +256 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#1825]) +9 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([fdo#109289])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
    - shard-rkl:          NOTRUN -> [SKIP][112] ([fdo#109289])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3582]) +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][114] ([i915#8292])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][115] ([i915#8292])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][116] ([i915#8292])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5176]) +7 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#5176]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#5176]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#5176]) +19 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#5235]) +11 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5235]) +7 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#5235]) +7 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#1072])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_psr@psr2_sprite_blt.html
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#1072])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#4235]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#8623])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#8623])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-snb:          NOTRUN -> [DMESG-WARN][131] ([i915#8841]) +5 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-query-forked:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#4070] / [i915#6768]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_vblank@pipe-c-query-forked.html

  * igt@perf@stress-open-close@0-rcs0:
    - shard-glk:          NOTRUN -> [ABORT][133] ([i915#5213] / [i915#7941])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@perf@stress-open-close@0-rcs0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([fdo#109295] / [i915#3291] / [i915#3708])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@prime_vgem@basic-fence-read.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#4818])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#2575]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_csd@bad-bo:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([fdo#109315]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-bo.html

  * igt@v3d/v3d_wait_bo@used-bo:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#2575])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@v3d/v3d_wait_bo@used-bo.html

  * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#7711])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html

  * igt@vc4/vc4_wait_bo@used-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#7711])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@vc4/vc4_wait_bo@used-bo-1ns.html
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#7711]) +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@vc4/vc4_wait_bo@used-bo-1ns.html

  
#### Possible fixes ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [ABORT][142] ([i915#7461] / [i915#8211]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk8/igt@gem_barrier_race@remote-request@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html
    - shard-rkl:          [TIMEOUT][144] ([i915#3778]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@gem_barrier_race@remote-request@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_ctx_isolation@preservation-s3@ccs2:
    - shard-dg2:          [FAIL][146] ([fdo#103375]) -> [PASS][147] +8 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-10/igt@gem_ctx_isolation@preservation-s3@ccs2.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-3/igt@gem_ctx_isolation@preservation-s3@ccs2.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         [ABORT][148] ([i915#8503]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@kms:
    - shard-dg1:          [FAIL][150] ([i915#5784]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-16/igt@gem_eio@kms.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-12/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][152] ([i915#2842]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-mtlp:         [ABORT][154] ([i915#7392] / [i915#8131]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][156] ([i915#7061] / [i915#8617]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [FAIL][158] ([i915#8691]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-dg1:          [FAIL][160] ([i915#7940]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-14/igt@i915_pm_rpm@cursor-dpms.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-14/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][162] ([i915#1397]) -> [PASS][163] +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][164] ([i915#1397]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-mtlp:         [DMESG-FAIL][166] ([i915#7059]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@i915_selftest@live@gt_mocs.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][168] ([i915#6763]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][170] ([i915#5138]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [FAIL][172] ([i915#3743]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][174] ([i915#2346]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-apl:          [FAIL][176] ([i915#2346]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-mtlp:         [FAIL][178] ([i915#2346]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@busy-flip@a-edp1:
    - shard-mtlp:         [DMESG-WARN][180] ([i915#1982]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-7/igt@kms_flip@busy-flip@a-edp1.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_flip@busy-flip@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [FAIL][182] ([i915#6880]) -> [PASS][183] +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - shard-mtlp:         [FAIL][184] ([i915#1623]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-4/igt@kms_plane@pixel-format@pipe-b-planes.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-4/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@syncobj_timeline@multi-wait-all-available-signaled:
    - shard-rkl:          [TIMEOUT][186] -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@syncobj_timeline@multi-wait-all-available-signaled.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@syncobj_timeline@multi-wait-all-available-signaled.html

  * igt@sysfs_heartbeat_interval@nopreempt@bcs0:
    - shard-mtlp:         [FAIL][188] ([i915#6015]) -> [PASS][189] +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-6/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-rkl:          [TIMEOUT][190] -> [SKIP][191] ([i915#3281])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-tglu:         [WARN][192] ([i915#2681]) -> [FAIL][193] ([i915#2681] / [i915#3591])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][194] ([i915#4391] / [i915#4423]) -> [DMESG-WARN][195] ([i915#4391])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-15/igt@i915_pm_rpm@i2c.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-19/igt@i915_pm_rpm@i2c.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs:
    - shard-rkl:          [TIMEOUT][196] -> [SKIP][197] ([i915#5354] / [i915#6095])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-rkl:          [TIMEOUT][198] -> [SKIP][199] ([i915#5354])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [FAIL][200] ([i915#2346]) -> [DMESG-FAIL][201] ([i915#2017] / [i915#5954])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][202] ([i915#4070] / [i915#4816]) -> [SKIP][203] ([i915#4816])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_psr@primary_page_flip:
    - shard-dg1:          [SKIP][204] ([i915#1072]) -> [SKIP][205] ([i915#1072] / [i915#4078])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-19/igt@kms_psr@primary_page_flip.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@kms_psr@primary_page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7941]: https://gitlab.freedesktop.org/drm/intel/issues/7941
  [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
  [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8503]: https://gitlab.freedesktop.org/drm/intel/issues/8503
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841


Build changes
-------------

  * Linux: CI_DRM_13435 -> Patchwork_117662v5

  CI-20190529: 20190529
  CI_DRM_13435: 348c9c6dd8ca7e30c1cf6d026fa888318ff5db8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7408: 93482edd02839f9eb6ceffca9418d03f570f34f3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117662v5: 348c9c6dd8ca7e30c1cf6d026fa888318ff5db8b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/index.html

--===============2628532481061044551==
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
<tr><td><b>Series:</b></td><td>DSC misc fixes (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117662/">https://patchwork.freedesktop.org/series/117662/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13435_full -&gt; Patchwork_117662v5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): pig-kbl-iris </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117662v5_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5099">i915#5099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-10/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-3/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7892">i915#7892</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@gem_exec_fence@submit67.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_exec_flush@basic-wb-ro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_exec_reloc@basic-write-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_exec_reloc@basic-write-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_mmap_gtt@big-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_mmap_gtt@flink-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_mmap_wc@write-gtt-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-7/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gen7_exec_parse@basic-offset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-apl4/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@i915_module_load@load.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@i915_pm_dc@dc5-dpms-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8018">i915#8018</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-tglu-9/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-tglu-7/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1902">i915#1902</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1902">i915#1902</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-tglu-4/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-tglu-6/igt@i915_pm_rpm@cursor.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302">fdo#109302</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302">fdo#109302</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3734">i915#3734</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +9 similar issues</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_chamelium_color@gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_chamelium_color@gamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_content_protection@mei_interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8248">i915#8248</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_flip@2x-blocking-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +256 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-8/igt@kms_plane_lowres@tiling-x@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3582">i915#3582</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-snb2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-forked:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_vblank@pipe-c-query-forked.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6768">i915#6768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close@0-rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@perf@stress-open-close@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7941">i915#7941</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@v3d/v3d_submit_cl@bad-multisync-pad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-bo.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@used-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@v3d/v3d_wait_bo@used-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-1ns:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-8/igt@vc4/vc4_wait_bo@used-bo-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@vc4/vc4_wait_bo@used-bo-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk8/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8211">i915#8211</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@gem_barrier_race@remote-request@rcs0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@ccs2:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-10/igt@gem_ctx_isolation@preservation-s3@ccs2.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-3/igt@gem_ctx_isolation@preservation-s3@ccs2.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-4/igt@gem_eio@in-flight-contexts-immediate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8503">i915#8503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-16/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-12/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-priority-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8131">i915#8131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7061">i915#7061</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8617">i915#8617</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8691">i915#8691</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-14/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-14/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-2/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@busy-flip@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-7/igt@kms_flip@busy-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_flip@busy-flip@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-4/igt@kms_plane@pixel-format@pipe-b-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1623">i915#1623</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-4/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-available-signaled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@syncobj_timeline@multi-wait-all-available-signaled.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@syncobj_timeline@multi-wait-all-available-signaled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6015">i915#6015</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-6/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-active.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-15/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-19/igt@i915_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5954">i915#5954</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13435/shard-dg1-19/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v5/shard-dg1-16/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13435 -&gt; Patchwork_117662v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13435: 348c9c6dd8ca7e30c1cf6d026fa888318ff5db8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7408: 93482edd02839f9eb6ceffca9418d03f570f34f3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117662v5: 348c9c6dd8ca7e30c1cf6d026fa888318ff5db8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2628532481061044551==--
