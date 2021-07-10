Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D00F3C32C5
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 06:26:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597946EAD0;
	Sat, 10 Jul 2021 04:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9F9D6EACC;
 Sat, 10 Jul 2021 04:26:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BBB3FA8169;
 Sat, 10 Jul 2021 04:26:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 10 Jul 2021 04:26:38 -0000
Message-ID: <162589119874.15856.7491036052236429984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTWlu?=
 =?utf-8?q?or_revid/stepping_and_workaround_cleanup_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0530598304=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0530598304==
Content-Type: multipart/alternative;
 boundary="===============2483281656169303982=="

--===============2483281656169303982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Minor revid/stepping and workaround cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/92299/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10329 -> Patchwork_20568
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/index.html

Known issues
------------

  Here are the changes found in Patchwork_20568 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][1] ([i915#1372]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-ilk-650:         [FAIL][3] ([i915#3744]) -> [FAIL][4] ([i915#2426])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-ilk-650/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/fi-ilk-650/igt@runner@aborted.html

  
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744


Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10329 -> Patchwork_20568

  CI-20190529: 20190529
  CI_DRM_10329: 2c76b98f510f1e4284285813024bc4cbba6a776e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20568: 4fbd5e59cb1093058dccbe32b3d37ba24a5d4219 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4fbd5e59cb10 drm/i915/icl: Drop workarounds that only apply to pre-production steppings
febbb9864d60 drm/i915/cnl: Drop all workarounds
36d6af0814ee drm/i915/dg1: Use revid->stepping tables
c53e1e6ba585 drm/i915/rkl: Use revid->stepping tables
fc2b6164fa50 drm/i915/jsl_ehl: Use revid->stepping tables
db965751e531 drm/i915/icl: Use revid->stepping tables
c506016c4648 drm/i915/glk: Use revid->stepping tables
2ee48fd0d6f6 drm/i915/bxt: Use revid->stepping tables
02447a87c0cc drm/i915/kbl: Drop pre-production revision from stepping table
f260bb283918 drm/i915/skl: Use revid->stepping tables
023cab2a2100 drm/i915: Make pre-production detection use direct revid comparison
602f2fe49dc0 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/index.html

--===============2483281656169303982==
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
<tr><td><b>Series:</b></td><td>Minor revid/stepping and workaround cleanup (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92299/">https://patchwork.freedesktop.org/series/92299/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10329 -&gt; Patchwork_20568</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20568 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10329/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20568/fi-ilk-650/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10329 -&gt; Patchwork_20568</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10329: 2c76b98f510f1e4284285813024bc4cbba6a776e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6134: cd63c83e23789eb194d38b8d272247a88122f2f6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20568: 4fbd5e59cb1093058dccbe32b3d37ba24a5d4219 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4fbd5e59cb10 drm/i915/icl: Drop workarounds that only apply to pre-production steppings<br />
febbb9864d60 drm/i915/cnl: Drop all workarounds<br />
36d6af0814ee drm/i915/dg1: Use revid-&gt;stepping tables<br />
c53e1e6ba585 drm/i915/rkl: Use revid-&gt;stepping tables<br />
fc2b6164fa50 drm/i915/jsl_ehl: Use revid-&gt;stepping tables<br />
db965751e531 drm/i915/icl: Use revid-&gt;stepping tables<br />
c506016c4648 drm/i915/glk: Use revid-&gt;stepping tables<br />
2ee48fd0d6f6 drm/i915/bxt: Use revid-&gt;stepping tables<br />
02447a87c0cc drm/i915/kbl: Drop pre-production revision from stepping table<br />
f260bb283918 drm/i915/skl: Use revid-&gt;stepping tables<br />
023cab2a2100 drm/i915: Make pre-production detection use direct revid comparison<br />
602f2fe49dc0 drm/i915/step: s/<platform>_revid_tbl/<platform>_revids</p>

</body>
</html>

--===============2483281656169303982==--

--===============0530598304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0530598304==--
