Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECEE4367DC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 18:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D1A6ECCA;
	Thu, 21 Oct 2021 16:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D93346ECC8;
 Thu, 21 Oct 2021 16:33:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D12A7A7DFB;
 Thu, 21 Oct 2021 16:33:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0422263646296921157=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 16:33:16 -0000
Message-ID: <163483399683.20173.307809183992947223@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021142627.31058-1-ramalingam.c@intel.com>
In-Reply-To: <20211021142627.31058-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev2=29?=
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

--===============0422263646296921157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev2)
URL   : https://patchwork.freedesktop.org/series/95686/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10770 -> Patchwork_21407
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21407 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21407, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21407:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-pnv-d510/igt@i915_selftest@live@gem.html

  
Known issues
------------

  Here are the changes found in Patchwork_21407 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-snb-2520m:       NOTRUN -> [SKIP][3] ([fdo#109271]) +37 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#2403] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312


Participating hosts (38 -> 8)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_21407 prevented too many machines from booting.

  Additional (1): fi-snb-2520m 
  Missing    (31): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 


Build changes
-------------

  * Linux: CI_DRM_10770 -> Patchwork_21407

  CI-20190529: 20190529
  CI_DRM_10770: 214e8b46143416c4a130cbaeea8430ad9fa19f63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21407: dd2578c083baf57fb6fbd219b904c1b2d8c992aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dd2578c083ba Doc/gpu/rfc/i915: i915 DG2 uAPI
05178dab38b0 drm/i915/Flat-CCS: Document on Flat-CCS memory compression
86bc18650b6c drm/i915/uapi: document behaviour for DG2 64K support
a25cd0cf423a uapi/drm/dg2: Format modifier for DG2 unified compression and clear color
6d6995163aa1 drm/i915/dg2: Tile 4 plane format support
39e9fd04a236 drm/i915/gt: Clear compress metadata for Xe_HP platforms
2287c2405ffa drm/i915/lmem: Enable lmem for platforms with Flat CCS
dc2516e13157 drm/i915/xehpsdv: Add has_flat_ccs to device info
08702a20cfb0 drm/i915/xehpsdv: implement memory coloring
fd0534c7e65a drm/i915/selftests: account for min_alignment in GTT selftests
2ed3c1383b59 drm/i915: Add vm min alignment support
3ca8d7a82f95 drm/i915/xehpsdv: support 64K GTT pages
b515c67a4176 drm/i915/gtt/xehpsdv: move scratch page to system memory
9a84cb61c10d drm/i915: enforce min page size for scratch
03200bc06b46 drm/i915/xehpsdv: enforce min GTT alignment
45ceb0b40034 drm/i915/xehpsdv: set min page-size to 64K
a3c94fe1d5cd drm/i915: Add has_64k_pages flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/index.html

--===============0422263646296921157==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Enabling 64k page size and flat ccs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95686/">https://patchwork.freedesktop.org/series/95686/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10770 -&gt; Patchwork_21407</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21407 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21407, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21407:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21407 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-snb-2520m/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21407/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 8)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_21407 prevented too many machines from booting.</p>
<p>Additional (1): fi-snb-2520m <br />
  Missing    (31): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc fi-icl-u2 fi-apl-guc fi-icl-y fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-jsl-1 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10770 -&gt; Patchwork_21407</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10770: 214e8b46143416c4a130cbaeea8430ad9fa19f63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21407: dd2578c083baf57fb6fbd219b904c1b2d8c992aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>dd2578c083ba Doc/gpu/rfc/i915: i915 DG2 uAPI<br />
05178dab38b0 drm/i915/Flat-CCS: Document on Flat-CCS memory compression<br />
86bc18650b6c drm/i915/uapi: document behaviour for DG2 64K support<br />
a25cd0cf423a uapi/drm/dg2: Format modifier for DG2 unified compression and clear color<br />
6d6995163aa1 drm/i915/dg2: Tile 4 plane format support<br />
39e9fd04a236 drm/i915/gt: Clear compress metadata for Xe_HP platforms<br />
2287c2405ffa drm/i915/lmem: Enable lmem for platforms with Flat CCS<br />
dc2516e13157 drm/i915/xehpsdv: Add has_flat_ccs to device info<br />
08702a20cfb0 drm/i915/xehpsdv: implement memory coloring<br />
fd0534c7e65a drm/i915/selftests: account for min_alignment in GTT selftests<br />
2ed3c1383b59 drm/i915: Add vm min alignment support<br />
3ca8d7a82f95 drm/i915/xehpsdv: support 64K GTT pages<br />
b515c67a4176 drm/i915/gtt/xehpsdv: move scratch page to system memory<br />
9a84cb61c10d drm/i915: enforce min page size for scratch<br />
03200bc06b46 drm/i915/xehpsdv: enforce min GTT alignment<br />
45ceb0b40034 drm/i915/xehpsdv: set min page-size to 64K<br />
a3c94fe1d5cd drm/i915: Add has_64k_pages flag</p>

</body>
</html>

--===============0422263646296921157==--
