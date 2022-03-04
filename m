Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2492D4CD0E3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 10:14:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4701A10F02E;
	Fri,  4 Mar 2022 09:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8419410F02E;
 Fri,  4 Mar 2022 09:14:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ECDBA0096;
 Fri,  4 Mar 2022 09:14:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0709164970604981032=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 04 Mar 2022 09:14:23 -0000
Message-ID: <164638526348.21355.4032117402108269077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_bandwith_related_cdclk_calculations_=28rev2=29?=
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

--===============0709164970604981032==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix bandwith related cdclk calculations (rev2)
URL   : https://patchwork.freedesktop.org/series/98975/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11320_full -> Patchwork_22477_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22477_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_schedule@smoketest-all:
    - {shard-rkl}:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-2/igt@gem_exec_schedule@smoketest-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-rkl-5/igt@gem_exec_schedule@smoketest-all.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - {shard-rkl}:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * {igt@kms_plane_scaling@planes-scaling-unity-scaling}:
    - {shard-rkl}:        NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-rkl-5/igt@kms_plane_scaling@planes-scaling-unity-scaling.html

  * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale}:
    - shard-iclb:         [PASS][5] -> [SKIP][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html

  * igt@prime_mmap@test_forked:
    - {shard-dg1}:        NOTRUN -> [SKIP][7] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-dg1-15/igt@prime_mmap@test_forked.html

  
Known issues
------------

  Here are the changes found in Patchwork_22477_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) ([i915#4386]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109314])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_sseu@engines:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271]) +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-snb5/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#4525])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3/igt@gem_exec_balancer@parallel.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][63] ([i915#5076])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][64] ([i915#5076])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][65] ([i915#2846])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#2842]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [PASS][70] -> [FAIL][71] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][72] -> [FAIL][73] ([i915#2842])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2190])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4270])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#768])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +102 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1436] / [i915#716])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-skl10/igt@gen9_exec_parse@allowed-all.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#2856])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][83] -> [FAIL][84] ([i915#454])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([i915#4281])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#110892])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109303])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][89] -> [INCOMPLETE][90] ([i915#4547])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-skl4/igt@i915_selftest@live@execlists.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl1/igt@i915_selftest@live@execlists.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#2521])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][93] -> [DMESG-WARN][94] ([i915#118])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate-270.html
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111614])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb2/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3777]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#110723])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +111 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3886]) +6 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3886]) +8 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109278] / [i915#3886]) +2 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3886]) +4 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#3689]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3/igt@kms_chamelium@dp-crc-fast.html
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109284] / [fdo#111827])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@content_type_change:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109300] / [fdo#111066])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_content_protection@content_type_change.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][111] ([i915#1319])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][112] ([i915#2105])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109278] / [fdo#109279])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][114] -> [DMESG-WARN][115] ([i915#180])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109278]) +12 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][117] ([i915#2346] / [i915#533])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109274]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][119] -> [FAIL][120] ([i915#2122])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@b-vga1:
    - shard-snb:          [PASS][121] -> [DMESG-WARN][122] ([i915#5090])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-snb5/igt@kms_flip@flip-vs-suspend@b-vga1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-snb4/igt@kms_flip@flip-vs-suspend@b-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#4911])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271]) +84 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109280]) +11 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([fdo#109289])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#533])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#533])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#533])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][132] ([fdo#108145] / [i915#265])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][133] ([fdo#108145] / [i915#265])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][134] -> [FAIL][135] ([fdo#108145] / [i915#265])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][136] ([fdo#108145] / [i915#265]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][137] ([i915#265])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([i915#3536])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#658]) +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#658])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         NOTRUN -> [SKIP][142] ([fdo#109642] / [fdo#111068] / [i915#658])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][143] ([IGT#2])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#2437])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#2437])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#2437]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([i915#2530])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#2530])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#2994]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-skl6/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@fair-7:
    - shard-kbl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2994])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-25:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([i915#2994])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@split-50:
    - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2994])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][153] ([i915#2582]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@fbdev@unaligned-read.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - {shard-tglu}:       [TIMEOUT][155] ([i915#3063]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-tglu-2/igt@gem_eio@in-flight-contexts-10ms.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][157] ([i915#2481] / [i915#3070]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb6/igt@gem_eio@unwedge-stress.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb8/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][159] ([i915#3063]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-4/igt@gem_eio@unwedge-stress.html
   [160]: https://intel-gfx-ci.01

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/index.html

--===============0709164970604981032==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix bandwith related cdclk calcula=
tions (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98975/">https://patchwork.freedesktop.org/series/98975/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22477/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11320_full -&gt; Patchwork_22477_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22477_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-rkl-2/igt@gem_exec_schedule@smoketest-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477=
/shard-rkl-5/igt@gem_exec_schedule@smoketest-all.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-=
rgb565-draw-mmap-gtt.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-scaling-unity-scaling}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-rkl-5/igt@kms_plane_scaling@planes-scal=
ing-unity-scaling.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@p=
ipe-c-edp-1-planes-upscale-downscale}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-iclb7/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/sh=
ard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor=
-0-5@pipe-c-edp-1-planes-upscale-downscale.html">SKIP</a> +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_forked:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-dg1-15/igt@prime_mmap@test_forked.html"=
>SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22477_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11320/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11320/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/sha=
rd-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11320/shard-apl2/boot.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11320/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320=
/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11320/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1320/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shar=
d-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11320/shard-apl6/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22477/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-apl8/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-apl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22477/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WA=
RN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gem_ctx_param@set-priority-no=
t-supported.html">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-snb5/igt@gem_ctx_sseu@engines.html">SKI=
P</a> ([fdo#109271]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-iclb3/igt@gem_exec_balancer@parallel.htm=
l">SKIP</a> ([i915#4525])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-tglb2/igt@gem_exec_balancer@parallel.htm=
l">DMESG-WARN</a> ([i915#5076])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@gem_exec_balancer@parallel-kee=
p-in-fence.html">DMESG-WARN</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11320/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
477/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11320/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
77/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_224=
77/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl7/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl6/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gem_pxp@fail-invalid-protecte=
d-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gem_render_copy@linear-to-veb=
ox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> ([fdo#109271]) +102 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-skl10/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/sha=
rd-skl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] /=
 [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/shard-iclb3=
/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@i915_pm_rpm@dpms-mode-unset-n=
on-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@i915_query@query-topology-kno=
wn-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-skl4/igt@i915_selftest@live@execlists.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/sha=
rd-skl1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> ([i915#4547])=
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22477/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477=
/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i91=
5#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate=
-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-tglb2/igt@kms_big_fb@linear-64bpp-rotate=
-270.html">SKIP</a> ([fdo#111614])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) =
+8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride=
-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-iclb3/igt@kms_chamelium@dp-crc-fast.html=
">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-tglb2/igt@kms_chamelium@dp-crc-fast.html=
">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content_type_change:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_content_protection@conten=
t_type_change.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl7/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl4/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2477/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_cursor_edge_walk@pipe-d-1=
28x128-top-edge.html">SKIP</a> ([fdo#109278]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_flip@2x-modeset-vs-vblank=
-race-interruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22477/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-=
hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-snb5/igt@kms_flip@flip-vs-suspend@b-vga1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22477/=
shard-snb4/igt@kms_flip@flip-vs-suspend@b-vga1.html">DMESG-WARN</a> ([i915#=
5090])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22477/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1=
p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +84 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +11 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-spr-indfb-move.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-tglb3/igt@kms_pipe_b_c_ivb@from-pipe-c-=
to-b-with-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22477/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-c=
overage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22477/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_psr2_sf@overlay-plane-upda=
te-continuous-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl3/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl1/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@kms_psr2_su@page_flip-p010.ht=
ml">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl6/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-tglb3/igt@nouveau_crc@pipe-c-source-out=
p-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-skl6/igt@sysfs_clients@fair-3.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-kbl3/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-iclb7/igt@sysfs_clients@sema-25.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22477/shard-apl3/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-rkl-5/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#25=
82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
477/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11320/shard-tglu-2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOU=
T</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22477/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11320/shard-iclb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22477/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a>=
</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11320/shard-rkl-4/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01">PASS</a></p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0709164970604981032==--
