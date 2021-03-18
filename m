Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D81340CFE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:31:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729616E956;
	Thu, 18 Mar 2021 18:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D90FD6E954;
 Thu, 18 Mar 2021 18:31:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1BF1A0BCB;
 Thu, 18 Mar 2021 18:31:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 18 Mar 2021 18:31:02 -0000
Message-ID: <161609226283.12738.9247155116127533289@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210318161015.22070-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Shuffle_DP_code_around_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1471241494=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1471241494==
Content-Type: multipart/alternative;
 boundary="===============4136567789096622420=="

--===============4136567789096622420==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Shuffle DP code around (rev2)
URL   : https://patchwork.freedesktop.org/series/85878/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9870 -> Patchwork_19804
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/index.html

Known issues
------------

  Here are the changes found in Patchwork_19804 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#2502] / [i915#3145]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4] ([i915#3145])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [INCOMPLETE][6] ([i915#2940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][7] ([i915#1436])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-bsw-nick/igt@runner@aborted.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9870 -> Patchwork_19804

  CI-20190529: 20190529
  CI_DRM_9870: a9a5ed8d2432e5335e6c26118cefb2cfff28ae37 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6036: 5b535494abcdf5ce2b9be99b7bb5df8ab4733083 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19804: d486c1851a6e55ed332635f4a70fdb78b7bf7bdf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d486c1851a6e drm/i915: Give g4x_{dp, hdmi}.c g4x_ namespace
b38592cfbe51 drm/i915: Introduce g4x_hdmi.c
0e432233fba9 drm/i915: Introduce g4x_dp.c
9b0d464b0d6a drm/i915: Split intel_ddi_encoder_reset() from intel_dp_encoder_reset()
8e555cecf0d9 drm/i915: Relocate intel_dp_program_link_training_pattern()
0990a9e29ec5 drm/i915: Remove dead signal level debugs
d6b23f62e26b drm/i915: Remove dead TPS3->TPS2 fallback code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/index.html

--===============4136567789096622420==
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
<tr><td><b>Series:</b></td><td>drm/i915: Shuffle DP code around (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85878/">https://patchwork.freedesktop.org/series/85878/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9870 -&gt; Patchwork_19804</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19804 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9870/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19804/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9870 -&gt; Patchwork_19804</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9870: a9a5ed8d2432e5335e6c26118cefb2cfff28ae37 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6036: 5b535494abcdf5ce2b9be99b7bb5df8ab4733083 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19804: d486c1851a6e55ed332635f4a70fdb78b7bf7bdf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d486c1851a6e drm/i915: Give g4x_{dp, hdmi}.c g4x_ namespace<br />
b38592cfbe51 drm/i915: Introduce g4x_hdmi.c<br />
0e432233fba9 drm/i915: Introduce g4x_dp.c<br />
9b0d464b0d6a drm/i915: Split intel_ddi_encoder_reset() from intel_dp_encoder_reset()<br />
8e555cecf0d9 drm/i915: Relocate intel_dp_program_link_training_pattern()<br />
0990a9e29ec5 drm/i915: Remove dead signal level debugs<br />
d6b23f62e26b drm/i915: Remove dead TPS3-&gt;TPS2 fallback code</p>

</body>
</html>

--===============4136567789096622420==--

--===============1471241494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1471241494==--
