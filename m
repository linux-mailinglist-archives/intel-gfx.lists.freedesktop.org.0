Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9E07E076F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 18:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1505F10EA3F;
	Fri,  3 Nov 2023 17:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CEF310EA3F;
 Fri,  3 Nov 2023 17:31:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4339BAADF5;
 Fri,  3 Nov 2023 17:31:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1647071947922940145=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Fri, 03 Nov 2023 17:31:37 -0000
Message-ID: <169903269721.29106.4391090275862017559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231102112219.1039362-1-jouni.hogander@intel.com>
In-Reply-To: <20231102112219.1039362-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Use_intel=5Fbo=5Fto=5Fdrm=5Fbo_instead_of_obj-?=
 =?utf-8?q?=3Ebase?=
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

--===============1647071947922940145==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Use intel_bo_to_drm_bo instead of obj->base
URL   : https://patchwork.freedesktop.org/series/125893/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13831_full -> Patchwork_125893v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/index.html

Participating hosts (10 -> 12)
------------------------------

  Additional (2): shard-mtlp0 shard-tglu0 

Known issues
------------

  Here are the changes found in Patchwork_125893v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [FAIL][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#8293]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk3/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [PASS][51] -> [SKIP][52] ([i915#8411]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#6230])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@api_intel_bb@crc32.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs0:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#8414]) +20 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@drm_fdinfo@busy-idle-check-all@vcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][55] ([i915#7742])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#8414])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@drm_fdinfo@virtual-busy.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][57] ([i915#9364])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][58] -> [FAIL][59] ([i915#6268])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4771])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4812]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#4525]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-dg1:          [PASS][64] -> [FAIL][65] ([i915#4475]) +1 other test fail
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-16/igt@gem_exec_capture@pi@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-18/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-rkl:          [PASS][66] -> [SKIP][67] ([i915#9591])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_exec_endless@dispatch@bcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][68] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#2842]) +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][73] -> [FAIL][74] ([i915#2842])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][75] -> [FAIL][76] ([i915#2842]) +3 other tests fail
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#4812])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3539]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3539] / [i915#4852]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3281]) +11 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-scanout@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3639]) +3 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@bcs0.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-rkl:          [PASS][82] -> [SKIP][83] ([i915#3281]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3281])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3281]) +4 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-engines@ccs0:
    - shard-mtlp:         [PASS][86] -> [FAIL][87] ([i915#9119]) +4 other tests fail
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@ccs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - shard-mtlp:         [PASS][88] -> [DMESG-FAIL][89] ([i915#8962]) +1 other test dmesg-fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-dg2:          [PASS][90] -> [FAIL][91] ([fdo#103375])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-11/igt@gem_exec_suspend@basic-s3@smem.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          NOTRUN -> [ABORT][92] ([i915#7975] / [i915#8213])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][93] ([i915#7975] / [i915#8213]) +1 other test abort
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4860]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4860]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#4613])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#4613])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4077]) +10 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4077]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4083]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [PASS][102] -> [SKIP][103] ([i915#3282]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3282]) +3 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gem_pread@snoop.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4270]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#4270])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4270]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#768]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#4079])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3282]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3297]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3297])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-glk:          NOTRUN -> [SKIP][113] ([fdo#109271]) +91 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([fdo#109289]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#2527])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-large:
    - shard-rkl:          [PASS][116] -> [SKIP][117] ([i915#2527])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gen9_exec_parse@bb-large.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#2527])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#2856]) +5 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][120] -> [ABORT][121] ([i915#8489] / [i915#8668])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#8399])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][123] -> [INCOMPLETE][124] ([i915#9407])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-dg1:          [PASS][125] -> [FAIL][126] ([i915#3591]) +1 other test fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109293] / [fdo#109506])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#8925])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_query@query-topology-kernel-writes:
    - shard-dg1:          [PASS][129] -> [DMESG-WARN][130] ([i915#1982] / [i915#4423])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-16/igt@i915_query@query-topology-kernel-writes.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-16/igt@i915_query@query-topology-kernel-writes.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([fdo#109303])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4212])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_atomic_transition@modeset-transition-fencing:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#1845] / [i915#4098]) +12 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_atomic_transition@modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#1769])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([fdo#111614]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#5286]) +3 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4538] / [i915#5286])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][138] -> [FAIL][139] ([i915#5138])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([fdo#111614] / [i915#3638]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][141] -> [FAIL][142] ([i915#3743])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([fdo#111614])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5190]) +16 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4538] / [i915#5190]) +4 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([fdo#110723]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([fdo#111615])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4087]) +3 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([fdo#111827]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_chamelium_color@ctm-negative.html
    - shard-dg1:          NOTRUN -> [SKIP][150] ([fdo#111827])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#7828]) +4 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#7828]) +9 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#7828])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#7828]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html

  * igt@kms_color@degamma@pipe-a:
    - shard-rkl:          [PASS][155] -> [SKIP][156] ([i915#4098]) +5 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_color@degamma@pipe-a.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_color@degamma@pipe-a.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#7118]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3299]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][159] ([i915#7173])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#4098]) +22 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#3359])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3359]) +3 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#3555]) +4 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#3555])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#4103]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-rkl:          [PASS][166] -> [SKIP][167] ([i915#1845] / [i915#4098]) +14 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][170] ([fdo#111767] / [fdo#111825])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#9226] / [i915#9261]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#9227])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#9227])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#9226] / [i915#9261]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#8588])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3804])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8812])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3555] / [i915#3840])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3469])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([fdo#111825]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-apl:          NOTRUN -> [SKIP][181] ([fdo#109271] / [fdo#111767])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-dg2:          NOTRUN -> [SKIP][182] ([fdo#109274] / [fdo#111767])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
    - shard-snb:          NOTRUN -> [SKIP][183] ([fdo#109271] / [fdo#111767])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-snb7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([fdo#111767] / [fdo#111825])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([fdo#109274]) +4 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
    - shard-snb:          NOTRUN -> [SKIP][186] ([fdo#109271]) +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-snb2/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@dpms-off-confusion-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#3637] / [i915#4098]) +5 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_flip@dpms-off-confusion-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#8381])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][189] ([i915#8841]) +1 other test dmesg-warn
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][190] ([fdo#103375])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#2672]) +4 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#2587] / [i915#2672])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#2672]) +6 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [PASS][194] -> [SKIP][195] ([i915#1849] / [i915#4098]) +8 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#8708]) +25 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#8708]) +5 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([fdo#111825]) +5 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#1849] / [i915#4098]) +12 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#3458])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#5354]) +27 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([fdo#109280]) +3 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([fdo#111825] / [i915#1825]) +17 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3023]) +9 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([fdo#110189]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3458]) +20 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3555] / [i915#8228]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8228])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][209] ([i915#180] / [i915#9392])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#4098] / [i915#8825])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3555]) +6 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][212] ([i915#8292])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#8152])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#5235]) +5 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#4098] / [i915#6953] / [i915#8152])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#5235]) +23 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#5235]) +15 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-13/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#6524] / [i915#6805])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#658]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#658])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-apl:          NOTRUN -> [SKIP][222] ([fdo#109271] / [i915#658])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][223] ([fdo#109271] / [i915#658]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@cursor_blt:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#1072]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_psr@cursor_blt.html

  * igt@kms_psr@sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#1072]) +8 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#4235])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-rkl:          [PASS][227] -> [INCOMPLETE][228] ([i915#8875] / [i915#9475] / [i915#9569])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#4235] / [i915#5190])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3555] / [i915#4098]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#4098]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-dg1:          [PASS][232] -> [FAIL][233] ([i915#9196])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [PASS][234] -> [FAIL][235] ([i915#9196])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#2437])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][237] ([fdo#109271] / [i915#2437])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([fdo#109289])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [PASS][239] -> [SKIP][240] ([i915#2436])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#7387])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#2434])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@perf@mi-rpc.html

  * igt@prime_udl:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([fdo#109291])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@prime_udl.html
    - shard-dg1:          NOTRUN -> [SKIP][244] ([fdo#109291])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@prime_udl.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3291] / [i915#3708])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [PASS][246] -> [SKIP][247] ([fdo#109295] / [i915#3291] / [i915#3708])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@prime_vgem@basic-read.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([fdo#109295] / [i915#3291] / [i915#3708])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [PASS][249] -> [SKIP][250] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#3708])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@prime_vgem@fence-read-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:
    - shard-glk:          NOTRUN -> [FAIL][252] ([i915#9583])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled.html
    - shard-dg2:          NOTRUN -> [FAIL][253] ([i915#9583]) +2 other tests fail
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - shard-rkl:          NOTRUN -> [FAIL][254] ([i915#9582])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#4818])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html

  * igt@v3d/v3d_mmap@mmap-bad-flags:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#2575])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@v3d/v3d_mmap@mmap-bad-flags.html

  * igt@v3d/v3d_submit_cl@bad-multisync-extension:
    - shard-apl:          NOTRUN -> [SKIP][257] ([fdo#109271]) +93 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-apl2/igt@v3d/v3d_submit_cl@bad-multisync-extension.html

  * igt@v3d/v3d_submit_cl@bad-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#2575]) +10 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-perfmon.html

  * igt@v3d/v3d_submit_csd@job-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([fdo#109315]) +6 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@v3d/v3d_submit_csd@job-perfmon.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#7711])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#7711]) +8 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@vc4/vc4_tiling@get-bad-handle.html

  * igt@vc4/vc4_wait_bo@used-bo-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#7711]) +5 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@vc4/vc4_wait_bo@used-bo-1ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][263] ([i915#8411]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@api_intel_bb@object-reloc-purge-cache.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          [FAIL][265] ([i915#5784]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-19/igt@gem_eio@unwedge-stress.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-19/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_await@wide-contexts:
    - shard-glk:          [INCOMPLETE][267] -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk6/igt@gem_exec_await@wide-contexts.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][269] ([i915#3778] / [i915#7016]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-rkl:          [SKIP][271] ([i915#3281]) -> [PASS][272] +6 other tests pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-tglu:         [INCOMPLETE][273] ([i915#6755] / [i915#7392]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][275] ([i915#5493]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          [SKIP][277] ([fdo#111656]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@gem_mmap_gtt@coherency.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-rkl:          [SKIP][279] ([i915#3282]) -> [PASS][280] +2 other tests pass
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@writes.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [INCOMPLETE][281] ([i915#5566]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-rkl:          [SKIP][283] ([i915#2527]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@gen9_exec_parse@bb-start-cmd.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][285] ([i915#3591]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][287] ([i915#5138]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-rkl:          [SKIP][289] ([i915#1845] / [i915#4098]) -> [PASS][290] +9 other tests pass
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][291] ([i915#3743]) -> [PASS][292] +2 other tests pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_busy@extended-modeset-hang-newfb@pipe-b:
    - shard-rkl:          [INCOMPLETE][293] -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html

  * igt@kms_color@ctm-green-to-red@pipe-b:
    - shard-rkl:          [SKIP][295] ([i915#4098]) -> [PASS][296] +8 other tests pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_color@ctm-green-to-red@pipe-b.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][297] ([i915#2346]) -> [PASS][298] +1 other test pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [DMESG-WARN][299] ([i915#2017]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-2/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-rkl:          [SKIP][301] ([i915#1849] / [i915#4098]) -> [PASS][302] +6 other tests pass
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          [FAIL][303] ([fdo#103375]) -> [PASS][304] +3 other tests pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * {igt@kms_pm_rpm@dpms-lpsp}:
    - shard-rkl:          [SKIP][305] ([i915#9519]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * {igt@kms_pm_rpm@fences}:
    - shard-rkl:          [SKIP][307] ([i915#1849]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_pm_rpm@fences.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_pm_rpm@fences.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [FAIL][309] ([i915#9196]) -> [PASS][310] +1 other test pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [FAIL][311] ([i915#8724]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-dg2-1/igt@perf@enable-disable@0-rcs0.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [FAIL][313] ([i915#4349]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html

  
#### Warnings ####

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][315] ([i915#7957]) -> [SKIP][316] ([i915#9323])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][317] ([i915#9323]) -> [SKIP][318] ([i915#7957])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_ccs@suspend-resume.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][319] ([i915#3282]) -> [WARN][320] ([i915#2658])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_async_flips@crc@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][321] ([i915#8247]) -> [DMESG-FAIL][322] ([i915#8561]) +1 other test dmesg-fail
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-mtlp-7/igt@kms_async_flips@crc@pipe-b-edp-1.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][323] ([i915#1769] / [i915#3555]) -> [SKIP][324] ([i915#1845] / [i915#4098])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][325] ([i915#4098]) -> [SKIP][326] ([i915#5286]) +2 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][327] ([i915#5286]) -> [SKIP][328] ([i915#4098]) +4 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-rkl:          [SKIP][329] ([i915#1845] / [i915#4098]) -> [SKIP][330] ([fdo#111614] / [i915#3638])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][331] ([fdo#111614] / [i915#3638]) -> [SKIP][332] ([i915#1845] / [i915#4098]) +3 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          [SKIP][333] ([fdo#111615]) -> [SKIP][334] ([i915#1845] / [i915#4098])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][335] ([fdo#110723]) -> [SKIP][336] ([i915#1845] / [i915#4098]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][337] ([i915#1845] / [i915#4098]) -> [SKIP][338] ([fdo#110723]) +2 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_content_protection@lic:
    - shard-rkl:          [SKIP][339] ([i915#7118]) -> [SKIP][340] ([i915#1845] / [i915#4098])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_content_protection@lic.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          [SKIP][341] ([i915#4098]) -> [SKIP][342] ([i915#3555]) +2 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][343] ([i915#3359]) -> [SKIP][344] ([i915#4098])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][345] ([i915#4098]) -> [SKIP][346] ([i915#3359])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-rkl:          [SKIP][347] ([fdo#111825]) -> [SKIP][348] ([i915#1845] / [i915#4098]) +3 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][349] ([i915#1845] / [i915#4098]) -> [SKIP][350] ([fdo#111825]) +2 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][351] ([i915#1845] / [i915#4098]) -> [SKIP][352] ([i915#4103])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][353] ([i915#3555] / [i915#3840]) -> [SKIP][354] ([i915#4098]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_dsc@dsc-with-bpc-formats.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][355] ([fdo#111825] / [i915#1825]) -> [SKIP][356] ([i915#1849] / [i915#4098]) +28 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][357] ([i915#3023]) -> [SKIP][358] ([i915#1849] / [i915#4098]) +15 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][359] ([i915#1849] / [i915#4098]) -> [SKIP][360] ([fdo#111825] / [i915#1825]) +17 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][361] ([i915#5439]) -> [SKIP][362] ([i915#1849] / [i915#4098])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          [SKIP][363] ([i915#1849] / [i915#4098]) -> [SKIP][364] ([i915#3023]) +11 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][365] ([i915#4098]) -> [SKIP][366] ([i915#3555] / [i915#8228])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][367] ([i915#1845] / [i915#4098]) -> [SKIP][368] ([i915#3555] / [i915#8228])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_hdr@static-toggle.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_hdr@static-toggle.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][369] ([i915#1845] / [i915#4098]) -> [SKIP][370] ([i915#6301])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_panel_fitting@legacy.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][371] ([fdo#111615] / [i915#5289]) -> [SKIP][372] ([i915#1845] / [i915#4098])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-rkl:          [SKIP][373] ([i915#3555]) -> [SKIP][374] ([i915#4098]) +4 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-1/igt@kms_scaling_modes@scaling-mode-none.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_vrr@flip-dpms:
    - shard-rkl:          [SKIP][375] ([i915#1845] / [i915#4098]) -> [SKIP][376] ([i915#3555])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-5/igt@kms_vrr@flip-dpms.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          [SKIP][377] ([i915#3555]) -> [SKIP][378] ([i915#1845] / [i915#4098]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-rkl-4/igt@kms_vrr@flipline.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_vrr@flipline.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8825]: https://gitlab.freedesktop.org/drm/intel/issues/8825
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
  [i915#9581]: https://gitlab.freedesktop.org/drm/intel/issues/9581
  [i915#9582]: https://gitlab.freedesktop.org/drm/intel/issues/9582
  [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
  [i915#9591]: https://gitlab.freedesktop.org/drm/intel/issues/9591


Build changes
-------------

  * Linux: CI_DRM_13831 -> Patchwork_125893v1

  CI-20190529: 20190529
  CI_DRM_13831: 76cfd6fff7dfdf40e85e23c7deb727e633209b1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7570: 1cd44e96b0419e00b9a09f8ead1369eab432d4f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125893v1: 76cfd6fff7dfdf40e85e23c7deb727e633209b1f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/index.html

--===============1647071947922940145==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Use intel_bo_to_drm_bo ins=
tead of obj-&gt;base</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/125893/">https://patchwork.freedesktop.org/series/125893/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125893v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13831_full -&gt; Patchwork_125893v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v=
1/index.html</p>
<h2>Participating hosts (10 -&gt; 12)</h2>
<p>Additional (2): shard-mtlp0 shard-tglu0 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125893v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13831/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk1/boot.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13831/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13831/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13831/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13831/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831=
/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13831/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3831/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13831/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13831/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13831/shard-glk9/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125893v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-g=
lk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125893v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v=
1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125893v1/shard-glk6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125893v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_125893v1/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-gl=
k5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125893v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125893v1/shard-glk4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_125893v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125893v1/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125893v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/=
shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125893v1/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-glk2/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
25893v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@api_intel_bb@crc32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6230">i=
915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@drm_fdinfo@busy-idle-check=
-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-=
check-all@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@drm_fdinfo@virtual-busy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_create@create-ext-cpu-=
access-big.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9364">i915#9364</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12589=
3v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-16/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/sh=
ard-dg1-18/igt@gem_exec_capture@pi@rcs0.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4475">i915#4475</a>) +1 other test =
fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893=
v1/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9591">i915#9591</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_exec_fair@basic-none-r=
rul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5893v1/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
893v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125893v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893=
v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3=
 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-se=
t-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-r=
o-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_exec_reloc@basic-scano=
ut@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3639">i915#3639</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/=
shard-rkl-2/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_exec_reloc@basic-writ=
e-cpu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@ccs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125893v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9119">i=
915#9119</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@rcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125893v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
962">i915#8962</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-11/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12589=
3v1/shard-dg2-5/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4=
-devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_fence_thrash@bo-write-=
verify-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_lmem_swapping@heavy-ra=
ndom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-apl1/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-co=
py-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_mmap_wc@close.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i=
915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125893v1/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gem_pread@snoop.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915=
#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_pxp@dmabuf-shared-prote=
cted-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4270">i915#4270</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/768">i915#768</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@gen7_exec_parse@basic-offse=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +91 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gen9_exec_parse@bb-large.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/sha=
rd-rkl-1/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125893v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@i915_pm_freq_api@freq-basi=
c-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
893v1/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407">i915#94=
07</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125893v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#35=
91</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@i915_pm_rps@thresholds-par=
k@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-kernel-writes:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-16/igt@i915_query@query-topology-kernel-writes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125893v1/shard-dg1-16/igt@i915_query@query-topology-kernel-writes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_atomic_transition@mode=
set-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-glk6/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_big_fb@4-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125893v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-6/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_big_fb@y-tiled-8bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5190">i915#5190</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-=
size-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@p=
ipe-b-dp-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_chamelium_color@ctm-neg=
ative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111827">fdo#111827</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_chamelium_frames@dp-fr=
ame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-=
crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_chamelium_hpd@dp-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hp=
d-after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_color@degamma@pipe-a.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/sha=
rd-rkl-5/igt@kms_color@degamma@pipe-a.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_content_protection@li=
c@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-256x256.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_cursor_crc@cursor-sli=
ding-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-va=
rying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-be=
fore-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>) +14 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_display_modes@mst-ext=
ended-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111825">fdo#111825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-apl3/igt@kms_flip@2x-flip-vs-blocking=
-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-snb7/igt@kms_flip@2x-flip-vs-blocking=
-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-expire=
d-vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vbla=
nk-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109274">fdo#109274</a>) +4 other tests skip</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-snb2/igt@kms_flip@2x-modeset-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +4 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_flip@dpms-off-confusio=
n-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_flip@flip-vs-fences.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/83=
81">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-snb1/igt@kms_flip@flip-vs-suspend-in=
terruptible@b-hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8841">i915#8841</a>) +1 other test dmesg-warn</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@kms_flip@flip-vs-suspend@a=
-hdmi-a3.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2=
672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +8 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +25 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +5 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +12 other tests skip=
</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3458">i915#3458</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +27 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +17 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspe=
nd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8228">i915#8228</a>) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_hdr@static-toggle-suspe=
nd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8228">i915#8228</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-=
read-crc@pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/9392">i915#9392</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane@plane-panning-to=
p-left.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane_scaling@invalid-=
parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg2-5/igt@kms_plane_scaling@planes-up=
scale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>=
) +23 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg1-13/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +15 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_prime@basic-crc-vgem.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-=
move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-apl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-glk4/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@kms_psr@cursor_blt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_psr@sprite_blt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_rotation_crc@bad-tilin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-27=
0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125893v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect=
-x-270.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8875">i915#8875</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9475">i915#9475</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/9569">i915#9569</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_setmode@invalid-clone-=
exclusive-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_125893v1/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak=
@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125893v1/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-apl1/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@perf@gen12-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125893v1/shard-rkl-1/igt@perf@gen8-unprivileged-single-ctx-counters.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@perf@mi-rpc.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#24=
34</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@prime_udl.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#109291=
</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@prime_udl.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#10929=
1</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-=
rkl-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
95">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/sha=
rd-rkl-1/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:<=
/p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-glk9/igt@syncobj_timeline@invalid-mul=
ti-wait-available-unsubmitted-signaled.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@syncobj_timeline@invalid-m=
ulti-wait-available-unsubmitted-signaled.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9583">i915#9583</a>) +2 other test=
s fail</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@syncobj_timeline@invalid-s=
ingle-wait-available-unsubmitted.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9582">i915#9582</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-2/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4818">i915#4818</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_mmap@mmap-bad-flags:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@v3d/v3d_mmap@mmap-bad-fla=
gs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-multisync-extension:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-apl2/igt@v3d/v3d_submit_cl@bad-multi=
sync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +93 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-per=
fmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@job-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-7/igt@v3d/v3d_submit_csd@job-per=
fmon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg1-14/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-dg2-6/igt@vc4/vc4_tiling@get-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_125893v1/shard-rkl-4/igt@vc4/vc4_wait_bo@used-bo-1n=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@api_intel_bb@object-reloc-purge-cache.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8411">i=
915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125893v1/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-19/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v=
1/shard-dg1-19/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk6/igt@gem_exec_await@wide-contexts.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
893v1/shard-glk3/igt@gem_exec_await@wide-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#=
3778</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7016"=
>i915#7016</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125893v1/shard-dg2-5/igt@gem_exec_endless@dispatch@bcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125893v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html">PAS=
S</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6755">i915#6755</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7392">i915#7392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125893v1/shard-tglu-3/igt@gem_exec_whisper@basic-fds-f=
orked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125893v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893=
v1/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@writes.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i=
915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125893v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html"=
>PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk2/igt@gen9_exec_parse@allowed-single.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125893v1/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
5893v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125893v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_125893v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125893v1/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.htm=
l">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_125893v1/shard-tglu-7/igt@kms_big_fb@y-tiled-m=
ax-hw-stride-64bpp-rotate-0-async-flip.html">PASS</a> +2 other tests pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-newfb@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_125893v1/shard-rkl-7/igt@kms_busy@extended-modeset-hang-newfb@=
pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-green-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#=
4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125893v1/shard-rkl-2/igt@kms_color@ctm-green-to-red@pipe-b.html">PASS</a=
> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125893v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_125893v1/shard-mtlp-2/igt@kms_cursor_legacy@single-move@all=
-pipes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v=
1/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@c-hdm=
i-a4.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D103375">fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125893v1/shard-dg1-15/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-hdmi-a4.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/=
shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@fences}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shar=
d-rkl-1/igt@kms_pm_rpm@fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_125893v1/shard-tglu-2/igt@kms_universal_plane@cursor-f=
b-leak@pipe-c-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8724">i915#8724</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
893v1/shard-dg2-1/igt@perf@enable-disable@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_125893v1/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915=
#7957</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125893v1/shard-rkl-1/igt@gem_ccs@block-multicopy-compressed.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#=
9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1=
/shard-rkl-5/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
893v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-mtlp-7/igt@kms_async_flips@crc@pipe-b-edp-1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#=
8247</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_125893v1/shard-mtlp-4/igt@kms_async_flips@crc@pipe-b-edp-1.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8561">i=
915#8561</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@=
kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4098">i915#4098</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_125893v1/shard-rkl-1/igt@kms_big_fb@linear-16bpp-rotate-90.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">=
fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#=
111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflo=
w.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size=
-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D110723">fdo#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-s=
tride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2/igt@kms_big_fb@yf-tile=
d-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_content_protection@lic.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1258=
93v1/shard-rkl-5/igt@kms_content_protection@lic.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i9=
15#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_125893v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3359">i915#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement=
-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x170.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i=
915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_125893v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x170.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359"=
>i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_125893v1/shard-rkl-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-=
legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flip=
a-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-2=
/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-var=
ying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915=
#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_125893v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_front=
buffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3023">=
i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
hrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard-rkl-1/igt@kms_frontbuffe=
r_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)=
 +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5439=
">i915#5439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_125893v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_125893v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-suspend.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
023">i915#3023</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/=
shard-rkl-2/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125=
893v1/shard-rkl-1/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
125893v1/shard-rkl-2/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-1=
80.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_125893v1/shard-rkl-5/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-1/igt@kms_scaling_modes@scaling-mode-none.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_125893v1/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-none.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-5/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v=
1/shard-rkl-1/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13831/shard-rkl-4/igt@kms_vrr@flipline.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125893v1/shard=
-rkl-5/igt@kms_vrr@flipline.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test skip</=
li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13831 -&gt; Patchwork_125893v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13831: 76cfd6fff7dfdf40e85e23c7deb727e633209b1f @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7570: 1cd44e96b0419e00b9a09f8ead1369eab432d4f9 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125893v1: 76cfd6fff7dfdf40e85e23c7deb727e633209b1f @ git://anon=
git.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1647071947922940145==--
