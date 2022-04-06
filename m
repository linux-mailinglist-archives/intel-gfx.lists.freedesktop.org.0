Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D52A24F6E91
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 01:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAEFF10E0CC;
	Wed,  6 Apr 2022 23:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1E8110E04F;
 Wed,  6 Apr 2022 23:34:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCD5CA47EB;
 Wed,  6 Apr 2022 23:34:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6991386935913400549=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Wed, 06 Apr 2022 23:34:54 -0000
Message-ID: <164928809480.5452.7205435356015916000@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220406174311.82104-1-vinod.govindapillai@intel.com>
In-Reply-To: <20220406174311.82104-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_program_wm_blocks_to_at_least_blocks_required_per_line?=
 =?utf-8?q?_=28rev3=29?=
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

--===============6991386935913400549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: program wm blocks to at least blocks required per line (rev3)
URL   : https://patchwork.freedesktop.org/series/102149/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11467 -> Patchwork_22799
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_22799 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22799, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html

Participating hosts (50 -> 45)
------------------------------

  Missing    (5): shard-tglu fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22799:

### IGT changes ###

#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [DMESG-WARN][1] ([i915#1982]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_22799 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@vga-edid-read:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_flip@basic-plain-flip:
    - bat-dg1-6:          NOTRUN -> [SKIP][4] ([i915#4078])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/bat-dg1-6/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-bdw-5557u/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][6] ([i915#146] / [i915#4444])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-tgl-u2:          NOTRUN -> [FAIL][7] ([i915#5257])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][8] ([i915#3576]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4444]: https://gitlab.freedesktop.org/drm/intel/issues/4444
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257


Build changes
-------------

  * Linux: CI_DRM_11467 -> Patchwork_22799

  CI-20190529: 20190529
  CI_DRM_11467: 9620d9a4dee7a4c418de2683f3a7f544042c1a4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6414: b4d8d30a4ec8dae5c1c403f41348c073a9591d9f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22799: 35b2e9e5bd5367527ef716ab6cba7e74c4eec8a8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

35b2e9e5bd53 drm/i915: program wm blocks to at least blocks required per line

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html

--===============6991386935913400549==
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
<tr><td><b>Series:</b></td><td>drm/i915: program wm blocks to at least blocks required per line (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102149/">https://patchwork.freedesktop.org/series/102149/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11467 -&gt; Patchwork_22799</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_22799 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22799, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/index.html</p>
<h2>Participating hosts (50 -&gt; 45)</h2>
<p>Missing    (5): shard-tglu fi-bsw-cyan fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22799:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22799 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/bat-dg1-6/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-bdw-5557u/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4444">i915#4444</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22799/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11467 -&gt; Patchwork_22799</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11467: 9620d9a4dee7a4c418de2683f3a7f544042c1a4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6414: b4d8d30a4ec8dae5c1c403f41348c073a9591d9f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22799: 35b2e9e5bd5367527ef716ab6cba7e74c4eec8a8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>35b2e9e5bd53 drm/i915: program wm blocks to at least blocks required per line</p>

</body>
</html>

--===============6991386935913400549==--
