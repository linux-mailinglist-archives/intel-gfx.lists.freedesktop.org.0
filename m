Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D894D90A7
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 00:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49ED410E2A4;
	Mon, 14 Mar 2022 23:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BD9B10E255;
 Mon, 14 Mar 2022 23:57:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4607EA7DFC;
 Mon, 14 Mar 2022 23:57:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9018232279246646464=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Mon, 14 Mar 2022 23:57:39 -0000
Message-ID: <164730225925.20566.17531303135087855022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220314161310.6468-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220314161310.6468-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Drop_redundant_IS=5FVALLEYVIEW_check_in_=5F=5Fget?=
 =?utf-8?b?X3JjNigpIChyZXYyKQ==?=
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

--===============9018232279246646464==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Drop redundant IS_VALLEYVIEW check in __get_rc6() (rev2)
URL   : https://patchwork.freedesktop.org/series/101301/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11360_full -> Patchwork_22559_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22559_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [FAIL][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#4392]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk6/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk7/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#5325])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][52] ([i915#4991])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl6/igt@gem_create@create-massive.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#2842]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][61] -> [FAIL][62] ([i915#2842]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][63] -> [DMESG-WARN][64] ([i915#118])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2190])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][70] ([i915#2658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#4270])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#768])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@input-checking:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][73] ([i915#4991])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#3297])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109289]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][76] -> [DMESG-WARN][77] ([i915#1436] / [i915#716])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          NOTRUN -> [DMESG-WARN][78] ([i915#1982])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][79] ([i915#454]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +114 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-tglb:         [PASS][81] -> [DMESG-WARN][82] ([i915#2411] / [i915#2867])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglb3/igt@i915_suspend@fence-restore-untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#5286]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3777]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777]) +7 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +5 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +11 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [i915#3886]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [i915#1149])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][98] ([i915#1319])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#3116])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271]) +85 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109279] / [i915#3359])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][105] -> [FAIL][106] ([i915#2346])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#533])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#426])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#5287]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][110] -> [INCOMPLETE][111] ([i915#180] / [i915#636])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#109274] / [fdo#111825])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109274]) +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb6/igt@kms_flip@2x-flip-vs-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][114] -> [INCOMPLETE][115] ([i915#4839] / [i915#636])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([i915#2122]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][118] ([i915#3701])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109280]) +16 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-snb:          [PASS][121] -> [SKIP][122] ([fdo#109271]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#3555])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][124] -> [DMESG-WARN][125] ([i915#180]) +4 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][126] ([fdo#108145] / [i915#265]) +4 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][127] ([fdo#108145] / [i915#265])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][128] ([fdo#108145] / [i915#265]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][129] ([i915#265])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109278]) +18 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [PASS][131] -> [INCOMPLETE][132] ([i915#5293])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-b-edp-1-scaler-with-rotation:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#5176]) +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-b-edp-1-scaler-with-rotation.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#658]) +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#111068] / [i915#658])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#658]) +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][137] -> [SKIP][138] ([fdo#109441]) +3 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109441])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#5289])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
    - shard-skl:          NOTRUN -> [SKIP][141] ([fdo#109271]) +307 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl9/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#533])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2437])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl9/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][144] ([i915#2530])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][145] ([i915#1722])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@perf@polling-small-buf.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109291]) +2 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@prime_nv_pcopy@test3_3.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#2994]) +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-apl4/igt@sysfs_clients@create.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#2994]) +3 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-skl10/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][149] ([i915#2410]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_capture@pi@bcs0:
    - {shard-tglu}:       [INCOMPLETE][151] ([i915#3371] / [i915#3731]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglu-2/igt@gem_exec_capture@pi@bcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglu-3/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][153] ([i915#2846]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][155] ([i915#2842]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][157] ([i915#2842]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-kbl3/igt@gem_exec_fa

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/index.html

--===============9018232279246646464==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Drop redundant IS_VALLEYVIEW c=
heck in __get_rc6() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/101301/">https://patchwork.freedesktop.org/series/101301/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22559/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22559/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11360_full -&gt; Patchwork_22559_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22559_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11360/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11360/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11360/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11360/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11360/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11360/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-gl=
k9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1360/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shard-glk7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11360/shar=
d-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11360/shard-glk6/boot.html">PASS</a>) ([i915#4392]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22559/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-glk1/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-tglb2/igt@gem_ccs@block-copy-compressed=
.html">SKIP</a> ([i915#5325])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2559/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i=
915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
559/shard-tglb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2559/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/s=
hard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/sh=
ard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22559/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html">DMES=
G-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@gem_lmem_swapping@parallel-ra=
ndom.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk5/igt@gem_lmem_swapping@parallel-ran=
dom-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl1/igt@gem_lmem_swapping@random.html"=
>SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl6/igt@gem_lmem_swapping@random-engin=
es.html">SKIP</a> ([fdo#109271] / [i915#4613]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@gem_pread@exhaustion.html">WA=
RN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@gem_pxp@create-protected-buff=
er.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gem_render_copy@y-tiled-mc-cc=
s-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@gem_userptr_blits@input-check=
ing.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@gem_userptr_blits@unsync-unma=
p.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-glk4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shar=
d-glk1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@i915_module_load@reload-with-=
fault-injection.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@i915_pm_dc@dc6-dpms.html">FAI=
L</a> ([i915#454]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl4/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-tglb3/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
559/shard-tglb7/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a>=
 ([i915#2411] / [i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_big_fb@4-tiled-32bpp-rota=
te-270.html">SKIP</a> ([i915#5286]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#377=
7]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rota=
te-270.html">SKIP</a> ([fdo#109271]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +11 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color@pipe-d-ctm-blue-to-=
red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_color_chamelium@pipe-a-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color_chamelium@pipe-a-de=
gamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_color_chamelium@pipe-d-ct=
m-green-to-red.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_content_protection@dp-mst=
-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_content_protection@srm.htm=
l">SKIP</a> ([fdo#109271]) +85 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2559/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#1=
09278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22559/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_draw_crc@draw-method-xrgb=
2101010-render-4tiled.html">SKIP</a> ([i915#5287]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_flip@2x-flip-vs-fences-in=
terruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb6/igt@kms_flip@2x-flip-vs-wf_vblank=
.html">SKIP</a> ([fdo#109274]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/=
shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915#=
4839] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-=
edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22559/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptibl=
e@c-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs-downscaling.html">INCOMPLETE</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-=
2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +16 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mm=
ap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22559/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-=
draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb1/igt@kms_hdr@static-toggle-suspend=
.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22559/shard-apl6/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180]) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +4 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-=
constant-alpha-max.html">SKIP</a> ([fdo#109278]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp=
-1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-i=
clb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-e=
dp-1-downscale-with-pixel-format.html">INCOMPLETE</a> ([i915#5293])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-b-edp-1-sc=
aler-with-rotation:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_plane_scaling@scaler-with=
-rotation-unity-scaling@pipe-b-edp-1-scaler-with-rotation.html">SKIP</a> ([=
i915#5176]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-glk1/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb8/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> ([fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_psr2_sf@plane-move-sf-dmg=
-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22559/shard-iclb=
4/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +3 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@kms_psr@psr2_primary_page_fli=
p.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb3/igt@kms_rotation_crc@primary-4-ti=
led-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl9/igt@kms_scaling_modes@scaling-mode=
-none@edp-1-pipe-a.html">SKIP</a> ([fdo#109271]) +307 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@kms_vblank@pipe-d-wait-idle.h=
tml">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl9/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@nouveau_crc@pipe-b-ctx-flip-s=
kip-current-frame.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@perf@polling-small-buf.html">=
FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-iclb7/igt@prime_nv_pcopy@test3_3.html">=
SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-apl4/igt@sysfs_clients@create.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22559/shard-skl10/igt@sysfs_clients@recycle-many.ht=
ml">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> ([i915#2410]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22559/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-tglu-2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a=
> ([i915#3371] / [i915#3731]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22559/shard-tglu-3/igt@gem_exec_capture@pi@bcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22559/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22559/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11360/shard-kbl3/igt@gem_exec_fa">FAIL</a> ([i915#2842]) -&gt; [PAS=
S][158] +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9018232279246646464==--
