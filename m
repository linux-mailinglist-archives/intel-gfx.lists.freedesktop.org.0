Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FC982E0DD
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 20:45:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1629C10E391;
	Mon, 15 Jan 2024 19:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D22310E38D;
 Mon, 15 Jan 2024 19:45:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4058441324726046476=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/xe/guc=3A_Enable_WA_140?=
 =?utf-8?q?18913170_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik Poosa" <karthik.poosa@intel.com>
Date: Mon, 15 Jan 2024 19:45:40 -0000
Message-ID: <170534794011.479824.14303214185879312658@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240115185519.2246220-1-karthik.poosa@intel.com>
In-Reply-To: <20240115185519.2246220-1-karthik.poosa@intel.com>
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

--===============4058441324726046476==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/guc: Enable WA 14018913170 (rev2)
URL   : https://patchwork.freedesktop.org/series/128781/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14125 -> Patchwork_128781v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128781v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128781v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128781v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-9:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14125/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/bat-adlp-9/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_128781v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][3] ([i915#9826]) +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@vgem_basic@unload:
    - {bat-adls-6}:       [INCOMPLETE][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14125/bat-adls-6/igt@vgem_basic@unload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/bat-adls-6/igt@vgem_basic@unload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#9826]: https://gitlab.freedesktop.org/drm/intel/issues/9826


Build changes
-------------

  * Linux: CI_DRM_14125 -> Patchwork_128781v2

  CI-20190529: 20190529
  CI_DRM_14125: fc429d95eec92e32db2ad6ae53f61587e3bdaf40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7674: 7674
  Patchwork_128781v2: fc429d95eec92e32db2ad6ae53f61587e3bdaf40 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0420ab3e66da drm/xe/guc: Enable WA 14018913170

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/index.html

--===============4058441324726046476==
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
<tr><td><b>Series:</b></td><td>drm/xe/guc: Enable WA 14018913170 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128781/">https://patchwork.freedesktop.org/series/128781/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14125 -&gt; Patchwork_128781v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128781v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128781v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128781v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14125/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128781v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9826">i915#9826</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@vgem_basic@unload:<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14125/bat-adls-6/igt@vgem_basic@unload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128781v2/bat-adls-6/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14125 -&gt; Patchwork_128781v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14125: fc429d95eec92e32db2ad6ae53f61587e3bdaf40 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7674: 7674<br />
  Patchwork_128781v2: fc429d95eec92e32db2ad6ae53f61587e3bdaf40 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0420ab3e66da drm/xe/guc: Enable WA 14018913170</p>

</body>
</html>

--===============4058441324726046476==--
