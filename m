Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1FE3E528E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 07:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3044D89CB3;
	Tue, 10 Aug 2021 05:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E55489CA0;
 Tue, 10 Aug 2021 05:10:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38BD1A7E03;
 Tue, 10 Aug 2021 05:10:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8472881463306701472=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Aug 2021 05:10:54 -0000
Message-ID: <162857225422.29683.13097975678459111421@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210809194805.3793060-1-lucas.demarchi@intel.com>
In-Reply-To: <20210809194805.3793060-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Free_all_DMC_payloads_=28rev2=29?=
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

--===============8472881463306701472==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Free all DMC payloads (rev2)
URL   : https://patchwork.freedesktop.org/series/93521/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10462 -> Patchwork_20790
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/index.html

Known issues
------------

  Here are the changes found in Patchwork_20790 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-rkl-11600:       [PASS][1] -> [SKIP][2] ([fdo#111825])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10462/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +48 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [INCOMPLETE][4] ([i915#299]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10462/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [DMESG-WARN][6] -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10462/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10462 -> Patchwork_20790

  CI-20190529: 20190529
  CI_DRM_10462: 1ab8dc433360478c35eba12661f1dd9327588830 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6163: 9f9d82df8c8e68c304e84aba717a9937b65e10e6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20790: 6af2cfb574c5ad55400b5af104a8477ab8715817 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6af2cfb574c5 drm/i915: Free all DMC payloads

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/index.html

--===============8472881463306701472==
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
<tr><td><b>Series:</b></td><td>drm/i915: Free all DMC payloads (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93521/">https://patchwork.freedesktop.org/series/93521/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10462 -&gt; Patchwork_20790</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20790 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10462/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10462/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10462/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20790/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10462 -&gt; Patchwork_20790</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10462: 1ab8dc433360478c35eba12661f1dd9327588830 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6163: 9f9d82df8c8e68c304e84aba717a9937b65e10e6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20790: 6af2cfb574c5ad55400b5af104a8477ab8715817 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6af2cfb574c5 drm/i915: Free all DMC payloads</p>

</body>
</html>

--===============8472881463306701472==--
