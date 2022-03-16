Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DBD4DA704
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 01:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1275710E15A;
	Wed, 16 Mar 2022 00:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25DE410E159;
 Wed, 16 Mar 2022 00:41:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 227B6A882E;
 Wed, 16 Mar 2022 00:41:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2116257040155491567=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 16 Mar 2022 00:41:13 -0000
Message-ID: <164739127310.29207.14060706068524529887@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315233856.30255-1-manasi.d.navare@intel.com>
In-Reply-To: <20220315233856.30255-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/=3A_Refactor_hsw=5Fcrtc=5Fenable_for_bigjoiner_cl?=
 =?utf-8?q?eanup?=
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

--===============2116257040155491567==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/: Refactor hsw_crtc_enable for bigjoiner cleanup
URL   : https://patchwork.freedesktop.org/series/101409/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11365 -> Patchwork_22580
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/index.html

Participating hosts (48 -> 39)
------------------------------

  Additional (1): bat-dg2-8 
  Missing    (10): shard-tglu bat-dg1-6 fi-hsw-4200u bat-dg2-9 fi-bsw-cyan fi-ctg-p8600 bat-rpls-1 shard-rkl shard-dg1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22580:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-8}:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - {bat-dg2-8}:        NOTRUN -> [SKIP][2] +22 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
Known issues
------------

  Here are the changes found in Patchwork_22580 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#2403] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/fi-blb-e6850/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][6] ([i915#2426] / [i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - {bat-rpls-2}:       [DMESG-WARN][7] ([i915#4391]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-rpls-2/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-rpls-2/igt@i915_selftest@live@migrate.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][9] ([i915#3576]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342


Build changes
-------------

  * Linux: CI_DRM_11365 -> Patchwork_22580

  CI-20190529: 20190529
  CI_DRM_11365: 5a27c2b120b176a313edbea33224847ea76d6c21 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6382: a6a5a178cb1cbe0dab8d8d092a4aee932ccb93cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22580: b583d9b8b5cc13a13fbb5342c11f8fe6f1a2d967 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b583d9b8b5cc drm/i915/display/: Refactor hsw_crtc_enable for bigjoiner cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/index.html

--===============2116257040155491567==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/: Refactor hsw_crtc_enable for bigjoiner cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101409/">https://patchwork.freedesktop.org/series/101409/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11365 -&gt; Patchwork_22580</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/index.html</p>
<h2>Participating hosts (48 -&gt; 39)</h2>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (10): shard-tglu bat-dg1-6 fi-hsw-4200u bat-dg2-9 fi-bsw-cyan fi-ctg-p8600 bat-rpls-1 shard-rkl shard-dg1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22580:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-dg2-8/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> +22 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22580 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-rpls-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-rpls-2/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11365/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22580/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11365 -&gt; Patchwork_22580</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11365: 5a27c2b120b176a313edbea33224847ea76d6c21 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6382: a6a5a178cb1cbe0dab8d8d092a4aee932ccb93cc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22580: b583d9b8b5cc13a13fbb5342c11f8fe6f1a2d967 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b583d9b8b5cc drm/i915/display/: Refactor hsw_crtc_enable for bigjoiner cleanup</p>

</body>
</html>

--===============2116257040155491567==--
