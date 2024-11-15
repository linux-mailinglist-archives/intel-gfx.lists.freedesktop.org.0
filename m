Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A0F9CF8C5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 22:56:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3B3F10E114;
	Fri, 15 Nov 2024 21:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB7210E114;
 Fri, 15 Nov 2024 21:56:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2925068021719451575=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_series_starting_with_=5B1/4?=
 =?utf-8?q?=5D_drm/i915/dp=5Fmst=3A_Fix_connector_initialization_in_intel=5F?=
 =?utf-8?q?dp=5Fadd=5Fmst=5Fconnector=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2024 21:56:35 -0000
Message-ID: <173170779539.380829.3241555122270725520@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241115164159.1081675-1-imre.deak@intel.com>
In-Reply-To: <20241115164159.1081675-1-imre.deak@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2925068021719451575==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

=3D=3D Series Details =3D=3D

Series: series starting with [1/4] drm/i915/dp_mst: Fix connector initializ=
ation in intel_dp_add_mst_connector()
URL   : https://patchwork.freedesktop.org/series/141419/
State : failure

=3D=3D Summary =3D=3D

CI Bug Log - changes from CI_DRM_15707_full -> Patchwork_141419v1_full
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141419v1_full absolutely ne=
ed to be
  verified manually.
 =20
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141419v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in C=
I.

 =20

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-glk-0=20

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_1=
41419v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-dg2:          [PASS][1] -> [SKIP][2] +24 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1/i=
gt@gem_lmem_swapping@heavy-verify-random.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-d=
g2-11/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-dg1:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-d=
g1-15/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_selftest@live@hugepages:
    - shard-mtlp:         NOTRUN -> [ABORT][4] +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-m=
tlp-5/igt@i915_selftest@live@hugepages.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-glk:          NOTRUN -> [ABORT][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-g=
lk4/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-tglu-1:       NOTRUN -> [ABORT][6] +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-t=
glu-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_color@ctm-0-50:
    - shard-tglu:         [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-tglu-3/=
igt@kms_color@ctm-0-50.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-t=
glu-5/igt@kms_color@ctm-0-50.html

  * igt@kms_cursor_edge_walk@128x128-top-bottom:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][9] +1 other test incomplete
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-d=
g1-12/igt@kms_cursor_edge_walk@128x128-top-bottom.html

  * igt@kms_plane_multiple@tiling-4@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][10] +2 other tests fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
