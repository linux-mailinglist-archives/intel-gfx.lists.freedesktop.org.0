Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CC0D3AF1B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 16:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95F210E482;
	Mon, 19 Jan 2026 15:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C6D10E482;
 Mon, 19 Jan 2026 15:33:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1257623570919925523=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/pll=3A_Verify_pl?=
 =?utf-8?q?l_dividers_and_remove_redundant_=2Eclock_member_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jan 2026 15:33:35 -0000
Message-ID: <176883681534.168791.9275571288813149357@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260119093757.2850233-1-mika.kahola@intel.com>
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
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

--===============1257623570919925523==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pll: Verify pll dividers and remove redundant .clock member (rev4)
URL   : https://patchwork.freedesktop.org/series/159088/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17843 -> Patchwork_159088v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html

Participating hosts (42 -> 40)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): bat-dg2-13 fi-bsw-nick fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_159088v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [PASS][1] -> [DMESG-FAIL][2] ([i915#12061]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] +35 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][4] ([i915#12061]) -> [PASS][5] +1 other test pass
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061


Build changes
-------------

  * Linux: CI_DRM_17843 -> Patchwork_159088v4

  CI-20190529: 20190529
  CI_DRM_17843: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8704: 8704
  Patchwork_159088v4: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html

--===============1257623570919925523==
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
<tr><td><b>Series:</b></td><td>drm/i915/pll: Verify pll dividers and remove redundant .clock member (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159088/">https://patchwork.freedesktop.org/series/159088/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17843 -&gt; Patchwork_159088v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): bat-dg2-13 fi-bsw-nick fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159088v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159088v4/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17843 -&gt; Patchwork_159088v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17843: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8704: 8704<br />
  Patchwork_159088v4: ce23d0a333e80437caeac552d098b1f241ff2926 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1257623570919925523==--
