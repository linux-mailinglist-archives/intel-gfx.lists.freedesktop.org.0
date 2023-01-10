Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C151663885
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 06:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB7E10E532;
	Tue, 10 Jan 2023 05:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23B8610E532;
 Tue, 10 Jan 2023 05:19:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D0F3AA917;
 Tue, 10 Jan 2023 05:19:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3828803563667528130=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 10 Jan 2023 05:19:09 -0000
Message-ID: <167332794909.5201.16319772512973865982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230110043517.1388837-1-suraj.kandpal@intel.com>
In-Reply-To: <20230110043517.1388837-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_HDCP2=2Ex_via_GSC_CS_=28rev6=29?=
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

--===============3828803563667528130==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable HDCP2.x via GSC CS (rev6)
URL   : https://patchwork.freedesktop.org/series/111876/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12561 -> Patchwork_111876v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_111876v6 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - {bat-adlp-6}:       [DMESG-WARN][1] ([i915#7077]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12561/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][3] ([fdo#103375]) -> [INCOMPLETE][4] ([i915#4817])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12561/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077


Build changes
-------------

  * Linux: CI_DRM_12561 -> Patchwork_111876v6

  CI-20190529: 20190529
  CI_DRM_12561: 73221da9da21a841ab8a837facb7e58e63e87166 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7114: 2fd839599a200c089a5c9dbf5048609faf9b8104 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111876v6: 73221da9da21a841ab8a837facb7e58e63e87166 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

615cbbf08825 drm/i915/mtl: Add HDCP GSC interface
e1586fc4e35c drm/i915/mtl: Add function to send command to GSC CS
6a3cb7f82c79 drm/i915/hdcp: Refactor HDCP API structures
948273621243 i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
6a872bb7d591 drm/i915/hdcp: Keep hdcp agonstic naming convention
adf22dddaf31 drm/i915/gsc: Create GSC request submission mechanism

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/index.html

--===============3828803563667528130==
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
<tr><td><b>Series:</b></td><td>Enable HDCP2.x via GSC CS (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111876/">https://patchwork.freedesktop.org/series/111876/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12561 -&gt; Patchwork_111876v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111876v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12561/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12561/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111876v6/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12561 -&gt; Patchwork_111876v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12561: 73221da9da21a841ab8a837facb7e58e63e87166 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7114: 2fd839599a200c089a5c9dbf5048609faf9b8104 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111876v6: 73221da9da21a841ab8a837facb7e58e63e87166 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>615cbbf08825 drm/i915/mtl: Add HDCP GSC interface<br />
e1586fc4e35c drm/i915/mtl: Add function to send command to GSC CS<br />
6a3cb7f82c79 drm/i915/hdcp: Refactor HDCP API structures<br />
948273621243 i915/hdcp: HDCP2.x Refactoring to agnostic hdcp<br />
6a872bb7d591 drm/i915/hdcp: Keep hdcp agonstic naming convention<br />
adf22dddaf31 drm/i915/gsc: Create GSC request submission mechanism</p>

</body>
</html>

--===============3828803563667528130==--
