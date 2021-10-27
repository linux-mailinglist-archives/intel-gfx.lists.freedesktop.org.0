Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E87BB43D640
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 00:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B506E02A;
	Wed, 27 Oct 2021 22:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B36E6E02A;
 Wed, 27 Oct 2021 22:05:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06419AADD2;
 Wed, 27 Oct 2021 22:05:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0009503225118620397=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 22:05:14 -0000
Message-ID: <163537231402.4640.16019565829828900998@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211027212339.29259-1-ramalingam.c@intel.com>
In-Reply-To: <20211027212339.29259-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Enabling_64k_page_size_and_flat_ccs_=28rev3=29?=
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

--===============0009503225118620397==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Enabling 64k page size and flat ccs (rev3)
URL   : https://patchwork.freedesktop.org/series/95686/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10799 -> Patchwork_21470
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21470 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21470, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/index.html

Participating hosts (37 -> 7)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_21470 prevented too many machines from booting.

  Missing    (30): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc bat-dg1-6 bat-dg1-5 fi-bdw-gvtdvm fi-apl-guc fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc bat-adlp-4 fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 

Known issues
------------

  Here are the changes found in Patchwork_21470 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10799/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Build changes
-------------

  * Linux: CI_DRM_10799 -> Patchwork_21470

  CI-20190529: 20190529
  CI_DRM_10799: 9f1a26b0a231c3e7991d70b8622e47e1041467f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21470: a76556fa89db6a0ea8a00569df40ee8d8d0c592c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a76556fa89db Doc/gpu/rfc/i915: i915 DG2 uAPI
57c66718ad12 drm/i915/Flat-CCS: Document on Flat-CCS memory compression
91830d73b8b3 drm/i915/uapi: document behaviour for DG2 64K support
e76d9270a03d drm/i915/dg2: Plane handling for Flat CCS and clear color
df1ed00fc619 uapi/drm/dg2: Format modifier for DG2 unified compression and clear color
2644de7ef016 drm/i915/dg2: Tile 4 plane format support
37dec488f909 drm/i915/dg2: Prune the Y Tiling modifiers
21298f8428cc drm/i915/gt: Clear compress metadata for Xe_HP platforms
8f7a32bb5f91 drm/i915/lmem: Enable lmem for platforms with Flat CCS
b452eca49e6d drm/i915/xehpsdv: Add has_flat_ccs to device info
34273abda035 drm/i915/xehpsdv: implement memory coloring
502e5874de68 drm/i915/xehpsdv: support 64K GTT pages
de0727edcf31 drm/i915/gtt/xehpsdv: move scratch page to system memory
affe7c270c7b drm/i915: enforce min page size for scratch
f0364064d028 drm/i915/xehpsdv: enforce min GTT alignment
e3f6866bf3b6 drm/i915/xehpsdv: set min page-size to 64K
262eb27b8dcf drm/i915: Add has_64k_pages flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/index.html

--===============0009503225118620397==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Enabling 64k page size and flat ccs (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95686/">https://patchwork.freedesktop.org/series/95686/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10799 -&gt; Patchwork_21470</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21470 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21470, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/index.html</p>
<h2>Participating hosts (37 -&gt; 7)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_21470 prevented too many machines from booting.</p>
<p>Missing    (30): fi-kbl-soraka fi-rkl-11600 fi-rkl-guc bat-dg1-6 bat-dg1-5 fi-bdw-gvtdvm fi-apl-guc fi-skl-6600u fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-ehl-2 fi-jsl-1 fi-tgl-1115g4 fi-bsw-cyan fi-cfl-guc bat-adlp-4 fi-kbl-guc fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21470 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10799/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21470/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10799 -&gt; Patchwork_21470</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10799: 9f1a26b0a231c3e7991d70b8622e47e1041467f1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21470: a76556fa89db6a0ea8a00569df40ee8d8d0c592c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a76556fa89db Doc/gpu/rfc/i915: i915 DG2 uAPI<br />
57c66718ad12 drm/i915/Flat-CCS: Document on Flat-CCS memory compression<br />
91830d73b8b3 drm/i915/uapi: document behaviour for DG2 64K support<br />
e76d9270a03d drm/i915/dg2: Plane handling for Flat CCS and clear color<br />
df1ed00fc619 uapi/drm/dg2: Format modifier for DG2 unified compression and clear color<br />
2644de7ef016 drm/i915/dg2: Tile 4 plane format support<br />
37dec488f909 drm/i915/dg2: Prune the Y Tiling modifiers<br />
21298f8428cc drm/i915/gt: Clear compress metadata for Xe_HP platforms<br />
8f7a32bb5f91 drm/i915/lmem: Enable lmem for platforms with Flat CCS<br />
b452eca49e6d drm/i915/xehpsdv: Add has_flat_ccs to device info<br />
34273abda035 drm/i915/xehpsdv: implement memory coloring<br />
502e5874de68 drm/i915/xehpsdv: support 64K GTT pages<br />
de0727edcf31 drm/i915/gtt/xehpsdv: move scratch page to system memory<br />
affe7c270c7b drm/i915: enforce min page size for scratch<br />
f0364064d028 drm/i915/xehpsdv: enforce min GTT alignment<br />
e3f6866bf3b6 drm/i915/xehpsdv: set min page-size to 64K<br />
262eb27b8dcf drm/i915: Add has_64k_pages flag</p>

</body>
</html>

--===============0009503225118620397==--
