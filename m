Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390B990BC8C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 23:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B53010E187;
	Mon, 17 Jun 2024 21:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3A210E187;
 Mon, 17 Jun 2024 21:04:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4767750336735526972=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gem=3A_Return_SIGB?=
 =?utf-8?q?US_for_wrong_mapping_parameters_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2024 21:04:06 -0000
Message-ID: <171865824638.99140.17100789642807487220@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240617124115.260250-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240617124115.260250-1-andi.shyti@linux.intel.com>
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

--===============4767750336735526972==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Return SIGBUS for wrong mapping parameters (rev2)
URL   : https://patchwork.freedesktop.org/series/134953/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14958 -> Patchwork_134953v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/index.html

Participating hosts (44 -> 39)
------------------------------

  Missing    (5): bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_134953v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][1] -> [FAIL][2] ([i915#11359])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14958/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7:
    - {bat-mtlp-9}:       [FAIL][3] ([i915#6121]) -> [PASS][4] +3 other tests pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14958/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6:
    - {bat-mtlp-9}:       [DMESG-WARN][5] ([i915#11009]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14958/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10979
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14958 -> Patchwork_134953v2

  CI-20190529: 20190529
  CI_DRM_14958: d686f75c2fd1a9da495dcfed81627704e8cf203b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134953v2: d686f75c2fd1a9da495dcfed81627704e8cf203b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/index.html

--===============4767750336735526972==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Return SIGBUS for wrong mapping parameters (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134953/">https://patchwork.freedesktop.org/series/134953/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14958 -&gt; Patchwork_134953v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/index.html</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): bat-kbl-2 fi-bsw-n3050 fi-snb-2520m fi-kbl-8809g bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134953v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14958/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359">i915#11359</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14958/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp7.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14958/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134953v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@d-dp6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14958 -&gt; Patchwork_134953v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14958: d686f75c2fd1a9da495dcfed81627704e8cf203b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134953v2: d686f75c2fd1a9da495dcfed81627704e8cf203b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4767750336735526972==--
