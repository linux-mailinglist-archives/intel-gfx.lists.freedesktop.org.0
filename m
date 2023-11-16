Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 545187ED88F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 01:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9A110E2C6;
	Thu, 16 Nov 2023 00:32:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FFAF10E2C6;
 Thu, 16 Nov 2023 00:32:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AF2BAA915;
 Thu, 16 Nov 2023 00:32:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9083874586211577344=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Thu, 16 Nov 2023 00:32:35 -0000
Message-ID: <170009475527.3092.11065700244739345428@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
In-Reply-To: <20231115090719.3210079-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?pare_intel=5Ffbdev_for_Xe_=28rev2=29?=
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

--===============9083874586211577344==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prepare intel_fbdev for Xe (rev2)
URL   : https://patchwork.freedesktop.org/series/126446/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13881 -> Patchwork_126446v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html

Participating hosts (40 -> 35)
------------------------------

  Missing    (5): fi-bsw-n3050 bat-dg1-5 fi-snb-2520m fi-hsw-4770 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_126446v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][1] -> [TIMEOUT][2] ([i915#6794] / [i915#7392])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rpls-1/igt@i915_selftest@live@mman.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][3] -> [WARN][4] ([i915#8747])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5:
    - bat-adlp-11:        [PASS][5] -> [FAIL][6] ([i915#9654]) +1 other test fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#9654]: https://gitlab.freedesktop.org/drm/intel/issues/9654


Build changes
-------------

  * Linux: CI_DRM_13881 -> Patchwork_126446v2

  CI-20190529: 20190529
  CI_DRM_13881: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126446v2: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fbcb3e4f6c07 drm/i915/display: use intel_bo_to_drm_bo in intel_fbdev
c714a64ee419 drm/i915/display: split i915 specific code from intel_fbdev

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html

--===============9083874586211577344==
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
<tr><td><b>Series:</b></td><td>Prepare intel_fbdev for Xe (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126446/">https://patchwork.freedesktop.org/series/126446/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13881 -&gt; Patchwork_126446v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Missing    (5): fi-bsw-n3050 bat-dg1-5 fi-snb-2520m fi-hsw-4770 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126446v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9654">i915#9654</a>) +1 other test fail</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13881 -&gt; Patchwork_126446v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13881: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126446v2: 36732395a74634a9ff9db10c79c4c52719cdab40 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fbcb3e4f6c07 drm/i915/display: use intel_bo_to_drm_bo in intel_fbdev<br />
c714a64ee419 drm/i915/display: split i915 specific code from intel_fbdev</p>

</body>
</html>

--===============9083874586211577344==--
