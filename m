Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9420042B29D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 04:27:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC3C6E063;
	Wed, 13 Oct 2021 02:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CDA116E05F;
 Wed, 13 Oct 2021 02:27:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C614BAA0EA;
 Wed, 13 Oct 2021 02:27:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3310813929872043835=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Oct 2021 02:27:14 -0000
Message-ID: <163409203477.10251.845363347828581121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211013005625.54770-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20211013005625.54770-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Add_a_name_to_the_e?=
 =?utf-8?q?xeclists_stats?=
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

--===============3310813929872043835==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/pmu: Add a name to the execlists stats
URL   : https://patchwork.freedesktop.org/series/95750/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10728 -> Patchwork_21325
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21325 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21325, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21325:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/fi-rkl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/fi-rkl-guc/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/fi-rkl-guc/igt@runner@aborted.html

  


Participating hosts (41 -> 2)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_21325 prevented too many machines from booting.

  Missing    (39): fi-kbl-soraka fi-rkl-11600 fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-icl-y fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-ilk-m540 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-hsw-gt1 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 


Build changes
-------------

  * Linux: CI_DRM_10728 -> Patchwork_21325

  CI-20190529: 20190529
  CI_DRM_10728: 82a9f298afec66c882e710078138891826ce5e22 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6242: 721fd85ee95225ed5df322f7182bdfa9b86a3e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21325: 1fa082d603c915029148c7c034a3f4a2f9258d03 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1fa082d603c9 drm/i915/pmu: Connect engine busyness stats from GuC to pmu
d9aca49cd0a6 drm/i915/pmu: Add a name to the execlists stats

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/index.html

--===============3310813929872043835==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/pmu: Add a name to the execlists stats</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95750/">https://patchwork.freedesktop.org/series/95750/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10728 -&gt; Patchwork_21325</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21325 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21325, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21325:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10728/fi-rkl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/fi-rkl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21325/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 2)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_21325 prevented too many machines from booting.</p>
<p>Missing    (39): fi-kbl-soraka fi-rkl-11600 fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-pnv-d510 fi-icl-y fi-skl-6600u fi-snb-2600 fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-glk-dsi fi-bwr-2160 fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-kbl-7567u fi-ilk-m540 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-hsw-gt1 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10728 -&gt; Patchwork_21325</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10728: 82a9f298afec66c882e710078138891826ce5e22 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6242: 721fd85ee95225ed5df322f7182bdfa9b86a3e68 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21325: 1fa082d603c915029148c7c034a3f4a2f9258d03 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1fa082d603c9 drm/i915/pmu: Connect engine busyness stats from GuC to pmu<br />
d9aca49cd0a6 drm/i915/pmu: Add a name to the execlists stats</p>

</body>
</html>

--===============3310813929872043835==--
