Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB52D4E4F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 23:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B33E86E217;
	Wed,  9 Dec 2020 22:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57EE56E1F7;
 Wed,  9 Dec 2020 22:48:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 528A4A882F;
 Wed,  9 Dec 2020 22:48:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luben Tuikov" <Luben.Tuikov@amd.com>
Date: Wed, 09 Dec 2020 22:48:59 -0000
Message-ID: <160755413931.4256.765622013621060455@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201209210211.306f3c61@canb.auug.org.au>
In-Reply-To: <20201209210211.306f3c61@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/sched=3A_Add_missing_structure_comment?=
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
Content-Type: multipart/mixed; boundary="===============0302314509=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0302314509==
Content-Type: multipart/alternative;
 boundary="===============3597281635010330234=="

--===============3597281635010330234==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/sched: Add missing structure comment
URL   : https://patchwork.freedesktop.org/series/84746/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9465 -> Patchwork_19097
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/index.html

Known issues
------------

  Here are the changes found in Patchwork_19097 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +22 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][5] -> [FAIL][6] ([i915#579])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][7] ([i915#1888]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#402]) -> [PASS][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9465 -> Patchwork_19097

  CI-20190529: 20190529
  CI_DRM_9465: 5e7767ff97719d9a32ce4f69757d2f4ee1164baa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19097: 119af94aa305c82ae8a47fd5770e920e26b65293 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

119af94aa305 drm/sched: Add missing structure comment

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/index.html

--===============3597281635010330234==
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
<tr><td><b>Series:</b></td><td>drm/sched: Add missing structure comment</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84746/">https://patchwork.freedesktop.org/series/84746/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9465 -&gt; Patchwork_19097</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19097 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9465/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19097/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9465 -&gt; Patchwork_19097</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9465: 5e7767ff97719d9a32ce4f69757d2f4ee1164baa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19097: 119af94aa305c82ae8a47fd5770e920e26b65293 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>119af94aa305 drm/sched: Add missing structure comment</p>

</body>
</html>

--===============3597281635010330234==--

--===============0302314509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0302314509==--
