Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891763EA2F7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 12:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 234256E3D8;
	Thu, 12 Aug 2021 10:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3190A6E3D6;
 Thu, 12 Aug 2021 10:28:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 275CFAA917;
 Thu, 12 Aug 2021 10:28:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7604116195909419259=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ayaz A Siddiqui" <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 10:28:36 -0000
Message-ID: <162876411612.21761.14531019249045983386@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
In-Reply-To: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Initialize_unused_MOCS_entries_to_L3=5FWB?=
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

--===============7604116195909419259==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Initialize unused MOCS entries to L3_WB
URL   : https://patchwork.freedesktop.org/series/93626/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10473 -> Patchwork_20801
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20801 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20801, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20801:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10473/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html

  


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10473 -> Patchwork_20801

  CI-20190529: 20190529
  CI_DRM_10473: 1603b5ab0a40191b8d840ea4bf20021786322dbe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6171: 975035ac89d3d092e9b5d83e259c0c5dee7fcfdc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20801: 4f3306739a7e9c2c2d7a6df1346fa874f95c11fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4f3306739a7e drm/i95/adl: Define MOCS table for Alderlake
702829c25d98 drm/i915/gt: Initialize unused MOCS entries with device specific values
fd32a98d8b4f drm/i915/gt: Set BLIT_CCTL reg to un-cached
ee1214c8eb4d drm/i915/gt: Use cmd_cctl override for platforms >= gen12
ea863ae02268 drm/i915/gt: Add support of mocs propagation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/index.html

--===============7604116195909419259==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Initialize unused MOCS entries to L3_WB</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93626/">https://patchwork.freedesktop.org/series/93626/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10473 -&gt; Patchwork_20801</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20801 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20801, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20801:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10473/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20801/fi-rkl-guc/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10473 -&gt; Patchwork_20801</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10473: 1603b5ab0a40191b8d840ea4bf20021786322dbe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6171: 975035ac89d3d092e9b5d83e259c0c5dee7fcfdc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20801: 4f3306739a7e9c2c2d7a6df1346fa874f95c11fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4f3306739a7e drm/i95/adl: Define MOCS table for Alderlake<br />
702829c25d98 drm/i915/gt: Initialize unused MOCS entries with device specific values<br />
fd32a98d8b4f drm/i915/gt: Set BLIT_CCTL reg to un-cached<br />
ee1214c8eb4d drm/i915/gt: Use cmd_cctl override for platforms &gt;= gen12<br />
ea863ae02268 drm/i915/gt: Add support of mocs propagation</p>

</body>
</html>

--===============7604116195909419259==--
