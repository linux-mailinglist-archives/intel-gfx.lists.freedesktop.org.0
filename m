Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C8387C454
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 21:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7793910E8BD;
	Thu, 14 Mar 2024 20:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A7610E8BD;
 Thu, 14 Mar 2024 20:33:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7917364815794764529=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Report_full_?=
 =?utf-8?q?vm_address_range_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Mar 2024 20:33:59 -0000
Message-ID: <171044843967.756190.17181977825423507791@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240313193907.95205-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240313193907.95205-1-andi.shyti@linux.intel.com>
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

--===============7917364815794764529==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Report full vm address range (rev2)
URL   : https://patchwork.freedesktop.org/series/131095/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14433 -> Patchwork_131095v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131095v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131095v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): bat-dg1-7 fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131095v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-14:         [PASS][1] -> [FAIL][2] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-14/igt@gem_softpin@allocator-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-14/igt@gem_softpin@allocator-basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - bat-atsm-1:         [PASS][3] -> [FAIL][4] +2 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-9:          [PASS][5] -> [FAIL][6] +2 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-8:          [PASS][7] -> [FAIL][8] +2 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_selftest@live@gtt:
    - bat-atsm-1:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-atsm-1/igt@i915_selftest@live@gtt.html
    - fi-cfl-guc:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-guc/igt@i915_selftest@live@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-cfl-guc/igt@i915_selftest@live@gtt.html
    - bat-jsl-3:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-3/igt@i915_selftest@live@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-jsl-3/igt@i915_selftest@live@gtt.html
    - bat-dg2-9:          [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-9/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-9/igt@i915_selftest@live@gtt.html
    - fi-kbl-x1275:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
    - fi-cfl-8109u:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
    - bat-adln-1:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adln-1/igt@i915_selftest@live@gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adln-1/igt@i915_selftest@live@gtt.html
    - bat-mtlp-8:         [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-8/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-mtlp-8/igt@i915_selftest@live@gtt.html
    - bat-dg2-8:          [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@i915_selftest@live@gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-8/igt@i915_selftest@live@gtt.html
    - fi-kbl-guc:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-guc/igt@i915_selftest@live@gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-kbl-guc/igt@i915_selftest@live@gtt.html
    - bat-adls-6:         [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adls-6/igt@i915_selftest@live@gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adls-6/igt@i915_selftest@live@gtt.html
    - bat-adlm-1:         [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlm-1/igt@i915_selftest@live@gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adlm-1/igt@i915_selftest@live@gtt.html
    - bat-jsl-1:          [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-1/igt@i915_selftest@live@gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-jsl-1/igt@i915_selftest@live@gtt.html
    - fi-tgl-1115g4:      [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html
    - bat-arls-1:         [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-1/igt@i915_selftest@live@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-arls-1/igt@i915_selftest@live@gtt.html
    - bat-adlp-6:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlp-6/igt@i915_selftest@live@gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adlp-6/igt@i915_selftest@live@gtt.html
    - bat-mtlp-6:         [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-6/igt@i915_selftest@live@gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-mtlp-6/igt@i915_selftest@live@gtt.html
    - bat-rpls-3:         [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rpls-3/igt@i915_selftest@live@gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-rpls-3/igt@i915_selftest@live@gtt.html
    - fi-apl-guc:         [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-apl-guc/igt@i915_selftest@live@gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-apl-guc/igt@i915_selftest@live@gtt.html
    - bat-adlp-9:         [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlp-9/igt@i915_selftest@live@gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adlp-9/igt@i915_selftest@live@gtt.html
    - fi-kbl-7567u:       [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
    - fi-cfl-8700k:       [PASS][51] -> [DMESG-FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
    - bat-dg2-14:         [PASS][53] -> [DMESG-FAIL][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-14/igt@i915_selftest@live@gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-14/igt@i915_selftest@live@gtt.html
    - fi-bsw-nick:        [PASS][55] -> [DMESG-FAIL][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-bsw-nick/igt@i915_selftest@live@gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-bsw-nick/igt@i915_selftest@live@gtt.html
    - bat-rplp-1:         [PASS][57] -> [DMESG-FAIL][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rplp-1/igt@i915_selftest@live@gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-rplp-1/igt@i915_selftest@live@gtt.html
    - fi-rkl-11600:       [PASS][59] -> [DMESG-FAIL][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-rkl-11600/igt@i915_selftest@live@gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-rkl-11600/igt@i915_selftest@live@gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gtt:
    - {bat-mtlp-9}:       [PASS][61] -> [DMESG-FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-9/igt@i915_selftest@live@gtt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-mtlp-9/igt@i915_selftest@live@gtt.html
    - {bat-arls-4}:       [PASS][63] -> [DMESG-FAIL][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-4/igt@i915_selftest@live@gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-arls-4/igt@i915_selftest@live@gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Build changes
-------------

  * Linux: CI_DRM_14433 -> Patchwork_131095v2

  CI-20190529: 20190529
  CI_DRM_14433: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7765: 67615901aedcc79d8d1523c6484c67c11ba0e316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131095v2: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6a30e4d3cdad drm/i915/gt: Report full vm address range

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/index.html

--===============7917364815794764529==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Report full vm address range (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131095/">https://patchwork.freedesktop.org/series/131095/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14433 -&gt; Patchwork_131095v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131095v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131095v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): bat-dg1-7 fi-glk-j4005 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131095v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-14/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-14/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-atsm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-atsm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-cfl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-3/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-jsl-3/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adln-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adln-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-8/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-mtlp-8/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-8/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-8/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-kbl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adls-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adls-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlm-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adlm-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-jsl-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-tgl-1115g4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-arls-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-mtlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rpls-3/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-rpls-3/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-apl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-apl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-adlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-adlp-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-dg2-14/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-dg2-14/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-bsw-nick/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-bsw-nick/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-rplp-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-rplp-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/fi-rkl-11600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/fi-rkl-11600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gtt:<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-mtlp-9/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-mtlp-9/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
<li>{bat-arls-4}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14433/bat-arls-4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v2/bat-arls-4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14433 -&gt; Patchwork_131095v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14433: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7765: 67615901aedcc79d8d1523c6484c67c11ba0e316 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131095v2: f5246a1cf97dd1b9bf955148b0ca2cbf0b18d31e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6a30e4d3cdad drm/i915/gt: Report full vm address range</p>

</body>
</html>

--===============7917364815794764529==--
