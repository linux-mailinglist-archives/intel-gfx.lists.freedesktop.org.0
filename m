Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3100D762B71
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 08:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460C510E41C;
	Wed, 26 Jul 2023 06:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F12A889F27;
 Wed, 26 Jul 2023 06:31:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E93F2A7DFB;
 Wed, 26 Jul 2023 06:31:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3561961062489252212=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Date: Wed, 26 Jul 2023 06:31:03 -0000
Message-ID: <169035306393.23469.15221908394038978880@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgTVRM?=
 =?utf-8?q?_Degamma_implementation_=28rev3=29?=
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

--===============3561961062489252212==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: MTL Degamma implementation (rev3)
URL   : https://patchwork.freedesktop.org/series/119844/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13419_full -> Patchwork_119844v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_119844v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-dg1:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [FAIL][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#8614])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-12/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-12/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-12/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-12/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-13/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-14/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-15/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-15/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-15/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-16/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-16/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-16/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-16/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-19/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-19/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-19/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-19/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-18/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-18/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-18/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-17/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-17/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-17/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-16/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-16/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-16/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-15/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-15/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-15/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-rkl:          [PASS][51] -> [ABORT][52] ([i915#7461] / [i915#8211])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-6/igt@gem_barrier_race@remote-request@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-1/igt@gem_barrier_race@remote-request@rcs0.html
    - shard-mtlp:         [PASS][53] -> [ABORT][54] ([i915#6333] / [i915#8234])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-5/igt@gem_barrier_race@remote-request@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-8/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#1099]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@in-flight-suspend:
    - shard-snb:          NOTRUN -> [DMESG-FAIL][56] ([fdo#103375])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@kms:
    - shard-dg1:          [PASS][57] -> [FAIL][58] ([i915#5784])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-13/igt@gem_eio@kms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@full-pulse:
    - shard-dg2:          [PASS][59] -> [FAIL][60] ([i915#6032])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-3/igt@gem_exec_balancer@full-pulse.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-6/igt@gem_exec_balancer@full-pulse.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3539] / [i915#4852]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3281]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-wc-noreloc.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-mtlp:         [PASS][65] -> [TIMEOUT][66] ([i915#8628])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4083])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@basic-small-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4077])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_mmap_gtt@basic-small-copy-xy.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#4083])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4270])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#4270])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#4270])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#2527] / [i915#2856])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#2856])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][75] -> [ABORT][76] ([i915#8489] / [i915#8668])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-tglu:         NOTRUN -> [FAIL][77] ([i915#3825])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-dg1:          [PASS][78] -> [FAIL][79] ([i915#7940]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/igt@i915_pm_rpm@cursor-dpms.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-16/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg1:          [PASS][80] -> [SKIP][81] ([i915#1397]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-16/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#1397])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][83] -> [SKIP][84] ([i915#1397])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-snb:          NOTRUN -> [SKIP][85] ([fdo#109271]) +178 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb6/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][86] -> [DMESG-FAIL][87] ([i915#6763])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-3/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][88] -> [FAIL][89] ([fdo#103375])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4212])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#8502]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][92] ([i915#8247]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-7/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([fdo#111615])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#3689] / [i915#3886] / [i915#5354]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3689] / [i915#5354])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4087] / [i915#7213]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#7828]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color@pipe-b-edp-1-degamma:
    - shard-mtlp:         [PASS][98] -> [FAIL][99] ([i915#3546]) +7 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-1/igt@kms_color@deep-color@pipe-b-edp-1-degamma.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-6/igt@kms_color@deep-color@pipe-b-edp-1-degamma.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7118]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#3555])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][102] -> [FAIL][103] ([i915#2346])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3555]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-snb:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111767])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([fdo#109274]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([fdo#109274] / [i915#3637])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-mtlp:         [PASS][108] -> [DMESG-WARN][109] ([i915#1982])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#79])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-modeset-vs-hang@b-vga1:
    - shard-snb:          [PASS][112] -> [ABORT][113] ([i915#8953])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-snb7/igt@kms_flip@flip-vs-modeset-vs-hang@b-vga1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb7/igt@kms_flip@flip-vs-modeset-vs-hang@b-vga1.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][114] ([i915#8841]) +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#2672])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#8708]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          [PASS][117] -> [FAIL][118] ([i915#6880]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#5354]) +4 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([fdo#110189])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3458]) +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([fdo#109280]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3555] / [i915#8228]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#8228]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][125] ([i915#8292])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#5176]) +7 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#5176]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#5176]) +3 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#5235]) +7 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5235]) +11 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#5235]) +3 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#658])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][133] ([i915#5465]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-dg2:          [PASS][134] -> [FAIL][135] ([fdo#103375])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-wait-busy:
    - shard-dg1:          [PASS][136] -> [INCOMPLETE][137] ([i915#8650])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-17/igt@kms_vblank@pipe-d-wait-busy.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/igt@kms_vblank@pipe-d-wait-busy.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][138] -> [FAIL][139] ([i915#7757])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([fdo#109315] / [i915#2575])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@v3d/v3d_submit_csd@bad-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#2575])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@v3d/v3d_submit_csd@bad-perfmon.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#2575])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#7711])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@vc4/vc4_tiling@set-get.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][144] ([i915#7742]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-tglu:         [ABORT][146] ([i915#8211] / [i915#8234]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-tglu-6/igt@gem_barrier_race@remote-request@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-dg2:          [TIMEOUT][148] ([i915#3778] / [i915#7016] / [i915#7921]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-1/igt@gem_exec_endless@dispatch@rcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-12/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [FAIL][150] ([i915#2846]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-rkl:          [FAIL][152] ([i915#2842]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][154] ([i915#2842]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][156] ([i915#2842]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][158] ([i915#5493]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][160] ([i915#7061]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-dg1:          [FAIL][162] ([i915#3591]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-dg1:          [FAIL][164] ([i915#7691]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/igt@i915_pm_rpm@basic-pci-d3-state.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][166] ([i915#1397]) -> [PASS][167] +1 similar issue
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-tglu:         [FAIL][168] ([i915#7940]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-tglu-2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-tglu-3/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
    - shard-dg1:          [FAIL][170] ([i915#7940]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-15/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][172] ([i915#7790]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-snb4/igt@i915_pm_rps@reset.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-glk:          [FAIL][174] ([i915#8229]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-glk7/igt@i915_pm_rps@waitboost.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-glk7/igt@i915_pm_rps@waitboost.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][176] ([i915#5138]) -> [PASS][177] +2 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][178] ([i915#8787]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-dg2:          [FAIL][180] ([i915#6880]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-dg2:          [FAIL][182] ([fdo#103375]) -> [PASS][183] +3 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][184] ([i915#7118]) -> [SKIP][185] ([i915#7118] / [i915#7162]) +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg2-5/igt@kms_content_protection@type1.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg2-12/igt@kms_content_protection@type1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [FAIL][186] ([i915#2346]) -> [DMESG-FAIL][187] ([i915#1982] / [i915#2017] / [i915#5954])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][188] ([fdo#110189] / [i915#3955]) -> [SKIP][189] ([i915#3955])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_psr@cursor_plane_move:
    - shard-dg1:          [SKIP][190] ([i915#1072] / [i915#4078]) -> [SKIP][191] ([i915#1072])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/igt@kms_psr@cursor_plane_move.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
  [i915#6333]: https://gitlab.freedesktop.org/drm/intel/issues/6333
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7757]: https://gitlab.freedesktop.org/drm/intel/issues/7757
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7921]: https://gitlab.freedesktop.org/drm/intel/issues/7921
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8229]: https://gitlab.freedesktop.org/drm/intel/issues/8229
  [i915#8234]: https://gitlab.freedesktop.org/drm/intel/issues/8234
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8614]: https://gitlab.freedesktop.org/drm/intel/issues/8614
  [i915#8628]: https://gitlab.freedesktop.org/drm/intel/issues/8628
  [i915#8650]: https://gitlab.freedesktop.org/drm/intel/issues/8650
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8787]: https://gitlab.freedesktop.org/drm/intel/issues/8787
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8953]: https://gitlab.freedesktop.org/drm/intel/issues/8953


Build changes
-------------

  * Linux: CI_DRM_13419 -> Patchwork_119844v3

  CI-20190529: 20190529
  CI_DRM_13419: 495f70657aa5f5302a5f6f27321c09fc51b60b77 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7401: 0c66a6560eda687effa9088659577a520d913908 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119844v3: 495f70657aa5f5302a5f6f27321c09fc51b60b77 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/index.html

--===============3561961062489252212==
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
<tr><td><b>Series:</b></td><td>MTL Degamma implementation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/119844/">https://patchwork.freedesktop.org/series/119844/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_119844v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13419_full -&gt; Patchwork_119844v=
3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119844v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13419/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_13419/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-14/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13419/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-15/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-15/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_13419/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13419/shard-dg1-16/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-16/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13=
419/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419=
/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_13419/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/sh=
ard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-18/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard=
-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13419/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg1-19/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13419/shard-dg=
1-19/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/shard-dg1-19/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-19/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_119844v3/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_119844v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/s=
hard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/shard-dg1-16/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-16/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_119844v3/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/s=
hard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/shard-dg1-14/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_119844v3/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-14/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/s=
hard-dg1-13/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/shard-dg1-13/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_119844v3/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/s=
hard-dg1-12/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8614">i915#8614</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13419/shard-rkl-6/igt@gem_barrier_race@remote-request@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
19844v3/shard-rkl-1/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#74=
61</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8211">i=
915#8211</a>)</p>
</li>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13419/shard-mtlp-5/igt@gem_barrier_race@remote-request@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
119844v3/shard-mtlp-8/igt@gem_barrier_race@remote-request@rcs0.html">ABORT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6333">i915#=
6333</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8234"=
>i915#8234</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-snb7/igt@gem_ctx_persistence@legacy-=
engines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-snb7/igt@gem_eio@in-flight-suspend.h=
tml">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-13/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-dg1-13/ig=
t@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-pulse:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-3/igt@gem_exec_balancer@full-pulse.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3=
/shard-dg2-6/igt@gem_exec_balancer@full-pulse.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/6032">i915#6032</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v=
3/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-r=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-=
wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts-forked-all.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_119844v3/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-forked-all=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8628">i915#8628</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_mmap@basic-small-bo.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_mmap_gtt@basic-small-=
copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@gem_mmap_wc@invalid-flags=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@gem_pxp@reject-modify-con=
text-protection-off-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_119844v3/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@i915_pm_lpsp@kms-lpsp@kms=
-lpsp-hdmi-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3825">i915#3825</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-18/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/sha=
rd-dg1-16/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard=
-dg1-16/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-=
stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
19844v3/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-snb6/igt@i915_pm_rpm@system-suspend-=
devices.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +178 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11984=
4v3/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
9844v3/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_addfb_basic@bo-too-sm=
all-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-1-y-rc_ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-7/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_ccs@pipe-a-crc-sprite=
-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_ccs@pipe-c-crc-sprite=
-planes-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-1/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7213">i915#7213</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd=
-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7828">i915#7828</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color@pipe-b-edp-1-degamma:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-1/igt@kms_color@deep-color@pipe-b-edp-1-degamma.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_119844v3/shard-mtlp-6/igt@kms_color@deep-color@pipe-b-edp-1-degamma.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
546">i915#3546</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-7/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_cursor_crc@cursor-rap=
id-movement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_119844v3/shard-glk5/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-snb6/igt@kms_flip@2x-flip-vs-expired=
-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_flip@2x-modeset-vs-vb=
lank-race-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_119844v3/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_119844v3/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-modeset-vs-hang@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-snb7/igt@kms_flip@flip-vs-modeset-vs-hang@b-vga1.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_119844v3/shard-snb7/igt@kms_flip@flip-vs-modeset-vs-hang@b-vga1.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8953">i9=
15#8953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-snb1/igt@kms_flip@flip-vs-suspend@b-=
hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8841">i915#8841</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indf=
b-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_119844v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-indfb-pgflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6880">i915#6880</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3458">i915#3458</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-rkl-1/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe=
-b-hdmi-a-1:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_119844v3/shard-dg2-10/igt@kms_plane_scaling@plane-do=
wnscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) =
+7 similar issues</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@kms_plane_scaling@plane-dow=
nscale-with-pixel-format-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +=
3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-c-hdmi-a-3:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@kms_plane_scaling@plane-u=
pscale-with-rotation-20x20@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-snb1/igt@kms_setmode@basic@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5465">i915#5465</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspen=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_119844v3/shard-dg2-11/igt@kms_vblank@pipe-c-ts-continuation-dpms-=
suspend.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-17/igt@kms_vblank@pipe-d-wait-busy.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3=
/shard-dg1-14/igt@kms_vblank@pipe-d-wait-busy.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8650">i915#8650</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/=
shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7757">i915#7757</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@v3d/v3d_submit_cl@bad-in-=
sync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-mtlp-4/igt@v3d/v3d_submit_csd@bad-pe=
rfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-tglu-7/igt@vc4/vc4_perfmon@destroy-i=
nvalid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-dg2-11/igt@vc4/vc4_tiling@set-get.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/77=
11">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_119844v3/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-tglu-6/igt@gem_barrier_race@remote-request@rcs0.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8211">=
i915#8211</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8234">i915#8234</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_119844v3/shard-tglu-7/igt@gem_barrier_race@remote-request@rcs=
0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-1/igt@gem_exec_endless@dispatch@rcs0.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#=
3778</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7016"=
>i915#7016</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7921">i915#7921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_119844v3/shard-dg2-12/igt@gem_exec_endless@dispatch@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
9844v3/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
19844v3/shard-rkl-2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13419/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_119844v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a> +1 similar issue</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13419/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_119844v3/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_119844v3/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7061">i915#7061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_119844v3/shard-dg2-7/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_119844v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-18/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7691">i915#76=
91</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_119844v3/shard-dg1-13/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i9=
15#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_119844v3/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13419/shard-tglu-2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sme=
m0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7940">i915#7940</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_119844v3/shard-tglu-3/igt@i915_pm_rpm@gem-execbuf-stress@e=
xtra-wait-smem0.html">PASS</a></p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13419/shard-dg1-15/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-sme=
m0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7940">i915#7940</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_119844v3/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress@e=
xtra-wait-smem0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3=
/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-glk7/igt@i915_pm_rps@waitboost.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8229">i915#8229</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119844v3/=
shard-glk7/igt@i915_pm_rps@waitboost.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_119844v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-e=
dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8787">i915#8787</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_119844v3/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-1=
28x42@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-stridechange.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/688=
0">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_119844v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-stridechan=
ge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspen=
d.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D103375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_119844v3/shard-dg2-8/igt@kms_vblank@pipe-a-ts-continuat=
ion-dpms-suspend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
9844v3/shard-dg2-12/igt@kms_content_protection@type1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7162">i915#7162<=
/a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tran=
sitions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_119844v3/shard-mtlp-2/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2=
017</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5954">=
i915#5954</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_119844v3/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13419/shard-dg1-18/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4=
078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_119844v3/shard-dg1-19/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)<=
/li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13419 -&gt; Patchwork_119844v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13419: 495f70657aa5f5302a5f6f27321c09fc51b60b77 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7401: 0c66a6560eda687effa9088659577a520d913908 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119844v3: 495f70657aa5f5302a5f6f27321c09fc51b60b77 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3561961062489252212==--
