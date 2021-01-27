Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA79430612C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD4C6E858;
	Wed, 27 Jan 2021 16:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 537A86E857;
 Wed, 27 Jan 2021 16:42:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D7E2A0009;
 Wed, 27 Jan 2021 16:42:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 27 Jan 2021 16:42:48 -0000
Message-ID: <161176576828.11908.18415620786023470937@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210127100830.162292-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gen9bc=3A_Handle_TGP_PCH_during_suspend/resume?=
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
Content-Type: multipart/mixed; boundary="===============0590308307=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0590308307==
Content-Type: multipart/alternative;
 boundary="===============0104498094463320587=="

--===============0104498094463320587==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gen9bc: Handle TGP PCH during suspend/resume
URL   : https://patchwork.freedesktop.org/series/86346/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9688 -> Patchwork_19518
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19518:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - {fi-cml-drallion}:  NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-cml-drallion/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_19518 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [PASS][2] -> [DMESG-WARN][3] ([i915#2605])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#2411] / [i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-byt-j1900:       NOTRUN -> [SKIP][8] ([fdo#109271]) +27 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-byt-j1900:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_basic@bad-close:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-tgl-y/igt@gem_basic@bad-close.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-tgl-y/igt@gem_basic@bad-close.html

  * igt@gem_exec_suspend@basic-s0:
    - {fi-cml-drallion}:  [INCOMPLETE][12] ([i915#1614]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1614]: https://gitlab.freedesktop.org/drm/intel/issues/1614
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 40)
------------------------------

  Additional (1): fi-byt-j1900 
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9688 -> Patchwork_19518

  CI-20190529: 20190529
  CI_DRM_9688: 43295c2b7bc37446a480bb5d42b03675baed171a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19518: f7ab96d28d4a9215cc9c8ede76fc27dac7f79fef @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f7ab96d28d4a drm/i915/gen9bc: Handle TGP PCH during suspend/resume

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/index.html

--===============0104498094463320587==
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
<tr><td><b>Series:</b></td><td>drm/i915/gen9bc: Handle TGP PCH during suspend/resume</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86346/">https://patchwork.freedesktop.org/series/86346/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9688 -&gt; Patchwork_19518</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19518:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@c-edp1:<ul>
<li>{fi-cml-drallion}:  NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-cml-drallion/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19518 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-byt-j1900/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-byt-j1900/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-tgl-y/igt@gem_basic@bad-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-tgl-y/igt@gem_basic@bad-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>{fi-cml-drallion}:  <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9688/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1614">i915#1614</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19518/fi-cml-drallion/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Additional (1): fi-byt-j1900 <br />
  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9688 -&gt; Patchwork_19518</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9688: 43295c2b7bc37446a480bb5d42b03675baed171a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5974: a85398dcae50930c0e27548cf8c9575ad0bf69d1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19518: f7ab96d28d4a9215cc9c8ede76fc27dac7f79fef @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f7ab96d28d4a drm/i915/gen9bc: Handle TGP PCH during suspend/resume</p>

</body>
</html>

--===============0104498094463320587==--

--===============0590308307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0590308307==--
