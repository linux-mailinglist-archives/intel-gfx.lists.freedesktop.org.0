Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F929334063
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 15:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5B26EA36;
	Wed, 10 Mar 2021 14:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB9EA6EA35;
 Wed, 10 Mar 2021 14:31:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4953A7DFC;
 Wed, 10 Mar 2021 14:31:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christophe Leroy" <christophe.leroy@csgroup.eu>
Date: Wed, 10 Mar 2021 14:31:46 -0000
Message-ID: <161538670684.2311.16420858809639226524@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <25459896a398909d195fd5eb3d82ca1acb07b783.1615381467.git.christophe.leroy@csgroup.eu>
In-Reply-To: <25459896a398909d195fd5eb3d82ca1acb07b783.1615381467.git.christophe.leroy@csgroup.eu>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Use_user=5Fwrite=5Faccess=5Fbegin=28=29_instead_of?=
 =?utf-8?q?_user=5Faccess=5Fbegin=28=29?=
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
Content-Type: multipart/mixed; boundary="===============1034512516=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1034512516==
Content-Type: multipart/alternative;
 boundary="===============1658707583011052679=="

--===============1658707583011052679==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Use user_write_access_begin() instead of user_access_begin()
URL   : https://patchwork.freedesktop.org/series/87834/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9844 -> Patchwork_19772
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/index.html

Known issues
------------

  Here are the changes found in Patchwork_19772 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][2] ([i915#3159])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4] ([i915#2502] / [i915#3145]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][5] ([i915#3047]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-glk-dsi/igt@i915_selftest@live@client.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-glk-dsi/igt@i915_selftest@live@client.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9844 -> Patchwork_19772

  CI-20190529: 20190529
  CI_DRM_9844: 3108bcbbbf191b3b5e624f21348c306010725a02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6027: b8b3facdfbb99a0b9ef5f541a0ee7d6bca2aafea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19772: 33c3518f25314aef8221adffec37dae85e7a1efa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

33c3518f2531 drm/i915/gem: Use user_write_access_begin() instead of user_access_begin()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/index.html

--===============1658707583011052679==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Use user_write_access_begin() instead of user_access_begin()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87834/">https://patchwork.freedesktop.org/series/87834/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9844 -&gt; Patchwork_19772</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19772 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@client:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9844/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19772/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9844 -&gt; Patchwork_19772</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9844: 3108bcbbbf191b3b5e624f21348c306010725a02 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6027: b8b3facdfbb99a0b9ef5f541a0ee7d6bca2aafea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19772: 33c3518f25314aef8221adffec37dae85e7a1efa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>33c3518f2531 drm/i915/gem: Use user_write_access_begin() instead of user_access_begin()</p>

</body>
</html>

--===============1658707583011052679==--

--===============1034512516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1034512516==--
