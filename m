Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C3A487997
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 16:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BCD112894;
	Fri,  7 Jan 2022 15:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56D43112891;
 Fri,  7 Jan 2022 15:16:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 525A4A73C9;
 Fri,  7 Jan 2022 15:16:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4180918631283815737=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 07 Jan 2022 15:16:26 -0000
Message-ID: <164156858629.24389.13921017630352508338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220106200236.489656-1-juston.li@intel.com>
In-Reply-To: <20220106200236.489656-1-juston.li@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Hold_RPM_wakelock_during_PXP_unbind_=28rev3=29?=
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

--===============4180918631283815737==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Hold RPM wakelock during PXP unbind (rev3)
URL   : https://patchwork.freedesktop.org/series/98245/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11052_full -> Patchwork_21934_full
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

  Here are the unknown changes that may have been introduced in Patchwork_21934_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_create@busy-create:
    - {shard-rkl}:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-1/igt@gem_create@busy-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rkl-5/igt@gem_create@busy-create.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - {shard-rkl}:        ([PASS][3], [PASS][4]) -> [INCOMPLETE][5]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-4/igt@gem_exec_flush@basic-uc-prw-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-1/igt@gem_exec_flush@basic-uc-prw-default.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rkl-5/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-tglu}:       NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglu-3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_flip@dpms-off-confusion-interruptible@c-hdmi-a3:
    - {shard-dg1}:        NOTRUN -> [DMESG-WARN][8] +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-dg1-18/igt@kms_flip@dpms-off-confusion-interruptible@c-hdmi-a3.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - {shard-tglu}:       [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_21934_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35]) ([i915#4386]) -> ([PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl6/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl6/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl7/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl8/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl8/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#280])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][62] ([i915#180])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#2846])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglb1/igt@gem_exec_fair@basic-deadline.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2842]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][69] -> [SKIP][70] ([fdo#109271])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][71] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][72] -> [FAIL][73] ([i915#2842]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][74] -> [FAIL][75] ([i915#2842]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][76] -> [FAIL][77] ([i915#2842]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][78] ([i915#2842]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][79] -> [SKIP][80] ([i915#2190])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#4613])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#4613])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#4613])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@gem_lmem_swapping@parallel-multi.html
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#4613])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl9/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#4613])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][86] -> [DMESG-WARN][87] ([i915#1436] / [i915#716])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#1937])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][89] -> [DMESG-WARN][90] ([i915#180]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/igt@i915_suspend@sysfs-reader.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][91] -> [DMESG-WARN][92] ([i915#118])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#3743])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3777])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3777])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#3886]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109278] / [i915#3886])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109278]) +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#111615] / [i915#3689])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#3689]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +104 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb8/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109278] / [i915#1149])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-negative:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-negative.html
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][109] ([i915#1319])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@mei_interface:
    - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109300] / [fdo#111066])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_content_protection@mei_interface.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-glk:          [PASS][111] -> [FAIL][112] ([i915#3444])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109278] / [fdo#109279])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html
    - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109279] / [i915#3359])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][115] ([i915#180])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +16 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][117] -> [FAIL][118] ([i915#2346] / [i915#533])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#533]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109274])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([i915#79])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][123] -> [INCOMPLETE][124] ([i915#4839])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:
    - shard-kbl:          NOTRUN -> [FAIL][125] ([i915#2122])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][126] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109280]) +6 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#1188])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][130] -> [DMESG-WARN][131] ([i915#180]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-apl:          NOTRUN -> [SKIP][132] ([fdo#109271]) +32 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#3536])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_lowres@pipe-d-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#3536])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-y.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][135] -> [SKIP][136] ([fdo#109441]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-tglb:         NOTRUN -> [FAIL][137] ([i915#132] / [i915#3467])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109441])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][139] -> [FAIL][140] ([i915#31])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/igt@kms_setmode@basic.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2437])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling:
    - shard-skl:          [PASS][142] -> [FAIL][143] ([i915#1542])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl9/igt@perf@polling.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl8/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][144] -> [FAIL][145] ([i915#1542])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb8/igt@perf@polling-parameterized.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb5/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109291])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@sysfs_clients@sema-10:
    - shard-kbl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#2994])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        ([SKIP][148], [SKIP][149]) ([i915#4098]) -> [PASS][150]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-4/igt@drm_read@short-buffer-nonblock.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [INCOMPLETE][151] ([i915#4793]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-hang@render:
    - {shard-dg1}:        [DMESG-WARN][153] ([i915#4892]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@render.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-dg1-17/igt@gem_ctx_persistence@legacy-engines-hang@render.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-tglu}:       [INCOMPLETE][155] -> [PASS][156] +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglu-7/igt@gem_ctx_persistence@many-contexts.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglu-8/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][157] ([i915#4525]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-iclb:         [FAIL][159] ([i915#2846]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-iclb7/igt@gem_exec_fair@basic-deadline.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb7/igt@gem_exec_fair@basic-deadline.html
    - {shard-rkl}:        [FAIL][161] ([i915#2846]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][163] ([i915#2842]) -> [PASS][164]
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][165] ([i915#2842]) -> [PASS][166]
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][167] -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][169] ([fdo#109308]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
   [170]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/index.html

--===============4180918631283815737==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Hold RPM wakelock during PXP u=
nbind (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98245/">https://patchwork.freedesktop.org/series/98245/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21934/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11052_full -&gt; Patchwork_21934_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21934_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_create@busy-create:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-rkl-1/igt@gem_create@busy-create.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rk=
l-5/igt@gem_create@busy-create.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11052/shard-rkl-4/igt@gem_exec_flush@basic-uc-prw-default.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/sh=
ard-rkl-1/igt@gem_exec_flush@basic-uc-prw-default.html">PASS</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-rkl-=
5/igt@gem_exec_flush@basic-uc-prw-default.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-rkl-5/igt@gem_exec_whisper@basic-contex=
ts-forked-all.html">INCOMPLETE</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-tglu-3/igt@i915_pm_dc@dc6-psr.html">SKI=
P</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible@c-hdmi-a3:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-dg1-18/igt@kms_flip@dpms-off-confusion-=
interruptible@c-hdmi-a3.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspe=
nd.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21934/shard-tglu-1/igt@kms_vblank@pipe-b-ts-continuation-dpms-su=
spend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21934_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11052/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11052/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/sha=
rd-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11052/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11052/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11052/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl2/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1052/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11052/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl8/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@gem_ctx_sseu@invalid-sseu.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-apl3/igt@gem_eio@in-flight-suspend.html=
">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglb1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/sh=
ard-tglb6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1934/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
34/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2193=
4/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">SKIP</a> ([fdo#109=
271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.=
html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/s=
hard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
34/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/s=
hard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-tgl=
b7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-apl3/igt@gem_lmem_swapping@basic.html">=
SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-iclb6/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-skl9/igt@gem_lmem_swapping@parallel-mult=
i.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-tglb3/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shar=
d-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-apl8/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-=
apl4/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-glk1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2193=
4/shard-glk2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-skl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_ccs@pipe-d-crc-primary-bas=
ic-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +6 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_ccs@pipe-d-crc-primary-bas=
ic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@kms_ccs@pipe-d-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +104 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb8/igt@kms_chamelium@dp-hpd-with-ena=
bled-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-apl3/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_color@pipe-d-ctm-blue-to-=
red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-negative:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm=
-negative.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-=
negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_content_protection@mei_in=
terface.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21934/shard-glk2/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.=
html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-5=
12x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-5=
12x512-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-s=
uspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-skl9/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> ([fdo#109271]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21934/shard-skl3/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_flip@2x-modeset-vs-vblank=
-race-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21934/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/=
shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#=
4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@b-dp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#11182=
5]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +6 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-sk=
l9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21934/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">=
DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-128:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-apl3/igt@kms_plane_cursor@pipe-d-viewpo=
rt-size-128.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb8/igt@kms_plane_lowres@pipe-b-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_plane_lowres@pipe-d-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-iclb=
1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-tglb3/igt@kms_psr@psr2_sprite_mmap_cpu.h=
tml">FAIL</a> ([i915#132] / [i915#3467])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21934/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.h=
tml">SKIP</a> ([fdo#109441])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-apl2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-apl1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl3/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl9/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-skl8/igt@perf=
@polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb8/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shar=
d-iclb5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-iclb6/igt@prime_nv_api@i915_nv_import_t=
wice.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21934/shard-kbl4/igt@sysfs_clients@sema-10.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11052/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11052/shard-r=
kl-4/igt@drm_read@short-buffer-nonblock.html">SKIP</a>) ([i915#4098]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21934/shard-=
rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-skl8/igt@gem_ctx_isolation@preservation-s3@vcs0.html">I=
NCOMPLETE</a> ([i915#4793]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21934/shard-skl3/igt@gem_ctx_isolation@preservation-s3=
@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@rend=
er.html">DMESG-WARN</a> ([i915#4892]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21934/shard-dg1-17/igt@gem_ctx_persistence@l=
egacy-engines-hang@render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglu-7/igt@gem_ctx_persistence@many-contexts.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21934/shard-tglu-8/igt@gem_ctx_persistence@many-contexts.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21934/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11052/shard-iclb7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21934/shard-iclb7/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11052/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21934/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21934/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21934/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">=
SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21934/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11052/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a=
> ([fdo#109308]) -&gt; [PASS][170]</li>
</ul>
</li>
</ul>
<p>[170]</p>

</body>
</html>

--===============4180918631283815737==--
