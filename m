Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C722A856D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 18:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622626EDD4;
	Thu,  5 Nov 2020 17:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EA996EDD2;
 Thu,  5 Nov 2020 17:57:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1513DA363D;
 Thu,  5 Nov 2020 17:57:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Nov 2020 17:57:22 -0000
Message-ID: <160459904208.14958.14315859223321405484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201105154934.16022-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201105154934.16022-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gem=3A_Allow_backends?=
 =?utf-8?q?_to_override_pread_implementation?=
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
Content-Type: multipart/mixed; boundary="===============1332131511=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1332131511==
Content-Type: multipart/alternative;
 boundary="===============8655494571708732737=="

--===============8655494571708732737==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gem: Allow backends to override pread implementation
URL   : https://patchwork.freedesktop.org/series/83541/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9271 -> Patchwork_18861
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9271 and Patchwork_18861:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18861 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@prime_vgem@basic-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@prime_vgem@basic-read.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][7] ([i915#2417]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-lmem:        [DMESG-WARN][11] ([i915#2605]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-n3050:       [DMESG-FAIL][13] ([i915#541]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#1982]) -> [DMESG-WARN][20] ([i915#402])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (44 -> 41)
------------------------------

  Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9271 -> Patchwork_18861

  CI-20190529: 20190529
  CI_DRM_9271: 3e0f3e5a1c3f6fe6e03c1fa210ef262ce03c8148 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18861: 5499c92b4eeeca8dbed5eb84ba33e78bb269dca0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5499c92b4eee drm/i915/gem: Pull phys pread/pwrite implementations to the backend
97c3323ac37a drm/i915/gem: Allow backends to override pread implementation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html

--===============8655494571708732737==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gem: Allow backends to override pread implementation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83541/">https://patchwork.freedesktop.org/series/83541/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9271 -&gt; Patchwork_18861</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9271 and Patchwork_18861:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18861 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-skl-lmem/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@prime_vgem@basic-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@prime_vgem@basic-gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9271/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18861/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Missing    (3): fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9271 -&gt; Patchwork_18861</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9271: 3e0f3e5a1c3f6fe6e03c1fa210ef262ce03c8148 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5836: 4c2ec0ad123b82f42f9fe2297e1a41fec73c9229 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18861: 5499c92b4eeeca8dbed5eb84ba33e78bb269dca0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5499c92b4eee drm/i915/gem: Pull phys pread/pwrite implementations to the backend<br />
97c3323ac37a drm/i915/gem: Allow backends to override pread implementation</p>

</body>
</html>

--===============8655494571708732737==--

--===============1332131511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1332131511==--
