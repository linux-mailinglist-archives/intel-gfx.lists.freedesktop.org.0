Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A569740AB9D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 12:26:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC576E463;
	Tue, 14 Sep 2021 10:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46E996E462;
 Tue, 14 Sep 2021 10:26:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E46BA73C9;
 Tue, 14 Sep 2021 10:26:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0960834239878077257=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 10:26:36 -0000
Message-ID: <163161519621.3457.5260271105360180313@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914085033.2833993-1-matthew.auld@intel.com>
In-Reply-To: <20210914085033.2833993-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/7=5D_drm/i915/gem=3A_Break_out_some?=
 =?utf-8?q?_shmem_backend_utils?=
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

--===============0960834239878077257==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/7] drm/i915/gem: Break out some shmem backend utils
URL   : https://patchwork.freedesktop.org/series/94648/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10579 -> Patchwork_21037
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21037 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21037, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21037:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - bat-dg1-5:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@gem_exec_suspend@basic-s3.html

  * igt@runner@aborted:
    - bat-dg1-5:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21037 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([i915#2582]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@fbdev@info.html

  * igt@gem_exec_gttfill@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][4] ([i915#4086])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@gem_exec_gttfill@basic.html

  
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#4086]: https://gitlab.freedesktop.org/drm/intel/issues/4086


Participating hosts (39 -> 38)
------------------------------

  Additional (1): bat-dg1-5 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10579 -> Patchwork_21037

  CI-20190529: 20190529
  CI_DRM_10579: a83151fa02e8d3e90729db21ee0e3830ff8c9565 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21037: dba19f313885f552e2cdd7df3c3a267618329722 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dba19f313885 drm/i915/ttm: enable shmem tt backend
f2013b99cd76 drm/i915/ttm: make evicted shmem pages visible to the shrinker
3eb4ab240a73 drm/i915: try to simplify make_{un}shrinkable
89087b82443e drm/i915/ttm: use cached system pages when evicting lmem
56dd3266c291 drm/i915/ttm: add tt shmem backend
5e8ae127a95f drm/ttm: add TTM_PAGE_FLAG_SHMEM
d3fcbc14d6ee drm/i915/gem: Break out some shmem backend utils

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/index.html

--===============0960834239878077257==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/7] drm/i915/gem: Break out some shmem backend utils</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94648/">https://patchwork.freedesktop.org/series/94648/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10579 -&gt; Patchwork_21037</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21037 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21037, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21037:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21037 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21037/bat-dg1-5/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4086">i915#4086</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): bat-dg1-5 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10579 -&gt; Patchwork_21037</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10579: a83151fa02e8d3e90729db21ee0e3830ff8c9565 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21037: dba19f313885f552e2cdd7df3c3a267618329722 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>dba19f313885 drm/i915/ttm: enable shmem tt backend<br />
f2013b99cd76 drm/i915/ttm: make evicted shmem pages visible to the shrinker<br />
3eb4ab240a73 drm/i915: try to simplify make_{un}shrinkable<br />
89087b82443e drm/i915/ttm: use cached system pages when evicting lmem<br />
56dd3266c291 drm/i915/ttm: add tt shmem backend<br />
5e8ae127a95f drm/ttm: add TTM_PAGE_FLAG_SHMEM<br />
d3fcbc14d6ee drm/i915/gem: Break out some shmem backend utils</p>

</body>
</html>

--===============0960834239878077257==--
