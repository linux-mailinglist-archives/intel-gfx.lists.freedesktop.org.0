Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC5C8CB216
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 18:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1971D10E312;
	Tue, 21 May 2024 16:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1494110E132;
 Tue, 21 May 2024 16:22:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8114924994373162608=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_audio_compo?=
 =?utf-8?q?nent_initialization?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2024 16:22:56 -0000
Message-ID: <171630857608.2162685.11835581785494504379@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240521143022.3784539-1-imre.deak@intel.com>
In-Reply-To: <20240521143022.3784539-1-imre.deak@intel.com>
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

--===============8114924994373162608==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix audio component initialization
URL   : https://patchwork.freedesktop.org/series/133882/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14791 -> Patchwork_133882v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/index.html

Participating hosts (41 -> 37)
------------------------------

  Missing    (4): bat-dg2-13 bat-dg2-11 bat-jsl-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_133882v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-mtlp-9}:       [DMESG-WARN][1] ([i915#11009]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - {bat-mtlp-9}:       [SKIP][3] ([i915#10580]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp6:
    - {bat-mtlp-9}:       [DMESG-FAIL][5] ([i915#11009]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp6.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp7:
    - {bat-mtlp-9}:       [FAIL][7] ([i915#6121]) -> [PASS][8] +5 other tests pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10435
  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14791 -> Patchwork_133882v1

  CI-20190529: 20190529
  CI_DRM_14791: 413686054e38d01eb91dfb49d665d1ab7d004848 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7865: 3578243d16f1ea5055f7baa0b1fe7f520538c4ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133882v1: 413686054e38d01eb91dfb49d665d1ab7d004848 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/index.html

--===============8114924994373162608==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix audio component initialization</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133882/">https://patchwork.freedesktop.org/series/133882/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14791 -&gt; Patchwork_133882v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): bat-dg2-13 bat-dg2-11 bat-jsl-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133882v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp6.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp6.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@b-dp7.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14791 -&gt; Patchwork_133882v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14791: 413686054e38d01eb91dfb49d665d1ab7d004848 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7865: 3578243d16f1ea5055f7baa0b1fe7f520538c4ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133882v1: 413686054e38d01eb91dfb49d665d1ab7d004848 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8114924994373162608==--
