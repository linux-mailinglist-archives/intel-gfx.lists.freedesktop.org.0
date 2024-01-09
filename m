Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 779898288E8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 16:22:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A9710E475;
	Tue,  9 Jan 2024 15:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5044A10E43F;
 Tue,  9 Jan 2024 15:22:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0254396592374007099=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Allow_PSR_mode_changes_with?=
 =?utf-8?q?out_full_modeset?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 09 Jan 2024 15:22:40 -0000
Message-ID: <170481376031.215423.8184370851183866504@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240109100517.1947414-1-jouni.hogander@intel.com>
In-Reply-To: <20240109100517.1947414-1-jouni.hogander@intel.com>
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

--===============0254396592374007099==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Allow PSR mode changes without full modeset
URL   : https://patchwork.freedesktop.org/series/128360/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14100_full -> Patchwork_128360v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128360v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128360v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/index.html

Participating hosts (9 -> 9)
------------------------------

  Additional (1): shard-snb-0 
  Missing    (1): pig-kbl-iris 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128360v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg2:          [PASS][1] -> [FAIL][2] +2 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@device_reset@unbind-reset-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg2:          NOTRUN -> [WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [PASS][4] -> [WARN][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@i915_suspend@basic-s3-without-i915.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_flip@dpms-off-confusion-interruptible@b-hdmi-a2:
    - shard-rkl:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/igt@kms_flip@dpms-off-confusion-interruptible@b-hdmi-a2.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_flip@dpms-off-confusion-interruptible@b-hdmi-a2.html

  
#### Warnings ####

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          [SKIP][8] ([i915#6524] / [i915#6805]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_prime@basic-crc-hybrid.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html

  
Known issues
------------

  Here are the changes found in Patchwork_128360v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#8411])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#6230])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@api_intel_bb@crc32.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#7701])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#8414]) +5 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          NOTRUN -> [FAIL][14] ([i915#7742])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@eof:
    - shard-dg2:          [PASS][15] -> [SKIP][16] ([i915#2582]) +2 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@fbdev@eof.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@fbdev@eof.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][17] -> [SKIP][18] ([i915#1849] / [i915#2582])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@fbdev@info.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@fbdev@info.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][19] -> [INCOMPLETE][20] ([i915#7297])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#7697]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#9310])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_compute@compute-square.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#8555])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#280])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#280]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][26] -> [ABORT][27] ([i915#7975] / [i915#8213] / [i915#8398])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-8/igt@gem_eio@hibernate.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#6334])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][29] ([i915#6344])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-glk:          NOTRUN -> [FAIL][30] ([i915#9606])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#2842])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4473])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][34] ([i915#2842]) +3 other tests fail
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][35] -> [FAIL][36] ([i915#2842]) +1 other test fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3539])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_params@secure-non-root:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([fdo#112283]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3281])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3281]) +5 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_reloc@basic-range:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3281])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#3281]) +2 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4537] / [i915#4812])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-self:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#2575]) +251 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#4812])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][46] -> [ABORT][47] ([i915#7975] / [i915#8213])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][48] ([i915#7975] / [i915#8213])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-tglu:         [PASS][49] -> [INCOMPLETE][50] ([i915#6755] / [i915#7392] / [i915#9857])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4860])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#2190])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#4613]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#9643]) +6 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#4613]) +6 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk7/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][56] -> [DMESG-WARN][57] ([i915#4936] / [i915#5493])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [PASS][58] -> [TIMEOUT][59] ([i915#5493])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#4613])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_lmem_swapping@verify.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#284])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_media_vme.html

  * igt@gem_mmap@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4083]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4077]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4077])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_mmap_gtt@pf-nonblock.html

  * igt@gem_mmap_wc@write-read-distinct:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4083])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_mmap_wc@write-read-distinct.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3282]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#3282])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_pread@snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#4270]) +3 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#4270]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4270]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#2575] / [i915#5190]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#8428])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_render_copy@yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#8411])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#3282]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3297])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3297] / [i915#4958])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3297])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3297]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_vm_create@invalid-create:
    - shard-snb:          NOTRUN -> [SKIP][79] ([fdo#109271]) +66 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@gem_vm_create@invalid-create.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([fdo#109289]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][81] -> [INCOMPLETE][82] ([i915#5566])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#2856])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#2527])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#2527] / [i915#2856])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#2527])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4881])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][88] -> [INCOMPLETE][89] ([i915#9820] / [i915#9849])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][90] ([i915#9407])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rpm@reg-read-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#9980]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_pm_rpm@reg-read-ioctl.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][92] -> [INCOMPLETE][93] ([i915#7790])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb6/igt@i915_pm_rps@reset.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][94] ([i915#9311])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@i915_selftest@mock@memory_region.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#8709]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#8709]) +11 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][97] ([i915#8247]) +3 other tests fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][98] ([i915#8247]) +3 other tests fail
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-14/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5286]) +2 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4538] / [i915#5286])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([fdo#111615] / [i915#5286])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][102] -> [FAIL][103] ([i915#5138])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([fdo#111614]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([fdo#111614]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#3638])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][107] -> [FAIL][108] ([i915#3743])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([fdo#111614] / [i915#3638]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5190]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([fdo#111615]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#4538])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([fdo#109315] / [i915#5190]) +7 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([fdo#110723]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4538] / [i915#5190])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([fdo#111615])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#2705])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#5354] / [i915#6095]) +10 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#5354] / [i915#6095]) +13 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([fdo#109315]) +60 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-gen12-rc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#5354]) +11 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#5354] / [i915#6095]) +10 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#5354] / [i915#6095]) +10 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#5354]) +14 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3742])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([fdo#111827])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([fdo#111827])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#7828]) +4 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#7828]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#7828]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#7828]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#7828]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3116])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3116] / [i915#3299])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#7118])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7118])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#6944])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#8814])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3555]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3555])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3359]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([fdo#109274] / [i915#5354])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#4103])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([fdo#109274])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#9809]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-snb:          [PASS][146] -> [SKIP][147] ([fdo#109271] / [fdo#111767])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][148] ([i915#2346])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-bo@all-pipes:
    - shard-mtlp:         [PASS][149] -> [DMESG-WARN][150] ([i915#2017])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3804])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3469])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#4854])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#1839])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#1839])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#109274])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([fdo#109274] / [i915#3637]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#8381])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#3637])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][160] ([fdo#111825] / [i915#9934])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([fdo#111825]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#2587] / [i915#2672])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#2672])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#2672])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([fdo#109285])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([fdo#111825] / [i915#1825]) +19 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([fdo#111825]) +7 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
    - shard-snb:          [PASS][168] -> [SKIP][169] ([fdo#109271]) +6 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][170] -> [SKIP][171] ([fdo#109315]) +72 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3458]) +6 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#3023]) +12 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3458]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#8708]) +2 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([fdo#110189]) +4 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8708]) +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#1825]) +5 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([fdo#109280]) +8 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#8708]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#8228])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#8228])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#4816])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([fdo#109289])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([fdo#109289])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][186] ([i915#7862]) +1 other test fail
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][187] ([i915#8292])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#9423]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][189] ([fdo#109271]) +337 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#9423]) +7 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#9423]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#2575] / [i915#9423]) +18 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#5176] / [i915#9423]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#9423]) +7 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#5235] / [i915#9423]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#5235]) +5 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#5235]) +3 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#5235]) +3 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#5235]) +7 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][200] -> [SKIP][201] ([i915#4281])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#9980]) +7 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_pm_rpm@basic-pci-d3-state.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][204] -> [SKIP][205] ([i915#9519]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#9519])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([fdo#109293] / [fdo#109506])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#9683])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][209] ([fdo#111068] / [i915#9683]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-rkl:          [PASS][210] -> [INCOMPLETE][211] ([i915#8875] / [i915#9569])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-270.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#3555]) +4 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#3555] / [i915#8809])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [PASS][214] -> [FAIL][215] ([i915#9196])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-rkl:          [PASS][216] -> [FAIL][217] ([i915#9196])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
    - shard-snb:          NOTRUN -> [FAIL][218] ([i915#9196])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3555]) +2 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#2437])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][221] ([fdo#109271] / [i915#2437]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@oa-exponents:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#5608]) +24 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf@oa-exponents.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([fdo#109289]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@invalid-init:
    - shard-dg2:          [PASS][224] -> [SKIP][225] ([i915#5608]) +12 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@perf_pmu@invalid-init.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#8516])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#9917])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-dg2:          [PASS][228] -> [SKIP][229] ([i915#2575]) +289 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-tglu:         NOTRUN -> [SKIP][230] ([fdo#109315] / [i915#2575]) +2 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@v3d/v3d_submit_cl@bad-multisync-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#2575]) +3 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@v3d/v3d_submit_cl@bad-multisync-pad.html

  * igt@v3d/v3d_submit_cl@multi-and-single-sync:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([fdo#109315]) +7 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@v3d/v3d_submit_cl@multi-and-single-sync.html

  * igt@v3d/v3d_submit_csd@bad-multisync-pad:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#2575]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@v3d/v3d_submit_csd@bad-multisync-pad.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#7711]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#7711]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#7711]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#2575]) +2 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#7711]) +3 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][239] ([i915#5784]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-19/igt@gem_eio@unwedge-stress.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-13/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [FAIL][241] ([i915#2842]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@gem_exec_fair@basic-none@vecs0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][243] ([i915#2842]) -> [PASS][244] +1 other test pass
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [INCOMPLETE][245] ([i915#9200] / [i915#9849]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [INCOMPLETE][247] ([i915#9200] / [i915#9849]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][249] ([i915#3591]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [FAIL][251] ([i915#10031]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [FAIL][253] ([i915#3743]) -> [PASS][254] +3 other tests pass
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [DMESG-WARN][255] ([i915#10007]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [SKIP][257] ([fdo#109271]) -> [PASS][258] +11 other tests pass
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][259] ([i915#9295]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][261] ([i915#9519]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][263] ([IGT#2]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_sysfs_edid_timing.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  
#### Warnings ####

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          [SKIP][265] ([i915#8414]) -> [SKIP][266] ([i915#5608]) +3 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          [SKIP][267] ([i915#7697]) -> [SKIP][268] ([i915#2575]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          [SKIP][269] ([i915#8555]) -> [SKIP][270] ([i915#2575]) +2 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          [SKIP][271] ([i915#280]) -> [SKIP][272] ([i915#2575])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          [SKIP][273] ([i915#4812]) -> [SKIP][274] ([i915#2575]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_balancer@bonded-false-hang.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-dg2:          [FAIL][275] ([i915#9606]) -> [SKIP][276] ([i915#2575])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_capture@many-4k-incremental.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          [SKIP][277] ([i915#3539]) -> [SKIP][278] ([i915#2575])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_fair@basic-sync.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          [SKIP][279] ([i915#3539] / [i915#4852]) -> [SKIP][280] ([i915#2575]) +6 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_exec_flush@basic-wb-ro-before-default.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          [SKIP][281] ([fdo#109283] / [i915#5107]) -> [SKIP][282] ([fdo#109283] / [i915#2575])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_params@rsvd2-dirt.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          [SKIP][283] ([i915#3281]) -> [SKIP][284] ([i915#2575]) +16 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          [SKIP][285] ([i915#4537] / [i915#4812]) -> [SKIP][286] ([i915#2575]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          [SKIP][287] ([i915#4860]) -> [SKIP][288] ([i915#2575]) +4 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          [SKIP][289] ([i915#8289]) -> [SKIP][290] ([i915#2575])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_media_fill@media-fill.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-dg2:          [SKIP][291] ([i915#284]) -> [SKIP][292] ([i915#2575])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_media_vme.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-dg2:          [SKIP][293] ([i915#4077]) -> [SKIP][294] ([i915#2575]) +20 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_mmap_gtt@fault-concurrent-x.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          [SKIP][295] ([i915#4083]) -> [SKIP][296] ([i915#2575]) +12 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_mmap_wc@copy.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          [SKIP][297] ([i915#3282]) -> [SKIP][298] ([i915#2575]) +9 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_partial_pwrite_pread@write-uncached.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          [SKIP][299] ([i915#4270]) -> [SKIP][300] ([i915#2575]) +4 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          [SKIP][301] ([i915#5190]) -> [SKIP][302] ([i915#2575] / [i915#5190]) +14 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg2:          [SKIP][303] ([i915#4079]) -> [SKIP][304] ([i915#2575]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          [SKIP][305] ([i915#4885]) -> [SKIP][306] ([i915#2575])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_softpin@evict-snoop-interruptible.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          [SKIP][307] ([i915#3297]) -> [SKIP][308] ([i915#2575])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          [SKIP][309] ([i915#3297] / [i915#4880]) -> [SKIP][310] ([i915#2575]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          [SKIP][311] ([i915#3297] / [i915#4958]) -> [SKIP][312] ([i915#2575])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          [SKIP][313] ([fdo#109289]) -> [SKIP][314] ([i915#2575]) +5 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          [SKIP][315] ([i915#2856]) -> [SKIP][316] ([i915#2575]) +7 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gen9_exec_parse@unaligned-access.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_fb_tiling:
    - shard-dg2:          [SKIP][317] ([i915#4881]) -> [SKIP][318] ([i915#2575])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@i915_fb_tiling.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][319] ([i915#9849]) -> [INCOMPLETE][320] ([i915#9820] / [i915#9849])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu:         [FAIL][321] ([i915#3591]) -> [WARN][322] ([i915#2681])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-tglu:         [WARN][323] ([i915#2681]) -> [FAIL][324] ([i915#3591])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          [SKIP][325] ([i915#6621]) -> [SKIP][326] ([i915#2575])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@i915_pm_rps@basic-api.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          [SKIP][327] ([i915#6188]) -> [SKIP][328] ([i915#2575])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@i915_query@query-topology-coherent-slice-mask.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          [SKIP][329] ([fdo#109302]) -> [SKIP][330] ([i915#2575])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@i915_query@query-topology-unsupported.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          [SKIP][331] ([i915#4212]) -> [SKIP][332] ([i915#2575]) +2 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          [SKIP][333] ([i915#4215] / [i915#5190]) -> [SKIP][334] ([i915#2575] / [i915#5190])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][335] ([i915#9531]) -> [SKIP][336] ([i915#2575])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][337] ([fdo#111614]) -> [SKIP][338] ([fdo#109315]) +8 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][339] ([i915#5190]) -> [SKIP][340] ([fdo#109315] / [i915#5190]) +13 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][341] ([i915#4538] / [i915#5190]) -> [SKIP][342] ([fdo#109315] / [i915#5190]) +10 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          [SKIP][343] ([i915#2705]) -> [SKIP][344] ([fdo#109315])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_big_joiner@invalid-modeset.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][345] ([i915#5354]) -> [SKIP][346] ([fdo#109315]) +162 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          [SKIP][347] ([fdo#111827]) -> [SKIP][348] ([i915#2575]) +3 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_chamelium_color@degamma.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-dg2:          [SKIP][349] ([i915#7828]) -> [SKIP][350] ([i915#2575]) +18 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-snb:          [SKIP][351] ([fdo#109271]) -> [INCOMPLETE][352] ([i915#8816])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb6/igt@kms_content_protection@atomic-dpms.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][353] ([i915#3299]) -> [SKIP][354] ([i915#2575])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][355] ([i915#9433]) -> [SKIP][356] ([i915#9424])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][357] ([i915#7118]) -> [SKIP][358] ([i915#2575]) +1 other test skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_content_protection@type1.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][359] ([i915#3359]) -> [SKIP][360] ([i915#2575]) +2 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          [SKIP][361] ([i915#3555]) -> [SKIP][362] ([i915#2575]) +11 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][363] ([fdo#109274] / [i915#5354]) -> [SKIP][364] ([i915#2575]) +9 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          [SKIP][365] ([fdo#109274] / [fdo#111767] / [i915#5354]) -> [SKIP][366] ([i915#2575])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][367] ([i915#4103] / [i915#4213]) -> [SKIP][368] ([i915#2575]) +2 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][369] ([i915#9833]) -> [SKIP][370] ([fdo#109315])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][371] ([i915#3840] / [i915#9688]) -> [SKIP][372] ([fdo#109315])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          [SKIP][373] ([i915#3555] / [i915#3840]) -> [SKIP][374] ([fdo#109315]) +1 other test skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          [SKIP][375] ([i915#3469]) -> [SKIP][376] ([fdo#109315])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_fbcon_fbt@psr.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][377] ([i915#3955]) -> [SKIP][378] ([fdo#110189] / [i915#3955])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          [SKIP][379] ([i915#658]) -> [SKIP][380] ([i915#2575])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_feature_discovery@psr1.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          [SKIP][381] ([fdo#109274] / [fdo#111767]) -> [SKIP][382] ([i915#2575]) +2 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          [SKIP][383] ([fdo#109274]) -> [SKIP][384] ([i915#2575]) +13 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          [SKIP][385] ([i915#8381]) -> [SKIP][386] ([i915#2575]) +1 other test skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_flip@flip-vs-fences-interruptible.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [FAIL][387] ([i915#6880]) -> [SKIP][388] ([fdo#109315])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][389] ([i915#8708]) -> [SKIP][390] ([fdo#109315]) +38 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][391] -> [SKIP][392] ([fdo#109315]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][393] ([i915#3458]) -> [SKIP][394] ([fdo#109315]) +38 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][395] ([i915#3555] / [i915#8228]) -> [SKIP][396] ([i915#2575]) +2 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][397] ([i915#6301]) -> [SKIP][398] ([i915#2575])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_panel_fitting@legacy.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_panel_fitting@legacy.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          [SKIP][399] ([i915#9685]) -> [SKIP][400] ([fdo#109315]) +3 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          [SKIP][401] ([i915#5978]) -> [SKIP][402] ([fdo#109315])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][403] ([i915#4281]) -> [SKIP][404] ([i915#3361])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          [SKIP][405] ([i915#8430]) -> [SKIP][406] ([fdo#109315])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg2:          [SKIP][407] ([fdo#109293] / [fdo#109506]) -> [SKIP][408] ([i915#9980]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_pm_rpm@pc8-residency.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          [SKIP][409] ([i915#9683]) -> [SKIP][410] ([fdo#109315]) +9 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_psr2_su@page_flip-p010.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][411] ([i915#4235] / [i915#5190]) -> [SKIP][412] ([i915#2575] / [i915#5190]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          [SKIP][413] ([i915#4235]) -> [SKIP][414] ([i915#2575]) +3 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          [SKIP][415] ([i915#9906]) -> [SKIP][416] ([i915#2575])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_vrr@flip-basic-fastset.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          [SKIP][417] ([i915#2437]) -> [SKIP][418] ([i915#2575])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_writeback@writeback-check-output.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg2:          [SKIP][419] ([i915#2437] / [i915#9412]) -> [SKIP][420] ([i915#2575])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          [SKIP][421] ([i915#2436]) -> [SKIP][422] ([i915#5608])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          [SKIP][423] ([i915#7387]) -> [SKIP][424] ([i915#5608])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@perf@global-sseu-config.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf@global-sseu-config.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          [SKIP][425] ([i915#3291] / [i915#3708]) -> [SKIP][426] ([i915#2575]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@prime_vgem@basic-write.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          [SKIP][427] ([i915#3708] / [i915#4077]) -> [SKIP][428] ([i915#2575]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@prime_vgem@coherency-gtt.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          [SKIP][429] ([i915#3708]) -> [SKIP][430] ([i915#2575]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@prime_vgem@fence-write-hang.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          [SKIP][431] ([i915#9917]) -> [SKIP][432] ([i915#2575])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@sriov_basic@bind-unbind-vf.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@sriov_basic@bind-unbind-vf.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          [SKIP][433] ([i915#4818]) -> [SKIP][434] ([i915#2575] / [i915#4818])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
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
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#10007]: https://gitlab.freedesktop.org/drm/intel/issues/10007
  [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
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
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://git

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/index.html

--===============0254396592374007099==
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
<tr><td><b>Series:</b></td><td>Allow PSR mode changes without full modeset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128360/">https://patchwork.freedesktop.org/series/128360/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14100_full -&gt; Patchwork_128360v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128360v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128360v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/index.html</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>Additional (1): shard-snb-0 <br />
  Missing    (1): pig-kbl-iris </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128360v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_suspend@basic-s3-without-i915.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/igt@kms_flip@dpms-off-confusion-interruptible@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_flip@dpms-off-confusion-interruptible@b-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_prime@basic-crc-hybrid:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524] / [i915#6805]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128360v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#7701])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_compute@compute-square.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-8/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213] / [i915#8398])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@gem_exec_capture@many-4k-incremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_exec_fair@basic-none-solo.html">SKIP</a> ([i915#4473])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_exec_fair@basic-throttle.html">SKIP</a> (<a href="https://git">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_exec_reloc@basic-range.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +251 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-5/igt@gem_exec_whisper@basic-fds-priority-all.html">INCOMPLETE</a> ([i915#6755] / [i915#7392] / [i915#9857])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_fence_thrash@bo-write-verify-x.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_lmem_swapping@basic.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#9643]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk7/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#4613]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> ([i915#4936] / [i915#5493])</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_lmem_swapping@verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_mmap@bad-offset.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_mmap_gtt@big-copy-odd.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_mmap_gtt@pf-nonblock.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_mmap_wc@write-read-distinct.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_render_copy@yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-create:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@gem_vm_create@invalid-create.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +66 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> ([i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#9820] / [i915#9849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> ([i915#9407])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@reg-read-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_pm_rpm@reg-read-ioctl.html">SKIP</a> ([i915#9980]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb5/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-14/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html">FAIL</a> ([i915#8247]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a> / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a> / [i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / [i915#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110723">fdo#110723</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_big_joiner@2x-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_ccs@pipe-a-crc-primary-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_ccs@pipe-b-bad-aux-stride-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#5354] / [i915#6095]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_ccs@pipe-b-ccs-on-another-bo-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_ccs@pipe-b-crc-primary-basic-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#5354]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_ccs@pipe-c-bad-aux-stride-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#5354] / [i915#6095]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_chamelium_color@ctm-green-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_chamelium_color@ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_content_protection@lic.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-64x21.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> ([i915#9809]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / [i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>) +7 other tests skip</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +72 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +337 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-2.html">SKIP</a> ([i915#9423]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#9423]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#9423]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#5235] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#5235]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#5235]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html">SKIP</a> ([i915#9980]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109293">fdo#109293</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a> / [i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_rotation_crc@primary-rotation-270.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html">INCOMPLETE</a> ([i915#8875] / [i915#9569])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@kms_scaling_modes@scaling-mode-full.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#8809])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf@oa-exponents.html">SKIP</a> ([i915#5608]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@perf_pmu@invalid-init.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf_pmu@invalid-init.html">SKIP</a> ([i915#5608]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +289 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@v3d/v3d_perfmon@get-values-invalid-pad.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@v3d/v3d_submit_cl@bad-multisync-pad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multi-and-single-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@v3d/v3d_submit_cl@multi-and-single-sync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-pad:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@v3d/v3d_submit_csd@bad-multisync-pad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@vc4/vc4_tiling@get-bad-handle.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-mtlp-8/igt@vc4/vc4_wait_bo@used-bo-0ns.html">SKIP</a> ([i915#7711]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html">SKIP</a> ([i915#7711]) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-19/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-13/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#9200] / [i915#9849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#9200] / [i915#9849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10031">i915#10031</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10007">i915#10007</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#5608]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#4812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_capture@many-4k-incremental.html">FAIL</a> ([i915#9606]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_capture@many-4k-incremental.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_fair@basic-sync.html">SKIP</a> (<a href="https://git">i915#3539</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_fair@basic-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://git">i915#3539</a> / [i915#4852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a> / [i915#5107]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283">fdo#109283</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4537] / [i915#4812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> ([i915#4860]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/284">i915#284</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_mmap_wc@copy.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_mmap_wc@copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_partial_pwrite_pread@write-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#5190]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / [i915#4880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / [i915#4958]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_fb_tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#9849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#9820] / [i915#9849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#6621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> ([i915#6188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302">fdo#109302</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / [i915#5190]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / [i915#5190]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +162 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_chamelium_color@degamma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_chamelium_color@degamma.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-snb6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-snb7/igt@kms_content_protection@atomic-dpms.html">INCOMPLETE</a> ([i915#8816])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9433]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / [i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3469">i915#3469</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / [i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">FAIL</a> ([i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> ([i915#5978]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109293">fdo#109293</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> ([i915#9980]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#4235] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> ([i915#4235]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a> / [i915#9412]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> ([i915#5608])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@perf@global-sseu-config.html">SKIP</a> ([i915#7387]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@perf@global-sseu-config.html">SKIP</a> ([i915#5608])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / [i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([i915#3708] / [i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-5/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> ([i915#9917]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14100/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([i915#4818]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128360v1/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a> / [i915#4818])</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============0254396592374007099==--
