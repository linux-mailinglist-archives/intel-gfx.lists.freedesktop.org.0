Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD327A6746
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 16:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13EBA10E295;
	Tue, 19 Sep 2023 14:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 925DD10E295;
 Tue, 19 Sep 2023 14:49:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91CA9A73C7;
 Tue, 19 Sep 2023 14:49:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9032653687190094402=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 19 Sep 2023 14:49:50 -0000
Message-ID: <169513499059.3669.11619573875872788374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230918170257.8586-1-nirmoy.das@intel.com>
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVXBk?=
 =?utf-8?q?ate_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev7=29?=
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

--===============9032653687190094402==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev7)
URL   : https://patchwork.freedesktop.org/series/123329/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13651 -> Patchwork_123329v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123329v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123329v7, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/index.html

Participating hosts (38 -> 37)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (2): bat-adlm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123329v7:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - bat-rpls-2:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-rpls-2/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - bat-mtlp-8:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-mtlp-8/igt@i915_module_load@load.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-mtlp-8/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_123329v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [PASS][4] -> [INCOMPLETE][5] ([i915#8797] / [i915#9275])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][6] ([i915#3546]) +2 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
    - bat-dg2-11:         NOTRUN -> [SKIP][7] ([i915#1845]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][8] ([i915#7913]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - {bat-dg2-13}:       [DMESG-WARN][10] ([i915#7952]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8797]: https://gitlab.freedesktop.org/drm/intel/issues/8797
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * IGT: IGT_7493 -> IGTPW_9823
  * Linux: CI_DRM_13651 -> Patchwork_123329v7

  CI-20190529: 20190529
  CI_DRM_13651: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_9823: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_9823/index.html
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123329v7: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

26265f5f9f61 drm/i915: Enable GGTT updates with binder in MTL
7a67035923d6 drm/i915: Toggle binder context ready status
6fa6bfc6f03f drm/i915: Implement GGTT update method with MI_UPDATE_GTT
f930e850fdf6 drm/i915: Parameterize binder context creation
831e959ba305 drm/i915: Implement for_each_sgt_daddr_next
fbfc23fefdae drm/i915: Create a kernel context for GGTT updates
d9820958a5b0 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/index.html

--===============9032653687190094402==
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
<tr><td><b>Series:</b></td><td>Update GGTT with MI_UPDATE_GTT on MTL (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123329/">https://patchwork.freedesktop.org/series/123329/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13651 -&gt; Patchwork_123329v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123329v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123329v7, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (2): bat-adlm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123329v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-rpls-2/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-mtlp-8/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123329v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8797">i915#8797</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 other tests skip</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +3 other tests skip</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7952">i915#7952</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v7/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7493 -&gt; IGTPW_9823</li>
<li>Linux: CI_DRM_13651 -&gt; Patchwork_123329v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13651: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_9823: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_9823/index.html<br />
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123329v7: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>26265f5f9f61 drm/i915: Enable GGTT updates with binder in MTL<br />
7a67035923d6 drm/i915: Toggle binder context ready status<br />
6fa6bfc6f03f drm/i915: Implement GGTT update method with MI_UPDATE_GTT<br />
f930e850fdf6 drm/i915: Parameterize binder context creation<br />
831e959ba305 drm/i915: Implement for_each_sgt_daddr_next<br />
fbfc23fefdae drm/i915: Create a kernel context for GGTT updates<br />
d9820958a5b0 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex</p>

</body>
</html>

--===============9032653687190094402==--
