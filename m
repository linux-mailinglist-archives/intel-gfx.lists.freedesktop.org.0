Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F5C4C942D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 20:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05FDB10E7AE;
	Tue,  1 Mar 2022 19:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B35E010E7AE;
 Tue,  1 Mar 2022 19:23:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE54AA47DF;
 Tue,  1 Mar 2022 19:23:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1264823226979686925=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Tue, 01 Mar 2022 19:23:25 -0000
Message-ID: <164616260567.8601.844339670625602983@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228190429.1358951-1-vivek.kasireddy@intel.com>
In-Reply-To: <20220228190429.1358951-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_Add_an_iterator_to_optimally_walk_over_holes_suitable_fo?=
 =?utf-8?q?r_an_allocation_=28rev2=29?=
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

--===============1264823226979686925==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/mm: Add an iterator to optimally walk over holes suitable for an allocation (rev2)
URL   : https://patchwork.freedesktop.org/series/100847/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11302_full -> Patchwork_22447_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22447_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22447_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22447_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-skl10/igt@drm_mm@all@replace.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl5/igt@drm_mm@all@replace.html

  * igt@gem_exec_schedule@preemptive-hang@vecs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/igt@gem_exec_schedule@preemptive-hang@vecs0.html

  * igt@gem_exec_schedule@submit-early-slice@bcs0:
    - shard-glk:          [PASS][4] -> [INCOMPLETE][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/igt@gem_exec_schedule@submit-early-slice@bcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/igt@gem_exec_schedule@submit-early-slice@bcs0.html

  * igt@kms_rotation_crc@primary-rotation-180:
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-kbl6/igt@kms_rotation_crc@primary-rotation-180.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl6/igt@kms_rotation_crc@primary-rotation-180.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-glk:          [SKIP][8] ([fdo#109271]) -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/igt@gem_exec_balancer@parallel-balancer.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][10] ([i915#2122]) -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-1-planes-downscale}:
    - {shard-tglu}:       NOTRUN -> [SKIP][12] +15 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-1-planes-downscale.html

  * {igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format}:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format.html

  * {igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation}:
    - {shard-dg1}:        NOTRUN -> [SKIP][15] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-18/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html

  * {igt@kms_plane_scaling@upscale-with-rotation-20x20}:
    - {shard-rkl}:        NOTRUN -> [SKIP][16] +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-5/igt@kms_plane_scaling@upscale-with-rotation-20x20.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11302_full and Patchwork_22447_full:

### New IGT tests (126) ###

  * igt@gem_create@create-clear:
    - Statuses : 9 pass(s)
    - Exec time: [32.65, 37.06] s

  * igt@gem_ctx_engines@none:
    - Statuses : 8 pass(s)
    - Exec time: [0.00] s

  * igt@gem_ctx_exec@basic-norecovery:
    - Statuses : 9 pass(s)
    - Exec time: [0.01, 0.26] s

  * igt@gem_ctx_sseu@mmap-args:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@gem_eio@context-create:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.28] s

  * igt@gem_exec_create@forked:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-scanout@bcs0:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.34] s

  * igt@gem_exec_reloc@basic-scanout@rcs0:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.57] s

  * igt@gem_exec_reloc@basic-scanout@vcs0:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.36] s

  * igt@gem_exec_reloc@basic-scanout@vcs1:
    - Statuses : 4 pass(s)
    - Exec time: [0.10, 0.18] s

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.32] s

  * igt@gem_exec_suspend@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_whisper@basic-contexts:
    - Statuses : 6 pass(s)
    - Exec time: [1.39, 22.89] s

  * igt@gem_exec_whisper@basic-contexts-all:
    - Statuses : 9 pass(s)
    - Exec time: [1.60, 21.84] s

  * igt@gem_exec_whisper@basic-contexts-forked:
    - Statuses : 7 pass(s)
    - Exec time: [5.18, 26.73] s

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - Statuses : 8 pass(s)
    - Exec time: [18.93, 34.05] s

  * igt@gem_exec_whisper@basic-contexts-priority:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.00, 24.87] s

  * igt@gem_exec_whisper@basic-fds:
    - Statuses : 9 pass(s)
    - Exec time: [2.06, 12.59] s

  * igt@gem_exec_whisper@basic-fds-all:
    - Statuses : 7 pass(s)
    - Exec time: [2.55, 23.90] s

  * igt@gem_exec_whisper@basic-fds-forked:
    - Statuses : 6 pass(s)
    - Exec time: [6.01, 24.95] s

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_whisper@basic-fds-priority:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.00, 25.40] s

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.00, 33.68] s

  * igt@gem_exec_whisper@basic-forked:
    - Statuses : 8 pass(s)
    - Exec time: [3.48, 22.11] s

  * igt@gem_exec_whisper@basic-forked-all:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_whisper@basic-normal:
    - Statuses : 9 pass(s)
    - Exec time: [0.95, 16.87] s

  * igt@gem_exec_whisper@basic-normal-all:
    - Statuses : 9 pass(s)
    - Exec time: [1.28, 22.17] s

  * igt@gem_exec_whisper@basic-queues:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.00, 22.56] s

  * igt@gem_exec_whisper@basic-queues-all:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.00, 12.49] s

  * igt@gem_exec_whisper@basic-queues-forked:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.00, 25.30] s

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.00, 29.98] s

  * igt@gem_exec_whisper@basic-queues-priority:
    - Statuses : 3 pass(s) 1 skip(s)
    - Exec time: [0.00, 25.27] s

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_whisper@basic-sync:
    - Statuses : 6 pass(s)
    - Exec time: [1.16, 21.73] s

  * igt@gem_exec_whisper@basic-sync-all:
    - Statuses : 7 pass(s)
    - Exec time: [1.34, 22.12] s

  * igt@gem_render_copy@linear:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_backlight@bad-brightness:
    - Statuses : 2 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@i915_pm_backlight@fade:
    - Statuses : 2 pass(s) 6 skip(s)
    - Exec time: [0.0, 2.36] s

  * igt@i915_pm_backlight@fade_with_dpms:
    - Statuses : 3 pass(s) 6 skip(s)
    - Exec time: [0.0, 5.12] s

  * igt@i915_pm_backlight@fade_with_suspend:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0, 5.04] s

  * igt@i915_pm_lpsp@screens-disabled:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.06] s

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.00] s

  * igt@i915_pm_rpm@cursor:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 36.01] s

  * igt@i915_pm_rpm@cursor-dpms:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 40.79] s

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.34] s

  * igt@i915_pm_rpm@dpms-lpsp:
    - Statuses : 4 pass(s) 6 skip(s)
    - Exec time: [0.0, 0.68] s

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - Statuses : 4 pass(s) 6 skip(s)
    - Exec time: [0.0, 9.32] s

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - Statuses : 2 pass(s) 7 skip(s)
    - Exec time: [0.0, 4.75] s

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - Statuses : 2 pass(s) 6 skip(s)
    - Exec time: [0.0, 0.23] s

  * igt@i915_pm_rpm@drm-resources-equal:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 5.84] s

  * igt@i915_pm_rpm@fences:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 17.03] s

  * igt@i915_pm_rpm@fences-dpms:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 16.80] s

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - Statuses : 4 pass(s) 2 skip(s)
    - Exec time: [0.0, 3.76] s

  * igt@i915_pm_rpm@gem-execbuf:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.09] s

  * igt@i915_pm_rpm@gem-idle:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 8.72] s

  * igt@i915_pm_rpm@gem-mmap-type:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@gem-mmap-type@gtt:
    - Statuses : 6 pass(s)
    - Exec time: [2.17, 22.92] s

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - Statuses : 6 pass(s)
    - Exec time: [1.02, 7.02] s

  * igt@i915_pm_rpm@gem-mmap-type@wb:
    - Statuses : 6 pass(s)
    - Exec time: [1.03, 6.49] s

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - Statuses : 6 pass(s)
    - Exec time: [1.04, 3.45] s

  * igt@i915_pm_rpm@gem-pread:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 6.25] s

  * igt@i915_pm_rpm@i2c:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 11.04] s

  * igt@i915_pm_rpm@legacy-planes:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@modeset-lpsp:
    - Statuses : 4 pass(s) 5 skip(s)
    - Exec time: [0.0, 4.85] s

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 46.16] s

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - Statuses : 4 pass(s) 5 skip(s)
    - Exec time: [0.0, 14.40] s

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - Statuses : 2 pass(s) 6 skip(s)
    - Exec time: [0.0, 3.62] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - Statuses : 3 pass(s) 6 skip(s)
    - Exec time: [0.0, 7.16] s

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - Statuses : 2 pass(s) 7 skip(s)
    - Exec time: [0.0, 4.89] s

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pc8-residency:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rpm@pm-caching:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 19.04] s

  * igt@i915_pm_rpm@pm-tiling:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@reg-read-ioctl:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 7.94] s

  * igt@i915_pm_rpm@sysfs-read:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.01] s

  * igt@i915_pm_rpm@system-suspend:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.04] s

  * igt@i915_pm_rpm@system-suspend-devices:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.58] s

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 86.65] s

  * igt@i915_pm_rpm@system-suspend-modeset:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rpm@universal-planes-dpms:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@min-max-config-idle:
    - Statuses : 1 fail(s) 8 pass(s)
    - Exec time: [0.14, 2.58] s

  * igt@i915_pm_rps@min-max-config-loaded:
    - Statuses : 8 pass(s)
    - Exec time: [0.33, 0.64] s

  * igt@i915_pm_rps@reset:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [3.52, 3.76] s

  * igt@i915_pm_rps@waitboost:
    - Statuses : 8 pass(s)
    - Exec time: [2.52, 2.77] s

  * igt@i915_pm_sseu@full-enable:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@kms_atomic_interruptible@atomic-setmode:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_content_protection@atomic-dpms:
    - Statuses : 3 skip(s) 2 timeout(s)
    - Exec time: [0.0, 121.44] s

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-type-0:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-type-1:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_flip@absolute-wf_vblank@d-hdmi-a3:
    - Statuses : 1 pass(s)
    - Exec time: [7.82] s

  * igt@kms_flip@basic-plain-flip@d-hdmi-a3:
    - Statuses : 1 pass(s)
    - Exec time: [0.65] s

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_flip@flip-vs-modeset-vs-hang:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_flip@nonexisting-fb:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_flip@nonexisting-fb-interruptible@d-hdmi-a3:
    - Statuses : 1 pass(s)
    - Exec time: [0.62] s

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a3:
    - Statuses : 1 pass(s)
    - Exec time: [7.95] s

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a3:
    - Statuses : 1 pass(s)
    - Exec time: [8.07] s

  * igt@kms_hdr@bpc-switch:
    - Statuses : 1 fail(s) 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.85] s

  * igt@kms_hdr@bpc-switch-dpms:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 5.81] s

  * igt@kms_hdr@bpc-switch-suspend:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 5.76] s

  * igt@kms_hdr@static-swap:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_hdr@static-toggle:
    - Statuses : 1 pass(s) 7 skip(s)
    - Exec time: [0.0, 3.74] s

  * igt@kms_hdr@static-toggle-dpms:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_hdr@static-toggle-suspend:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_lease@implicit-plane-lease:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@kms_lease@invalid-create-leases:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@kms_lease@lease-uevent:
    - Statuses : 8 pass(s)
    - Exec time: [1.01, 1.06] s

  * igt@kms_lease@lease_invalid_plane:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_lease@master-vs-lease:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_lease@multimaster-lease:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_lease@possible-crtcs-filtering:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@kms_mmap_write_crc@main:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [0.26, 23.60] s

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  * igt@prime_mmap@test_correct:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_mmap@test_userptr:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_vgem@basic-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@prime_vgem@basic-fence-blt:
    - Statuses : 7 pass(s)
    - Exec time: [0.08, 0.33] s

  * igt@prime_vgem@coherency-blt:
    - Statuses : 6 pass(s)
    - Exec time: [0.55, 18.55] s

  

