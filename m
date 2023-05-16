Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCE07059AE
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 23:38:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9B210E373;
	Tue, 16 May 2023 21:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DEA310E373;
 Tue, 16 May 2023 21:38:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9589AAADE7;
 Tue, 16 May 2023 21:38:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7850850742953833073=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 16 May 2023 21:38:36 -0000
Message-ID: <168427311657.14224.4168728651136309959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230516133646.3708898-1-andrzej.hajda@intel.com>
In-Reply-To: <20230516133646.3708898-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2CDO=5FNOT=5FMERGE=2C1/3=5D_drm/i915/mt?=
 =?utf-8?q?l=3A_do_not_enable_render_power-gating_on_MTL?=
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

--===============7850850742953833073==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,DO_NOT_MERGE,1/3] drm/i915/mtl: do not enable render power-gating on MTL
URL   : https://patchwork.freedesktop.org/series/117819/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13154 -> Patchwork_117819v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_117819v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_117819v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-snb-2520m bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_117819v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@uncore:
    - bat-rpls-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-rpls-1/igt@i915_selftest@live@uncore.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-rpls-1/igt@i915_selftest@live@uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_117819v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][3] -> [ABORT][4] ([i915#7911] / [i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@uncore:
    - bat-rpls-2:         [PASS][5] -> [INCOMPLETE][6] ([i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-rpls-2/igt@i915_selftest@live@uncore.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-rpls-2/igt@i915_selftest@live@uncore.html
    - bat-dg2-11:         [PASS][7] -> [ABORT][8] ([i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-11/igt@i915_selftest@live@uncore.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-dg2-11/igt@i915_selftest@live@uncore.html
    - fi-kbl-soraka:      [PASS][9] -> [ABORT][10] ([i915#7913] / [i915#8405])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/fi-kbl-soraka/igt@i915_selftest@live@uncore.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/fi-kbl-soraka/igt@i915_selftest@live@uncore.html
    - bat-adls-5:         [PASS][11] -> [ABORT][12] ([i915#7913])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-adls-5/igt@i915_selftest@live@uncore.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-adls-5/igt@i915_selftest@live@uncore.html
    - bat-dg2-9:          [PASS][13] -> [ABORT][14] ([i915#7913] / [i915#8405])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-9/igt@i915_selftest@live@uncore.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-dg2-9/igt@i915_selftest@live@uncore.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][15] -> [FAIL][16] ([i915#7932]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][17] ([i915#4983] / [i915#7920]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-WARN][19] ([i915#6367]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8405]: https://gitlab.freedesktop.org/drm/intel/issues/8405


Build changes
-------------

  * Linux: CI_DRM_13154 -> Patchwork_117819v1

  CI-20190529: 20190529
  CI_DRM_13154: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7292: 9d9475ffd3b5ae18fd8ec120595385f6c562f249 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_117819v1: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1f4f41c506b4 drm/i915/selftests: add forcewake_with_spinners tests
4a1228d818e8 drm/i915/gt: do not enable render and media power-gating on RPL-S
9bb69ace3424 drm/i915/mtl: do not enable render power-gating on MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/index.html

--===============7850850742953833073==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,DO_NOT_MERGE,1/3] drm/i915/mtl: do not enable render power-gating on MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117819/">https://patchwork.freedesktop.org/series/117819/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13154 -&gt; Patchwork_117819v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_117819v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_117819v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-snb-2520m bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_117819v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@uncore:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-rpls-1/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-rpls-1/igt@i915_selftest@live@uncore.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117819v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>
<p>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-rpls-2/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-rpls-2/igt@i915_selftest@live@uncore.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-11/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-dg2-11/igt@i915_selftest@live@uncore.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/fi-kbl-soraka/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/fi-kbl-soraka/igt@i915_selftest@live@uncore.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8405">i915#8405</a>)</p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-adls-5/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-adls-5/igt@i915_selftest@live@uncore.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-9/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-dg2-9/igt@i915_selftest@live@uncore.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8405">i915#8405</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13154/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117819v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13154 -&gt; Patchwork_117819v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13154: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7292: 9d9475ffd3b5ae18fd8ec120595385f6c562f249 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_117819v1: d04e82f5245c285e7ae36955d89c4d217d04d664 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1f4f41c506b4 drm/i915/selftests: add forcewake_with_spinners tests<br />
4a1228d818e8 drm/i915/gt: do not enable render and media power-gating on RPL-S<br />
9bb69ace3424 drm/i915/mtl: do not enable render power-gating on MTL</p>

</body>
</html>

--===============7850850742953833073==--
