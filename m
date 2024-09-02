Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B59A968687
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BF610E2B0;
	Mon,  2 Sep 2024 11:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9253710E2B2;
 Mon,  2 Sep 2024 11:47:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1684996089283356152=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Fix_BMG?=
 =?utf-8?q?_CCS_modifiers_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 02 Sep 2024 11:47:25 -0000
Message-ID: <172527764558.889942.972348368672993868@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240902074021.459480-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240902074021.459480-1-juhapekka.heikkila@gmail.com>
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

--===============1684996089283356152==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fix BMG CCS modifiers (rev4)
URL   : https://patchwork.freedesktop.org/series/137958/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15341 -> Patchwork_137958v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-cfl-8109u fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_137958v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-9:         [PASS][1] -> [DMESG-WARN][2] ([i915#12119])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-adlp-9/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-adlp-9/igt@core_auth@basic-auth.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - bat-adlp-9:         [DMESG-WARN][3] ([i915#12119]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-adlp-9/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-arls-5:         [DMESG-WARN][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-arls-5/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-arls-5/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [DMESG-WARN][7] ([i915#11349]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-arls-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@workarounds:
    - {bat-arlh-3}:       [ABORT][9] ([i915#12061]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [ABORT][11] ([i915#12062]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12062]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12062
  [i915#12119]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12119


Build changes
-------------

  * Linux: CI_DRM_15341 -> Patchwork_137958v4

  CI-20190529: 20190529
  CI_DRM_15341: 007f07b7fe11b9afe6d0012535e5931ebcae73a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8001: d3a77fc98e89cc94b03be2b0903d44f83480b8a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137958v4: 007f07b7fe11b9afe6d0012535e5931ebcae73a4 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/index.html

--===============1684996089283356152==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fix BMG CCS modifiers (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137958/">https://patchwork.freedesktop.org/series/137958/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15341 -&gt; Patchwork_137958v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-cfl-8109u fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137958v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-adlp-9/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-adlp-9/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12119">i915#12119</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-adlp-9/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12119">i915#12119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-arls-5/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-arls-5/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15341/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12062">i915#12062</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137958v4/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15341 -&gt; Patchwork_137958v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15341: 007f07b7fe11b9afe6d0012535e5931ebcae73a4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8001: d3a77fc98e89cc94b03be2b0903d44f83480b8a0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137958v4: 007f07b7fe11b9afe6d0012535e5931ebcae73a4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1684996089283356152==--