Known issues
------------

  Here are the changes found in Patchwork_22447_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][17], [FAIL][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41]) ([i915#4392]) -> ([PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk1/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk1/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk6/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][67] -> [TIMEOUT][68] ([i915#3063] / [i915#3648])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([i915#4525])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][71] ([i915#5076]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][72] ([i915#4547])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl1/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][73] -> [FAIL][74] ([i915#2842]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][75] ([i915#2842]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][76] ([i915#2849])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#4270])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb2/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#768])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb6/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#4171])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][84] ([i915#4991])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl6/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109289])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2527] / [i915#2856])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_backlight@fade_with_dpms (NEW):
    - {shard-tglu}:       NOTRUN -> [SKIP][87] ([i915#1155])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglu-3/igt@i915_pm_backlight@fade_with_dpms.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][88] -> [SKIP][89] ([i915#4281])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#1937])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_lpsp@screens-disabled (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][91] ([i915#1902])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-6/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][92] ([i915#2684])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@drm-resources-equal (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][93] ([fdo#109308])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@fences (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][94] ([i915#1849])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-4/igt@i915_pm_rpm@fences.html

  * igt@i915_pm_rpm@pm-caching (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][95] ([i915#4077])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-16/igt@i915_pm_rpm@pm-caching.html

  * igt@i915_pm_rps@reset (NEW):
    - {shard-dg1}:        [PASS][96] -> [FAIL][97] ([i915#3719])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-dg1-16/igt@i915_pm_rps@reset.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-13/igt@i915_pm_rps@reset.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][98] -> [FAIL][99] ([i915#2521])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_interruptible@atomic-setmode (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][100] ([i915#1845]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-1/igt@kms_atomic_interruptible@atomic-setmode.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#110725] / [fdo#111614])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3777])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/index.html

--===============1264823226979686925==
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
<tr><td><b>Series:</b></td><td>drm/mm: Add an iterator to optimally walk ov=
er holes suitable for an allocation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100847/">https://patchwork.freedesktop.org/series/100847/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22447/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22447/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11302_full -&gt; Patchwork_22447_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22447_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22447_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22447_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-skl10/igt@drm_mm@all@replace.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl5/i=
gt@drm_mm@all@replace.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang@vecs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-glk9/igt@gem_exec_schedule@preemptive-h=
ang@vecs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@bcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-glk6/igt@gem_exec_schedule@submit-early-slice@bcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22447/shard-glk7/igt@gem_exec_schedule@submit-early-slice@bcs0.html">IN=
COMPLETE</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-180:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-kbl6/igt@kms_rotation_crc@primary-rotation-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22447/shard-kbl6/igt@kms_rotation_crc@primary-rotation-180.html">INCOMPLETE=
</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-glk9/igt@gem_exec_balancer@parallel-balancer.html">SKIP=
</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22447/shard-glk8/igt@gem_exec_balancer@parallel-balancer.html"=
>INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdm=
i-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22447/shard-glk4/igt@kms_flip@2x-plain-flip-ts-c=
heck@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-1-plan=
es-downscale}:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-tglu-3/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-25@pipe-a-hdmi-a-1-planes-downscale.html">SKIP</a> +15 simi=
lar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdm=
i-a-2-scaler-with-pixel-format}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-glk2/igt@kms_plane_scaling@scaler-with-pixel-format-uni=
ty-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk=
5/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-=
a-2-scaler-with-pixel-format.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-=
3-scaler-with-rotation}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-dg1-18/igt@kms_plane_scaling@scaler-wit=
h-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html">SKIP</a=
> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@upscale-with-rotation-20x20}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-rkl-5/igt@kms_plane_scaling@upscale-wit=
h-rotation-20x20.html">SKIP</a> +8 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11302_full and Patchwork_2=
2447_full:</p>
<h3>New IGT tests (126)</h3>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [32.65, 37.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@none:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-norecovery:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.01, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@context-create:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@bcs0:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@rcs0:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vcs0:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vcs1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.39, 22.89] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.60, 21.84] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.18, 26.73] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [18.93, 34.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 24.87] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.06, 12.59] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.55, 23.90] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [6.01, 24.95] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 25.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 33.68] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [3.48, 22.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.95, 16.87] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.28, 22.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 22.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 12.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 25.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 29.98] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>Statuses : 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 25.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-sync:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.16, 21.73] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-sync-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.34, 22.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>Statuses : 2 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade:</p>
<ul>
<li>Statuses : 2 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 2.36] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>Statuses : 3 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 5.12] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>Statuses : 3 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 5.04] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.00] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 36.01] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 40.79] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@debugfs-forcewake-user:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 14.34] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>Statuses : 4 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>Statuses : 4 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 9.32] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>Statuses : 2 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 4.75] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>Statuses : 2 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 5.84] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 17.03] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 16.80] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>Statuses : 4 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 3.76] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 8.72] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@gtt:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.17, 22.92] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.02, 7.02] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wb:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.03, 6.49] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.04, 3.45] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 6.25] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 11.04] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@legacy-planes:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>Statuses : 4 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 4.85] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>Statuses : 3 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 46.16] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>Statuses : 4 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 14.40] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>Statuses : 2 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 3.62] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>Statuses : 3 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 7.16] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>Statuses : 2 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 4.89] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pc8-residency:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-caching:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 19.04] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@reg-read-ioctl:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 7.94] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>Statuses : 5 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 4.01] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 13.04] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 13.58] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 86.65] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@universal-planes-dpms:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>Statuses : 1 fail(s) 8 pass(s)</li>
<li>Exec time: [0.14, 2.58] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.33, 0.64] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>Statuses : 1 fail(s) 7 pass(s)</li>
<li>Exec time: [3.52, 3.76] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.52, 2.77] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>Statuses : 3 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>Statuses : 3 skip(s) 2 timeout(s)</li>
<li>Exec time: [0.0, 121.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank@d-hdmi-a3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.82] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-hdmi-a3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-modeset-vs-hang:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@d-hdmi-a3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [8.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>Statuses : 1 fail(s) 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 4.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>Statuses : 3 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 5.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 5.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>Statuses : 1 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 3.74] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@implicit-plane-lease:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@invalid-create-leases:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-uevent:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.01, 1.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_invalid_plane:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@master-vs-lease:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@multimaster-lease:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@possible-crtcs-filtering:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_mmap_write_crc@main:</p>
<ul>
<li>Statuses : 1 fail(s) 7 pass(s)</li>
<li>Exec time: [0.26, 23.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-=
edp-1-planes-upscale-downscale:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_correct:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_userptr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-blt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.08, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-blt:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.55, 18.55] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22447_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11302/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11302/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11302/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11302/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302=
/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11302/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1302/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11302/shard-glk1/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22447/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tg=
lb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2447/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-kbl1/igt@gem_exec_balancer@parallel-out=
-fence.html">DMESG-WARN</a> ([i915#5076]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-skl1/igt@gem_exec_capture@pi@vcs0.html"=
>INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/sh=
ard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-iclb5/igt@gem_exec_fair@basic-throttle@=
rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-skl4/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-iclb2/igt@gem_pxp@verify-pxp-stale-buf-=
optout-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-iclb6/igt@gem_render_copy@yf-tiled-to-v=
ebox-linear.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22447/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</=
a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-apl3/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl=
8/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-skl6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-tglb3/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-tglu-3/igt@i915_pm_backlight@fade_with_=
dpms.html">SKIP</a> ([i915#1155])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-rkl-6/igt@i915_pm_lpsp@screens-disabled=
.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idl=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equ=
al.html">SKIP</a> ([fdo#109308])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-rkl-4/igt@i915_pm_rpm@fences.html">SKIP=
</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-caching (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-dg1-16/igt@i915_pm_rpm@pm-caching.html"=
>SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset (NEW):</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-dg1-16/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-13=
/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#3719])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11302/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22447/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-rkl-1/igt@kms_atomic_interruptible@atom=
ic-setmode.html">SKIP</a> ([i915#1845]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotat=
e-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22447/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; [SKIP][</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1264823226979686925==--
