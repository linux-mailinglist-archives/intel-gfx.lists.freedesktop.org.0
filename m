Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 763A6814953
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 14:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D198110E0E2;
	Fri, 15 Dec 2023 13:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF64B10EA2F;
 Fri, 15 Dec 2023 13:32:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A63BEA0169;
 Fri, 15 Dec 2023 13:32:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4081879040197064320=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/hdcp=3A_Fail_Repea?=
 =?utf-8?q?ter_authentication_if_Type1_device_not_present_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Fri, 15 Dec 2023 13:32:40 -0000
Message-ID: <170264716067.27833.8129583109672503206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
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

--===============4081879040197064320==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev4)
URL   : https://patchwork.freedesktop.org/series/127414/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14027 -> Patchwork_127414v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127414v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127414v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/index.html

Participating hosts (37 -> 17)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_127414v4 prevented too many machines from booting.

  Missing    (20): fi-apl-guc fi-snb-2520m fi-skl-6600u fi-bsw-n3050 fi-ilk-650 fi-elk-e7500 bat-jsl-3 bat-dg2-11 bat-kbl-2 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-jsl-1 bat-mtlp-6 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-kbl-x1275 bat-dg2-14 bat-dg2-13 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127414v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@coherency:
    - bat-adlm-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14027/bat-adlm-1/igt@i915_selftest@live@coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/bat-adlm-1/igt@i915_selftest@live@coherency.html

  
Known issues
------------

  Here are the changes found in Patchwork_127414v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pm_rpm@basic-rte:
    - bat-rpls-2:         [PASS][3] -> [ABORT][4] ([i915#8668])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14027/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-3}:       [DMESG-WARN][5] ([i915#5591]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14027/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_14027 -> Patchwork_127414v4

  CI-20190529: 20190529
  CI_DRM_14027: 961ef418705ac5808345e883acd91f8ce167e00b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127414v4: 961ef418705ac5808345e883acd91f8ce167e00b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

378f4e3febca drm/i915/hdcp: Fail Repeater authentication if Type1 device not present

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/index.html

--===============4081879040197064320==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127414/">https://patchwork.freedesktop.org/series/127414/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14027 -&gt; Patchwork_127414v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127414v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127414v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/index.html</p>
<h2>Participating hosts (37 -&gt; 17)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_127414v4 prevented too many machines from booting.</p>
<p>Missing    (20): fi-apl-guc fi-snb-2520m fi-skl-6600u fi-bsw-n3050 fi-ilk-650 fi-elk-e7500 bat-jsl-3 bat-dg2-11 bat-kbl-2 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-jsl-1 bat-mtlp-6 fi-tgl-1115g4 fi-cfl-guc fi-kbl-guc fi-kbl-x1275 bat-dg2-14 bat-dg2-13 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127414v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@coherency:<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14027/bat-adlm-1/igt@i915_selftest@live@coherency.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/bat-adlm-1/igt@i915_selftest@live@coherency.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127414v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pm_rpm@basic-rte:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14027/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14027/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v4/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14027 -&gt; Patchwork_127414v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14027: 961ef418705ac5808345e883acd91f8ce167e00b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127414v4: 961ef418705ac5808345e883acd91f8ce167e00b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>378f4e3febca drm/i915/hdcp: Fail Repeater authentication if Type1 device not present</p>

</body>
</html>

--===============4081879040197064320==--
