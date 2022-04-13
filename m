Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1454FF799
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 15:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B9C10F0E5;
	Wed, 13 Apr 2022 13:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91FB810F0E6;
 Wed, 13 Apr 2022 13:27:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90E07AA0EB;
 Wed, 13 Apr 2022 13:27:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7111277394887088400=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Wed, 13 Apr 2022 13:27:33 -0000
Message-ID: <164985645356.28393.15769967526953215771@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1ND?=
 =?utf-8?q?_support_=28rev5=29?=
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

--===============7111277394887088400==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support (rev5)
URL   : https://patchwork.freedesktop.org/series/102160/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11493 -> Patchwork_102160v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/index.html

Participating hosts (48 -> 48)
------------------------------

  Additional (2): bat-hsw-1 fi-pnv-d510 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_102160v5:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@verify-random:
    - {bat-dg2-9}:        NOTRUN -> [SKIP][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html
    - {bat-hsw-1}:        NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-hsw-1/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_module_load@reload:
    - {bat-dg2-9}:        [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11493/bat-dg2-9/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-dg2-9/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hugepages:
    - {bat-dg2-9}:        NOTRUN -> [FAIL][5] +34 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-dg2-9/igt@i915_selftest@live@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_102160v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +39 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][7] ([i915#2927] / [i915#4528])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#5341])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][9] ([fdo#109271] / [i915#2403] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][10] ([i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][11] ([i915#4785]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11493/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][13] ([i915#3576]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11493/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5535]: https://gitlab.freedesktop.org/drm/intel/issues/5535
  [i915#5606]: https://gitlab.freedesktop.org/drm/intel/issues/5606
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608


Build changes
-------------

  * Linux: CI_DRM_11493 -> Patchwork_102160v5

  CI-20190529: 20190529
  CI_DRM_11493: 83f019abc2a24a2753dea6eb4416a8210c79adf1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102160v5: 102160v5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

25e57dec1ceb HAX: drm/i915: force INTEL_MEI_GSC on for CI
9cc10a777352 mei: gsc: retrieve the firmware version
3336781b5db1 mei: gsc: add runtime pm handlers
2d20b1296a78 mei: gsc: setup char driver alive in spite of firmware handshake failure
448a0146c618 mei: add support for graphics system controller (gsc) devices
4398ffbbb0df drm/i915/gsc: add gsc as a mei auxiliary device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/index.html

--===============7111277394887088400==
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
<tr><td><b>Series:</b></td><td>GSC support (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102160/">https://patchwork.freedesktop.org/series/102160/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11493 -&gt; Patchwork_102160v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/index.html</p>
<h2>Participating hosts (48 -&gt; 48)</h2>
<p>Additional (2): bat-hsw-1 fi-pnv-d510 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_102160v5:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>{bat-hsw-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-hsw-1/igt@gem_lmem_swapping@verify-random.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11493/bat-dg2-9/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-dg2-9/igt@i915_module_load@reload.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-dg2-9/igt@i915_selftest@live@hugepages.html">FAIL</a> +34 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102160v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11493/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11493/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102160v5/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11493 -&gt; Patchwork_102160v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11493: 83f019abc2a24a2753dea6eb4416a8210c79adf1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6420: a3885810ccc0ce9e6552a20c910a0a322eca466c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102160v5: 102160v5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>25e57dec1ceb HAX: drm/i915: force INTEL_MEI_GSC on for CI<br />
9cc10a777352 mei: gsc: retrieve the firmware version<br />
3336781b5db1 mei: gsc: add runtime pm handlers<br />
2d20b1296a78 mei: gsc: setup char driver alive in spite of firmware handshake failure<br />
448a0146c618 mei: add support for graphics system controller (gsc) devices<br />
4398ffbbb0df drm/i915/gsc: add gsc as a mei auxiliary device</p>

</body>
</html>

--===============7111277394887088400==--
