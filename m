Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AECD7DCA59
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 11:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8374010E44C;
	Tue, 31 Oct 2023 10:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6579E10E44C;
 Tue, 31 Oct 2023 10:05:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DD39A7DFB;
 Tue, 31 Oct 2023 10:05:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0870794344191600087=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 31 Oct 2023 10:05:34 -0000
Message-ID: <169874673437.27660.17233565121133716288@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231031084557.1181630-1-jouni.hogander@intel.com>
In-Reply-To: <20231031084557.1181630-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Use_dma=5Ffence_interfaces_instead_of_i915=5Fs?=
 =?utf-8?q?w=5Ffence_=28rev4=29?=
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

--===============0870794344191600087==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence (rev4)
URL   : https://patchwork.freedesktop.org/series/125160/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13817 -> Patchwork_125160v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125160v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125160v4, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/index.html

Participating hosts (39 -> 15)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_125160v4 prevented too many machines from booting.

  Missing    (24): fi-kbl-soraka fi-rkl-11600 bat-adls-5 fi-apl-guc fi-snb-2520m fi-pnv-d510 bat-rpls-1 fi-blb-e6850 bat-dg2-9 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-ivb-3770 fi-elk-e7500 bat-jsl-3 bat-kbl-2 bat-adlp-9 fi-skl-guc bat-jsl-1 fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u bat-dg2-14 

Known issues
------------

  Here are the changes found in Patchwork_125160v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_dsc@dsc-basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][1] ([i915#3555] / [i915#3840])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-adlp-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-adlp-6:         NOTRUN -> [SKIP][2] ([fdo#109285])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][3] ([i915#1845] / [i915#9197])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][4] -> [ABORT][5] ([i915#8668])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13817/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_13817 -> Patchwork_125160v4

  CI-20190529: 20190529
  CI_DRM_13817: 1f7a04390904ad852806492c71a11828923915aa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7566: 7566
  Patchwork_125160v4: 1f7a04390904ad852806492c71a11828923915aa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ef847a9fefef drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/index.html

--===============0870794344191600087==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125160/">https://patchwork.freedesktop.org/series/125160/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13817 -&gt; Patchwork_125160v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125160v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125160v4, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/index.html</p>
<h2>Participating hosts (39 -&gt; 15)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_125160v4 prevented too many machines from booting.</p>
<p>Missing    (24): fi-kbl-soraka fi-rkl-11600 bat-adls-5 fi-apl-guc fi-snb-2520m fi-pnv-d510 bat-rpls-1 fi-blb-e6850 bat-dg2-9 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-ivb-3770 fi-elk-e7500 bat-jsl-3 bat-kbl-2 bat-adlp-9 fi-skl-guc bat-jsl-1 fi-cfl-guc fi-kbl-guc fi-kbl-x1275 fi-cfl-8109u bat-dg2-14 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125160v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-adlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13817/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125160v4/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13817 -&gt; Patchwork_125160v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13817: 1f7a04390904ad852806492c71a11828923915aa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7566: 7566<br />
  Patchwork_125160v4: 1f7a04390904ad852806492c71a11828923915aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ef847a9fefef drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence</p>

</body>
</html>

--===============0870794344191600087==--
