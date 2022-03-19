Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCE94DEAC7
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 21:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD84F10ECD4;
	Sat, 19 Mar 2022 20:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DE8810E713;
 Sat, 19 Mar 2022 20:45:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A5B2A882E;
 Sat, 19 Mar 2022 20:45:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4394508628838701011=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Sat, 19 Mar 2022 20:45:14 -0000
Message-ID: <164772271460.30529.855712882972336789@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220319194227.297639-1-michael.cheng@intel.com>
In-Reply-To: <20220319194227.297639-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_wbinvd=5Fon=5Fall=5Fcpus_usage?=
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

--===============4394508628838701011==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Drop wbinvd_on_all_cpus usage
URL   : https://patchwork.freedesktop.org/series/101560/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11385 -> Patchwork_22619
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/index.html

Participating hosts (47 -> 39)
------------------------------

  Missing    (8): fi-bdw-5557u shard-tglu bat-dg2-8 fi-bsw-cyan fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22619 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][1] ([i915#3576]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/bat-adlp-6/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - {bat-adlm-1}:       [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#5185]: https://gitlab.freedesktop.org/drm/intel/issues/5185
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193


Build changes
-------------

  * Linux: CI_DRM_11385 -> Patchwork_22619

  CI-20190529: 20190529
  CI_DRM_11385: 3babe046f5f5544ec772cd443f9d5ca24e342348 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6386: 0fcd59ad25b2960c0b654f90dfe4dd9e7c7b874d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22619: 4c9cb24c8fefe438004ca31c014f9755acdb8906 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4c9cb24c8fef drm/i915/gt: Revert ggtt_resume to previous logic
edf596eb3f94 i915/gem: Revert i915_gem_freeze to previous logic
6f0d153682e1 Revert "drm/i915/gem: Almagamate clflushes on suspend"
a6e7b94ada85 i915/gem: drop wbinvd_on_all_cpus usage

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/index.html

--===============4394508628838701011==
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
<tr><td><b>Series:</b></td><td>Drop wbinvd_on_all_cpus usage</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101560/">https://patchwork.freedesktop.org/series/101560/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11385 -&gt; Patchwork_22619</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/index.html</p>
<h2>Participating hosts (47 -&gt; 39)</h2>
<p>Missing    (8): fi-bdw-5557u shard-tglu bat-dg2-8 fi-bsw-cyan fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22619 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11385/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22619/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11385 -&gt; Patchwork_22619</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11385: 3babe046f5f5544ec772cd443f9d5ca24e342348 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6386: 0fcd59ad25b2960c0b654f90dfe4dd9e7c7b874d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22619: 4c9cb24c8fefe438004ca31c014f9755acdb8906 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4c9cb24c8fef drm/i915/gt: Revert ggtt_resume to previous logic<br />
edf596eb3f94 i915/gem: Revert i915_gem_freeze to previous logic<br />
6f0d153682e1 Revert "drm/i915/gem: Almagamate clflushes on suspend"<br />
a6e7b94ada85 i915/gem: drop wbinvd_on_all_cpus usage</p>

</body>
</html>

--===============4394508628838701011==--
