Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484F8790DB5
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Sep 2023 21:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261AA10E200;
	Sun,  3 Sep 2023 19:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DC8510E213;
 Sun,  3 Sep 2023 19:26:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EDBF3AADDD;
 Sun,  3 Sep 2023 19:26:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8360169147773002735=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Date: Sun, 03 Sep 2023 19:26:47 -0000
Message-ID: <169376920796.29657.5021219341859388088@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230903184607.272198-1-jim.cromie@gmail.com>
In-Reply-To: <20230903184607.272198-1-jim.cromie@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=5Fdbg=3A_add_trailing_newlines_where_missing_=28rev2=29?=
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

--===============8360169147773002735==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm_dbg: add trailing newlines where missing (rev2)
URL   : https://patchwork.freedesktop.org/series/121583/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13589 -> Patchwork_121583v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-atsm-1 fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_121583v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][1] -> [DMESG-FAIL][2] ([i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13589/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][3] -> [ABORT][4] ([i915#8442] / [i915#8668])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13589/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - bat-dg2-8:          [INCOMPLETE][5] ([i915#6311]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13589/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13589 -> Patchwork_121583v2

  CI-20190529: 20190529
  CI_DRM_13589: fb8058519dabca56895b9ef25cac5f2f7de8a640 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7464: 7464
  Patchwork_121583v2: fb8058519dabca56895b9ef25cac5f2f7de8a640 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

89cc15a5bcbe drm: use correct ccflags-y syntax
fe5ea8564db8 drm_dbg: add trailing newlines to msgs
0079cc5c92c4 drm_dbg: add trailing newlines to msgs
3df4603f5881 drm_dbg: add trailing newlines to msgs
943c166bba5e drm_dbg: add trailing newlines to msgs
6c248668164e drm_dbg: add trailing newlines to msgs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/index.html

--===============8360169147773002735==
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
<tr><td><b>Series:</b></td><td>drm_dbg: add trailing newlines where missing (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/121583/">https://patchwork.freedesktop.org/series/121583/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13589 -&gt; Patchwork_121583v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-atsm-1 fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_121583v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13589/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13589/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13589/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121583v2/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13589 -&gt; Patchwork_121583v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13589: fb8058519dabca56895b9ef25cac5f2f7de8a640 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7464: 7464<br />
  Patchwork_121583v2: fb8058519dabca56895b9ef25cac5f2f7de8a640 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>89cc15a5bcbe drm: use correct ccflags-y syntax<br />
fe5ea8564db8 drm_dbg: add trailing newlines to msgs<br />
0079cc5c92c4 drm_dbg: add trailing newlines to msgs<br />
3df4603f5881 drm_dbg: add trailing newlines to msgs<br />
943c166bba5e drm_dbg: add trailing newlines to msgs<br />
6c248668164e drm_dbg: add trailing newlines to msgs</p>

</body>
</html>

--===============8360169147773002735==--
