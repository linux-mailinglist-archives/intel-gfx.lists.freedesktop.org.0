Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500424C07BF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 03:24:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A49AB10E128;
	Wed, 23 Feb 2022 02:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1FB710E129;
 Wed, 23 Feb 2022 02:24:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC707AADD2;
 Wed, 23 Feb 2022 02:24:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3224154183688885145=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin Ian King" <colin.i.king@gmail.com>
Date: Wed, 23 Feb 2022 02:24:01 -0000
Message-ID: <164558304188.25287.2667414097157438525@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222120323.86480-1-colin.i.king@gmail.com>
In-Reply-To: <20220222120323.86480-1-colin.i.king@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_make_a_handful_of_read-only_arrays_static_const?=
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

--===============3224154183688885145==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: make a handful of read-only arrays static const
URL   : https://patchwork.freedesktop.org/series/100570/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11267_full -> Patchwork_22352_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22352_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22352_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22352_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-snb7/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-snb4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@syncobj_wait@wait-all-for-submit-snapshot:
    - shard-skl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl7/igt@syncobj_wait@wait-all-for-submit-snapshot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl8/igt@syncobj_wait@wait-all-for-submit-snapshot.html

  
Known issues
------------

  Here are the changes found in Patchwork_22352_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) ([i915#4392]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk1/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk2/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk2/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk2/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk3/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk3/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk3/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][55] ([i915#4991])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#232])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-tglb7/igt@gem_eio@kms.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglb:         NOTRUN -> [DMESG-FAIL][60] ([i915#5076])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb5/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-iclb:         [PASS][61] -> [INCOMPLETE][62] ([i915#3371])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-iclb2/igt@gem_exec_capture@pi@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb4/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][65] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][68] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@timeslicing@vecs0:
    - shard-skl:          [PASS][69] -> [DMESG-WARN][70] ([i915#1982])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl8/igt@gem_exec_schedule@timeslicing@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl9/igt@gem_exec_schedule@timeslicing@vecs0.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl10/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#4270])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#768])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          NOTRUN -> [FAIL][76] ([i915#4171])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#3297])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109289]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2856])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#1937])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][82] ([i915#1804] / [i915#2684])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#110892])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109293] / [fdo#109506])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@i915_pm_sseu@full-enable:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#4387])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109302])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#110725] / [fdo#111614])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3777])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3777])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3777])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#3763])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#110723])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111615]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3777]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_joiner@basic:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2705])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3886]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3689]) +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#3689] / [i915#3886]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3886]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3886]) +6 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278] / [i915#3886]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#111615] / [i915#3689]) +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@dp-hpd-fast:
    - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109284] / [fdo#111827]) +6 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][112] ([i915#1319])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109278] / [fdo#109279]) +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#3359])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +34 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#3319])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
    - shard-glk:          NOTRUN -> [SKIP][117] ([fdo#109271]) +33 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][118] ([fdo#109279] / [i915#3359])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109274] / [fdo#111825])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-iclb:         [PASS][120] -> [FAIL][121] ([i915#5072])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2346] / [i915#533])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [PASS][125] -> [FAIL][126] ([i915#2346])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109274]) +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][128] -> [INCOMPLETE][129] ([i915#4839])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#4911])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109280]) +17 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][133] ([fdo#109280] / [fdo#111825]) +9 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271]) +101 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][135] -> [FAIL][136] ([i915#1188])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl3/igt@kms_hdr@bpc-switch.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][137] ([fdo#108145] / [i915#265]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][138] -> [FAIL][139] ([fdo#108145] / [i915#265])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109278]) +22 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-iclb:         NOTRUN -> [SKIP][141] ([i915#3536])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-tglb:         NOTRUN -> [SKIP][142] ([i915#2920])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#658])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#658])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [PASS][145] -> [SKIP][146] ([fdo#109642] / [fdo#111068] / [i915#658])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109441]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][148] -> [SKIP][149] ([fdo#109441]) +6 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][150] -> [DMESG-WARN][151] ([i915#180] / [i915#295])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-kbl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2437])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#2437])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][154] ([i915#2530]) +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-iclb6/igt@nouveau_crc@pipe-a-source-rg.html
    - shard-tglb:         NOTRUN -> [SKIP][155] ([i915#2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/index.html

--===============3224154183688885145==
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
<tr><td><b>Series:</b></td><td>drm/i915: make a handful of read-only arrays=
 static const</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100570/">https://patchwork.freedesktop.org/series/100570/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22352/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22352/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11267_full -&gt; Patchwork_22352_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22352_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22352_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22352_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-snb7/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/s=
hard-snb4/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@wait-all-for-submit-snapshot:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl7/igt@syncobj_wait@wait-all-for-submit-snapshot.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22352/shard-skl8/igt@syncobj_wait@wait-all-for-submit-snapshot.html">FA=
IL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22352_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11267/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11267/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11267/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/sha=
rd-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11267/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk3/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11267/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11267/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11267/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-glk9/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1267/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11267/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11267/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11267/shard-glk7/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-glk1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22352/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WA=
RN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-tglb7/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-tglb3/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb5/igt@gem_exec_balancer@parallel-or=
dering.html">DMESG-FAIL</a> ([i915#5076])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-iclb2/igt@gem_exec_capture@pi@vecs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard=
-iclb4/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#3371])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/s=
hard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gem_exec_fair@basic-none-rrul=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/s=
hard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@gem_exec_fair@basic-pace-shar=
e@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@timeslicing@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl8/igt@gem_exec_schedule@timeslicing@vecs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
352/shard-skl9/igt@gem_exec_schedule@timeslicing@vecs0.html">DMESG-WARN</a>=
 ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@gem_lmem_swapping@heavy-verify=
-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-glk9/igt@gem_lmem_swapping@random-engin=
es.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl10/igt@gem_lmem_swapping@smem-oom.ht=
ml">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@gem_pxp@verify-pxp-stale-buf-=
optout-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gem_render_copy@linear-to-veb=
ox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-glk9/igt@gem_softpin@allocator-evict-al=
l-engines.html">FAIL</a> ([i915#4171])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gem_userptr_blits@unsync-unma=
p-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@gen7_exec_parse@chained-batch=
.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@gen9_exec_parse@secure-batche=
s.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulatio=
n.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fen=
ce.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@i915_pm_rpm@dpms-non-lpsp.htm=
l">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@i915_pm_rpm@modeset-pc8-resid=
ency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@i915_pm_sseu@full-enable.html=
">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@i915_query@query-topology-uns=
upported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22352/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">DMES=
G-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_big_fb@x-tiled-8bpp-rotat=
e-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-180.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">SKIP</a> ([fdo#111615]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_big_joiner@basic.html">SK=
IP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb1/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-dat=
a-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary-ro=
tation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_chamelium@dp-frame-dump.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-glk9/igt@kms_chamelium@dp-hpd-fast.html=
">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_chamelium@vga-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_color_chamelium@pipe-b-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_color_chamelium@pipe-d-ct=
m-max.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl7/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +3 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-3=
2x10-onscreen.html">SKIP</a> ([fdo#109271]) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-glk9/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-random.html">SKIP</a> ([fdo#109271]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb1/igt@kms_cursor_legacy@2x-long-cur=
sor-vs-flip-legacy.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22352/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL=
</a> ([i915#5072])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#1=
09278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22352/shard-skl8/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22352/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_flip@2x-flip-vs-wf_vblank=
.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/=
shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> ([i915#=
4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +17 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280] / [fdo#=
111825]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-apl7/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +101 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl3/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-skl3/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22352/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-max.html">SKIP</a> ([fdo#109278]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_plane_lowres@pipe-c-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-tglb3/igt@kms_psr2_sf@overlay-plane-upd=
ate-continuous-sf.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-skl10/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2235=
2/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb3/igt@kms_psr@psr2_cursor_plane_ono=
ff.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/=
shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11267/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22352/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-kbl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22352/shard-iclb7/igt@kms_writeback@writeback-inval=
id-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22352/shard-iclb6/igt@nouveau_crc@pipe-a-source-rg.h=
tml">SKIP</a> ([i915#2530]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; [SKIP][155] ([i915#2</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3224154183688885145==--
