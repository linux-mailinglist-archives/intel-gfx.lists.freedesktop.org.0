Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C24D4C06D5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 02:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B7789269;
	Wed, 23 Feb 2022 01:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 838EA89269;
 Wed, 23 Feb 2022 01:23:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F703A73C7;
 Wed, 23 Feb 2022 01:23:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0520528112853087218=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 23 Feb 2022 01:23:54 -0000
Message-ID: <164557943447.25287.7534360186169405145@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222170413.5579-1-ramalingam.c@intel.com>
In-Reply-To: <20220222170413.5579-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc291?=
 =?utf-8?q?nd/hda/hdac=5Fi915=3A_reduce_the_timeout_for_component_binding?=
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

--===============0520528112853087218==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: sound/hda/hdac_i915: reduce the timeout for component binding
URL   : https://patchwork.freedesktop.org/series/100592/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11268 -> Patchwork_22358
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/index.html

Participating hosts (19 -> 17)
------------------------------

  Missing    (2): shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22358:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@dmabuf:
    - {bat-dg2-8}:        NOTRUN -> [DMESG-FAIL][1] +35 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg2-8/igt@i915_selftest@live@dmabuf.html

  * igt@kms_force_connector_basic@force-edid:
    - {bat-dg2-8}:        NOTRUN -> [SKIP][2] +157 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html

  
Known issues
------------

  Here are the changes found in Patchwork_22358 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-5:          [DMESG-FAIL][3] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][4] ([i915#4957])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-6:          [DMESG-FAIL][5] ([i915#4957]) -> [DMESG-FAIL][6] ([i915#4494] / [i915#4957])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_11268 -> Patchwork_22358

  CI-20190529: 20190529
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22358: ef6ed1fbcc6761d3315044572341f88eae52e2e1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ef6ed1fbcc67 sound/hda/hdac_i915: reduce the timeout for component binding

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/index.html

--===============0520528112853087218==
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
<tr><td><b>Series:</b></td><td>sound/hda/hdac_i915: reduce the timeout for component binding</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100592/">https://patchwork.freedesktop.org/series/100592/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11268 -&gt; Patchwork_22358</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/index.html</p>
<h2>Participating hosts (19 -&gt; 17)</h2>
<p>Missing    (2): shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22358:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg2-8/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg2-8/igt@kms_force_connector_basic@force-edid.html">SKIP</a> +157 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22358 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22358/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11268 -&gt; Patchwork_22358</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22358: ef6ed1fbcc6761d3315044572341f88eae52e2e1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ef6ed1fbcc67 sound/hda/hdac_i915: reduce the timeout for component binding</p>

</body>
</html>

--===============0520528112853087218==--
