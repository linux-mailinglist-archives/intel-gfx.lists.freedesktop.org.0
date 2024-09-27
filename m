Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CB6988B4F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 22:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B3F10E009;
	Fri, 27 Sep 2024 20:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2899510E009;
 Fri, 27 Sep 2024 20:35:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6531180900959589301=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Display_Global_Histogram_?=
 =?utf-8?q?=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 20:35:38 -0000
Message-ID: <172746933814.1113059.12832811950928328743@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925150754.1876893-1-arun.r.murthy@intel.com>
In-Reply-To: <20240925150754.1876893-1-arun.r.murthy@intel.com>
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

--===============6531180900959589301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Display Global Histogram (rev5)
URL   : https://patchwork.freedesktop.org/series/135793/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15453 -> Patchwork_135793v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_135793v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_135793v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/index.html

Participating hosts (37 -> 35)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_135793v5:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic:
    - bat-mtlp-8:         [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-8/igt@kms_busy@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-mtlp-8/igt@kms_busy@basic.html
    - bat-adls-6:         [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adls-6/igt@kms_busy@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adls-6/igt@kms_busy@basic.html
    - bat-jsl-1:          [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-jsl-1/igt@kms_busy@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-jsl-1/igt@kms_busy@basic.html
    - bat-arls-1:         [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@kms_busy@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-1/igt@kms_busy@basic.html
    - bat-adlp-6:         [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-6/igt@kms_busy@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-6/igt@kms_busy@basic.html
    - bat-dg1-7:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg1-7/igt@kms_busy@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg1-7/igt@kms_busy@basic.html
    - bat-adlp-9:         [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-9/igt@kms_busy@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-9/igt@kms_busy@basic.html
    - bat-twl-2:          [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-2/igt@kms_busy@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-2/igt@kms_busy@basic.html
    - bat-dg2-11:         [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@kms_busy@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-11/igt@kms_busy@basic.html
    - fi-rkl-11600:       [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-rkl-11600/igt@kms_busy@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-rkl-11600/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - bat-twl-1:          [PASS][21] -> [ABORT][22] +1 other test abort
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-1/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-1/igt@kms_busy@basic@flip.html
    - bat-dg2-14:         [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-14/igt@kms_busy@basic@flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-14/igt@kms_busy@basic@flip.html
    - bat-arls-5:         [PASS][25] -> [ABORT][26] +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-5/igt@kms_busy@basic@flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-5/igt@kms_busy@basic@flip.html
    - bat-rplp-1:         [PASS][27] -> [ABORT][28] +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-rplp-1/igt@kms_busy@basic@flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-rplp-1/igt@kms_busy@basic@flip.html
    - fi-tgl-1115g4:      [PASS][29] -> [ABORT][30] +1 other test abort
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
    - fi-hsw-4770:        [PASS][31] -> [ABORT][32] +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-hsw-4770/igt@kms_busy@basic@flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-hsw-4770/igt@kms_busy@basic@flip.html
    - bat-arls-2:         [PASS][33] -> [ABORT][34] +1 other test abort
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@kms_busy@basic@flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-2/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - bat-dg1-7:          [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg1-7/igt@kms_busy@basic@modeset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg1-7/igt@kms_busy@basic@modeset.html
    - bat-adlp-9:         [PASS][37] -> [DMESG-WARN][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-9/igt@kms_busy@basic@modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-9/igt@kms_busy@basic@modeset.html
    - bat-twl-2:          [PASS][39] -> [DMESG-WARN][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-2/igt@kms_busy@basic@modeset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-2/igt@kms_busy@basic@modeset.html
    - bat-dg2-11:         [PASS][41] -> [DMESG-WARN][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@kms_busy@basic@modeset.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-11/igt@kms_busy@basic@modeset.html
    - bat-twl-1:          [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-1/igt@kms_busy@basic@modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-1/igt@kms_busy@basic@modeset.html
    - bat-dg2-14:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-14/igt@kms_busy@basic@modeset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-14/igt@kms_busy@basic@modeset.html
    - bat-arls-5:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-5/igt@kms_busy@basic@modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-5/igt@kms_busy@basic@modeset.html
    - bat-rplp-1:         [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-rplp-1/igt@kms_busy@basic@modeset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-rplp-1/igt@kms_busy@basic@modeset.html
    - fi-rkl-11600:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-rkl-11600/igt@kms_busy@basic@modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-rkl-11600/igt@kms_busy@basic@modeset.html
    - fi-tgl-1115g4:      [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
    - fi-hsw-4770:        [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-hsw-4770/igt@kms_busy@basic@modeset.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-hsw-4770/igt@kms_busy@basic@modeset.html
    - bat-arls-2:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@kms_busy@basic@modeset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-2/igt@kms_busy@basic@modeset.html
    - bat-mtlp-8:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-8/igt@kms_busy@basic@modeset.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-mtlp-8/igt@kms_busy@basic@modeset.html
    - bat-adls-6:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adls-6/igt@kms_busy@basic@modeset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adls-6/igt@kms_busy@basic@modeset.html
    - bat-jsl-1:          [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-jsl-1/igt@kms_busy@basic@modeset.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-jsl-1/igt@kms_busy@basic@modeset.html
    - bat-arls-1:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@kms_busy@basic@modeset.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-1/igt@kms_busy@basic@modeset.html
    - bat-adlp-6:         [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-6/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - bat-adlm-1:         [PASS][69] -> [ABORT][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
    - bat-mtlp-6:         [PASS][71] -> [ABORT][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html
    - fi-glk-j4005:       [PASS][73] -> [ABORT][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-glk-j4005/igt@kms_force_connector_basic@force-connector-state.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-glk-j4005/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-7567u:       [PASS][75] -> [ABORT][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
    - fi-cfl-8700k:       [PASS][77] -> [ABORT][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-cfl-8700k/igt@kms_force_connector_basic@force-connector-state.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-cfl-8700k/igt@kms_force_connector_basic@force-connector-state.html
    - fi-cfl-guc:         [PASS][79] -> [ABORT][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-cfl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-cfl-guc/igt@kms_force_connector_basic@force-connector-state.html
    - bat-dg2-9:          [PASS][81] -> [ABORT][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-9/igt@kms_force_connector_basic@force-connector-state.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-9/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-8809g:       [PASS][83] -> [ABORT][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html
    - fi-kbl-guc:         [PASS][85] -> [ABORT][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:
    - bat-apl-1:          [PASS][87] -> [ABORT][88] +1 other test abort
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-1:
    - bat-apl-1:          [PASS][89] -> [DMESG-WARN][90] +1 other test dmesg-warn
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic:
    - {bat-arlh-3}:       [PASS][91] -> [ABORT][92] +1 other test abort
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arlh-3/igt@kms_busy@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arlh-3/igt@kms_busy@basic.html

  * igt@kms_busy@basic@modeset:
    - {bat-arlh-3}:       [PASS][93] -> [DMESG-WARN][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arlh-3/igt@kms_busy@basic@modeset.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arlh-3/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * IGT: IGT_8036 -> IGTPW_11795
  * Linux: CI_DRM_15453 -> Patchwork_135793v5

  CI-20190529: 20190529
  CI_DRM_15453: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_11795: 8bc763646a9e2f426a9a15d4ed0df4df0c1136d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  IGT_8036: 5aa244179b574e949a07ab1c7494033081735718 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135793v5: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/index.html

--===============6531180900959589301==
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
<tr><td><b>Series:</b></td><td>Display Global Histogram (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135793/">https://patchwork.freedesktop.org/series/135793/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15453 -&gt; Patchwork_135793v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_135793v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_135793v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_135793v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-8/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-mtlp-8/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adls-6/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adls-6/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-jsl-1/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-jsl-1/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-1/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-6/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-6/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg1-7/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg1-7/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-9/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-9/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-2/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-2/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-11/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-rkl-11600/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-rkl-11600/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-14/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-14/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-5/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-5/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-rplp-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-rplp-1/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-hsw-4770/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-hsw-4770/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-2/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg1-7/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg1-7/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-9/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-9/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-11/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-11/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-twl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-twl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-14/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-14/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-5/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-5/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-rplp-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-rplp-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-rkl-11600/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-rkl-11600/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-hsw-4770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-hsw-4770/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-8/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-mtlp-8/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adls-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adls-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-jsl-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-jsl-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arls-1/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arls-1/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-mtlp-6/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-glk-j4005/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-glk-j4005/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-cfl-8700k/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-cfl-8700k/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-cfl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-cfl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-dg2-9/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-dg2-9/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-apl-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-1.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arlh-3/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arlh-3/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15453/bat-arlh-3/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135793v5/bat-arlh-3/igt@kms_busy@basic@modeset.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_8036 -&gt; IGTPW_11795</li>
<li>Linux: CI_DRM_15453 -&gt; Patchwork_135793v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15453: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_11795: 8bc763646a9e2f426a9a15d4ed0df4df0c1136d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  IGT_8036: 5aa244179b574e949a07ab1c7494033081735718 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135793v5: 1522f131505272ed86f58e937f2481e4e3e144c1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6531180900959589301==--
