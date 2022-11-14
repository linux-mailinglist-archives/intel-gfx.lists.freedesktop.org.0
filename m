Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D29506289FF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 21:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AEF10E0C4;
	Mon, 14 Nov 2022 20:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DA08E10E0C4;
 Mon, 14 Nov 2022 20:01:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0507AA0ED;
 Mon, 14 Nov 2022 20:01:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0203117493887843476=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 14 Nov 2022 20:01:26 -0000
Message-ID: <166845608684.32747.10676463561914776021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221114122251.21327-1-imre.deak@intel.com>
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_drm/i915/tgl+=3A_Enable_DC_power_states_on_all_eDP_por?=
 =?utf-8?q?ts?=
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

--===============0203117493887843476==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: drm/i915/tgl+: Enable DC power states on all eDP ports
URL   : https://patchwork.freedesktop.org/series/110862/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12377 -> Patchwork_110862v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (1): fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_110862v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][1] ([i915#2867]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12377/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-2}:         [INCOMPLETE][3] ([i915#6106]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12377/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/fi-ehl-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][5] ([i915#4983]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12377/bat-rpls-1/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456


Build changes
-------------

  * Linux: CI_DRM_12377 -> Patchwork_110862v1

  CI-20190529: 20190529
  CI_DRM_12377: 0c63617617b6d93cb2472774ee34ee3fc1ff52d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7055: f37bbbbce4d34c3220a2bd5492a2e9c2a7390288 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110862v1: 0c63617617b6d93cb2472774ee34ee3fc1ff52d7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bea6f498193d drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main links
9b8ca3958200 drm/i915: Factor out function to get/put AUX_IO power for main link
a99ddab74444 drm/i915: Add missing DC_OFF power domain->well mappings
a294c341236c drm/i915: Add missing AUX_IO_A power domain->well mappings
2db339c50b11 drm/i915/tgl+: Enable display DC power states on all eDP ports
50fff7d9ab0e drm/i915: Use the AUX_IO power domain only for eDP/PSR port
1f37fa2a0417 drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical place
e06d0fde860e drm/i915: Preallocate the debug power domain wakerefs array
1c4fe4e2f4a5 drm/i915: Fix warn in intel_display_power_*_domain() functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/index.html

--===============0203117493887843476==
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
<tr><td><b>Series:</b></td><td>drm/i915: drm/i915/tgl+: Enable DC power states on all eDP ports</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110862/">https://patchwork.freedesktop.org/series/110862/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12377 -&gt; Patchwork_110862v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110862v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12377/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12377/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6106">i915#6106</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12377/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110862v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12377 -&gt; Patchwork_110862v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12377: 0c63617617b6d93cb2472774ee34ee3fc1ff52d7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7055: f37bbbbce4d34c3220a2bd5492a2e9c2a7390288 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110862v1: 0c63617617b6d93cb2472774ee34ee3fc1ff52d7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bea6f498193d drm/i915/mtl+: Don't enable the AUX_IO power for non-eDP port main links<br />
9b8ca3958200 drm/i915: Factor out function to get/put AUX_IO power for main link<br />
a99ddab74444 drm/i915: Add missing DC_OFF power domain-&gt;well mappings<br />
a294c341236c drm/i915: Add missing AUX_IO_A power domain-&gt;well mappings<br />
2db339c50b11 drm/i915/tgl+: Enable display DC power states on all eDP ports<br />
50fff7d9ab0e drm/i915: Use the AUX_IO power domain only for eDP/PSR port<br />
1f37fa2a0417 drm/i915: Move the POWER_DOMAIN_AUX_IO_A definition to its logical place<br />
e06d0fde860e drm/i915: Preallocate the debug power domain wakerefs array<br />
1c4fe4e2f4a5 drm/i915: Fix warn in intel_display_power_*_domain() functions</p>

</body>
</html>

--===============0203117493887843476==--
