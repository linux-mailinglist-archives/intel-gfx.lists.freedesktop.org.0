Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805AA6F1D4D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 19:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0082E10E416;
	Fri, 28 Apr 2023 17:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FD2D10E338;
 Fri, 28 Apr 2023 17:21:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7889BA00E8;
 Fri, 28 Apr 2023 17:21:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2008930402721147570=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Fri, 28 Apr 2023 17:21:22 -0000
Message-ID: <168270248247.32440.2022110207088755479@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230428095433.4109054-1-mika.kahola@intel.com>
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_support_for_C20_phy_=28rev2=29?=
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

--===============2008930402721147570==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add support for C20 phy (rev2)
URL   : https://patchwork.freedesktop.org/series/116755/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13073 -> Patchwork_116755v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116755v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][1] -> [ABORT][2] ([i915#4983] / [i915#7461] / [i915#8384])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-rpls-1/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@slpc:
    - bat-adln-1:         NOTRUN -> [DMESG-FAIL][3] ([i915#6997])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-adln-1:         NOTRUN -> [SKIP][4] ([i915#7828])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][5] -> [FAIL][6] ([i915#7932])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [INCOMPLETE][7] ([i915#4983] / [i915#7609]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][9] ([i915#7932]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13073 -> Patchwork_116755v2

  CI-20190529: 20190529
  CI_DRM_13073: d4602c57ac02d66526e4785b80c2e01dea122f33 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7275: c284bd66d7b416b4eaca456d6085b9180ad58058 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116755v2: d4602c57ac02d66526e4785b80c2e01dea122f33 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cfe10aa9f670 drm/i915/mtl: Enable TC ports
a76a271e840c drm/i915/mtl: Pin assignment for TypeC
af5b94a2f2cb drm/i915/mtl: TypeC HPD live status query
73e409d6e8e9 drm/i915/mtl: Power up TCSS
89031c1f2c58 drm/i915/mtl: Define mask for DDI AUX interrupts
01f19c8138fa drm/i915/mtl: Readout Thunderbolt HW state
6a8a44923092 drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll
ed0bd3453efe drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA
ecd48801a943 drm/i915/mtl: Add voltage swing sequence for C20
5777f9bceb6a drm/i915/mtl: C20 port clock calculation
357247eb8025 drm/i915/mtl: Dump C20 pll hw state
dc0e2e2381d3 drm/i915/mtl: C20 HW readout
39ba77b93b8f drm/i915/mtl: C20 PLL programming

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/index.html

--===============2008930402721147570==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add support for C20 phy (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116755/">https://patchwork.freedesktop.org/series/116755/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13073 -&gt; Patchwork_116755v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116755v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13073/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116755v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13073 -&gt; Patchwork_116755v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13073: d4602c57ac02d66526e4785b80c2e01dea122f33 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7275: c284bd66d7b416b4eaca456d6085b9180ad58058 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116755v2: d4602c57ac02d66526e4785b80c2e01dea122f33 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cfe10aa9f670 drm/i915/mtl: Enable TC ports<br />
a76a271e840c drm/i915/mtl: Pin assignment for TypeC<br />
af5b94a2f2cb drm/i915/mtl: TypeC HPD live status query<br />
73e409d6e8e9 drm/i915/mtl: Power up TCSS<br />
89031c1f2c58 drm/i915/mtl: Define mask for DDI AUX interrupts<br />
01f19c8138fa drm/i915/mtl: Readout Thunderbolt HW state<br />
6a8a44923092 drm/i915/mtl: Enabling/disabling sequence Thunderbolt pll<br />
ed0bd3453efe drm/i915/mtl: For DP2.0 10G and 20G rates use MPLLA<br />
ecd48801a943 drm/i915/mtl: Add voltage swing sequence for C20<br />
5777f9bceb6a drm/i915/mtl: C20 port clock calculation<br />
357247eb8025 drm/i915/mtl: Dump C20 pll hw state<br />
dc0e2e2381d3 drm/i915/mtl: C20 HW readout<br />
39ba77b93b8f drm/i915/mtl: C20 PLL programming</p>

</body>
</html>

--===============2008930402721147570==--
