Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 928CC30481E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 20:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B479891A8;
	Tue, 26 Jan 2021 19:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5AFF891A8;
 Tue, 26 Jan 2021 19:22:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBA24A8169;
 Tue, 26 Jan 2021 19:22:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 26 Jan 2021 19:22:01 -0000
Message-ID: <161168892186.9813.13654781417607027612@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126103019.177622-1-matthew.auld@intel.com>
In-Reply-To: <20210126103019.177622-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/buddy=3A_document_the_unused_header_bits_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1597624132=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1597624132==
Content-Type: multipart/alternative;
 boundary="===============1039987559018166322=="

--===============1039987559018166322==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/buddy: document the unused header bits (rev2)
URL   : https://patchwork.freedesktop.org/series/86189/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9684 -> Patchwork_19503
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/index.html

Known issues
------------

  Here are the changes found in Patchwork_19503 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [DMESG-WARN][5] ([i915#2605]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/fi-kbl-7500u/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#3004]: https://gitlab.freedesktop.org/drm/intel/issues/3004
  [i915#3005]: https://gitlab.freedesktop.org/drm/intel/issues/3005
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 


Build changes
-------------

  * Linux: CI_DRM_9684 -> Patchwork_19503

  CI-20190529: 20190529
  CI_DRM_9684: 53a183b40b798192f7211b05d550c8145d1397b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5972: 82fa6021821edb5d9609f4cce213920e0936d6f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19503: b92d1aace7d4bb896110e1ed8ddbac49f0617a49 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b92d1aace7d4 drm/i915/buddy: document the unused header bits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/index.html

--===============1039987559018166322==
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
<tr><td><b>Series:</b></td><td>drm/i915/buddy: document the unused header bits (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86189/">https://patchwork.freedesktop.org/series/86189/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9684 -&gt; Patchwork_19503</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19503 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19503/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9684 -&gt; Patchwork_19503</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9684: 53a183b40b798192f7211b05d550c8145d1397b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5972: 82fa6021821edb5d9609f4cce213920e0936d6f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19503: b92d1aace7d4bb896110e1ed8ddbac49f0617a49 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b92d1aace7d4 drm/i915/buddy: document the unused header bits</p>

</body>
</html>

--===============1039987559018166322==--

--===============1597624132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1597624132==--
