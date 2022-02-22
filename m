Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFA14C049C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 23:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4488810E353;
	Tue, 22 Feb 2022 22:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 042ED10E353;
 Tue, 22 Feb 2022 22:27:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02192A0BCB;
 Tue, 22 Feb 2022 22:27:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2062761113257282640=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 22 Feb 2022 22:27:54 -0000
Message-ID: <164556887497.23044.12763528191169378942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_GPU_utilisation?=
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

--===============2062761113257282640==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Per client GPU utilisation
URL   : https://patchwork.freedesktop.org/series/100573/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11268 -> Patchwork_22353
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/index.html

Participating hosts (17 -> 17)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-icl-u2 

Known issues
------------

  Here are the changes found in Patchwork_22353 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +57 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][2] ([i915#4957]) -> [DMESG-FAIL][3] ([i915#4494] / [i915#4957])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * IGT: IGT_6352 -> IGTPW_6676
  * Linux: CI_DRM_11268 -> Patchwork_22353

  CI-20190529: 20190529
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6676: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6676/index.html
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22353: b59d2d62ff6a1c3eb398a800660160d1fcea4ecd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b59d2d62ff6a drm/i915: Expose client engine utilisation via fdinfo
6faab494e57c drm/i915: Count engine instances per uabi class
0fe4e24a7dfc drm: Document fdinfo format specification
6445df1214ca drm/i915: Track context current active time
75549faaa89a drm/i915: Track all user contexts per client
948073f81b11 drm/i915: Track runtime spent in closed and unreachable GEM contexts
943875459fa2 drm/i915: Make GEM contexts track DRM clients
399484ba5289 drm/i915: Explicitly track DRM clients

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/index.html

--===============2062761113257282640==
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
<tr><td><b>Series:</b></td><td>Per client GPU utilisation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100573/">https://patchwork.freedesktop.org/series/100573/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11268 -&gt; Patchwork_22353</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/index.html</p>
<h2>Participating hosts (17 -&gt; 17)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-icl-u2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22353 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-userptr:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11268/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22353/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6352 -&gt; IGTPW_6676</li>
<li>Linux: CI_DRM_11268 -&gt; Patchwork_22353</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11268: 26326bf05392ab3da8cba36642a0efec97f00da9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6676: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6676/index.html<br />
  IGT_6352: 11b4d227d8f0efad522519c8fd9525774247c8d8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22353: b59d2d62ff6a1c3eb398a800660160d1fcea4ecd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b59d2d62ff6a drm/i915: Expose client engine utilisation via fdinfo<br />
6faab494e57c drm/i915: Count engine instances per uabi class<br />
0fe4e24a7dfc drm: Document fdinfo format specification<br />
6445df1214ca drm/i915: Track context current active time<br />
75549faaa89a drm/i915: Track all user contexts per client<br />
948073f81b11 drm/i915: Track runtime spent in closed and unreachable GEM contexts<br />
943875459fa2 drm/i915: Make GEM contexts track DRM clients<br />
399484ba5289 drm/i915: Explicitly track DRM clients</p>

</body>
</html>

--===============2062761113257282640==--
