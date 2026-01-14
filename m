Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB0FD1C92C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 06:22:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD71910E0A6;
	Wed, 14 Jan 2026 05:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CEF10E0A6;
 Wed, 14 Jan 2026 05:22:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1211761364751448685=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Fix_Cx0_Suspend_Resume_is?=
 =?utf-8?q?sue_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jan 2026 05:22:55 -0000
Message-ID: <176836817599.152799.4298546885949418307@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
In-Reply-To: <20260114034259.466605-1-suraj.kandpal@intel.com>
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

--===============1211761364751448685==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix Cx0 Suspend Resume issue (rev2)
URL   : https://patchwork.freedesktop.org/series/159540/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17817 -> Patchwork_159540v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_159540v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159540v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159540v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - bat-arls-6:         [PASS][1] -> [DMESG-WARN][2] +71 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/bat-arls-6/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/bat-arls-6/igt@i915_module_load@reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:
    - bat-arls-5:         [PASS][3] -> [DMESG-WARN][4] +71 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html

  
Known issues
------------

  Here are the changes found in Patchwork_159540v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][5] -> [FAIL][6] ([i915#14867])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][7] ([i915#12061]) -> [PASS][8] +1 other test pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867


Build changes
-------------

  * Linux: CI_DRM_17817 -> Patchwork_159540v2

  CI-20190529: 20190529
  CI_DRM_17817: 1580579412915ac76344699e53124b580060302d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8699: 0b67ab25f2eb58b296872c8c34474b79353727d5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159540v2: 1580579412915ac76344699e53124b580060302d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/index.html

--===============1211761364751448685==
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
<tr><td><b>Series:</b></td><td>Fix Cx0 Suspend Resume issue (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159540/">https://patchwork.freedesktop.org/series/159540/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17817 -&gt; Patchwork_159540v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_159540v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159540v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159540v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/bat-arls-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/bat-arls-6/igt@i915_module_load@reload.html">DMESG-WARN</a> +71 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html">DMESG-WARN</a> +71 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159540v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17817/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159540v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17817 -&gt; Patchwork_159540v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17817: 1580579412915ac76344699e53124b580060302d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8699: 0b67ab25f2eb58b296872c8c34474b79353727d5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159540v2: 1580579412915ac76344699e53124b580060302d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1211761364751448685==--
