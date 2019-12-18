Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A151123FCE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 07:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F346E225;
	Wed, 18 Dec 2019 06:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EFBD6E02E;
 Wed, 18 Dec 2019 06:51:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3741BA0075;
 Wed, 18 Dec 2019 06:51:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 18 Dec 2019 06:51:49 -0000
Message-ID: <157665190919.8356.8850936993206474303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Ensure_monotonic_rc6_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/pmu: Ensure monotonic rc6 (rev2)
URL   : https://patchwork.freedesktop.org/series/70998/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7585_full -> Patchwork_15816_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15816_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15816_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15816_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-snb:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-snb6/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-tglb:         [PASS][2] -> [DMESG-WARN][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  
Known issues
------------

  Here are the changes found in Patchwork_15816_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#456])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@gem_ctx_isolation@vecs0-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb3/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#679])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl2/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][12] -> [FAIL][13] ([i915#490])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110854])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112080]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@gem_exec_basic@basic-vcs1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb8/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#435]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@gem_exec_create@forked.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb9/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-hang-bsd1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +7 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@gem_exec_schedule@preempt-hang-bsd1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb6/igt@gem_exec_schedule@preempt-hang-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#463])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [PASS][24] -> [INCOMPLETE][25] ([fdo#109100] / [i915#140] / [i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb5/igt@gem_persistent_relocs@forked-thrashing.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([fdo#103927])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl2/igt@gem_workarounds@suspend-resume.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([fdo#112057])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@i915_selftest@live_requests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb5/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#747])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl3/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][32] -> [DMESG-WARN][33] ([i915#109])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#54])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-hsw:          [PASS][36] -> [DMESG-WARN][37] ([IGT#6])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#54])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#460])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][44] -> [FAIL][45] ([i915#96])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#79])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-tilingchange:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#49]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tilingchange.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#456] / [i915#460] / [i915#474])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([i915#456] / [i915#460])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [PASS][54] -> [INCOMPLETE][55] ([fdo#103665] / [i915#648] / [i915#667])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([fdo#108145] / [i915#265])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#69]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@disabled-read-error:
    - shard-iclb:         [PASS][60] -> [DMESG-WARN][61] ([i915#645])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@perf@disabled-read-error.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb6/igt@perf@disabled-read-error.html

  * igt@prime_busy@wait-hang-bsd:
    - shard-hsw:          [PASS][62] -> [INCOMPLETE][63] ([i915#61])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw6/igt@prime_busy@wait-hang-bsd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-hsw5/igt@prime_busy@wait-hang-bsd.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][64] ([i915#679]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl10/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][66] ([fdo#111735]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb4/igt@gem_ctx_shared@q-smoketest-all.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb9/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][68] ([i915#461]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][70] ([i915#677]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][72] ([fdo#111870]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][74] ([i915#456] / [i915#460]) -> [PASS][75] +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb5/igt@gem_workarounds@suspend-resume-context.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@mock_requests:
    - shard-glk:          [DMESG-WARN][76] ([i915#802]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-glk5/igt@i915_selftest@mock_requests.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-glk5/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-hsw:          [DMESG-WARN][78] ([IGT#6]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-hsw8/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][80] ([i915#54]) -> [PASS][81] +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-kbl:          [FAIL][82] ([i915#54]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
    - shard-kbl:          [INCOMPLETE][84] ([fdo#103665] / [i915#667]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl3/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-kbl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +8 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt:
    - shard-iclb:         [INCOMPLETE][88] ([i915#123] / [i915#140]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [FAIL][90] ([i915#49]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][94] ([fdo#108145]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-skl:          [DMESG-WARN][96] ([i915#109]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl6/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][98] ([i915#31]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw4/igt@kms_setmode@basic.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-hsw8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][100] ([i915#69]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][102] ([i915#82]) -> [DMESG-WARN][103] ([i915#443] / [i915#444])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb1/igt@gem_eio@kms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][104] ([i915#832]) -> [DMESG-FAIL][105] ([i915#44])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][106] ([i915#468]) -> [FAIL][107] ([i915#454])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][108] ([fdo#112021]) -> [SKIP][109] ([fdo#112016] / [fdo#112021])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][110] ([i915#648]) -> [INCOMPLETE][111] ([fdo#112391] / [i915#648] / [i915#667])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][112] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][113] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][114] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][115] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][116] ([fdo#111249] / [k.org#204565]) -> ([FAIL][117], [FAIL][118]) ([fdo#111249] / [i915#698] / [k.org#204565])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7585/shard-snb5/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-snb6/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/shard-snb1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111249]: https://bugs.freedesktop.org/show_bug.cgi?id=111249
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#645]: https://gitlab.freedesktop.org/drm/intel/issues/645
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#802]: https://gitlab.freedesktop.org/drm/intel/issues/802
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7585 -> Patchwork_15816

  CI-20190529: 20190529
  CI_DRM_7585: 96c4bb3771fb5fda19a0fa83ec2e7dba9bf6f878 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15816: 42a7368fcdfcd2a54d99583c1be10b9bb7d8ce8d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15816/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
