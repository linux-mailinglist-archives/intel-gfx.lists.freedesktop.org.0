Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB124F70AF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 03:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591A110E668;
	Thu,  7 Apr 2022 01:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C921610E663;
 Thu,  7 Apr 2022 01:21:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4366A882E;
 Thu,  7 Apr 2022 01:21:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0011758563835130173=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Thu, 07 Apr 2022 01:21:00 -0000
Message-ID: <164929446076.14671.17662299513131286341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220406191848.20895-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220406191848.20895-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/rps=3A_Centralize_computation_of_freq_caps_=28rev6=29?=
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

--===============0011758563835130173==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/rps: Centralize computation of freq caps (rev6)
URL   : https://patchwork.freedesktop.org/series/101606/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11467 -> Patchwork_22802
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_22802 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22802, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/index.html

Participating hosts (52 -> 46)
------------------------------

  Additional (1): bat-adlm-1 
  Missing    (7): shard-tglu fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22802:

### IGT changes ###

#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [DMESG-WARN][1] ([i915#1982]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_22802 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          [FAIL][3] ([i915#4032]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][7] ([i915#3576]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Build changes
-------------

  * Linux: CI_DRM_11467 -> Patchwork_22802

  CI-20190529: 20190529
  CI_DRM_11467: 9620d9a4dee7a4c418de2683f3a7f544042c1a4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6414: b4d8d30a4ec8dae5c1c403f41348c073a9591d9f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22802: aef3d68ede3bf8e671c6a8b1a642fc84d13be11c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aef3d68ede3b drm/i915/rps: Centralize computation of freq caps

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/index.html

--===============0011758563835130173==
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
<tr><td><b>Series:</b></td><td>drm/i915/rps: Centralize computation of freq caps (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101606/">https://patchwork.freedesktop.org/series/101606/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11467 -&gt; Patchwork_22802</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_22802 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22802, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/index.html</p>
<h2>Participating hosts (52 -&gt; 46)</h2>
<p>Additional (1): bat-adlm-1 <br />
  Missing    (7): shard-tglu fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22802:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22802 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11467 -&gt; Patchwork_22802</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11467: 9620d9a4dee7a4c418de2683f3a7f544042c1a4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6414: b4d8d30a4ec8dae5c1c403f41348c073a9591d9f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22802: aef3d68ede3bf8e671c6a8b1a642fc84d13be11c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>aef3d68ede3b drm/i915/rps: Centralize computation of freq caps</p>

</body>
</html>

--===============0011758563835130173==--
