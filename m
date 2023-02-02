Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5795F6885BE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 18:54:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B0F10E15B;
	Thu,  2 Feb 2023 17:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78EB710E15B;
 Thu,  2 Feb 2023 17:53:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E4EAA9932;
 Thu,  2 Feb 2023 17:53:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5481272503840259258=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Thu, 02 Feb 2023 17:53:54 -0000
Message-ID: <167536043441.11116.1956784071878556301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230202162411.991040-1-ashutosh.dixit@intel.com>
In-Reply-To: <20230202162411.991040-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hwmon=3A_Enable_PL1_power_limit_=28rev2=29?=
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

--===============5481272503840259258==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hwmon: Enable PL1 power limit (rev2)
URL   : https://patchwork.freedesktop.org/series/113578/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12684 -> Patchwork_113578v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_113578v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_113578v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/index.html

Participating hosts (27 -> 26)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113578v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-kbl-soraka/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-kbl-soraka/igt@i915_selftest@live@client.html

  
Known issues
------------

  Here are the changes found in Patchwork_113578v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [ABORT][4] ([i915#7911])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg1-6:          NOTRUN -> [SKIP][7] ([i915#7828])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/bat-dg1-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][8] ([i915#1982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-kbl-soraka/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-dg1-6:          [ABORT][10] ([i915#4983]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/bat-dg1-6/igt@i915_selftest@live@gt_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/bat-dg1-6/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * Linux: CI_DRM_12684 -> Patchwork_113578v2

  CI-20190529: 20190529
  CI_DRM_12684: 57eb8680d3ef1213de1d9c607b95e522035036e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7144: cda71bf809b981a646270963d6b1ccee4fd4643b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113578v2: 57eb8680d3ef1213de1d9c607b95e522035036e6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2b6945e1b865 drm/i915/hwmon: Enable PL1 power limit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/index.html

--===============5481272503840259258==
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
<tr><td><b>Series:</b></td><td>drm/i915/hwmon: Enable PL1 power limit (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113578/">https://patchwork.freedesktop.org/series/113578/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12684 -&gt; Patchwork_113578v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_113578v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_113578v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/index.html</p>
<h2>Participating hosts (27 -&gt; 26)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113578v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@client:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-kbl-soraka/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-kbl-soraka/igt@i915_selftest@live@client.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113578v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/bat-dg1-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12684/bat-dg1-6/igt@i915_selftest@live@gt_lrc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113578v2/bat-dg1-6/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12684 -&gt; Patchwork_113578v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12684: 57eb8680d3ef1213de1d9c607b95e522035036e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7144: cda71bf809b981a646270963d6b1ccee4fd4643b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113578v2: 57eb8680d3ef1213de1d9c607b95e522035036e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2b6945e1b865 drm/i915/hwmon: Enable PL1 power limit</p>

</body>
</html>

--===============5481272503840259258==--
