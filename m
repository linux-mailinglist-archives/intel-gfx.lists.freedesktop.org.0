Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F855175AE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 19:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A1C410F21B;
	Mon,  2 May 2022 17:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23F6D10F216;
 Mon,  2 May 2022 17:22:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 207ECA66C9;
 Mon,  2 May 2022 17:22:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0172152006091325010=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 02 May 2022 17:22:17 -0000
Message-ID: <165151213709.28136.13400655196902833795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
In-Reply-To: <20220502163417.2635462-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Introduce_Ponte_Vecchio?=
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

--===============0172152006091325010==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Introduce Ponte Vecchio
URL   : https://patchwork.freedesktop.org/series/103443/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11588 -> Patchwork_103443v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/index.html

Participating hosts (44 -> 39)
------------------------------

  Missing    (5): bat-adlm-1 fi-bsw-cyan fi-icl-u2 fi-hsw-4770 bat-rpls-1 

Known issues
------------

  Here are the changes found in Patchwork_103443v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - {fi-tgl-dsi}:       [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/fi-tgl-dsi/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/fi-tgl-dsi/igt@i915_selftest@live@migrate.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][5] ([i915#3576]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/bat-adlp-6/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576


Build changes
-------------

  * Linux: CI_DRM_11588 -> Patchwork_103443v1

  CI-20190529: 20190529
  CI_DRM_11588: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103443v1: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2457c0586595 drm/i915/pvc: read fuses for link copy engines
fbf8f67a5b81 drm/i915/pvc: skip all copy engines from aux table invalidate
403c5c3cb3fa drm/i915/pvc: Reset support for new copy engines
edbc69443095 drm/i915/pvc: Interrupt support for new copy engines
ffedff71e172 drm/i915/pvc: Engines definitions for new copy engines
90aa5bdf2927 drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter engine
ccc0b833b47d drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
8884d54705d6 drm/i915/pvc: Read correct RP_STATE_CAP register
fb521a51c11d drm/i915/pvc: Define MOCS table for PVC
3869419391e1 drm/i915/pvc: Add forcewake support
7276e365a5ed drm/i915/pvc: add initial Ponte Vecchio definitions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/index.html

--===============0172152006091325010==
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
<tr><td><b>Series:</b></td><td>i915: Introduce Ponte Vecchio</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103443/">https://patchwork.freedesktop.org/series/103443/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11588 -&gt; Patchwork_103443v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/index.html</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): bat-adlm-1 fi-bsw-cyan fi-icl-u2 fi-hsw-4770 bat-rpls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103443v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/fi-tgl-dsi/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11588/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v1/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11588 -&gt; Patchwork_103443v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11588: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103443v1: 68f638d8e33ee3d6110a6798b823f88e07eaef1f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2457c0586595 drm/i915/pvc: read fuses for link copy engines<br />
fbf8f67a5b81 drm/i915/pvc: skip all copy engines from aux table invalidate<br />
403c5c3cb3fa drm/i915/pvc: Reset support for new copy engines<br />
edbc69443095 drm/i915/pvc: Interrupt support for new copy engines<br />
ffedff71e172 drm/i915/pvc: Engines definitions for new copy engines<br />
90aa5bdf2927 drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter engine<br />
ccc0b833b47d drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL<br />
8884d54705d6 drm/i915/pvc: Read correct RP_STATE_CAP register<br />
fb521a51c11d drm/i915/pvc: Define MOCS table for PVC<br />
3869419391e1 drm/i915/pvc: Add forcewake support<br />
7276e365a5ed drm/i915/pvc: add initial Ponte Vecchio definitions</p>

</body>
</html>

--===============0172152006091325010==--
