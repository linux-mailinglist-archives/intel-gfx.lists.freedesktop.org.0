Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DE049C59A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 09:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3A710E7D3;
	Wed, 26 Jan 2022 08:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4B8D10E7D0;
 Wed, 26 Jan 2022 08:55:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A04C9A00E8;
 Wed, 26 Jan 2022 08:55:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4820749975112049659=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 26 Jan 2022 08:55:06 -0000
Message-ID: <164318730665.25401.13045201430873913197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126073703.1215696-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220126073703.1215696-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Lock_dpt=5Fobj_around_set=5Fcache=5Flevel=2C_v2=2E?=
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

--===============4820749975112049659==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Lock dpt_obj around set_cache_level, v2.
URL   : https://patchwork.freedesktop.org/series/99350/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11137 -> Patchwork_22108
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22108 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22108, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/index.html

Participating hosts (48 -> 43)
------------------------------

  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22108:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - bat-adlp-4:         NOTRUN -> [DMESG-WARN][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-4/igt@kms_busy@basic@modeset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       NOTRUN -> [DMESG-WARN][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-6/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_22108 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][3] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][4] ([i915#2722] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-adlp-4:         [DMESG-WARN][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/bat-adlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
    - {bat-adlp-6}:       [DMESG-WARN][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/bat-adlp-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - {fi-tgl-dsi}:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_11137 -> Patchwork_22108

  CI-20190529: 20190529
  CI_DRM_11137: 4d22013ea4c52e5dd3625861c9c65fb8027f53a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6332: 27c9c3f5181a840c777399be7681d2cadd7940cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22108: 6d1423b45148508bf31792fd561fd8a28051f19c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6d1423b45148 drm/i915: Lock dpt_obj around set_cache_level, v2.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/index.html

--===============4820749975112049659==
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
<tr><td><b>Series:</b></td><td>drm/i915: Lock dpt_obj around set_cache_level, v2.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99350/">https://patchwork.freedesktop.org/series/99350/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11137 -&gt; Patchwork_22108</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22108 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22108, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/index.html</p>
<h2>Participating hosts (48 -&gt; 43)</h2>
<p>Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22108:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-4/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_busy@basic@flip:<ul>
<li>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22108 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/bat-adlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-4/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/bat-adlp-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/bat-adlp-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22108/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11137 -&gt; Patchwork_22108</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11137: 4d22013ea4c52e5dd3625861c9c65fb8027f53a6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6332: 27c9c3f5181a840c777399be7681d2cadd7940cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22108: 6d1423b45148508bf31792fd561fd8a28051f19c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6d1423b45148 drm/i915: Lock dpt_obj around set_cache_level, v2.</p>

</body>
</html>

--===============4820749975112049659==--
