Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE62551E78A
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D4B10F7A6;
	Sat,  7 May 2022 13:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90B7310F7A6;
 Sat,  7 May 2022 13:52:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E799A66C8;
 Sat,  7 May 2022 13:52:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4212197338156246020=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 07 May 2022 13:52:12 -0000
Message-ID: <165193153254.22139.1681966364771789497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220507132850.10272-1-jose.souza@intel.com>
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/16=5D_drm/i915=3A_Drop_has=5Fllc_from_d?=
 =?utf-8?q?evice_info?=
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

--===============4212197338156246020==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/16] drm/i915: Drop has_llc from device info
URL   : https://patchwork.freedesktop.org/series/103718/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11620 -> Patchwork_103718v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/index.html

Participating hosts (47 -> 34)
------------------------------

  Missing    (13): bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 fi-kbl-guc bat-adln-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_103718v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][1] ([i915#4831])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][3] ([fdo#109271]) +26 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-bdw-gvtdvm/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][4] ([i915#3921]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-bdw-gvtdvm:      [DMESG-WARN][6] ([i915#5922]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4831]: https://gitlab.freedesktop.org/drm/intel/issues/4831
  [i915#5922]: https://gitlab.freedesktop.org/drm/intel/issues/5922


Build changes
-------------

  * Linux: CI_DRM_11620 -> Patchwork_103718v1

  CI-20190529: 20190529
  CI_DRM_11620: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103718v1: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d0bab62f3aff drm/i915: Drop display.has_fpga_db from device info
3c996cc3acad drm/i915: Drop has_logical_ring_contexts from device info
692eccacd391 drm/i915: Drop has_runtime_pm from device info
3e2183b37f5c drm/i915: Drop has_heci_gscfi from device info
a3dca6838c1e drm/i915: Drop has_heci_gscfi from device info
9538d7a46287 drm/i915: Drop has_pxp from device info
18ab5dc6a894 drm/i915: Drop has_guc_deprivilege from device info
dd1749c7305c drm/i915: Drop has_global_mocs from device info
42c669d5f0c9 drm/i915: Drop has_64bit_reloc from device info
cd923be5df76 drm/i915: Drop has_4tile from device info
c924281ae16c drm/i915: Drop supports_tv from device info
813eddd87d58 drm/i915: Drop has_psr_hw_tracking from device info
7aaf961f595e drm/i915: Drop has_rc6p from device info
8f88d62c6dc6 drm/i915/display: Disable DSB for DG2 and Alderlake-P
b55040452510 drm/i915: Drop has_ipc from device info
249892390e40 drm/i915: Drop has_llc from device info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/index.html

--===============4212197338156246020==
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
<tr><td><b>Series:</b></td><td>series starting with [01/16] drm/i915: Drop has_llc from device info</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103718/">https://patchwork.freedesktop.org/series/103718/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11620 -&gt; Patchwork_103718v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/index.html</p>
<h2>Participating hosts (47 -&gt; 34)</h2>
<p>Missing    (13): bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 fi-kbl-guc bat-adln-1 bat-rpls-1 bat-rpls-2 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103718v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4831">i915#4831</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-bdw-gvtdvm/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11620/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5922">i915#5922</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103718v1/fi-bdw-gvtdvm/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11620 -&gt; Patchwork_103718v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11620: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103718v1: 21604008b69633f65286f7bb4106ccc6c7f87c98 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d0bab62f3aff drm/i915: Drop display.has_fpga_db from device info<br />
3c996cc3acad drm/i915: Drop has_logical_ring_contexts from device info<br />
692eccacd391 drm/i915: Drop has_runtime_pm from device info<br />
3e2183b37f5c drm/i915: Drop has_heci_gscfi from device info<br />
a3dca6838c1e drm/i915: Drop has_heci_gscfi from device info<br />
9538d7a46287 drm/i915: Drop has_pxp from device info<br />
18ab5dc6a894 drm/i915: Drop has_guc_deprivilege from device info<br />
dd1749c7305c drm/i915: Drop has_global_mocs from device info<br />
42c669d5f0c9 drm/i915: Drop has_64bit_reloc from device info<br />
cd923be5df76 drm/i915: Drop has_4tile from device info<br />
c924281ae16c drm/i915: Drop supports_tv from device info<br />
813eddd87d58 drm/i915: Drop has_psr_hw_tracking from device info<br />
7aaf961f595e drm/i915: Drop has_rc6p from device info<br />
8f88d62c6dc6 drm/i915/display: Disable DSB for DG2 and Alderlake-P<br />
b55040452510 drm/i915: Drop has_ipc from device info<br />
249892390e40 drm/i915: Drop has_llc from device info</p>

</body>
</html>

--===============4212197338156246020==--
