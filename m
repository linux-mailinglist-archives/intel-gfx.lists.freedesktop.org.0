Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A9D846783
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 06:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6795C10E6D5;
	Fri,  2 Feb 2024 05:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855A710E68E;
 Fri,  2 Feb 2024 05:26:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4489818704685209406=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_ccs_compressed_frame?=
 =?utf-8?q?buffers_on_Xe2_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 05:26:01 -0000
Message-ID: <170685156154.935547.2592844410825411056@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
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

--===============4489818704685209406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable ccs compressed framebuffers on Xe2 (rev6)
URL   : https://patchwork.freedesktop.org/series/128947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14210 -> Patchwork_128947v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-bsw-n3050 bat-adlp-6 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128947v6:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_create@basic@smem:
    - {bat-arls-2}:       [DMESG-WARN][1] ([i915#10194]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-arls-2/igt@gem_exec_create@basic@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/bat-arls-2/igt@gem_exec_create@basic@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_128947v6 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][3] ([fdo#109271]) -> [PASS][4] +1 other test pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-6:         [DMESG-WARN][5] ([i915#10217]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html
    - bat-adlp-9:         [ABORT][7] ([i915#10021]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/bat-adlp-9/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10021]: https://gitlab.freedesktop.org/drm/intel/issues/10021
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10217]: https://gitlab.freedesktop.org/drm/intel/issues/10217


Build changes
-------------

  * Linux: CI_DRM_14210 -> Patchwork_128947v6

  CI-20190529: 20190529
  CI_DRM_14210: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7701: 7701
  Patchwork_128947v6: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

589f1e1508e6 drm/i915/display: On Xe2 always enable decompression with tile4
ded2d61bb641 drm/xe/xe2: Limit ccs framebuffers to tile4 only
8185808bce2d drm/xe: add bind time pat index to xe_bo structure
f75cca1ccac6 drm/xe/pat: annotate pat index table with compression info

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/index.html

--===============4489818704685209406==
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
<tr><td><b>Series:</b></td><td>Enable ccs compressed framebuffers on Xe2 (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128947/">https://patchwork.freedesktop.org/series/128947/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14210 -&gt; Patchwork_128947v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-bsw-n3050 bat-adlp-6 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128947v6:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_create@basic@smem:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-arls-2/igt@gem_exec_create@basic@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/bat-arls-2/igt@gem_exec_create@basic@smem.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128947v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10217">i915#10217</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128947v6/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14210 -&gt; Patchwork_128947v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14210: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7701: 7701<br />
  Patchwork_128947v6: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>589f1e1508e6 drm/i915/display: On Xe2 always enable decompression with tile4<br />
ded2d61bb641 drm/xe/xe2: Limit ccs framebuffers to tile4 only<br />
8185808bce2d drm/xe: add bind time pat index to xe_bo structure<br />
f75cca1ccac6 drm/xe/pat: annotate pat index table with compression info</p>

</body>
</html>

--===============4489818704685209406==--
