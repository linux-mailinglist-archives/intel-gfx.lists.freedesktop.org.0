Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691AFD3AA67
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 14:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE67310E44C;
	Mon, 19 Jan 2026 13:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D56C310E44C;
 Mon, 19 Jan 2026 13:33:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4962534959885960970=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Disab?=
 =?utf-8?q?le_casf_with_joiner_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Garg, Nemesa" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jan 2026 13:33:01 -0000
Message-ID: <176882958186.167619.13906500070268633058@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260113054925.633053-1-nemesa.garg@intel.com>
In-Reply-To: <20260113054925.633053-1-nemesa.garg@intel.com>
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

--===============4962534959885960970==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Disable casf with joiner (rev3)
URL   : https://patchwork.freedesktop.org/series/159636/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17821 -> Patchwork_159636v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 

New tests
---------

  New tests have been introduced between CI_DRM_17821 and Patchwork_159636v3:

### New IGT tests (3) ###

  * igt@kms_addfb_basic:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_force_connector_basic:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_pipe_crc_basic:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_159636v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@unused-pitches:
    - fi-ilk-650:         [PASS][1] -> [INCOMPLETE][2] ([i915#15597])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/fi-ilk-650/igt@kms_addfb_basic@unused-pitches.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/fi-ilk-650/igt@kms_addfb_basic@unused-pitches.html

  * igt@vgem_basic@mmap:
    - fi-cfl-8700k:       [PASS][3] -> [INCOMPLETE][4] ([i915#15596])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/fi-cfl-8700k/igt@vgem_basic@mmap.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/fi-cfl-8700k/igt@vgem_basic@mmap.html

  
  [i915#15596]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15596
  [i915#15597]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15597


Build changes
-------------

  * Linux: CI_DRM_17821 -> Patchwork_159636v3

  CI-20190529: 20190529
  CI_DRM_17821: 733664f1edf3c01cc68e6dd0bbdb135158a98a1d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8701: 8701
  Patchwork_159636v3: 733664f1edf3c01cc68e6dd0bbdb135158a98a1d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/index.html

--===============4962534959885960970==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Disable casf with joiner (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159636/">https://patchwork.freedesktop.org/series/159636/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17821 -&gt; Patchwork_159636v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17821 and Patchwork_159636v3:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@kms_addfb_basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159636v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@unused-pitches:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/fi-ilk-650/igt@kms_addfb_basic@unused-pitches.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/fi-ilk-650/igt@kms_addfb_basic@unused-pitches.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15597">i915#15597</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@mmap:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17821/fi-cfl-8700k/igt@vgem_basic@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159636v3/fi-cfl-8700k/igt@vgem_basic@mmap.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15596">i915#15596</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17821 -&gt; Patchwork_159636v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17821: 733664f1edf3c01cc68e6dd0bbdb135158a98a1d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8701: 8701<br />
  Patchwork_159636v3: 733664f1edf3c01cc68e6dd0bbdb135158a98a1d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4962534959885960970==--
