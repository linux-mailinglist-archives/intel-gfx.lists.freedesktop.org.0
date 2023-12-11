Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB6D80C488
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 10:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0D910E374;
	Mon, 11 Dec 2023 09:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACCDA89083;
 Mon, 11 Dec 2023 09:27:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A470AAADDD;
 Mon, 11 Dec 2023 09:27:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0408840035708595817=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/2?=
 =?utf-8?q?=5D_drm=3A_Don=27t_unref_the_same_fb_many_times_by_mistake_due_to?=
 =?utf-8?q?_deadlock_handling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 11 Dec 2023 09:27:46 -0000
Message-ID: <170228686666.19578.180831990448372219@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231211081625.25704-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231211081625.25704-1-ville.syrjala@linux.intel.com>
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

--===============0408840035708595817==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm: Don't unref the same fb many times by mistake due to deadlock handling
URL   : https://patchwork.freedesktop.org/series/127617/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14002 -> Patchwork_127617v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/index.html

Participating hosts (34 -> 21)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (14): fi-kbl-7567u bat-dg1-7 fi-rkl-11600 bat-dg2-14 bat-adls-5 bat-adlp-11 bat-dg2-9 fi-snb-2520m fi-kbl-x1275 bat-atsm-1 fi-elk-e7500 bat-jsl-3 fi-cfl-8109u bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_127617v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +32 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][2] -> [ABORT][3] ([i915#8668])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14002/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][4] ([IGT#3]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14002/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_14002 -> Patchwork_127617v1

  CI-20190529: 20190529
  CI_DRM_14002: 56d198271a99f5aba2da4c50f473843c590fb4a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7630: 9ea2b15cc16155e347d7d89e3f3b0f5b5c301439 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127617v1: 56d198271a99f5aba2da4c50f473843c590fb4a7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

df1d46469de0 drm: Warn when freeing a framebuffer that's still on a list
3e8ee149c0df drm: Don't unref the same fb many times by mistake due to deadlock handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/index.html

--===============0408840035708595817==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm: Don&#39;t unref the same fb many times by mistake due to deadlock handling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127617/">https://patchwork.freedesktop.org/series/127617/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14002 -&gt; Patchwork_127617v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/index.html</p>
<h2>Participating hosts (34 -&gt; 21)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (14): fi-kbl-7567u bat-dg1-7 fi-rkl-11600 bat-dg2-14 bat-adls-5 bat-adlp-11 bat-dg2-9 fi-snb-2520m fi-kbl-x1275 bat-atsm-1 fi-elk-e7500 bat-jsl-3 fi-cfl-8109u bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127617v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14002/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14002/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127617v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14002 -&gt; Patchwork_127617v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14002: 56d198271a99f5aba2da4c50f473843c590fb4a7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7630: 9ea2b15cc16155e347d7d89e3f3b0f5b5c301439 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127617v1: 56d198271a99f5aba2da4c50f473843c590fb4a7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>df1d46469de0 drm: Warn when freeing a framebuffer that's still on a list<br />
3e8ee149c0df drm: Don't unref the same fb many times by mistake due to deadlock handling</p>

</body>
</html>

--===============0408840035708595817==--
