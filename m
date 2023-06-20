Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F5B737221
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 18:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95EC610E0A4;
	Tue, 20 Jun 2023 16:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C19D10E0A4;
 Tue, 20 Jun 2023 16:54:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6864AADEC;
 Tue, 20 Jun 2023 16:54:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2359058651865808034=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 20 Jun 2023 16:54:21 -0000
Message-ID: <168728006177.10438.6235253753018522063@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230620130329.133473-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230620130329.133473-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Unbind_display_fb_immediately?=
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

--===============2359058651865808034==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Unbind display fb immediately
URL   : https://patchwork.freedesktop.org/series/119589/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13293 -> Patchwork_119589v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119589v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119589v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/index.html

Participating hosts (42 -> 41)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119589v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-dg1-5:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg1-5/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg1-5/igt@i915_module_load@load.html
    - fi-skl-guc:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-skl-guc/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-skl-guc/igt@i915_module_load@load.html
    - bat-dg2-11:         [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-11/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-11/igt@i915_module_load@load.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html
    - bat-adln-1:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adln-1/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adln-1/igt@kms_busy@basic@flip.html
    - fi-cfl-8700k:       [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - fi-elk-e7500:       [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-elk-e7500/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-elk-e7500/igt@kms_busy@basic@flip.html
    - bat-rplp-1:         [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-rplp-1/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-rplp-1/igt@kms_busy@basic@flip.html
    - fi-tgl-1115g4:      [PASS][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - bat-dg2-9:          [PASS][21] -> [ABORT][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-9/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-9/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][23] -> [ABORT][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][25] -> [ABORT][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - fi-ivb-3770:        [PASS][27] -> [ABORT][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ivb-3770/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ivb-3770/igt@kms_busy@basic@flip.html
    - bat-mtlp-8:         [PASS][29] -> [ABORT][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-8/igt@kms_busy@basic@flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-8/igt@kms_busy@basic@flip.html
    - bat-dg2-8:          [PASS][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-8/igt@kms_busy@basic@flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-8/igt@kms_busy@basic@flip.html
    - fi-ilk-650:         [PASS][33] -> [ABORT][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ilk-650/igt@kms_busy@basic@flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ilk-650/igt@kms_busy@basic@flip.html
    - bat-jsl-1:          [PASS][35] -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-1/igt@kms_busy@basic@flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-1/igt@kms_busy@basic@flip.html
    - fi-blb-e6850:       [PASS][37] -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-blb-e6850/igt@kms_busy@basic@flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-blb-e6850/igt@kms_busy@basic@flip.html
    - fi-bsw-n3050:       [PASS][39] -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-bsw-n3050/igt@kms_busy@basic@flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html
    - bat-adlp-6:         [PASS][41] -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-6/igt@kms_busy@basic@flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-6/igt@kms_busy@basic@flip.html
    - fi-rkl-11600:       [PASS][43] -> [ABORT][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-rkl-11600/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-rkl-11600/igt@kms_busy@basic@flip.html
    - fi-skl-6600u:       [PASS][45] -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-skl-6600u/igt@kms_busy@basic@flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-skl-6600u/igt@kms_busy@basic@flip.html
    - fi-apl-guc:         [PASS][47] -> [ABORT][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-apl-guc/igt@kms_busy@basic@flip.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-apl-guc/igt@kms_busy@basic@flip.html
    - fi-pnv-d510:        [PASS][49] -> [ABORT][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-pnv-d510/igt@kms_busy@basic@flip.html
    - bat-jsl-3:          [PASS][51] -> [ABORT][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-3/igt@kms_busy@basic@flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-3/igt@kms_busy@basic@flip.html
    - fi-glk-j4005:       [PASS][53] -> [ABORT][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-glk-j4005/igt@kms_busy@basic@flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-glk-j4005/igt@kms_busy@basic@flip.html
    - bat-adlp-9:         [PASS][55] -> [ABORT][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-9/igt@kms_busy@basic@flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-9/igt@kms_busy@basic@flip.html
    - fi-kbl-soraka:      NOTRUN -> [ABORT][57]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-apl-guc:         [PASS][58] -> [DMESG-WARN][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-apl-guc/igt@kms_busy@basic@modeset.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-apl-guc/igt@kms_busy@basic@modeset.html
    - bat-jsl-3:          [PASS][60] -> [DMESG-WARN][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-3/igt@kms_busy@basic@modeset.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-3/igt@kms_busy@basic@modeset.html
    - fi-glk-j4005:       [PASS][62] -> [DMESG-WARN][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-glk-j4005/igt@kms_busy@basic@modeset.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html
    - bat-adlp-9:         [PASS][64] -> [DMESG-WARN][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-9/igt@kms_busy@basic@modeset.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-9/igt@kms_busy@basic@modeset.html
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@kms_busy@basic@modeset.html
    - fi-kbl-7567u:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
    - bat-adln-1:         [PASS][69] -> [DMESG-WARN][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adln-1/igt@kms_busy@basic@modeset.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adln-1/igt@kms_busy@basic@modeset.html
    - fi-cfl-8700k:       [PASS][71] -> [DMESG-WARN][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - fi-elk-e7500:       [PASS][73] -> [DMESG-WARN][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-elk-e7500/igt@kms_busy@basic@modeset.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-elk-e7500/igt@kms_busy@basic@modeset.html
    - bat-rplp-1:         [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-rplp-1/igt@kms_busy@basic@modeset.html
    - fi-rkl-11600:       [PASS][77] -> [DMESG-WARN][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-rkl-11600/igt@kms_busy@basic@modeset.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-rkl-11600/igt@kms_busy@basic@modeset.html
    - fi-tgl-1115g4:      [PASS][79] -> [DMESG-WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [PASS][81] -> [DMESG-WARN][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html
    - bat-dg2-9:          [PASS][83] -> [DMESG-WARN][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-9/igt@kms_busy@basic@modeset.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-9/igt@kms_busy@basic@modeset.html
    - fi-hsw-4770:        [PASS][85] -> [DMESG-WARN][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-hsw-4770/igt@kms_busy@basic@modeset.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-hsw-4770/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][87] -> [DMESG-WARN][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
    - fi-ivb-3770:        [PASS][89] -> [DMESG-WARN][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ivb-3770/igt@kms_busy@basic@modeset.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ivb-3770/igt@kms_busy@basic@modeset.html
    - bat-mtlp-8:         [PASS][91] -> [DMESG-WARN][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-8/igt@kms_busy@basic@modeset.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html
    - bat-dg2-8:          [PASS][93] -> [DMESG-WARN][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-8/igt@kms_busy@basic@modeset.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-8/igt@kms_busy@basic@modeset.html
    - fi-ilk-650:         [PASS][95] -> [DMESG-WARN][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ilk-650/igt@kms_busy@basic@modeset.html
    - bat-jsl-1:          [PASS][97] -> [DMESG-WARN][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-1/igt@kms_busy@basic@modeset.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-1/igt@kms_busy@basic@modeset.html
    - fi-bsw-n3050:       [PASS][99] -> [DMESG-WARN][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html
    - bat-adlp-6:         [PASS][101] -> [DMESG-WARN][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-6/igt@kms_busy@basic@modeset.html
    - fi-skl-6600u:       [PASS][103] -> [DMESG-WARN][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-skl-6600u/igt@kms_busy@basic@modeset.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-skl-6600u/igt@kms_busy@basic@modeset.html

  
Known issues
------------

  Here are the changes found in Patchwork_119589v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][105] ([fdo#109271]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2190])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][107] ([i915#6645])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-atsm-1:         NOTRUN -> [SKIP][108] ([i915#6078])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][109] ([i915#1836])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
    - bat-atsm-1:         [INCOMPLETE][110] ([i915#7967]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [DMESG-FAIL][112] ([i915#7059]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [DMESG-WARN][114] ([i915#6367]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][116] ([i915#6763]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        [ABORT][118] ([i915#8011]) -> [ABORT][119] ([i915#4423] / [i915#8011])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-11/igt@core_auth@basic-auth.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-11/igt@core_auth@basic-auth.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7967]: https://gitlab.freedesktop.org/drm/intel/issues/7967
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011


Build changes
-------------

  * Linux: CI_DRM_13293 -> Patchwork_119589v1

  CI-20190529: 20190529
  CI_DRM_13293: 0b6c4d4f639c4077e28e1d6fcb97412ae8f69d7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7340: e975155e9167f0fed8f3da9c5b61de71d082b5c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119589v1: 0b6c4d4f639c4077e28e1d6fcb97412ae8f69d7c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

32a8fa9f4d57 drm/i915: Unbind display fb immediately

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/index.html

--===============2359058651865808034==
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
<tr><td><b>Series:</b></td><td>drm/i915: Unbind display fb immediately</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119589/">https://patchwork.freedesktop.org/series/119589/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13293 -&gt; Patchwork_119589v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119589v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119589v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119589v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg1-5/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg1-5/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-skl-guc/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-skl-guc/igt@i915_module_load@load.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-11/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-11/igt@i915_module_load@load.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adln-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adln-1/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-elk-e7500/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-elk-e7500/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-rplp-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-rplp-1/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-guc/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-guc/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-9/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-9/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-hsw-4770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-hsw-4770/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8109u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ivb-3770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ivb-3770/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-8/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-8/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-8/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-8/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ilk-650/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ilk-650/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-1/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-blb-e6850/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-blb-e6850/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-bsw-n3050/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-bsw-n3050/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-6/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-rkl-11600/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-rkl-11600/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-skl-6600u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-skl-6600u/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-apl-guc/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-apl-guc/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-pnv-d510/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-3/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-3/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-glk-j4005/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-glk-j4005/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-9/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-9/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@kms_busy@basic@flip.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-apl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-apl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-3/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-3/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-glk-j4005/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-9/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adln-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adln-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-elk-e7500/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-elk-e7500/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-rplp-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-rplp-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-rkl-11600/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-rkl-11600/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-9/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-hsw-4770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-hsw-4770/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-cfl-8109u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-cfl-8109u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ivb-3770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ivb-3770/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-8/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-8/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-dg2-8/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-dg2-8/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-ilk-650/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-jsl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-jsl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-bsw-n3050/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/fi-skl-6600u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-skl-6600u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119589v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6078">i915#6078</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines@lmem0:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7967">i915#7967</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13293/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119589v1/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13293 -&gt; Patchwork_119589v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13293: 0b6c4d4f639c4077e28e1d6fcb97412ae8f69d7c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7340: e975155e9167f0fed8f3da9c5b61de71d082b5c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119589v1: 0b6c4d4f639c4077e28e1d6fcb97412ae8f69d7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>32a8fa9f4d57 drm/i915: Unbind display fb immediately</p>

</body>
</html>

--===============2359058651865808034==--
