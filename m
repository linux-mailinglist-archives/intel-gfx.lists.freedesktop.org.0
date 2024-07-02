Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F2C91F0E3
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D619310E12B;
	Tue,  2 Jul 2024 08:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC13B10E12B;
 Tue,  2 Jul 2024 08:17:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6337771438986954873=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Cache_SDP_caps_during_conne?=
 =?utf-8?q?ctor_detection?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Jul 2024 08:17:50 -0000
Message-ID: <171990827082.4125.7428129395847721667@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============6337771438986954873==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Cache SDP caps during connector detection
URL   : https://patchwork.freedesktop.org/series/135627/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15013 -> Patchwork_135627v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/index.html

Participating hosts (42 -> 36)
------------------------------

  Missing    (6): bat-adlp-9 bat-adlp-6 fi-snb-2520m bat-adln-1 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_135627v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_edid@dp-edid-read:
    - bat-dg2-13:         [PASS][1] -> [ABORT][2] ([i915#11552])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [PASS][3] -> [DMESG-WARN][4] ([i915#7507])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [DMESG-WARN][5] ([i915#11328]) -> [PASS][6] +33 other tests pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  
  [i915#11328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328
  [i915#11552]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11552
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507


Build changes
-------------

  * Linux: CI_DRM_15013 -> Patchwork_135627v1

  CI-20190529: 20190529
  CI_DRM_15013: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7906: ae91ba26f657bf11264f64bd2dc21f471a5d18f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135627v1: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/index.html

--===============6337771438986954873==
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
<tr><td><b>Series:</b></td><td>Cache SDP caps during connector detection</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135627/">https://patchwork.freedesktop.org/series/135627/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15013 -&gt; Patchwork_135627v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): bat-adlp-9 bat-adlp-6 fi-snb-2520m bat-adln-1 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135627v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11552">i915#11552</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328">i915#11328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135627v1/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15013 -&gt; Patchwork_135627v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15013: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7906: ae91ba26f657bf11264f64bd2dc21f471a5d18f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135627v1: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6337771438986954873==--
