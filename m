Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A16643C776E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4130C6E120;
	Tue, 13 Jul 2021 19:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A2D86E120;
 Tue, 13 Jul 2021 19:46:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 532C5AA916;
 Tue, 13 Jul 2021 19:46:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 13 Jul 2021 19:46:56 -0000
Message-ID: <162620561633.713.7110918131465837918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTWlu?=
 =?utf-8?q?or_revid/stepping_and_workaround_cleanup_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0172616102=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0172616102==
Content-Type: multipart/alternative;
 boundary="===============1690230212906084696=="

--===============1690230212906084696==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Minor revid/stepping and workaround cleanup (rev4)
URL   : https://patchwork.freedesktop.org/series/92299/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10342 -> Patchwork_20588
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/index.html

Known issues
------------

  Here are the changes found in Patchwork_20588 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][2] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][3] ([i915#3159])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-soraka:      [DMESG-WARN][4] ([i915#1982]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][6] ([i915#2782] / [i915#2940]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10342 -> Patchwork_20588

  CI-20190529: 20190529
  CI_DRM_10342: 308b278ffbef846356ca6b220ef1aa908c22c5fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20588: d62d0ec1b3aa504119130e0c61f1b16ad15f06a2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d62d0ec1b3aa drm/i915/icl: Drop workarounds that only apply to pre-production steppings
a66bc53c20b3 drm/i915/cnl: Drop all workarounds
28dea784c5d3 drm/i915/dg1: Use revid->stepping tables
d515112313b0 drm/i915/rkl: Use revid->stepping tables
95aec3b31d70 drm/i915/jsl_ehl: Use revid->stepping tables
ea04a99db33e drm/i915/icl: Use revid->stepping tables
bfc4af69ce3b drm/i915/glk: Use revid->stepping tables
27320b6e947b drm/i915/bxt: Use revid->stepping tables
1c898561ba39 drm/i915/kbl: Drop pre-production revision from stepping table
5c84247d6ac9 drm/i915/skl: Use revid->stepping tables
76bd03989163 drm/i915: Make pre-production detection use direct revid comparison
62d758aadfe3 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/index.html

--===============1690230212906084696==
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
<tr><td><b>Series:</b></td><td>Minor revid/stepping and workaround cleanup (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92299/">https://patchwork.freedesktop.org/series/92299/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10342 -&gt; Patchwork_20588</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20588 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20588/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10342 -&gt; Patchwork_20588</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10342: 308b278ffbef846356ca6b220ef1aa908c22c5fd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20588: d62d0ec1b3aa504119130e0c61f1b16ad15f06a2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d62d0ec1b3aa drm/i915/icl: Drop workarounds that only apply to pre-production steppings<br />
a66bc53c20b3 drm/i915/cnl: Drop all workarounds<br />
28dea784c5d3 drm/i915/dg1: Use revid-&gt;stepping tables<br />
d515112313b0 drm/i915/rkl: Use revid-&gt;stepping tables<br />
95aec3b31d70 drm/i915/jsl_ehl: Use revid-&gt;stepping tables<br />
ea04a99db33e drm/i915/icl: Use revid-&gt;stepping tables<br />
bfc4af69ce3b drm/i915/glk: Use revid-&gt;stepping tables<br />
27320b6e947b drm/i915/bxt: Use revid-&gt;stepping tables<br />
1c898561ba39 drm/i915/kbl: Drop pre-production revision from stepping table<br />
5c84247d6ac9 drm/i915/skl: Use revid-&gt;stepping tables<br />
76bd03989163 drm/i915: Make pre-production detection use direct revid comparison<br />
62d758aadfe3 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids</p>

</body>
</html>

--===============1690230212906084696==--

--===============0172616102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0172616102==--
