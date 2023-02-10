Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7C6925FD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 20:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C4B10EDD6;
	Fri, 10 Feb 2023 19:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5728610EDD6;
 Fri, 10 Feb 2023 19:02:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F1CDAADD4;
 Fri, 10 Feb 2023 19:02:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1813809320080439588=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 10 Feb 2023 19:02:34 -0000
Message-ID: <167605575431.7868.11651221038600668547@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Use_i915_instead_of_dev=5Fpriv_as_name_for_the_priv?=
 =?utf-8?q?ate_device?=
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

--===============1813809320080439588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Use i915 instead of dev_priv as name for the private device
URL   : https://patchwork.freedesktop.org/series/113899/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12729 -> Patchwork_113899v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113899v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - {bat-adlp-6}:       [ABORT][1] ([i915#7977]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12729/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982


Build changes
-------------

  * Linux: CI_DRM_12729 -> Patchwork_113899v1

  CI-20190529: 20190529
  CI_DRM_12729: d09b2cf01d8c5bf0a3a2b544dad1ac987727d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7157: 96d12fdc942cee9526a951b377b195ca9c8276b1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113899v1: d09b2cf01d8c5bf0a3a2b544dad1ac987727d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

90c7802fa830 drm/i915/gt: Use i915 instead of dev_priv as name for the private device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/index.html

--===============1813809320080439588==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Use i915 instead of dev_priv as name for the private device</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113899/">https://patchwork.freedesktop.org/series/113899/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12729 -&gt; Patchwork_113899v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113899v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12729/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113899v1/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12729 -&gt; Patchwork_113899v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12729: d09b2cf01d8c5bf0a3a2b544dad1ac987727d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7157: 96d12fdc942cee9526a951b377b195ca9c8276b1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113899v1: d09b2cf01d8c5bf0a3a2b544dad1ac987727d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>90c7802fa830 drm/i915/gt: Use i915 instead of dev_priv as name for the private device</p>

</body>
</html>

--===============1813809320080439588==--
