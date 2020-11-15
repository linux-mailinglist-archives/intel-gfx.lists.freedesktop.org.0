Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5D62B372A
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 18:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9ACA6E9AF;
	Sun, 15 Nov 2020 17:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D02C6E9A1;
 Sun, 15 Nov 2020 17:33:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E123CA882F;
 Sun, 15 Nov 2020 17:33:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Nov 2020 17:33:49 -0000
Message-ID: <160546162988.9578.7130169500918773445@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201115153139.24369-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201115153139.24369-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm=3A_convert_drm=5Fatomic=5Fuapi=2Ec_to_new_debug_help?=
 =?utf-8?q?ers=22?=
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
Content-Type: multipart/mixed; boundary="===============0379012913=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0379012913==
Content-Type: multipart/alternative;
 boundary="===============0756854522964457975=="

--===============0756854522964457975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm: convert drm_atomic_uapi.c to new debug helpers"
URL   : https://patchwork.freedesktop.org/series/83856/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9327_full -> Patchwork_18908_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18908_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18908_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18908_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-kbl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_userptr_blits@vma-merge}:
    - shard-snb:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-snb5/igt@gem_userptr_blits@vma-merge.html
    - shard-hsw:          NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-hsw4/igt@gem_userptr_blits@vma-merge.html

  * {igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile}:
    - shard-kbl:          NOTRUN -> [FAIL][5] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9327_full and Patchwork_18908_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Participating hosts (12 -> 10)
------------------------------

  Missing    (2): pig-snb-2600 pig-icl-1065g7 


Build changes
-------------

  * CI: None -> CI-20190529
  * Linux: CI_DRM_9327 -> Patchwork_18908

  CI-20190529: 20190529
  CI_DRM_9327: af383973ac39069d9ffcac0287a896a107005d54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18908: d8ecccff711fab11259b12e95ca7eb070f9c5c04 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/index.html

--===============0756854522964457975==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm: convert drm_atomic_uapi.c to new debug helpers&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83856/">https://patchwork.freedesktop.org/series/83856/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9327_full -&gt; Patchwork_18908_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18908_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18908_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18908_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-kbl4/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_userptr_blits@vma-merge}:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-snb5/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
<li>
<p>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-hsw4/igt@gem_userptr_blits@vma-merge.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile}:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18908/shard-kbl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9327_full and Patchwork_18908_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (12 -&gt; 10)</h2>
<p>Missing    (2): pig-snb-2600 pig-icl-1065g7 </p>
<h2>Build changes</h2>
<ul>
<li>CI: None -&gt; CI-20190529</li>
<li>Linux: CI_DRM_9327 -&gt; Patchwork_18908</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9327: af383973ac39069d9ffcac0287a896a107005d54 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5850: 9748a4a0f93d108955d374a866e60cb962da9b5d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18908: d8ecccff711fab11259b12e95ca7eb070f9c5c04 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0756854522964457975==--

--===============0379012913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0379012913==--
