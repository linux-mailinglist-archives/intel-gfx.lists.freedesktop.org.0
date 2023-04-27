Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780326F0ED8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 01:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FA7F10E124;
	Thu, 27 Apr 2023 23:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBC3B10E124;
 Thu, 27 Apr 2023 23:22:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E067DAADE8;
 Thu, 27 Apr 2023 23:22:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8683189298000670576=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Date: Thu, 27 Apr 2023 23:22:09 -0000
Message-ID: <168263772989.9052.17399292881925644800@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230426003942.1924347-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20230426003942.1924347-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/2=5D_drm/i915/guc/slpc=3A_Provide_s?=
 =?utf-8?q?ysfs_for_efficient_freq_=28rev3=29?=
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

--===============8683189298000670576==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v6,1/2] drm/i915/guc/slpc: Provide sysfs for efficient freq (rev3)
URL   : https://patchwork.freedesktop.org/series/116957/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13071 -> Patchwork_116957v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/index.html

Participating hosts (38 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116957v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][3] ([i915#7913] / [i915#8383])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][4] -> [ABORT][5] ([i915#8384])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-rpls-1/igt@i915_selftest@live@reset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271]) +16 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][7] -> [FAIL][8] ([i915#7932]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [FAIL][9] ([i915#7916]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - bat-adln-1:         [FAIL][11] ([i915#6997]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-adln-1/igt@i915_selftest@live@slpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/bat-adln-1/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       [ABORT][13] -> [ABORT][14] ([i915#8397])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7916]: https://gitlab.freedesktop.org/drm/intel/issues/7916
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8383]: https://gitlab.freedesktop.org/drm/intel/issues/8383
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8397]: https://gitlab.freedesktop.org/drm/intel/issues/8397


Build changes
-------------

  * Linux: CI_DRM_13071 -> Patchwork_116957v3

  CI-20190529: 20190529
  CI_DRM_13071: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7273: f40ef4b058466219968b7792d22ff0648b82396b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116957v3: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4794ebe681d1 drm/i915/selftest: Update the SLPC selftest
3e9db6645c0c drm/i915/guc/slpc: Provide sysfs for efficient freq

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/index.html

--===============8683189298000670576==
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
<tr><td><b>Series:</b></td><td>series starting with [v6,1/2] drm/i915/guc/slpc: Provide sysfs for efficient freq (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116957/">https://patchwork.freedesktop.org/series/116957/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13071 -&gt; Patchwork_116957v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116957v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8383">i915#8383</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7916">i915#7916</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/bat-adln-1/igt@i915_selftest@live@slpc.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13071/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v3/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8397">i915#8397</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13071 -&gt; Patchwork_116957v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13071: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7273: f40ef4b058466219968b7792d22ff0648b82396b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116957v3: b9458e7075652669ec0e04abe039a5ed001701fe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4794ebe681d1 drm/i915/selftest: Update the SLPC selftest<br />
3e9db6645c0c drm/i915/guc/slpc: Provide sysfs for efficient freq</p>

</body>
</html>

--===============8683189298000670576==--
