Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7139E55E5CE
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 17:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55DD112760;
	Tue, 28 Jun 2022 15:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 226911128CC;
 Tue, 28 Jun 2022 15:49:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB00CA47EB;
 Tue, 28 Jun 2022 15:49:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3686497222905610774=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Tue, 28 Jun 2022 15:49:56 -0000
Message-ID: <165643139682.14504.6193430763439989108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
In-Reply-To: <20220627105939.657782-1-arun.r.murthy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_wait_on_timeout_before_retry?=
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

--===============3686497222905610774==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: wait on timeout before retry
URL   : https://patchwork.freedesktop.org/series/105660/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11816_full -> Patchwork_105660v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105660v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105660v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105660v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk1/igt@gem_ctx_persistence@smoketest.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_parallel@fds@rcs0:
    - shard-apl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl4/igt@gem_exec_parallel@fds@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl8/igt@gem_exec_parallel@fds@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-iclb:         [WARN][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_vblank@pipe-d-wait-busy-hang:
    - {shard-tglu}:       [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglu-1/igt@kms_vblank@pipe-d-wait-busy-hang.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglu-4/igt@kms_vblank@pipe-d-wait-busy-hang.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-eq-bvec2-bvec2-using-if:
    - pig-skl-6260u:      NOTRUN -> [CRASH][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/pig-skl-6260u/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-eq-bvec2-bvec2-using-if.html

  * spec@ext_texture_srgb@multisample-fast-clear gl_ext_texture_srgb:
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][10]
   [10]: None

  
Known issues
------------

  Here are the changes found in Patchwork_105660v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [FAIL][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) ([i915#5032]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +77 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@feature_discovery@display-3x.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#3555] / [i915#5325])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4525]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2842]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][64] -> [FAIL][65] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][68] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#4613])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][70] ([i915#2658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#3323])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2527] / [i915#2856])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#454])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#4387])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@hangcheck:
    - shard-tglb:         [PASS][76] -> [DMESG-WARN][77] ([i915#5591])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb7/igt@i915_selftest@live@hangcheck.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][78] -> [INCOMPLETE][79] ([i915#5183])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/igt@i915_selftest@mock@requests.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][80] -> [INCOMPLETE][81] ([i915#4817] / [i915#4939])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/igt@i915_suspend@fence-restore-untiled.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#5286])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111614])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][84] ([i915#3763])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#111615])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3689] / [i915#6095])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#111615] / [i915#3689]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3689]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#3742])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium@dp-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_chamelium@vga-hpd-enable-disable-mode:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl3/igt@kms_chamelium@vga-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-glk:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-snb:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-snb5/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_cursor_crc@cursor-offscreen@pipe-a-dp-1-512x170:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +46 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl3/igt@kms_cursor_crc@cursor-offscreen@pipe-a-dp-1-512x170.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109274])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#5287])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109274] / [fdo#111825]) +12 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][103] -> [DMESG-WARN][104] ([i915#180]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#1888])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109280] / [fdo#111825]) +7 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [PASS][108] -> [FAIL][109] ([i915#1188])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-kbl3/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271]) +29 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-skl:          [PASS][111] -> [DMESG-WARN][112] ([i915#1982])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#5176]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#5235]) +3 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#658]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-tglb:         NOTRUN -> [FAIL][118] ([i915#132] / [i915#3467]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][119] -> [SKIP][120] ([fdo#109441]) +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb8/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-snb:          NOTRUN -> [SKIP][121] ([fdo#109271]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-snb5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][122] -> [FAIL][123] ([i915#1722])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/igt@perf@polling-small-buf.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109291])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@prime_vgem@fence-write-hang:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#109295])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@prime_vgem@fence-write-hang.html

  * igt@sw_sync@sync_merge_same:
    - shard-tglb:         NOTRUN -> [FAIL][126] ([i915#6140])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@sw_sync@sync_merge_same.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#2994])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@sema-10:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#2994])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][129] ([i915#2582]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@fbdev@eof.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@fbdev@eof.html

  * igt@fbdev@info:
    - {shard-dg1}:        [SKIP][131] ([i915#2582]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@fbdev@info.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-16/igt@fbdev@info.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][133] ([i915#658]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb7/igt@feature_discovery@psr2.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][135] ([i915#6252]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-1/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@bsd1:
    - {shard-dg1}:        [FAIL][137] ([i915#4883]) -> [PASS][138] +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-18/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [TIMEOUT][139] ([i915#3063]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][141] ([i915#3070]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb2/igt@gem_eio@unwedge-stress.html
    - shard-tglb:         [FAIL][143] ([i915#5784]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][145] ([i915#4525]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][147] ([i915#2842]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][149] ([i915#2842]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][151] ([i915#2842]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - {shard-rkl}:        [SKIP][153] ([i915#6251]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-1/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-rkl}:        [SKIP][155] ([i915#3281]) -> [PASS][156] +7 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [DMESG-WARN][157] ([i915#118]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][159] ([i915#4936]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@coherency:
    - {shard-rkl}:        [SKIP][161] ([fdo#111656]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@gem_mmap_gtt@coherency.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          [INCOMPLETE][163] ([i915#5161]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - {shard-rkl}:        [SKIP][165] ([i915#3282]) -> [PASS][166] +10 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_userptr_blits@huge-split:
    - shard-tglb:         [FAIL][167] ([i915#3376]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-tglb6/igt@gem_userptr_blits@huge-split.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-tglb1/igt@gem_userptr_blits@huge-split.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][169] ([i915#180]) -> [PASS][170] +2 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@shadow-peek:
    - {shard-rkl}:        [SKIP][171] ([i915#2527]) -> [PASS][172] +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][173] ([i915#454]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {shard-dg1}:        [SKIP][175] ([i915#5174]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@i915_pm_rpm@basic-pci-d3-state.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-16/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          [INCOMPLETE][177] ([i915#6172]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/igt@i915_selftest@live@hangcheck.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][179] ([i915#2521]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - {shard-rkl}:        [SKIP][181] ([i915#1845] / [i915#4098]) -> [PASS][182] +27 similar issues
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-glk:          [FAIL][183] -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_color@pipe-a-legacy-gamma-reset:
    - {shard-rkl}:        [SKIP][185] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][186] +3 similar issues
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_color@pipe-a-legacy-gamma-reset.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_color@pipe-a-legacy-gamma-reset.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][187] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
    - {shard-rkl}:        [SKIP][189] ([i915#4070]) -> [PASS][190] +1 similar issue
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html

  * igt@kms_color@pipe-d-ctm-red-to-blue:
    - {shard-dg1}:        [SKIP][191] ([i915#2575]) -> [PASS][192] +38 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@kms_color@pipe-d-ctm-red-to-blue.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-16/igt@kms_color@pipe-d-ctm-red-to-blue.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][193] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][194] +4 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - {shard-dg1}:        [FAIL][195] ([i915#4767]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-18/igt@kms_fbcon_fbt@fbc-suspend.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-17/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-apl:          [FAIL][197] ([i915#4767]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][199] ([fdo#110189] / [i915#3955]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][201] ([i915#2122]) -> [PASS][202] +2 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][203] ([i915#79]) -> [PASS][204]
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][205] ([i915#1849] / [i915#4098]) -> [PASS][206] +26 similar issues
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [FAIL][207] ([i915#1188]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - {shard-rkl}:        [SKIP][209] ([i915#4278]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_invalid_mode@bad-vsync-end.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - {shard-rkl}:        [SKIP][211] ([i915#3558]) -> [PASS][212] +3 similar issues
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - {shard-rkl}:        [SKIP][213] ([i915#3558] / [i915#4070]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][215] ([i915#5235]) -> [PASS][216] +2 similar issues
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_properties@plane-properties-legacy:
    - {shard-rkl}:        [SKIP][217] ([i915#1849]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][219] ([fdo#109441]) -> [PASS][220] +2 similar issues
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][221] ([i915#1072]) -> [PASS][222] +2 similar issues
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_psr@sprite_blt.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-glk:          [DMESG-WARN][223] -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-glk8/igt@kms_rotation_crc@primary-rotation-270.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
    - {shard-rkl}:        [SKIP][225] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - {shard-dg1}:        [FAIL][227] ([fdo#103375]) -> [PASS][228] +3 similar issues
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-17/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-19/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - {shard-dg1}:        [FAIL][229] ([i915#4349]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-17/igt@perf_pmu@busy-double-start@rcs0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-19/igt@perf_pmu@busy-double-start@rcs0.html

  * igt@perf_pmu@invalid-open:
    - {shard-dg1}:        [SKIP][231] ([i915#5608]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-dg1-16/igt@perf_pmu@invalid-open.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-16/igt@perf_pmu@invalid-open.html

  * igt@prime_vgem@basic-fence-read:
    - {shard-rkl}:        [SKIP][233] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-rkl-2/igt@prime_vgem@basic-fence-read.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][235] ([i915#6117]) -> [SKIP][236] ([i915#4525])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_params@larger-than-life-batch:
    - shard-skl:          [SKIP][237] ([fdo#109271] / [i915#1888]) -> [SKIP][238] ([fdo#109271]) +1 similar issue
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/igt@gem_exec_params@larger-than-life-batch.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl7/igt@gem_exec_params@larger-than-life-batch.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][239] ([i915#588]) -> [SKIP][240] ([i915#658])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][241] ([i915#658]) -> [SKIP][242] ([i915#2920])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][243], [FAIL][244], [FAIL][245], [FAIL][246], [FAIL][247]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][248], [FAIL][249], [FAIL][250]) ([i915#3002] / [i915#4312] / [i915#5257])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/igt@runner@aborted.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/igt@runner@aborted.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/igt@runner@aborted.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/igt@runner@aborted.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/igt@runner@aborted.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][251], [FAIL][252], [FAIL][253], [FAIL][254], [FAIL][255]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#337] / [i915#4312] / [i915#5257])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl4/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl8/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl7/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl7/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl3/igt@runner@aborted.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl7/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl4/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl2/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl8/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5183]: https://gitlab.freedesktop.org/drm/intel/issues/5183
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
  [i915#6172]: https://gitlab.freedesktop.org/drm/intel/issues/6172
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11816 -> Patchwork_105660v1

  CI-20190529: 20190529
  CI_DRM_11816: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6543: 0463b607ed58ceede542f9bad6a9dad8d77d6f9c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105660v1: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/index.html

--===============3686497222905610774==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: wait on timeout before retry</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105660/">https://patchwork.freedesktop.org/series/105660/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105660v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105660v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11816_full -&gt; Patchwork_105660v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105660v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105660v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105660v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk1/igt@gem_ctx_persistence@smoketest.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1=
/shard-glk7/igt@gem_ctx_persistence@smoketest.html">INCOMPLETE</a> +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl4/igt@gem_exec_parallel@fds@rcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/sh=
ard-apl8/igt@gem_exec_parallel@fds@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rc6_residency@rc6-idle@bcs0:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">WAR=
N</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05660v1/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FAIL</a><=
/li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_vblank@pipe-d-wait-busy-hang:<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglu-1/igt@kms_vblank@pipe-d-wait-busy-hang.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
660v1/shard-tglu-4/igt@kms_vblank@pipe-d-wait-busy-hang.html">SKIP</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-eq-bvec=
2-bvec2-using-if:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/pig-skl-6260u/spec@arb_tessellation_shader=
@execution@built-in-functions@tcs-op-eq-bvec2-bvec2-using-if.html">CRASH</a=
></li>
</ul>
</li>
<li>
<p>spec@ext_texture_srgb@multisample-fast-clear gl_ext_texture_srgb:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105660v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11816/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11816/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11816/shard-skl9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11816/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11816/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11816/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/boot.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1816/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl10/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/s=
hard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-=
skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105660v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl9/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660=
v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105660v1/shard-skl7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105660v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-s=
kl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105660v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v=
1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105660v1/shard-skl3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105660v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105660v1/shard-skl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-sk=
l1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105660v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v=
1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105660v1/shard-skl10/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl10/boo=
t.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@feature_discovery@display-3=
x.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05660v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5660v1/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11816/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/=
shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11816/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/=
shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-iclb1/igt@gem_exec_fair@basic-none@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@gen9_exec_parse@bb-large.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-ic=
lb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1=
/shard-tglb5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl7/igt@i915_selftest@mock@requests.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/s=
hard-skl4/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5183">i915#5183</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl10/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5660v1/shard-skl1/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4=
817</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">=
i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_big_fb@x-tiled-16bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary=
-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_ccs@pipe-b-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-c-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotatio=
n-90-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_chamelium@dp-audio-edi=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-apl3/igt@kms_chamelium@vga-hpd-enabl=
e-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_color_chamelium@pipe-b-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_color_chamelium@pipe-b-=
ctm-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-snb5/igt@kms_color_chamelium@pipe-d-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen@pipe-a-dp-1-512x170:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-apl3/igt@kms_cursor_crc@cursor-offsc=
reen@pipe-a-dp-1-512x170.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_draw_crc@draw-method-x=
rgb8888-mmap-gtt-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +12 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105660v1/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-=
ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105660v1/shard-glk2/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-downscaling.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +7 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v=
1/shard-kbl3/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_panel_fitting@atomic-fa=
stset.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl9/igt@kms_plane@pixel-format-source-clamping@pipe-a-=
planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105660v1/shard-skl1/igt@kms_plane@pixel-format-source-clampi=
ng@pipe-a-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_plane_scaling@plane-do=
wnscale-with-rotation-factor-0-25@pipe-b-edp-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@kms_psr@psr2_sprite_plane_=
onoff.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/132">i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3467">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/s=
hard-iclb8/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-snb5/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl9/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-=
skl4/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@prime_nv_api@i915_nv_impor=
t_twice.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@sw_sync@sync_merge_same.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/61=
40">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105660v1/shard-tglb3/igt@sysfs_clients@sema-10.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@fbdev@eof.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6=
/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@fbdev@info.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-dg1-=
16/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/s=
hard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i=
915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105660v1/shard-rkl-1/igt@gem_ctx_persistence@engines-hang@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@bsd1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@b=
sd1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4883">i915#4883</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105660v1/shard-dg1-18/igt@gem_ctx_persistence@legacy-engi=
nes-hostile@bsd1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#=
3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105660v1/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11816/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660=
v1/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11816/shard-tglb5/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/=
shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105660v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105660v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105660v1/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105660v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6251">i915#625=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105660v1/shard-rkl-1/igt@gem_exec_fence@basic-busy@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281"=
>i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105660v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.h=
tml">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105660v1/shard-glk3/igt@gem_exec_whisper@basic-queues-priori=
ty-all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105660v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660=
v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5161">i9=
15#5161</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105660v1/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282"=
>i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105660v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.h=
tml">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@huge-split:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-tglb6/igt@gem_userptr_blits@huge-split.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3376">i915#3376<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5660v1/shard-tglb1/igt@gem_userptr_blits@huge-split.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl7/igt@gem_workarounds@suspend-resume-context.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105660v1/shard-apl7/igt@gem_workarounds@suspend-resume-context.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
660v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard=
-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5174">i915#51=
74</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105660v1/shard-dg1-16/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6172">i915#=
6172</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105660v1/shard-skl10/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105660v1/shard-skl10/igt@kms_async_flips@alternate-s=
ync-async-flip@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size=
-offset-overflow.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-=
0-async-flip.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105660v1/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_color@pipe-a-legacy-gamma-reset.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i91=
5#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
0">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_color@pipe-a-legacy-gamma-res=
et.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_color@pipe-b-ctm-blue-to-red.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1=
149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-blue-to-r=
ed.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
0">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105660v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-siz=
es.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@kms_color@pipe-d-ctm-red-to-blue.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#=
2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105660v1/shard-dg1-16/igt@kms_color@pipe-d-ctm-red-to-blue.html">PASS</a=
> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtil=
ed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-mmap-gtt-xtiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11816/shard-dg1-18/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10566=
0v1/shard-dg1-17/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11816/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v=
1/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105660v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105660v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105660v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_frontbuffer_trac=
king@fbcpsr-rgb101010-draw-mmap-wc.html">PASS</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915=
#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105660v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105660v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a-planes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_plane@plane-pannin=
g-bottom-right-suspend@pipe-a-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
8">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-=
tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-iclb8/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_105660v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105660v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/sha=
rd-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-glk8/igt@kms_rotation_crc@primary-rotation-270.html">DM=
ESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105660v1/shard-glk3/igt@kms_rotation_crc@primary-rotation-270.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-a-sanity:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sa=
nity.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105660v1/shard-rkl-6/igt@kms_universal_plane=
@universal-plane-pipe-a-sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-17/igt@kms_vblank@pipe-d-ts-continuation-suspend.ht=
ml">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103=
375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105660v1/shard-dg1-19/igt@kms_vblank@pipe-d-ts-continuation-s=
uspend.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-17/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105660v1/shard-dg1-19/igt@perf_pmu@busy-double-start@rcs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-open:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-dg1-16/igt@perf_pmu@invalid-open.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1=
/shard-dg1-16/igt@perf_pmu@invalid-open.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-rkl-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105660v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105660v1/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@larger-than-life-batch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl1/igt@gem_exec_params@larger-than-life-batch.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105660v1/shard-skl7/igt@gem_exec_params@larger-than-life-bat=
ch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05660v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105660v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11816/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-skl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11816/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5660v1/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-skl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105660v1/shard-skl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257<=
/a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11816/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11816/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11816/shard-apl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11816/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105660v1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl4/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105660v1/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105660v1/shard-apl8/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105660v1/shard-apl7/igt@runner@aborted.html">FAIL</a>=
) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/337">i915#337</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11816 -&gt; Patchwork_105660v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11816: df99947ea190ec0665196a80775e0007f497eb2e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6543: 0463b607ed58ceede542f9bad6a9dad8d77d6f9c @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105660v1: df99947ea190ec0665196a80775e0007f497eb2e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3686497222905610774==--
