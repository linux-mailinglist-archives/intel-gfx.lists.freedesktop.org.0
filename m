Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F89392478
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 03:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3716ECA8;
	Thu, 27 May 2021 01:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69BC66ECA8;
 Thu, 27 May 2021 01:42:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 60840A41FB;
 Thu, 27 May 2021 01:42:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 27 May 2021 01:42:28 -0000
Message-ID: <162207974836.12240.4853538459333471880@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210526203456.2733040-1-imre.deak@intel.com>
In-Reply-To: <20210526203456.2733040-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Add_missing_TBT_AUX_-=3E_PW=232_power_domain_depe?=
 =?utf-8?q?ndencies?=
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
Content-Type: multipart/mixed; boundary="===============1477561262=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1477561262==
Content-Type: multipart/alternative;
 boundary="===============3122178112569650501=="

--===============3122178112569650501==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adlp: Add missing TBT AUX -> PW#2 power domain dependencies
URL   : https://patchwork.freedesktop.org/series/90631/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10138 -> Patchwork_20215
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/index.html

Known issues
------------

  Here are the changes found in Patchwork_20215 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][1] ([i915#2283])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@execlists:
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][2] ([i915#3462])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][4] -> [FAIL][5] ([i915#2416])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][6] ([fdo#109271]) +9 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [DMESG-FAIL][7] ([i915#3462]) -> [INCOMPLETE][8] ([i915#3462])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][9] ([i915#1436] / [i915#3363]) -> [FAIL][10] ([i915#1436] / [i915#2426] / [i915#3363])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6600u/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-skl-6600u/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][11] ([i915#1602] / [i915#2029]) -> [FAIL][12] ([i915#3462])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bdw-5557u/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][13] ([i915#1436] / [i915#3363]) -> [FAIL][14] ([i915#1436] / [i915#2426] / [i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-soraka/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][15] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][16] ([i915#3363] / [i915#3462])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cml-u2/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][17] ([i915#3363]) -> [FAIL][18] ([i915#2426] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-guc/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-cml-drallion fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10138 -> Patchwork_20215

  CI-20190529: 20190529
  CI_DRM_10138: 041f69e539b30565783cd1298842cc269f5005cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6094: f62d8953c0bc5ed68ea978662e62f9dbb46cf101 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20215: 2e030dccd2fb6d2dfda32035ce6fc5057a40c485 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e030dccd2fb drm/i915/adlp: Add missing TBT AUX -> PW#2 power domain dependencies

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/index.html

--===============3122178112569650501==
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
<tr><td><b>Series:</b></td><td>drm/i915/adlp: Add missing TBT AUX -&gt; PW#2 power domain dependencies</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90631/">https://patchwork.freedesktop.org/series/90631/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10138 -&gt; Patchwork_20215</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20215 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-cml-drallion fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10138 -&gt; Patchwork_20215</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10138: 041f69e539b30565783cd1298842cc269f5005cb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6094: f62d8953c0bc5ed68ea978662e62f9dbb46cf101 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20215: 2e030dccd2fb6d2dfda32035ce6fc5057a40c485 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2e030dccd2fb drm/i915/adlp: Add missing TBT AUX -&gt; PW#2 power domain dependencies</p>

</body>
</html>

--===============3122178112569650501==--

--===============1477561262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1477561262==--
