Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FC567DB04
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 01:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599E010E15D;
	Fri, 27 Jan 2023 00:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B091710E15D;
 Fri, 27 Jan 2023 00:58:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD9C2AADEB;
 Fri, 27 Jan 2023 00:58:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5611433886213544511=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 27 Jan 2023 00:58:59 -0000
Message-ID: <167478113970.18992.7023879479610443634@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230127002842.3169194-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230127002842.3169194-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWxs?=
 =?utf-8?q?ow_error_capture_without_a_request_=26_fix_locking_issues_=28re?=
 =?utf-8?b?djQp?=
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

--===============5611433886213544511==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Allow error capture without a request & fix locking issues (rev4)
URL   : https://patchwork.freedesktop.org/series/113078/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12648 -> Patchwork_113078v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/index.html

Participating hosts (25 -> 23)
------------------------------

  Missing    (2): bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113078v4 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {bat-dg2-11}:       [INCOMPLETE][1] ([i915#7834]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12648/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][3] ([i915#6367]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12648/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7834]: https://gitlab.freedesktop.org/drm/intel/issues/7834
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932


Build changes
-------------

  * Linux: CI_DRM_12648 -> Patchwork_113078v4

  CI-20190529: 20190529
  CI_DRM_12648: 312e89088380562297f7b434d2c11c8e83bf7833 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7137: 5f7ea985ac0828bec5e1bbc101b7931bd7fb62e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113078v4: 312e89088380562297f7b434d2c11c8e83bf7833 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4c51691fcb52 drm/i915/guc: Rename GuC register state capture node to be more obvious
9a59841aa447 drm/i915/guc: Add a debug print on GuC triggered reset
5bd81a7db9a5 drm/i915/guc: Look for a guilty context when an engine reset fails
01213d0d64a1 drm/i915: Allow error capture of a pending request
8d6836debad4 drm/i915: Allow error capture without a request
52fcc1ce5427 drm/i915: Fix up locking around dumping requests lists
e99fff87cd5f drm/i915: Fix request ref counting during error capture & debugfs dump
3ed39a7f0239 drm/i915/guc: Fix locking when searching for a hung request

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/index.html

--===============5611433886213544511==
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
<tr><td><b>Series:</b></td><td>Allow error capture without a request &amp; fix locking issues (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113078/">https://patchwork.freedesktop.org/series/113078/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12648 -&gt; Patchwork_113078v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/index.html</p>
<h2>Participating hosts (25 -&gt; 23)</h2>
<p>Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113078v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12648/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7834">i915#7834</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12648/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113078v4/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12648 -&gt; Patchwork_113078v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12648: 312e89088380562297f7b434d2c11c8e83bf7833 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7137: 5f7ea985ac0828bec5e1bbc101b7931bd7fb62e3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113078v4: 312e89088380562297f7b434d2c11c8e83bf7833 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4c51691fcb52 drm/i915/guc: Rename GuC register state capture node to be more obvious<br />
9a59841aa447 drm/i915/guc: Add a debug print on GuC triggered reset<br />
5bd81a7db9a5 drm/i915/guc: Look for a guilty context when an engine reset fails<br />
01213d0d64a1 drm/i915: Allow error capture of a pending request<br />
8d6836debad4 drm/i915: Allow error capture without a request<br />
52fcc1ce5427 drm/i915: Fix up locking around dumping requests lists<br />
e99fff87cd5f drm/i915: Fix request ref counting during error capture &amp; debugfs dump<br />
3ed39a7f0239 drm/i915/guc: Fix locking when searching for a hung request</p>

</body>
</html>

--===============5611433886213544511==--
