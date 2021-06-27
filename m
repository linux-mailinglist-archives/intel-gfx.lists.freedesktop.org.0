Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B45A53B55D9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 01:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72BF6E087;
	Sun, 27 Jun 2021 23:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 598406E087;
 Sun, 27 Jun 2021 23:39:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52A8CA7DFB;
 Sun, 27 Jun 2021 23:39:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Sun, 27 Jun 2021 23:39:30 -0000
Message-ID: <162483717031.7296.10980429155676884317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210627231439.138612-1-matthew.brost@intel.com>
In-Reply-To: <20210627231439.138612-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ1Qg?=
 =?utf-8?q?changes_required_for_GuC_submission?=
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
Content-Type: multipart/mixed; boundary="===============1342675122=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1342675122==
Content-Type: multipart/alternative;
 boundary="===============8296414169821564259=="

--===============8296414169821564259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CT changes required for GuC submission
URL   : https://patchwork.freedesktop.org/series/91943/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10282 -> Patchwork_20474
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/index.html

Known issues
------------

  Here are the changes found in Patchwork_20474 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - {fi-tgl-1115g4}:    [DMESG-WARN][2] ([i915#2867]) -> [PASS][3] +14 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10282/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-x1275 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10282 -> Patchwork_20474

  CI-20190529: 20190529
  CI_DRM_10282: 67f5a18128770817e4218a9e496d2bf5047c51e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20474: 8dbeeecc18bfe993044da10dd04268fbac31c637 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8dbeeecc18bf drm/i915/guc: Module load failure test for CT buffer creation
609b9d9541a4 drm/i915/guc: Optimize CTB writes and reads
af75da893bfe drm/i915/guc: Add stall timer to non blocking CTB send function
3a1d54d48cfe drm/i915/guc: Add non blocking CTB send function
7ed4a3e0276a drm/i915/guc: Increase size of CTB buffers
9074da160af0 drm/i915/guc: Improve error message for unsolicited CT response
4de6bd659c01 drm/i915/guc: Relax CTB response timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/index.html

--===============8296414169821564259==
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
<tr><td><b>Series:</b></td><td>CT changes required for GuC submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91943/">https://patchwork.freedesktop.org/series/91943/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10282 -&gt; Patchwork_20474</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20474 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@amdgpu/amd_basic@cs-gfx:<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10282/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20474/fi-tgl-1115g4/igt@i915_selftest@live@gt_mocs.html">PASS</a> +14 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-kbl-x1275 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10282 -&gt; Patchwork_20474</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10282: 67f5a18128770817e4218a9e496d2bf5047c51e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6119: a306810ebbc8984bde38a57ef0c33eea394f4e18 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20474: 8dbeeecc18bfe993044da10dd04268fbac31c637 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8dbeeecc18bf drm/i915/guc: Module load failure test for CT buffer creation<br />
609b9d9541a4 drm/i915/guc: Optimize CTB writes and reads<br />
af75da893bfe drm/i915/guc: Add stall timer to non blocking CTB send function<br />
3a1d54d48cfe drm/i915/guc: Add non blocking CTB send function<br />
7ed4a3e0276a drm/i915/guc: Increase size of CTB buffers<br />
9074da160af0 drm/i915/guc: Improve error message for unsolicited CT response<br />
4de6bd659c01 drm/i915/guc: Relax CTB response timeout</p>

</body>
</html>

--===============8296414169821564259==--

--===============1342675122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1342675122==--
