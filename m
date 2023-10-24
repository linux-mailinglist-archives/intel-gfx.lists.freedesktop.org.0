Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2BD7D5E84
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 00:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9F288D18;
	Tue, 24 Oct 2023 22:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19B4488D18;
 Tue, 24 Oct 2023 22:57:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F61AA03D2;
 Tue, 24 Oct 2023 22:57:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1638603120776622995=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@kernel.org>
Date: Tue, 24 Oct 2023 22:57:38 -0000
Message-ID: <169818825803.18362.10831180499966398352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231016201012.1022812-1-arnd@kernel.org>
In-Reply-To: <20231016201012.1022812-1-arnd@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_avoid_stringop-overflow_warning_=28rev4=29?=
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

--===============1638603120776622995==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: avoid stringop-overflow warning (rev4)
URL   : https://patchwork.freedesktop.org/series/125198/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13782 -> Patchwork_125198v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): bat-mtlp-8 bat-dg2-9 bat-adlp-11 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_125198v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][1] ([i915#3546]) +2 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:
    - bat-dg2-11:         [INCOMPLETE][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952


Build changes
-------------

  * Linux: CI_DRM_13782 -> Patchwork_125198v4

  CI-20190529: 20190529
  CI_DRM_13782: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125198v4: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3f8d15a44d55 drm/i915/mtl: avoid stringop-overflow warning

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/index.html

--===============1638603120776622995==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: avoid stringop-overflow warning (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125198/">https://patchwork.freedesktop.org/series/125198/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13782 -&gt; Patchwork_125198v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): bat-mtlp-8 bat-dg2-9 bat-adlp-11 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125198v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13782/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125198v4/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13782 -&gt; Patchwork_125198v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13782: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7552: 557856802dfee103802f1157f97c65bb476d5468 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125198v4: 16c18fef1215015ab3d1a0dd3b06cf6131fe23bd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3f8d15a44d55 drm/i915/mtl: avoid stringop-overflow warning</p>

</body>
</html>

--===============1638603120776622995==--
