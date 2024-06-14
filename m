Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 094559092E8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 21:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD92C10E160;
	Fri, 14 Jun 2024 19:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F31510E25D;
 Fri, 14 Jun 2024 19:27:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2997766425142835019=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Dump_DSC_state_?=
 =?utf-8?q?to_dmesg/debugfs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2024 19:27:00 -0000
Message-ID: <171839322038.80112.3229441823837515616@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240614173911.3743172-1-imre.deak@intel.com>
In-Reply-To: <20240614173911.3743172-1-imre.deak@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2997766425142835019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Dump DSC state to dmesg/debugfs
URL   : https://patchwork.freedesktop.org/series/134906/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14945 -> Patchwork_134906v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/index.html

Participating hosts (43 -> 39)
------------------------------

  Missing    (4): bat-dg1-7 bat-jsl-1 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_134906v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-modeset@c-dp6:
    - {bat-mtlp-9}:       [DMESG-WARN][1] ([i915#11009]) -> [PASS][2] +2 other tests pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html

  * igt@kms_flip@basic-plain-flip@c-dp7:
    - {bat-mtlp-9}:       [FAIL][3] ([i915#6121]) -> [PASS][4] +5 other tests pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html

  * igt@kms_flip@basic-plain-flip@d-dp7:
    - {bat-mtlp-9}:       [DMESG-FAIL][5] ([i915#11009]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_flip@basic-plain-flip@d-dp7.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@d-dp7.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-mtlp-9}:       [FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [DMESG-WARN][9] ([i915#7507]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
  [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159


Build changes
-------------

  * Linux: CI_DRM_14945 -> Patchwork_134906v1

  CI-20190529: 20190529
  CI_DRM_14945: 5c623c9712af3170cc9782a10ed7360ddf8f8bb4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7889: 9dca15da37f2a385b04427eb39cd460224d09c25 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134906v1: 5c623c9712af3170cc9782a10ed7360ddf8f8bb4 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/index.html

--===============2997766425142835019==
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
<tr><td><b>Series:</b></td><td>drm/i915: Dump DSC state to dmesg/debugfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134906/">https://patchwork.freedesktop.org/series/134906/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14945 -&gt; Patchwork_134906v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/index.html</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): bat-dg1-7 bat-jsl-1 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134906v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-modeset@c-dp6.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@c-dp7.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_flip@basic-plain-flip@d-dp7.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_flip@basic-plain-flip@d-dp7.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-mtlp-9/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14945/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14945 -&gt; Patchwork_134906v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14945: 5c623c9712af3170cc9782a10ed7360ddf8f8bb4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7889: 9dca15da37f2a385b04427eb39cd460224d09c25 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134906v1: 5c623c9712af3170cc9782a10ed7360ddf8f8bb4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2997766425142835019==--
