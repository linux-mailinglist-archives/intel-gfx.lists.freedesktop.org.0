Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6FA6752B4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:44:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DAEA10EA03;
	Fri, 20 Jan 2023 10:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2257810EA02;
 Fri, 20 Jan 2023 10:44:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1ABAAA00CC;
 Fri, 20 Jan 2023 10:44:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2959267303499583470=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Rodin" <mrodin@de.adit-jv.com>
Date: Fri, 20 Jan 2023 10:44:01 -0000
Message-ID: <167421144110.22910.593400798774269980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220826091121.389315-1-mrodin@de.adit-jv.com>
In-Reply-To: <20220826091121.389315-1-mrodin@de.adit-jv.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_override_detected_status_for_connectors_which_are_forced_on?=
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

--===============2959267303499583470==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: override detected status for connectors which are forced on
URL   : https://patchwork.freedesktop.org/series/113142/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12616 -> Patchwork_113142v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113142v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([i915#7156])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12616/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][3] ([i915#4983] / [i915#6257]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12616/bat-rpls-1/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][5] ([i915#4983]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12616/bat-rpls-2/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7156]: https://gitlab.freedesktop.org/drm/intel/issues/7156
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828


Build changes
-------------

  * Linux: CI_DRM_12616 -> Patchwork_113142v1

  CI-20190529: 20190529
  CI_DRM_12616: 98179da8401990f46b6dc1277f2b8eb1cf1d5c46 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7127: 99f10de03e984778f3994fc3d05f8fa1f8575b30 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113142v1: 98179da8401990f46b6dc1277f2b8eb1cf1d5c46 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ba33bc333594 drm: override detected status for connectors which are forced on

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/index.html

--===============2959267303499583470==
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
<tr><td><b>Series:</b></td><td>drm: override detected status for connectors which are forced on</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113142/">https://patchwork.freedesktop.org/series/113142/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12616 -&gt; Patchwork_113142v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113142v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12616/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7156">i915#7156</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12616/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12616/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113142v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12616 -&gt; Patchwork_113142v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12616: 98179da8401990f46b6dc1277f2b8eb1cf1d5c46 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7127: 99f10de03e984778f3994fc3d05f8fa1f8575b30 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113142v1: 98179da8401990f46b6dc1277f2b8eb1cf1d5c46 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ba33bc333594 drm: override detected status for connectors which are forced on</p>

</body>
</html>

--===============2959267303499583470==--