mtlp-5/igt@kms_plane_multiple@tiling-4@pipe-c-edp-1.html

  * igt@tools_test@tools_test:
    - shard-dg2:          [PASS][11] -> [FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1/=
igt@tools_test@tools_test.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@tools_test@tools_test.html

 =20
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          [SKIP][13] ([i915#11078]) -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1/=
igt@device_reset@unbind-cold-reset-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-dg2:          [SKIP][15] ([i915#8414]) -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1/=
igt@drm_fdinfo@all-busy-check-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@drm_fdinfo@all-busy-check-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [ABORT][17] ([i915#9820]) -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-10=
/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          [SKIP][19] ([i915#4077]) -> [SKIP][20] +1 other t=
est skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7/=
igt@kms_pm_rpm@fences-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          [SKIP][21] ([i915#6524] / [i915#6805]) -> [SKIP][=
22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1/=
igt@kms_prime@d3hot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@kms_prime@d3hot.html

  * igt@perf_pmu@frequency:
    - shard-dg2:          [FAIL][23] ([i915#12549] / [i915#6806]) -> [SKIP]=
[24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-10=
/igt@perf_pmu@frequency.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@perf_pmu@frequency.html

 =20
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2}:
    - shard-glk:          NOTRUN -> [ABORT][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
glk4/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2.html

 =20
Known issues
------------

  Here are the changes found in Patchwork_141419v1_full that come from know=
n issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][26], [PASS][27], [PASS][28], [PASS][29], =
[PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PA=
SS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS]=
[42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [FAIL][48=
], [PASS][49], [PASS][50]) -> ([PASS][51], [PASS][52], [PASS][53], [PASS][5=
4], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60],=
 [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [P=
ASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS=
][73], [PASS][74], [PASS][75])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-12=
/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-12=
/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-12=
/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-12=
/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-13=
/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-13=
/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-13=
/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-14=
/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-14=
/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-14=
/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-15=
/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-15=
/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-15=
/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-16=
/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-16=
/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-16=
/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-16=
/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-17=
/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-17=
/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-17=
/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-18=
/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-18=
/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-19=
/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-19=
/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-19=
/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-12/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-12/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-12/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-13/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-13/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-13/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-14/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-14/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-15/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-15/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-15/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-15/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-16/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-16/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-16/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-17/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-17/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-17/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-18/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-18/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-18/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-18/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-19/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-19/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg1-19/boot.html
    - shard-glk:          ([PASS][76], [PASS][77], [PASS][78], [PASS][79], =
[PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PA=
SS][86], [PASS][87], [PASS][88], [PASS][89], [FAIL][90], [PASS][91], [PASS]=
[92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98=
], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][1=
04], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS=
][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [P=
ASS][116], [FAIL][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121],=
 [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][12=
7], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS]=
[133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PA=
SS][139], [FAIL][140], [PASS][141], [PASS][142], [PASS][143], [PASS][144], =
[PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150=
], [PASS][151], [PASS][152], [PASS][153], [PASS][154], [PASS][155], [PASS][=
156], [PASS][157], [PASS][158]) -> ([PASS][159], [PASS][160], [PASS][161], =
[PASS][162], [PASS][163], [PASS][164], [PASS][165], [PASS][166], [PASS][167=
], [PASS][168], [PASS][169], [PASS][170], [PASS][171], [PASS][172], [PASS][=
173], [PASS][174], [PASS][175], [PASS][176], [PASS][177], [PASS][178], [PAS=
S][179], [PASS][180], [PASS][181], [PASS][182], [PASS][183])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/b=
oot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/b=
oot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/b=
oot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/b=
oot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/b=
oot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/b=
oot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/b=
oot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/=
boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/=
boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
boot.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
boot.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
boot.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
boot.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
boot.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
boot.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/=
boot.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/boot.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk3/boot.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk3/boot.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk7/boot.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk3/boot.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk2/boot.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk7/boot.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk2/boot.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk2/boot.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk1/boot.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk1/boot.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk6/boot.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk6/boot.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk6/boot.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk5/boot.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk5/boot.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk7/boot.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk8/boot.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk8/boot.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk5/boot.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/boot.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk8/boot.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk9/boot.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk9/boot.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/boot.html

 =20

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#8414]) +15 other tes=
ts skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3281]) +3 other test=
s skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_busy@close-race:
    - shard-tglu:         NOTRUN -> [FAIL][186] ([i915#12296] / [i915#12577=
])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@gem_busy@close-race.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#4873])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-5/igt@gem_caching@reads.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#9323])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#3555] / [i915#9323])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][190] -> [INCOMPLETE][191] ([i915#12392] / =
[i915#7297])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-6=
/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.h=
tml

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#8562])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#280])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][194] ([i915#11965] / [i915#12558=
]) +2 other tests fail
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][195] -> [FAIL][196] ([i915#2842])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-4=
/igt@gem_exec_fair@basic-pace@rcs0.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#3539])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-tglu-1:       NOTRUN -> [FAIL][198] ([i915#2842]) +7 other test=
s fail
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3281]) +2 other test=
s skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#4613]) +1 other test=
 skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-glk:          NOTRUN -> [SKIP][201] ([i915#4613]) +1 other test=
 skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#4613])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap@short-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#4083]) +1 other test=
 skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#4077]) +6 other test=
s skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#4077])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#4083])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_mmap_wc@bad-object.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3282]) +1 other test=
 skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3282])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][209] ([i915#2658])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#4270]) +3 other test=
s skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4270])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#4270])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#5190] / [i915#8428])=
 +3 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#4079])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#4885])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_unfence_active_buffers:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#4879])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#3297] / [i915#4880])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#3297])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#2856]) +2 other test=
s skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-2/igt@gen9_exec_parse@allowed-all.html
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#2527]) +2 other test=
s skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-15/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][221] -> [ABORT][222] ([i915#9820])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-6=
/igt@i915_module_load@reload-with-fault-injection.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         NOTRUN -> [ABORT][223] ([i915#12817] / [i915#9820=
])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#8399])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [PASS][225] -> [FAIL][226] ([i915#12548] / [i915#=
3591]) +1 other test fail
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-1=
4/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#11681])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@i915_pm_rps@thresholds.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][228] -> [SKIP][229] ([i915#7984])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-mtlp-=
4/igt@i915_power@sanity.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@i915_power@sanity.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][230] ([i915#9311]) +1 othe=
r test dmesg-warn
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@i915_selftest@mock.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#7707])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@intel_hwmon@hwmon-write.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-=
rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#8709]) +7 other test=
s skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-=
1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-=
rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#8709]) +3 other test=
s skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2=
-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-=
mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#8709]) +11 other tes=
ts skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3=
-4-mc-ccs.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#6228])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-dg1:          [PASS][236] -> [FAIL][237] ([i915#5956])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-1=
2/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal=
-panels:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#1769] / [i915#3555])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-inter=
nal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][239] ([i915#5956])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-=
a-4.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#5286]) +2 other test=
s skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#4538] / [i915#5286])=
 +4 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.ht=
ml

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#5286]) +1 other test=
 skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#3638])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#4538])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#4538] / [i915#5190])=
 +5 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#6095]) +148 other te=
sts skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.h=
tml

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#6095]) +24 other tes=
ts skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1=
.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#6095]) +59 other tes=
ts skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#12313])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#12805])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#6095]) +7 other test=
s skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.h=
tml

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][252] ([i915#1982])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-=
1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#6095]) +73 other tes=
ts skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a=
-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a=
-3:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#4423] / [i915#6095])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hd=
mi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#12313])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#10307] / [i915#6095]=
) +101 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#10307] / [i915#10434=
] / [i915#6095]) +2 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#3742])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#4087]) +4 other test=
s skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#7828]) +4 other test=
s skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-glk:          NOTRUN -> [SKIP][261] +60 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg1:          NOTRUN -> [SKIP][262] ([i915#7828]) +2 other test=
s skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-15/igt@kms_chamelium_edid@hdmi-mode-timings.html
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#7828]) +1 other test=
 skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-5/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#7828]) +3 other test=
s skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#7828]) +4 other test=
s skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][266] ([i915#3555] / [i915#9979])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#9424])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][268] ([i915#6944] / [i915#9424])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#6944])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-2/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#6944] / [i915#7116] =
/ [i915#7118] / [i915#9424])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#6944] / [i915#7116] =
/ [i915#7118] / [i915#9424])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#8814]) +1 other test=
 skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][273] ([i915#3555]) +2 other test=
s skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#11453] / [i915#3359])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#9809])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#4103]) +1 other test=
 skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#12402])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3555] / [i915#3840])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#3840])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#3555] / [i915#3840])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#3555] / [i915#3840])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#3469])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#4854])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-16/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr1:
    - shard-tglu-1:       NOTRUN -> [SKIP][284] ([i915#658])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#658])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][286] ([i915#8381])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#9934])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#3637]) +2 other test=
s skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#3637]) +3 other test=
s skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          ([PASS][290], [PASS][291], [PASS][292]) -> [FAIL]=
[293] ([i915#2122]) +1 other test fail
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-rkl:          [PASS][294] -> [FAIL][295] ([i915#79])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-7=
/igt@kms_flip@flip-vs-expired-vblank.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][296] ([i915#79])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][297] ([i915#4839] / [i915#=
6113]) +1 other test incomplete
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-13/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][298] ([i915#2122]) +1 other test=
 fail
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@p=
ipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#2587] / [i915#2672])=
 +3 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscali=
ng@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#2672] / [i915#3555])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.=
html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscalin=
g:
    - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#2672] / [i915#3555])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downsc=
aling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscalin=
g@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#2587] / [i915#2672])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downsc=
aling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][303] ([i915#2672] / [i915#3555])=
 +2 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscal=
ing.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#2587] / [i915#2672] =
/ [i915#3555])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscalin=
g.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][305] ([i915#2672] / [i915#3555])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.h=
tml

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-=
a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][306] ([i915#2587] / [i915#2672])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@p=
ipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#2672] / [i915#3555] =
/ [i915#8813])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling=
.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pip=
e-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][308] ([i915#2672] / [i915#8813])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling=
@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#2672] / [i915#3555] =
/ [i915#5190])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.ht=
ml

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-=
a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#2672]) +4 other test=
s skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pi=
pe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#5354]) +18 other tes=
ts skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][312] +40 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.=
html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][313] +18 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.h=
tml

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][314] ([i915#8708]) +4 other test=
s skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:
    - shard-dg2:          [PASS][315] -> [FAIL][316] ([i915#6880])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-6=
/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][317] -> [SKIP][318] +32 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#3458]) +2 other test=
s skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-=
cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#3458]) +5 other test=
s skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][321] +26 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwri=
te.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#10433] / [i915#3458]=
) +3 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#8708]) +5 other test=
s skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [PASS][324] -> [SKIP][325] ([i915#3555] / [i915#8=
228])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@kms_hdr@bpc-switch.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-2/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#12713])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][327] ([i915#3555] / [i915#8228])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-3/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#12388])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][329] ([i915#12388])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#6301])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][331] ([i915#6301])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][332] ([i915#12169])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][333] ([i915#10647]) +1 other tes=
t fail
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#3555] / [i915#8821])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][335] ([i915#3555])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][336] ([i915#12247]) +9 other tes=
ts skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe=
-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][337] ([i915#12247]) +4 other tes=
ts skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe=
-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats=
@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][338] ([i915#12247]) +1 other tes=
t skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for=
mats@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][339] -> [SKIP][340] ([i915#2575] / [i915#9=
423]) +5 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][341] ([i915#12247] / [i915#6953]=
 / [i915#9423])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#12247]) +3 other tes=
ts skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pip=
e-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@=
pipe-b:
    - shard-snb:          NOTRUN -> [SKIP][343] +63 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-2=
5@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][344] ([i915#5354])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][345] ([i915#9812])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][346] ([i915#5978])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][347] ([i915#4281])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][348] ([i915#9340])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][349] ([i915#4077]) +4 other test=
s skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][350] -> [SKIP][351] ([i915#9519])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-2=
/igt@kms_pm_rpm@modeset-lpsp.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#6524] / [i915#6805])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-tglu-1:       NOTRUN -> [SKIP][353] ([i915#6524])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][354] ([i915#11520]) +3 other tes=
ts skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][355] ([i915#11520]) +1 other tes=
t skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#11520]) +4 other tes=
ts skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@p=
ipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#9808])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-=
sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@p=
ipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][358] ([i915#12316]) +1 other tes=
t skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-=
sf@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-snb:          NOTRUN -> [SKIP][359] ([i915#11520]) +1 other tes=
t skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb1/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][360] ([i915#11520]) +5 other tes=
ts skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-3/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][361] ([i915#11520]) +1 other tes=
t skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][362] ([i915#9732]) +11 other tes=
ts skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@pr-primary-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][363] ([i915#1072] / [i915#9732])=
 +7 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@kms_psr@pr-primary-mmap-gtt.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][364] ([i915#9732]) +6 other test=
s skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][365] ([i915#1072] / [i915#9732])=
 +8 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][366] ([i915#9685])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2:          NOTRUN -> [SKIP][367] ([i915#4235])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][368] ([i915#5190])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][369] ([i915#3555]) +6 other test=
s skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu-1:       NOTRUN -> [ABORT][370] ([i915#12231]) +1 other te=
st abort
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-1/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][371] ([i915#5465]) +2 other test=
s fail
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb1/igt@kms_setmode@basic.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [PASS][372] -> [SKIP][373] ([i915#2575]) +181 oth=
er tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
/igt@kms_vblank@ts-continuation-modeset.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@flip-basic:
    - shard-dg2:          NOTRUN -> [SKIP][374] ([i915#3555]) +1 other test=
 skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][375] ([i915#2437] / [i915#9412])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][376] +4 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#2436])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-2/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][378] ([i915#7387])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@perf@global-sseu-config-invalid.html

  * igt@perf@invalid-remove-userspace-config:
    - shard-dg2:          [PASS][379] -> [SKIP][380] ([i915#12506])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@perf@invalid-remove-userspace-config.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@perf@invalid-remove-userspace-config.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][381] +6 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#8516])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][383] ([i915#3708] / [i915#4077])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-16/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][384] ([i915#3291] / [i915#3708])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg1:          NOTRUN -> [SKIP][385] ([i915#3708]) +1 other test=
 skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg1:          NOTRUN -> [SKIP][386] ([i915#9917])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-12/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2:          NOTRUN -> [SKIP][387] ([i915#9917])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu:         NOTRUN -> [FAIL][388] ([i915#12564] / [i915#9781])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@syncobj_wait@invalid-wait-zero-handles.html

 =20
#### Possible fixes ####

  * igt@api_intel_allocator@default-alignment:
    - shard-dg2:          [SKIP][389] -> [PASS][390] +40 other tests pass
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@api_intel_allocator@default-alignment.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@api_intel_allocator@default-alignment.html

  * igt@fbdev@unaligned-read:
    - shard-dg2:          [SKIP][391] ([i915#2582]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@fbdev@unaligned-read.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][393] ([i915#12031]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-2=
/igt@gem_ctx_engines@invalid-engines.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-rkl:          [FAIL][395] ([i915#2842]) -> [PASS][396] +1 other=
 test pass
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-5=
/igt@gem_exec_fair@basic-none-share.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-4/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][397] ([i915#2842]) -> [PASS][398] +1 other=
 test pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-tglu-=
8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          [INCOMPLETE][399] -> [PASS][400] +1 other test pa=
ss
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-1=
7/igt@gem_exec_suspend@basic-s3-devices.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-16/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@i915_hangman@gt-error-state-capture@vcs1:
    - shard-dg2:          [ABORT][401] -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-5=
/igt@i915_hangman@gt-error-state-capture@vcs1.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@i915_hangman@gt-error-state-capture@vcs1.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [ABORT][403] ([i915#9820]) -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-1=
3/igt@i915_module_load@reload-with-fault-injection.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][405] ([i915#10131] / [i915#10887]) -> [PA=
SS][406]
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-mtlp-=
8/igt@i915_module_load@reload-with-fault-injection.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][407] ([i915#7790]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-snb6/=
igt@i915_pm_rps@reset.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb1/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-h=
dmi-a-4:
    - shard-dg1:          [FAIL][409] ([i915#5956]) -> [PASS][410] +1 other=
 test pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-1=
4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdm=
i-a-4.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe=
-a-hdmi-a-4.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][411] ([i915#11808]) -> [PASS][412] +1 othe=
r test pass
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-tglu-=
8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.ht=
ml
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-=
a-1.html

  * igt@kms_busy@basic:
    - shard-dg2:          [SKIP][413] ([i915#2575]) -> [PASS][414] +145 oth=
er tests pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@kms_busy@basic.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][415], [FAIL][416], [PASS][417], [PASS][41=
8]) ([i915#2346]) -> [PASS][419]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([FAIL][420], [PASS][421], [PASS][422]) ([i915#23=
46]) -> [PASS][423]
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.=
html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          ([FAIL][424], [PASS][425], [PASS][426], [PASS][42=
7]) ([i915#4767]) -> [PASS][428]
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
igt@kms_fbcon_fbt@fbc-suspend.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
igt@kms_fbcon_fbt@fbc-suspend.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/=
igt@kms_fbcon_fbt@fbc-suspend.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
igt@kms_fbcon_fbt@fbc-suspend.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][429], [PASS][430], [PASS][431]) ([i915#21=
22]) -> [PASS][432] +1 other test pass
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/=
igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/=
igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/=
igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-=
a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-snb:          [FAIL][433] ([i915#2122]) -> [PASS][434] +1 other=
 test pass
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-snb7/=
igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][435] ([i915#4839]) -> [PASS][436] +1=
 other test pass
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-snb1/=
igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-snb2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-glk:          ([INCOMPLETE][437], [PASS][438], [PASS][439]) ([i=
915#4839]) -> [PASS][440]
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/=
igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-mtlp:         [FAIL][441] ([i915#2122]) -> [PASS][442] +3 other=
 tests pass
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-mtlp-=
3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          [DMESG-WARN][443] ([i915#4423]) -> [PASS][444] +1=
 other test pass
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-1=
3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cp=
u.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][445] ([i915#3555] / [i915#8228]) -> [PASS]=
[446] +1 other test pass
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-5=
/igt@kms_hdr@invalid-metadata-sizes.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-tglu:         [ABORT][447] ([i915#10159]) -> [PASS][448] +1 oth=
er test pass
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-tglu-=
2/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-tglu-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:
    - shard-dg2:          [SKIP][449] ([i915#2575] / [i915#9423]) -> [PASS]=
[450] +3 other tests pass
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][451] ([i915#9519]) -> [PASS][452]
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-2=
/igt@kms_pm_rpm@modeset-lpsp.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][453] ([i915#9519]) -> [PASS][454] +1 other=
 test pass
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-rkl-2=
/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@perf@gen12-group-exclusive-stream-sample-oa:
    - shard-dg2:          [SKIP][455] ([i915#12506]) -> [PASS][456] +1 othe=
r test pass
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@perf@gen12-group-exclusive-stream-sample-oa.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@perf@gen12-group-exclusive-stream-sample-oa.html

  * igt@perf_pmu@render-node-busy:
    - shard-glk:          ([PASS][457], [INCOMPLETE][458]) -> [PASS][459] +=
1 other test pass
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/=
igt@perf_pmu@render-node-busy.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/=
igt@perf_pmu@render-node-busy.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk1/igt@perf_pmu@render-node-busy.html

 =20
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          [SKIP][460] ([i915#8411]) -> [SKIP][461] ([i915#2=
575])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
/igt@api_intel_bb@blit-reloc-purge-cache.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@busy-idle:
    - shard-dg2:          [SKIP][462] -> [SKIP][463] ([i915#8414]) +3 other=
 tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@drm_fdinfo@busy-idle.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@drm_fdinfo@busy-idle.html

  * igt@gem_busy@close-race:
    - shard-dg2:          [SKIP][464] ([i915#2575]) -> [FAIL][465] ([i915#1=
2296] / [i915#12577])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_busy@close-race.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_busy@close-race.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          [SKIP][466] ([i915#7697]) -> [SKIP][467] ([i915#2=
575])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_close_race@multigpu-basic-process.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          [SKIP][468] ([i915#2575]) -> [SKIP][469] ([i915#8=
562])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_create@create-ext-set-pat.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          [SKIP][470] ([i915#8555]) -> [SKIP][471] ([i915#2=
575]) +1 other test skip
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_ctx_persistence@heartbeat-hostile.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          [SKIP][472] ([i915#2575]) -> [SKIP][473] ([i915#8=
555])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_ctx_persistence@heartbeat-stop.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          [SKIP][474] ([i915#280]) -> [SKIP][475] ([i915#25=
75])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_ctx_sseu@invalid-sseu.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          [SKIP][476] ([i915#4812]) -> [SKIP][477] ([i915#2=
575])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
/igt@gem_exec_balancer@bonded-false-hang.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2:          [SKIP][478] ([i915#2575]) -> [SKIP][479] ([i915#4=
036])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_exec_balancer@invalid-bonds.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_capture@capture:
    - shard-dg2:          [FAIL][480] ([i915#11965] / [i915#12558]) -> [SKI=
P][481] ([i915#2575])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_exec_capture@capture.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_capture@capture.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          ([FAIL][482], [PASS][483], [FAIL][484], [FAIL][48=
5]) ([i915#2842]) -> [FAIL][486] ([i915#2842]) +1 other test fail
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/=
igt@gem_exec_fair@basic-pace-solo.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/=
igt@gem_exec_fair@basic-pace-solo.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/=
igt@gem_exec_fair@basic-pace-solo.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/=
igt@gem_exec_fair@basic-pace-solo.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-glk6/igt@gem_exec_fair@basic-pace-solo.html
    - shard-dg2:          [SKIP][487] ([i915#2575]) -> [SKIP][488] ([i915#3=
539])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_exec_fair@basic-pace-solo.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          [SKIP][489] ([i915#3539]) -> [SKIP][490] ([i915#2=
575])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
/igt@gem_exec_fair@basic-throttle.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          [SKIP][491] ([i915#2575]) -> [SKIP][492] ([i915#4=
812])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_exec_fence@concurrent.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          [SKIP][493] ([i915#2575]) -> [SKIP][494] ([i915#3=
539] / [i915#4852])
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_exec_flush@basic-uc-ro-default.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          [SKIP][495] ([i915#3539] / [i915#4852]) -> [SKIP]=
[496] ([i915#2575])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_exec_flush@basic-wb-ro-default.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          [SKIP][497] -> [SKIP][498] ([i915#2575]) +5 other=
 tests skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_exec_params@secure-non-master.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-dg2:          [SKIP][499] ([i915#3281]) -> [SKIP][500] ([i915#2=
575]) +11 other tests skip
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          [SKIP][501] ([i915#2575]) -> [SKIP][502] ([i915#3=
281]) +7 other tests skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_exec_reloc@basic-write-read-active.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          [SKIP][503] ([i915#4537] / [i915#4812]) -> [SKIP]=
[504] ([i915#2575])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_exec_schedule@preempt-queue.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          [SKIP][505] ([i915#2575]) -> [SKIP][506] ([i915#4=
860]) +3 other tests skip
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_media_vme:
    - shard-dg2:          [SKIP][507] ([i915#2575]) -> [SKIP][508] ([i915#2=
84])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_media_vme.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          [SKIP][509] ([i915#2575]) -> [SKIP][510] ([i915#4=
077]) +5 other tests skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_mmap_gtt@cpuset-big-copy.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          [SKIP][511] ([i915#4077]) -> [SKIP][512] ([i915#2=
575]) +12 other tests skip
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_mmap_gtt@zero-extend.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          [SKIP][513] ([i915#4083]) -> [SKIP][514] ([i915#2=
575]) +3 other tests skip
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_mmap_wc@bad-object.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          [SKIP][515] ([i915#2575]) -> [SKIP][516] ([i915#4=
083]) +2 other tests skip
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_mmap_wc@write-wc-read-gtt.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-6/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          [SKIP][517] ([i915#3282]) -> [SKIP][518] ([i915#2=
575]) +2 other tests skip
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_partial_pwrite_pread@reads-uncached.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          [SKIP][519] ([i915#2575]) -> [SKIP][520] ([i915#4=
270]) +1 other test skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_pxp@create-regular-context-2.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          [SKIP][521] ([i915#4270]) -> [SKIP][522] ([i915#2=
575]) +2 other tests skip
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
/igt@gem_pxp@display-protected-crc.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          [SKIP][523] ([i915#2575]) -> [SKIP][524] ([i915#3=
282]) +2 other tests skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_readwrite@beyond-eob.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2:          [SKIP][525] ([i915#2575] / [i915#5190]) -> [SKIP]=
[526] ([i915#5190] / [i915#8428]) +4 other tests skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_render_copy@y-tiled-to-vebox-linear.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-3/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          [SKIP][527] ([i915#5190] / [i915#8428]) -> [SKIP]=
[528] ([i915#2575] / [i915#5190]) +5 other tests skip
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          [SKIP][529] ([i915#2575]) -> [SKIP][530] ([i915#4=
885])
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
1/igt@gem_softpin@evict-snoop.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          [SKIP][531] ([i915#4879]) -> [SKIP][532] ([i915#2=
575])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_unfence_active_buffers.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          [SKIP][533] ([i915#3297]) -> [SKIP][534] ([i915#2=
575])
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-1=
0/igt@gem_userptr_blits@coherency-sync.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard=
-dg2-11/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          [SKIP][535] ([i915#3297] / [i915#4880]) -> [SKIP]=
[536] ([i915#2575])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg2-7=
/igt@gem_userptr_blits@map-fixed-invalid

=3D=3D Logs =3D=3D

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1419v1/index.html

--===============2925068021719451575==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/dp_mst: =
Fix connector initialization in intel_dp_add_mst_connector()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/141419/">https://patchwork.freedesktop.org/series/141419/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_141419v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141419v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15707_full -&gt; Patchwork_141419v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_141419v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_141419v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
141419v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-random.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141419v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP=
</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@debugfs-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/igt@i915_pm_rpm@debugfs-read.=
html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-5/igt@i915_selftest@live@hugepa=
ges.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-gen12-rc-ccs.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-tglu-3/igt@kms_color@ctm-0-50.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-tg=
lu-5/igt@kms_color@ctm-0-50.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_cursor_edge_walk@128x=
128-top-bottom.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-5/igt@kms_plane_multiple@tiling=
-4@pipe-c-edp-1.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@tools_test@tools_test:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@tools_test@tools_test.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-11/igt@tools_test@tools_test.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html">S=
KIP</a> ([i915#11078]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141419v1/shard-dg2-11/igt@device_reset@unbind-cold-reset-re=
bind.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> =
([i915#8414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141419v1/shard-dg2-11/igt@drm_fdinfo@all-busy-check-all.html">SKIP</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-2/igt@i915_module_load@reload-wi=
th-fault-injection.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> ([i915#=
4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
141419v1/shard-dg2-11/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524] /=
 [i915#6805]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141419v1/shard-dg2-11/igt@kms_prime@d3hot.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@perf_pmu@frequency.html">FAIL</a> ([i915#125=
49] / [i915#6806]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141419v1/shard-dg2-11/igt@perf_pmu@frequency.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2}:<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs@pipe-c-hdmi-a-2.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141419v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-12/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-12=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15707/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-13/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-13/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15707/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-14/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-14/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15707/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15707/shard-dg1-15/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-15/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
707/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15707/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-16/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707=
/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15707/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-17/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/sh=
ard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15707/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-18/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard=
-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15707/shard-dg1-19/boot.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg1-19/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-dg=
1-19/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141419v1/shard-dg1-12/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141419v1/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141419v1/shard-dg1-13/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141419v1/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141419v1/shard-dg1-15/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141419v1/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-16/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141419v1/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141419v1/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_141419v1/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-18/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141419v1/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-19/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-dg1-19/boot.html">PASS</a>)</li>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15707/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/sha=
rd-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15707/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk5/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_15707/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707=
/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_15707/shard-glk4/boot.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5707/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15707/shard-glk4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shar=
d-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15707/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15707/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15707/shard-glk3/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15707/shard-glk3/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15707/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15707/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5707/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15707/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15707/shard-glk2/boot.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15707/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15707/shard-glk9/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15707/shard-glk9/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk9/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk=
9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15707/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5707/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15707/shard-glk8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shar=
d-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15707/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15707/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15707/shard-glk7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/=
shard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15707/shard-glk7/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15707/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
5707/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_15707/shard-glk6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15707/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15707/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15707/shard-glk6/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15707/shard-glk5/boot.html">PASS</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141419v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_141419v1/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_141419v1/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/=
shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_141419v1/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk2/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
141419v1/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_141419v1/shard-glk1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_141419v1/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk6/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_141419v1/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk7/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
41419v1/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_141419v1/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_141419v1/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk4/boot.html"=
>PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.=
html">SKIP</a> ([i915#8414]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_bad_reloc@negative-re=
loc-lut.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@gem_busy@close-race.html"=
>FAIL</a> ([i915#12296] / [i915#12577])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-5/igt@gem_caching@reads.html">S=
KIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_141419v1/shard-dg2-10/igt@gem_ccs@suspend-resume@x=
major-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / =
[i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_exec_capture@capture@=
vecs0-lmem0.html">FAIL</a> ([i915#11965] / [i915#12558]) +2 other tests fai=
l</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v=
1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@gem_exec_fair@basic-sync.h=
tml">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@gem_exec_fair@basic-throt=
tle.html">FAIL</a> ([i915#2842]) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@gem_exec_reloc@basic-write=
-gtt-noreloc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@gem_lmem_swapping@massive=
-random.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk1/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@gem_lmem_swapping@random.=
html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@gem_mmap@short-mmap.html">=
SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-co=
py-xy.html">SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-mediu=
m-copy-odd.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_mmap_wc@bad-object.ht=
ml">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-snb1/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@gem_pxp@fail-invalid-prot=
ected-context.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@gem_pxp@reject-modify-cont=
ext-protection-off-2.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@gem_pxp@reject-modify-con=
text-protection-on.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@gem_render_copy@yf-tiled-c=
cs-to-linear.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@gem_render_tiled_blits@bas=
ic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_unfence_active_buffer=
s.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@gem_userptr_blits@map-fix=
ed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-2/igt@gen9_exec_parse@allowed-al=
l.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/igt@gen9_exec_parse@allowed-a=
ll.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#12817] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141419v1/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html"=
>FAIL</a> ([i915#12548] / [i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@i915_pm_rps@thresholds.htm=
l">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-mtl=
p-8/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-rkl-3/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#87=
09]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> ([i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-tran=
sition.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_141419v1/shard-dg1-18/igt@kms_atomic_transition@plane-all-mo=
deset-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769=
] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-18/igt@kms_atomic_transition@pla=
ne-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538] / [i915#528=
6]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_big_fb@linear-64bpp-r=
otate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]=
) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +148 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +59 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-3/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12805])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +7 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1.html">INCOMPLETE</a> ([i915#1982])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +73 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-=
3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#4423] / =
[i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#609=
5]) +101 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#104=
34] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_cdclk@mode-transition=
.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_chamelium_edid@dp-edid-=
change-during-suspend.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-5/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_chamelium_frames@hdmi-=
cmp-planar-formats.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-3/igt@kms_color@deep-color.html=
">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-2/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@kms_content_protection@ty=
pe1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_content_protection@ue=
vent.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-64x21.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-8/igt@kms_cursor_legacy@2x-long=
-cursor-vs-flip-atomic.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_dp_linktrain_fallback@=
dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_dsc@dsc-basic.html">SK=
IP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-16/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_feature_discovery@psr=
1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_feature_discovery@psr2=
.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_flip@2x-flip-vs-fence=
s.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_flip@2x-flip-vs-suspe=
nd.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_flip@2x-plain-flip.ht=
ml">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15707/shard-glk3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/sha=
rd-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">PASS</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/=
shard-glk7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">FAIL</a> =
([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-7/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14141=
9v1/shard-rkl-3/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a> ([i915#7=
9])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-rkl-3/igt@kms_flip@flip-vs-expired-v=
blank@b-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-13/igt@kms_flip@flip-vs-suspend.=
html">INCOMPLETE</a> ([i915#4839] / [i915#6113]) +1 other test incomplete</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt@kms_flip@wf_vblank-ts-chec=
k-interruptible@c-hdmi-a3.html">FAIL</a> ([i915#2122]) +1 other test fail</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i9=
15#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i91=
5#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#355=
5] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> ([i915#5354]) +18 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +40 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +18 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbc-farfromfence-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-blt.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-b=
lt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-dr=
aw-render.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +2 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-rte.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> +26 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([i915#10433] / [i915#3458=
]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg=
2-2/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-3/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_joiner@basic-force-big=
-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_panel_fitting@legacy.=
html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_plane_alpha_blend@alpha=
-opaque-fb.html">FAIL</a> ([i915#12169])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#10647]) +1 other test fail=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +9 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-5/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-pixel-formats@pipe-b.html">SKIP</a> ([i915#122=
47]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-=
with-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_141419v1/shard-dg2-11/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#2575] / [i915#9423])=
 +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#695=
3] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-snb1/igt@kms_plane_scaling@planes-up=
scale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> +63 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> ([i915#5978])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">=
SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_pm_rpm@fences-dpms.ht=
ml">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shar=
d-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_prime@d3hot.html">SKI=
P</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_psr2_sf@fbc-pr-primary=
-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html">SKIP</a> ([i915=
#9808])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pi=
pe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html">SKIP</a> ([i915=
#12316]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-snb1/igt@kms_psr2_sf@pr-cursor-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-3/igt@kms_psr2_sf@pr-cursor-pla=
ne-update-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_psr2_sf@pr-overlay-plan=
e-move-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@kms_psr@fbc-psr2-cursor-p=
lane-move.html">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@kms_psr@pr-primary-mmap-g=
tt.html">SKIP</a> ([i915#1072] / [i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_psr@pr-sprite-plane-o=
noff.html">SKIP</a> ([i915#9732]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_rotation_crc@exhaust-f=
ences.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-8/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-1/igt@kms_selftest@drm_framebuf=
fer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-snb1/igt@kms_setmode@basic.html">FAI=
L</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@kms_vblank@ts-continuation-modeset.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1419v1/shard-dg2-11/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> (=
[i915#2575]) +181 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@kms_vrr@flip-basic.html">S=
KIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-mtlp-8/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> +4 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-2/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-6/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-remove-userspace-config:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@perf@invalid-remove-userspace-config.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141419v1/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html">SKIP<=
/a> ([i915#12506])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-3/igt@perf_pmu@event-wait@rcs0.h=
tml">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-16/igt@prime_vgem@basic-fence-mm=
ap.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-12/igt@sriov_basic@enable-vfs-au=
toprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-4/igt@sriov_basic@enable-vfs-bin=
d-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-tglu-6/igt@syncobj_wait@invalid-wait=
-zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_allocator@default-alignment:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@api_intel_allocator@default-alignment.html">=
SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141419v1/shard-dg2-3/igt@api_intel_allocator@default-alignment.html">PASS=
</a> +40 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2=
582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
41419v1/shard-dg2-5/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a=
> ([i915#12031]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_141419v1/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-rkl-4/igt@gem_exec_fair@basic-none-share.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_141419v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html">INCO=
MPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141419v1/shard-dg1-16/igt@gem_exec_suspend@basic-s3-devices.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-error-state-capture@vcs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-5/igt@i915_hangman@gt-error-state-capture@vcs1.html=
">ABORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_141419v1/shard-dg2-5/igt@i915_hangman@gt-error-state-capture@vcs1.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/igt@i915_module_load@reload-w=
ith-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#10131] / [i915#10887]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-mtlp-8/igt@i915_modu=
le_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-snb6/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#=
7790]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
141419v1/shard-snb1/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-1=
9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdm=
i-a-4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-tran=
sition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#11808]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-tglu-5/igt@kms=
_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@kms_busy@basic.html">SKIP</a> ([i915#2575]) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v=
1/shard-dg2-6/igt@kms_busy@basic.html">PASS</a> +145 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15707/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15707/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitio=
ns.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15707/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions=
.html">PASS</a>) ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_15707/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions-varying-size.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk7/igt@kms_cursor_legacy@flip-=
vs-cursor-atomic-transitions-varying-size.html">PASS</a>) ([i915#2346]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/s=
hard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-s=
ize.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk2/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk8/ig=
t@kms_fbcon_fbt@fbc-suspend.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/igt@kms_fbcon_fbt@fbc-suspend.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15707/shard-glk7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>) ([i915#4767]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14141=
9v1/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interrupti=
ble@ac-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15707/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recre=
ate-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk1/igt@kms_flip@2x-plain=
-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#2=
122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
41419v1/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-=
hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL=
</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141419v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOM=
PLETE</a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_141419v1/shard-snb2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk3/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCO=
MPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1570=
7/shard-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk6/igt@km=
s_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a>) ([i915#4839]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk7=
/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-mtlp-3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-=
edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_141419v1/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-=
check-interruptible@b-edp1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri=
-shrfb-draw-mmap-cpu.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg1-15/igt@=
kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html">PASS=
</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 ([i915#3555] / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_141419v1/shard-dg2-10/igt@kms_hdr@invalid-metadata-si=
zes.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-tglu-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">AB=
ORT</a> ([i915#10159]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141419v1/shard-tglu-6/igt@kms_pipe_crc_basic@suspend-read-c=
rc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-5=
-with-rotation.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt=
@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">PASS</a> =
+3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915=
#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_141419v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141419v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-sample-oa:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@perf@gen12-group-exclusive-stream-sample-oa.=
html">SKIP</a> ([i915#12506]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt@perf@gen12-group-exclusive-=
stream-sample-oa.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk5/igt@perf_pmu@render-node-busy.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk2/ig=
t@perf_pmu@render-node-busy.html">INCOMPLETE</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-glk1/igt@perf_pmu=
@render-node-busy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141419v1/shard-dg2-11/igt@api_intel_bb@blit-reloc-purge-cache.=
html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@drm_fdinfo@busy-idle.html">SKIP</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-=
dg2-5/igt@drm_fdinfo@busy-idle.html">SKIP</a> ([i915#8414]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_busy@close-race.html">SKIP</a> ([i915#25=
75]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1419v1/shard-dg2-5/igt@gem_busy@close-race.html">FAIL</a> ([i915#12296] / [=
i915#12577])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_close_race@multigpu-basic-process.html">=
SKIP</a> ([i915#7697]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-pro=
cess.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_create@create-ext-set-pat.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-dg2-5/igt@gem_create@create-ext-set-pat.html">SKIP</=
a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html">=
SKIP</a> ([i915#8555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hos=
tile.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-stop.html">SKI=
P</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141419v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-stop.ht=
ml">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i9=
15#280]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141419v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915=
#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html">SKI=
P</a> ([i915#4812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141419v1/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.=
html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_exec_balancer@invalid-bonds.html">SKIP</=
a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_141419v1/shard-dg2-3/igt@gem_exec_balancer@invalid-bonds.html">SK=
IP</a> ([i915#4036])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_exec_capture@capture.html">FAIL</a> ([i91=
5#11965] / [i915#12558]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_exec_capture@capture.html">=
SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15707/shard-glk6/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk=
7/igt@gem_exec_fair@basic-pace-solo.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_15707/shard-glk4/igt@gem_exec_fair@basi=
c-pace-solo.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_15707/shard-glk8/igt@gem_exec_fair@basic-pace-solo.html">FAIL</=
a>) ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141419v1/shard-glk6/igt@gem_exec_fair@basic-pace-solo.html">FAIL=
</a> ([i915#2842]) +1 other test fail</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-dg2-3/igt@gem_exec_fair@basic-pace-solo.html">SKIP</=
a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html">SKIP</a> (=
[i915#3539]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_141419v1/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html">SKIP</a>=
 ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_exec_fence@concurrent.html">SKIP</a> ([i=
915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141419v1/shard-dg2-3/igt@gem_exec_fence@concurrent.html">SKIP</a> ([i91=
5#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_exec_flush@basic-uc-ro-default.html">SKI=
P</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_141419v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-ro-default.ht=
ml">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_exec_flush@basic-wb-ro-default.html">SKI=
P</a> ([i915#3539] / [i915#4852]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_exec_flush@basic-w=
b-ro-default.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_exec_params@secure-non-master.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
1419v1/shard-dg2-11/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([=
i915#2575]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP=
</a> ([i915#3281]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_141419v1/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-wc-active.ht=
ml">SKIP</a> ([i915#2575]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html"=
>SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_141419v1/shard-dg2-6/igt@gem_exec_reloc@basic-write-read-a=
ctive.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_exec_schedule@preempt-queue.html">SKIP</=
a> ([i915#4537] / [i915#4812]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-=
interruptible.html">SKIP</a> ([i915#2575]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg2-5/igt@gem_fenced_exe=
c_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> ([i915#4860]) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_media_vme.html">SKIP</a> ([i915#2575]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141419v1=
/shard-dg2-3/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a> =
([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141419v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html">SKIP</a>=
 ([i915#4077]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i9=
15#4077]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_141419v1/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915=
#2575]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#=
4083]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
141419v1/shard-dg2-11/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#2575=
]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a>=
 ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_141419v1/shard-dg2-6/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</=
a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>SKIP</a> ([i915#3282]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-u=
ncached.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_pxp@create-regular-context-2.html">SKIP<=
/a> ([i915#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141419v1/shard-dg2-5/igt@gem_pxp@create-regular-context-2.html">=
SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-1/igt@gem_pxp@display-protected-crc.html">SKIP</a> =
([i915#4270]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_141419v1/shard-dg2-11/igt@gem_pxp@display-protected-crc.html">SKIP</=
a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i9=
15#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_141419v1/shard-dg2-5/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i915#=
3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-linear.html=
">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg2-3/igt@gem_render_copy@y-=
tiled-to-vebox-linear.html">SKIP</a> ([i915#5190] / [i915#8428]) +4 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html=
">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_141419v1/shard-dg2-11/igt@gem_render_copy@y=
-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +5 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-11/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i91=
5#2575]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_141419v1/shard-dg2-5/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#48=
85])</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_unfence_active_buffers.html">SKIP</a> ([i=
915#4879]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_141419v1/shard-dg2-11/igt@gem_unfence_active_buffers.html">SKIP</a> ([i=
915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-10/igt@gem_userptr_blits@coherency-sync.html">SKIP<=
/a> ([i915#3297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_141419v1/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html"=
>SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15707/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalid">SKIP</a>=
 ([i915#3297] / [i915#4880]) -&gt; [SKIP][536] ([i915#2575])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2925068021719451575==--
