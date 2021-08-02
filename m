Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 162E93DD92E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 15:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBA26E0EB;
	Mon,  2 Aug 2021 13:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 71C166E0EB;
 Mon,  2 Aug 2021 13:57:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DF89A882E;
 Mon,  2 Aug 2021 13:57:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8635471039471564984=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Aug 2021 13:57:54 -0000
Message-ID: <162791267444.3900.17521134572006993672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210802105957.77692-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210802105957.77692-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbG9j?=
 =?utf-8?q?king/lockdep=2C_drm=3A_apply_new_lockdep_assert_in_drm=5Fauth?=
 =?utf-8?q?=2Ec?=
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

--===============8635471039471564984==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: locking/lockdep, drm: apply new lockdep assert in drm_auth.c
URL   : https://patchwork.freedesktop.org/series/93304/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10437 -> Patchwork_20757
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/index.html

Known issues
------------

  Here are the changes found in Patchwork_20757 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#1372])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-tgl-1115g4:      [PASS][3] -> [DMESG-WARN][4] ([i915#1887])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][5] ([i915#1602])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-nick:        [FAIL][8] ([fdo#109271] / [i915#1436] / [i915#2722]) -> [FAIL][9] ([fdo#109271] / [i915#1436])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-nick/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-bsw-nick/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10437 -> Patchwork_20757

  CI-20190529: 20190529
  CI_DRM_10437: fe234200649024b4fb5164d99eca74d62ae696d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20757: e5ac4247380127f8c096980bf09829f0ee291d4d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e5ac42473801 drm: add lockdep assert to drm_is_current_master_locked
60bc4f495a48 locking/lockdep: Provide lockdep_assert{, _once}() helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/index.html

--===============8635471039471564984==
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
<tr><td><b>Series:</b></td><td>locking/lockdep, drm: apply new lockdep assert in drm_auth.c</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93304/">https://patchwork.freedesktop.org/series/93304/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10437 -&gt; Patchwork_20757</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20757 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-tgl-1115g4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10437/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20757/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10437 -&gt; Patchwork_20757</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10437: fe234200649024b4fb5164d99eca74d62ae696d4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20757: e5ac4247380127f8c096980bf09829f0ee291d4d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e5ac42473801 drm: add lockdep assert to drm_is_current_master_locked<br />
60bc4f495a48 locking/lockdep: Provide lockdep_assert{, _once}() helpers</p>

</body>
</html>

--===============8635471039471564984==--
