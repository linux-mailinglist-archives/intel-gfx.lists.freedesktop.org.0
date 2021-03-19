Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E09C3424BA
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 19:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D21B6EA7A;
	Fri, 19 Mar 2021 18:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D7D26EA7A;
 Fri, 19 Mar 2021 18:34:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26CE7A9932;
 Fri, 19 Mar 2021 18:34:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 19 Mar 2021 18:34:27 -0000
Message-ID: <161617886712.8628.8322058971479902418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
In-Reply-To: <20210319173603.521779-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgU2lt?=
 =?utf-8?q?plify_intel=5Fsetup=5Foutputs=28=29_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1841845665=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1841845665==
Content-Type: multipart/alternative;
 boundary="===============5429870645002024862=="

--===============5429870645002024862==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Simplify intel_setup_outputs() (rev2)
URL   : https://patchwork.freedesktop.org/series/87068/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9877 -> Patchwork_19814
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/index.html

Known issues
------------

  Here are the changes found in Patchwork_19814 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#2940])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][3] ([i915#1436])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][4] ([i915#3145]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-8809g:       [SKIP][6] ([fdo#109271]) -> [PASS][7] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       [SKIP][8] ([fdo#109271]) -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-8809g:       [SKIP][10] ([fdo#109271]) -> [SKIP][11] ([fdo#109271] / [i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9877 -> Patchwork_19814

  CI-20190529: 20190529
  CI_DRM_9877: c7c8b4a1b289d78a5ebf4381737e7babfdfb0f79 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6039: 8c4a2cda2a92bdd87797969ef299ad7f6e8e993b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19814: be7140309242274fbf8025461e992c88bebce893 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

be7140309242 drm/i915/display: remove strap checks from gen 9
71444dd5c8de drm/i915/display: remove FIXME comment for intended feature
c19909a676f0 drm/i915/display: move vbt check to intel_ddi_init()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/index.html

--===============5429870645002024862==
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
<tr><td><b>Series:</b></td><td>Simplify intel_setup_outputs() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87068/">https://patchwork.freedesktop.org/series/87068/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9877 -&gt; Patchwork_19814</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19814 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9877/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19814/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9877 -&gt; Patchwork_19814</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9877: c7c8b4a1b289d78a5ebf4381737e7babfdfb0f79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6039: 8c4a2cda2a92bdd87797969ef299ad7f6e8e993b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19814: be7140309242274fbf8025461e992c88bebce893 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>be7140309242 drm/i915/display: remove strap checks from gen 9<br />
71444dd5c8de drm/i915/display: remove FIXME comment for intended feature<br />
c19909a676f0 drm/i915/display: move vbt check to intel_ddi_init()</p>

</body>
</html>

--===============5429870645002024862==--

--===============1841845665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1841845665==--
