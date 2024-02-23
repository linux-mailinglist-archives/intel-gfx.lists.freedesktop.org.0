Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B558611C7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 13:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79B110EBF6;
	Fri, 23 Feb 2024 12:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DDF710EBF6;
 Fri, 23 Feb 2024 12:45:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5952408540552193303=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_ALSA/ASoC=3A_Conditionally_?=
 =?utf-8?q?skip_i915_init_and_cleanups_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cezary Rojewski" <cezary.rojewski@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Feb 2024 12:45:11 -0000
Message-ID: <170869231138.247199.8276375259346807172@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240223114626.1052784-1-cezary.rojewski@intel.com>
In-Reply-To: <20240223114626.1052784-1-cezary.rojewski@intel.com>
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

--===============5952408540552193303==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALSA/ASoC: Conditionally skip i915 init and cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/130271/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14325 -> Patchwork_130271v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130271v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130271v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/index.html

Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130271v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@vcs1:
    - bat-arls-1:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14325/bat-arls-1/igt@gem_exec_fence@basic-busy@vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/bat-arls-1/igt@gem_exec_fence@basic-busy@vcs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_130271v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_create@basic@smem:
    - bat-arls-1:         [DMESG-WARN][3] ([i915#10194]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14325/bat-arls-1/igt@gem_exec_create@basic@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/bat-arls-1/igt@gem_exec_create@basic@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][5] ([i915#7911]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14325/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911


Build changes
-------------

  * Linux: CI_DRM_14325 -> Patchwork_130271v2

  CI-20190529: 20190529
  CI_DRM_14325: 115d0ed85f58e87d2d7a057426350fec5b217cc9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7728: 7728
  Patchwork_130271v2: 115d0ed85f58e87d2d7a057426350fec5b217cc9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0b83f358f4bf ALSA: hda: Reuse for_each_pcm_streams()
aa841f78b78e ASoC: codecs: hda: Cleanup error messages
8c5caf70cad5 ASoC: codecs: hda: Skip HDMI/DP registration if i915 is missing
710017466247 ALSA: hda: Skip i915 initialization on CNL/LKF-based platforms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/index.html

--===============5952408540552193303==
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
<tr><td><b>Series:</b></td><td>ALSA/ASoC: Conditionally skip i915 init and cleanups (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130271/">https://patchwork.freedesktop.org/series/130271/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14325 -&gt; Patchwork_130271v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130271v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130271v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/index.html</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130271v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fence@basic-busy@vcs1:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14325/bat-arls-1/igt@gem_exec_fence@basic-busy@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/bat-arls-1/igt@gem_exec_fence@basic-busy@vcs1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130271v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic@smem:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14325/bat-arls-1/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/bat-arls-1/igt@gem_exec_create@basic@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14325/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130271v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14325 -&gt; Patchwork_130271v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14325: 115d0ed85f58e87d2d7a057426350fec5b217cc9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7728: 7728<br />
  Patchwork_130271v2: 115d0ed85f58e87d2d7a057426350fec5b217cc9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0b83f358f4bf ALSA: hda: Reuse for_each_pcm_streams()<br />
aa841f78b78e ASoC: codecs: hda: Cleanup error messages<br />
8c5caf70cad5 ASoC: codecs: hda: Skip HDMI/DP registration if i915 is missing<br />
710017466247 ALSA: hda: Skip i915 initialization on CNL/LKF-based platforms</p>

</body>
</html>

--===============5952408540552193303==--
