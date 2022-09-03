Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6675ABBD2
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 02:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C96F710E262;
	Sat,  3 Sep 2022 00:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89CEA10E262;
 Sat,  3 Sep 2022 00:33:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FA8CAAA91;
 Sat,  3 Sep 2022 00:33:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5259514329056222342=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Sat, 03 Sep 2022 00:33:50 -0000
Message-ID: <166216523048.27813.6779857494203876004@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
In-Reply-To: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_freq_caps_and_perf=5Flimit=5Freasons_changes_for_MTL?=
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

--===============5259514329056222342==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: freq caps and perf_limit_reasons changes for MTL
URL   : https://patchwork.freedesktop.org/series/108091/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12067 -> Patchwork_108091v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/index.html

Participating hosts (32 -> 31)
------------------------------

  Additional (1): bat-jsl-3 
  Missing    (2): fi-bdw-samus bat-dg1-5 

Known issues
------------

  Here are the changes found in Patchwork_108091v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-9}:        [FAIL][3] ([i915#5886]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-dg2-9/igt@gem_ringfill@basic-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/bat-dg2-9/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][5] ([i915#6367]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5886]: https://gitlab.freedesktop.org/drm/intel/issues/5886
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12067 -> Patchwork_108091v1

  CI-20190529: 20190529
  CI_DRM_12067: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108091v1: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5dcc92421f3d drm/i915/rps: Freq caps for MTL
5a08a51c0dd1 drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL
99b049de3c88 drm/i915/debugfs: Add perf_limit_reasons in debugfs
623f6a52a845 drm/i915/xelpmp: Expose media as another GT
433ee1ddd8f6 drm/i915: Rename and expose common GT early init routine
cc329daf3c47 drm/i915: Prepare more multi-GT initialization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/index.html

--===============5259514329056222342==
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
<tr><td><b>Series:</b></td><td>i915: freq caps and perf_limit_reasons changes for MTL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108091/">https://patchwork.freedesktop.org/series/108091/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12067 -&gt; Patchwork_108091v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/index.html</p>
<h2>Participating hosts (32 -&gt; 31)</h2>
<p>Additional (1): bat-jsl-3 <br />
  Missing    (2): fi-bdw-samus bat-dg1-5 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108091v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-dg2-9/igt@gem_ringfill@basic-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5886">i915#5886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/bat-dg2-9/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12067/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108091v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12067 -&gt; Patchwork_108091v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12067: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6642: c018ce1d1ab8e570f665cf5d58c9802a44d66cc1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108091v1: d7a4dd8aada1f62a680ecded0719199619eff752 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5dcc92421f3d drm/i915/rps: Freq caps for MTL<br />
5a08a51c0dd1 drm/i915/mtl: PERF_LIMIT_REASONS changes for MTL<br />
99b049de3c88 drm/i915/debugfs: Add perf_limit_reasons in debugfs<br />
623f6a52a845 drm/i915/xelpmp: Expose media as another GT<br />
433ee1ddd8f6 drm/i915: Rename and expose common GT early init routine<br />
cc329daf3c47 drm/i915: Prepare more multi-GT initialization</p>

</body>
</html>

--===============5259514329056222342==--
