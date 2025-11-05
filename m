Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB310C35DDE
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 14:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D5D10E072;
	Wed,  5 Nov 2025 13:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10055242dc62 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321E210E072;
 Wed,  5 Nov 2025 13:38:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5941891952246335818=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Plane_Color_Pipeline_supp?=
 =?utf-8?q?ort_for_Intel_platforms_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Nov 2025 13:38:16 -0000
Message-ID: <176234989619.20785.12274690478113715723@10055242dc62>
X-Patchwork-Hint: ignore
References: <20251105123413.2671075-1-uma.shankar@intel.com>
In-Reply-To: <20251105123413.2671075-1-uma.shankar@intel.com>
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

--===============5941891952246335818==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Plane Color Pipeline support for Intel platforms (rev6)
URL   : https://patchwork.freedesktop.org/series/129811/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17489 -> Patchwork_129811v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129811v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129811v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129811v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg2-9:          [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-9/igt@kms_dsc@dsc-basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-9/igt@kms_dsc@dsc-basic.html
    - bat-adlp-6:         [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-6/igt@kms_dsc@dsc-basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-basic@pipe-d-dp-1:
    - bat-dg2-9:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html

  * igt@kms_dsc@dsc-basic@pipe-d-dp-3:
    - bat-adlp-6:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-6/igt@kms_dsc@dsc-basic@pipe-d-dp-3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-6/igt@kms_dsc@dsc-basic@pipe-d-dp-3.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-arls-6:         [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-adls-6:         [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-arls-5:         [PASS][15] -> [ABORT][16] +1 other test abort
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms.html
    - bat-arlh-3:         [PASS][17] -> [ABORT][18] +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - bat-jsl-1:          [PASS][19] -> [ABORT][20] +1 other test abort
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - bat-jsl-5:          [PASS][21] -> [ABORT][22] +1 other test abort
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - bat-adlp-9:         [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
    - bat-rpls-4:         [PASS][25] -> [ABORT][26] +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - bat-mtlp-8:         [PASS][27] -> [ABORT][28] +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
    - bat-jsl-1:          [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
    - bat-twl-1:          [PASS][31] -> [ABORT][32] +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
    - bat-rplp-1:         [PASS][33] -> [ABORT][34] +1 other test abort
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:
    - bat-jsl-5:          [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
    - fi-tgl-1115g4:      [PASS][37] -> [ABORT][38] +1 other test abort
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:
    - bat-dg2-11:         [PASS][39] -> [ABORT][40] +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html
    - bat-dg2-14:         [PASS][41] -> [ABORT][42] +1 other test abort
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html
    - bat-dg1-7:          [PASS][43] -> [ABORT][44] +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp1:
    - bat-adlp-9:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html
    - bat-rpls-4:         [PASS][47] -> [DMESG-WARN][48] +2 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp2:
    - bat-dg2-14:         [PASS][49] -> [DMESG-WARN][50] +2 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@d-dp2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@d-dp2.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp3:
    - bat-arls-5:         [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@d-dp3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@d-dp3.html

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - bat-mtlp-8:         [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
    - bat-arlh-3:         [PASS][55] -> [DMESG-WARN][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
    - bat-rplp-1:         [PASS][57] -> [DMESG-WARN][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1:
    - bat-adls-6:         [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html
    - fi-tgl-1115g4:      [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:
    - bat-dg2-11:         [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html
    - bat-arls-6:         [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html
    - bat-dg1-7:          [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_129811v6 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-n3050:       [ABORT][69] ([i915#12904]) -> [INCOMPLETE][70] ([i915#12904]) +1 other test incomplete
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html

  
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904


Build changes
-------------

  * Linux: CI_DRM_17489 -> Patchwork_129811v6

  CI-20190529: 20190529
  CI_DRM_17489: 8043455e28fb7b8089e55e4390547a4c3d7bd4dc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8607: 8607
  Patchwork_129811v6: 8043455e28fb7b8089e55e4390547a4c3d7bd4dc @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/index.html

--===============5941891952246335818==
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
<tr><td><b>Series:</b></td><td>Plane Color Pipeline support for Intel platforms (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129811/">https://patchwork.freedesktop.org/series/129811/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17489 -&gt; Patchwork_129811v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129811v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129811v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129811v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-9/igt@kms_dsc@dsc-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-9/igt@kms_dsc@dsc-basic.html">ABORT</a> +1 other test abort</li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-6/igt@kms_dsc@dsc-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-6/igt@kms_dsc@dsc-basic.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-d-dp-1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic@pipe-d-dp-3:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-6/igt@kms_dsc@dsc-basic@pipe-d-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-6/igt@kms_dsc@dsc-basic@pipe-d-dp-3.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">DMESG-WARN</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-twl-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">ABORT</a> +1 other test abort</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-jsl-5/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">DMESG-WARN</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a1.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">ABORT</a> +1 other test abort</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">ABORT</a> +1 other test abort</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html">DMESG-WARN</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rpls-4/igt@kms_flip@basic-flip-vs-dpms@d-dp1.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp2:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@d-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-14/igt@kms_flip@basic-flip-vs-dpms@d-dp2.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@d-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-5/igt@kms_flip@basic-flip-vs-dpms@d-dp3.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-edp1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-mtlp-8/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a></li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arlh-3/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-rplp-1/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-adls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html">DMESG-WARN</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg2-11/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html">DMESG-WARN</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-arls-6/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html">DMESG-WARN</a></li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/bat-dg1-7/igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129811v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@dmabuf@all-tests@dma_fence_chain:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17489/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129811v6/fi-bsw-n3050/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17489 -&gt; Patchwork_129811v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17489: 8043455e28fb7b8089e55e4390547a4c3d7bd4dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8607: 8607<br />
  Patchwork_129811v6: 8043455e28fb7b8089e55e4390547a4c3d7bd4dc @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5941891952246335818==--
