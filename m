Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D3E7448B8
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Jul 2023 13:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C61C10E069;
	Sat,  1 Jul 2023 11:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B0B710E05C;
 Sat,  1 Jul 2023 11:20:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03320AADEA;
 Sat,  1 Jul 2023 11:20:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0156665746829297673=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 01 Jul 2023 11:20:36 -0000
Message-ID: <168821043697.27402.16776573442584380522@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_DDI_ports_in_VBT_order_=28rev6=29?=
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

--===============0156665746829297673==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Init DDI ports in VBT order (rev6)
URL   : https://patchwork.freedesktop.org/series/114200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13340 -> Patchwork_114200v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-rplp-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114200v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][1] -> [ABORT][2] ([i915#5122])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][3] -> [DMESG-WARN][4] ([i915#7699])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-11/igt@i915_selftest@live@migrate.html
    - bat-atsm-1:         [PASS][5] -> [DMESG-FAIL][6] ([i915#7699] / [i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-atsm-1/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-atsm-1/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-1/igt@i915_selftest@live@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         NOTRUN -> [ABORT][9] ([i915#6687] / [i915#8668])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][10] -> [FAIL][11] ([fdo#103375])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [DMESG-FAIL][12] ([i915#4258] / [i915#7913]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [DMESG-FAIL][14] ([i915#8723]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][16] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#7981] / [i915#8347]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-2/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        [ABORT][18] ([i915#4423] / [i915#8011]) -> [ABORT][19] ([i915#8011])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adlp-11/igt@core_auth@basic-auth.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2:
    - fi-skl-guc:         [SKIP][20] ([fdo#109271] / [i915#4579]) -> [SKIP][21] ([fdo#109271]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html
    - fi-bsw-n3050:       [SKIP][22] ([fdo#109271] / [i915#4579]) -> [SKIP][23] ([fdo#109271]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-9:         [SKIP][24] ([i915#3555] / [i915#4579]) -> [SKIP][25] ([i915#3555])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-rkl-11600:       [SKIP][26] ([i915#3555] / [i915#4098] / [i915#4579]) -> [SKIP][27] ([i915#3555] / [i915#4098])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adls-5:         [SKIP][28] ([i915#3555] / [i915#4579]) -> [SKIP][29] ([i915#3555])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adls-5/igt@kms_setmode@basic-clone-single-crtc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adls-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-5:          [SKIP][30] ([i915#3555] / [i915#4579]) -> [SKIP][31] ([i915#3555])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-9:          [SKIP][32] ([i915#3555] / [i915#4579]) -> [SKIP][33] ([i915#3555])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-kbl-x1275:       [SKIP][34] ([fdo#109271] / [i915#4579]) -> [SKIP][35] ([fdo#109271])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-x1275/igt@kms_setmode@basic-clone-single-crtc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-x1275/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-cfl-8109u:       [SKIP][36] ([fdo#109271] / [i915#4579]) -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-kbl-7567u:       [SKIP][38] ([fdo#109271] / [i915#4579]) -> [SKIP][39] ([fdo#109271])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-7567u/igt@kms_setmode@basic-clone-single-crtc.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-7567u/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-kbl-8809g:       [SKIP][40] ([fdo#109271] / [i915#4579]) -> [SKIP][41] ([fdo#109271])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-ilk-650:         [SKIP][42] ([fdo#109271] / [i915#4579]) -> [SKIP][43] ([fdo#109271])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-ilk-650/igt@kms_setmode@basic-clone-single-crtc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-ilk-650/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-tgl-1115g4:      [SKIP][44] ([i915#3555] / [i915#4579]) -> [SKIP][45] ([i915#3555])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-blb-e6850:       [SKIP][46] ([fdo#109271] / [i915#4579]) -> [SKIP][47] ([fdo#109271])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-blb-e6850/igt@kms_setmode@basic-clone-single-crtc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-blb-e6850/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-cfl-guc:         [SKIP][48] ([fdo#109271] / [i915#4579]) -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-cfl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-cfl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-6:         [SKIP][50] ([i915#4579]) -> [SKIP][51] ([i915#8761])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-skl-6600u:       [SKIP][52] ([fdo#109271] / [i915#4579]) -> [SKIP][53] ([fdo#109271])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-skl-6600u/igt@kms_setmode@basic-clone-single-crtc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-skl-6600u/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-apl-guc:         [SKIP][54] ([fdo#109271] / [i915#4579]) -> [SKIP][55] ([fdo#109271])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-apl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-apl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rpls-2:         [SKIP][56] ([i915#3555] / [i915#4579]) -> [SKIP][57] ([i915#3555])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-cfl-8700k:       [SKIP][58] ([fdo#109271] / [i915#4579]) -> [SKIP][59] ([fdo#109271])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-cfl-8700k/igt@kms_setmode@basic-clone-single-crtc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-cfl-8700k/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-bsw-nick:        [SKIP][60] ([fdo#109271] / [i915#4579]) -> [SKIP][61] ([fdo#109271])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-bsw-nick/igt@kms_setmode@basic-clone-single-crtc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-bsw-nick/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-3:          [SKIP][62] ([i915#3555] / [i915#4579]) -> [SKIP][63] ([i915#3555])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-11:         [SKIP][64] ([i915#3555] / [i915#4579]) -> [SKIP][65] ([i915#3555])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-kbl-soraka:      [SKIP][66] ([fdo#109271] / [i915#4579]) -> [SKIP][67] ([fdo#109271])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-hsw-4770:        [SKIP][68] ([fdo#109271] / [i915#4579]) -> [SKIP][69] ([fdo#109271])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-hsw-4770/igt@kms_setmode@basic-clone-single-crtc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-hsw-4770/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-ivb-3770:        [SKIP][70] ([fdo#109271] / [i915#4579]) -> [SKIP][71] ([fdo#109271])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-ivb-3770/igt@kms_setmode@basic-clone-single-crtc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-ivb-3770/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-mtlp-8:         [SKIP][72] ([i915#4579]) -> [SKIP][73] ([i915#8761])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-elk-e7500:       [SKIP][74] ([fdo#109271] / [i915#4579]) -> [SKIP][75] ([fdo#109271])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-elk-e7500/igt@kms_setmode@basic-clone-single-crtc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-elk-e7500/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg2-8:          [SKIP][76] ([i915#3555] / [i915#4579]) -> [SKIP][77] ([i915#3555])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-kbl-guc:         [SKIP][78] ([fdo#109271] / [i915#4579]) -> [SKIP][79] ([fdo#109271])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-guc/igt@kms_setmode@basic-clone-single-crtc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-guc/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlm-1:         [SKIP][80] ([i915#3555] / [i915#4579]) -> [SKIP][81] ([i915#3555])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-jsl-1:          [SKIP][82] ([i915#3555] / [i915#4579]) -> [SKIP][83] ([i915#3555])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-rpls-1:         [SKIP][84] ([i915#3555] / [i915#4579]) -> [SKIP][85] ([i915#3555])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-pnv-d510:        [SKIP][86] ([fdo#109271] / [i915#4579]) -> [SKIP][87] ([fdo#109271])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-pnv-d510/igt@kms_setmode@basic-clone-single-crtc.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-pnv-d510/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-7:          [SKIP][88] ([i915#3555] / [i915#4579]) -> [SKIP][89] ([i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-glk-j4005:       [SKIP][90] ([fdo#109271] / [i915#4579]) -> [SKIP][91] ([fdo#109271])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-glk-j4005/igt@kms_setmode@basic-clone-single-crtc.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-glk-j4005/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8723]: https://gitlab.freedesktop.org/drm/intel/issues/8723
  [i915#8761]: https://gitlab.freedesktop.org/drm/intel/issues/8761


Build changes
-------------

  * Linux: CI_DRM_13340 -> Patchwork_114200v6

  CI-20190529: 20190529
  CI_DRM_13340: a3b671a5e12f1fd972ad7046f39a470acbefbbdc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7357: 790f69303f49066b150fbdff95e471e14d046710 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114200v6: a3b671a5e12f1fd972ad7046f39a470acbefbbdc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b4ad32d393bf drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
35e67355c0bd drm/i915/bios: Extract intel_bios_encoder_port()
40a658b00ec7 drm/i915: Remove AUX CH sanitation
a8733f431344 drm/i915: Remove DDC pin sanitation
757fa4b20027 drm/i915: Only populate aux_ch if really needed
b0fa392aeb49 drm/i915: Initialize dig_port->aux_ch to NONE to be sure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/index.html

--===============0156665746829297673==
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
<tr><td><b>Series:</b></td><td>drm/i915: Init DDI ports in VBT order (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114200/">https://patchwork.freedesktop.org/series/114200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13340 -&gt; Patchwork_114200v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-rplp-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114200v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</p>
</li>
<li>
<p>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-atsm-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-atsm-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8723">i915#8723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-bsw-n3050/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adlp-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adls-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adls-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-x1275/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-x1275/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-7567u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-7567u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-ilk-650/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-ilk-650/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-blb-e6850/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-blb-e6850/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-cfl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-cfl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8761">i915#8761</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-skl-6600u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-skl-6600u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-apl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-apl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-cfl-8700k/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-cfl-8700k/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-bsw-nick/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-bsw-nick/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-hsw-4770/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-hsw-4770/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-ivb-3770/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-ivb-3770/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8761">i915#8761</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-elk-e7500/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-elk-e7500/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-kbl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-kbl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-pnv-d510/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-pnv-d510/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13340/fi-glk-j4005/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v6/fi-glk-j4005/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13340 -&gt; Patchwork_114200v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13340: a3b671a5e12f1fd972ad7046f39a470acbefbbdc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7357: 790f69303f49066b150fbdff95e471e14d046710 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114200v6: a3b671a5e12f1fd972ad7046f39a470acbefbbdc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b4ad32d393bf drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device<br />
35e67355c0bd drm/i915/bios: Extract intel_bios_encoder_port()<br />
40a658b00ec7 drm/i915: Remove AUX CH sanitation<br />
a8733f431344 drm/i915: Remove DDC pin sanitation<br />
757fa4b20027 drm/i915: Only populate aux_ch if really needed<br />
b0fa392aeb49 drm/i915: Initialize dig_port-&gt;aux_ch to NONE to be sure</p>

</body>
</html>

--===============0156665746829297673==--
