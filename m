Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E56F788DEC
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 19:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF4D10E25C;
	Fri, 25 Aug 2023 17:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5370C10E25C;
 Fri, 25 Aug 2023 17:41:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A525AADD6;
 Fri, 25 Aug 2023 17:41:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6510452359548288013=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <navaremanasi@chromium.org>
Date: Fri, 25 Aug 2023 17:41:28 -0000
Message-ID: <169298528827.10954.8438605722935960019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230825161129.2811298-1-navaremanasi@chromium.org>
In-Reply-To: <20230825161129.2811298-1-navaremanasi@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display=3A_Allow_VRR_param?=
 =?utf-8?q?eters_mismatch_in_case_of_dual_refresh_rate_fastset?=
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

--===============6510452359548288013==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/display: Allow VRR parameters mismatch in case of dual refresh rate fastset
URL   : https://patchwork.freedesktop.org/series/122926/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13568 -> Patchwork_122926v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): bat-dg2-9 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_122926v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         NOTRUN -> [ABORT][1] ([i915#8860])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][2] ([i915#8442] / [i915#8668]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13568/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13568 -> Patchwork_122926v1

  CI-20190529: 20190529
  CI_DRM_13568: f8b90de70ee92dbdebc6f2078e2edd12756d7a63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7453: 7453
  Patchwork_122926v1: f8b90de70ee92dbdebc6f2078e2edd12756d7a63 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d5a13446e1a5 drm/i915/display/vrr: Update VRR parameters in fastset
a917108ef4fd drm/i915/display: Allow VRR parameters mismatch in case of dual refresh rate fastset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/index.html

--===============6510452359548288013==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/display: Allow VRR parameters mismatch in case of dual refresh rate fastset</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122926/">https://patchwork.freedesktop.org/series/122926/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13568 -&gt; Patchwork_122926v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): bat-dg2-9 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122926v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_psr@primary_page_flip:<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13568/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122926v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13568 -&gt; Patchwork_122926v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13568: f8b90de70ee92dbdebc6f2078e2edd12756d7a63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7453: 7453<br />
  Patchwork_122926v1: f8b90de70ee92dbdebc6f2078e2edd12756d7a63 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d5a13446e1a5 drm/i915/display/vrr: Update VRR parameters in fastset<br />
a917108ef4fd drm/i915/display: Allow VRR parameters mismatch in case of dual refresh rate fastset</p>

</body>
</html>

--===============6510452359548288013==--
