Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE56CB0A7A
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 18:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C7910E107;
	Tue,  9 Dec 2025 17:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3F110E145;
 Tue,  9 Dec 2025 17:01:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5273010293600157475=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_Detec?=
 =?utf-8?q?t_AuxCCS_support_via_display_parent_interface?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Dec 2025 17:01:49 -0000
Message-ID: <176529970929.70831.16948455958438474379@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251209120034.9143-1-tursulin@igalia.com>
In-Reply-To: <20251209120034.9143-1-tursulin@igalia.com>
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

--===============5273010293600157475==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Detect AuxCCS support via display parent interface
URL   : https://patchwork.freedesktop.org/series/158691/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17649 -> Patchwork_158691v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158691v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158691v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/index.html

Participating hosts (38 -> 4)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_158691v1 prevented too many machines from booting.

  Missing    (34): fi-rkl-11600 bat-adlp-6 bat-mtlp-9 fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-hsw-4770 fi-ivb-3770 bat-rplp-1 bat-rpls-4 bat-apl-1 bat-dg2-11 bat-arls-5 bat-arlh-2 bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-kbl-2 bat-arlh-3 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-dg1-6 bat-arls-6 bat-jsl-1 bat-mtlp-8 bat-adlp-11 fi-tgl-1115g4 fi-cfl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 bat-dg2-13 

Known issues
------------

  Here are the changes found in Patchwork_158691v1 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [INCOMPLETE][1] ([i915#15157]) -> [INCOMPLETE][2] ([i915#12061] / [i915#15157] / [i915#15399])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17649/bat-atsm-1/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][3] ([i915#13929]) -> [DMESG-FAIL][4] ([i915#14204])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17649/bat-atsm-1/igt@i915_selftest@live@mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157
  [i915#15399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399


Build changes
-------------

  * Linux: CI_DRM_17649 -> Patchwork_158691v1

  CI-20190529: 20190529
  CI_DRM_17649: 55b19373186bc09befbc0068ee82a67ed9cfbc66 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8659: 8659
  Patchwork_158691v1: 55b19373186bc09befbc0068ee82a67ed9cfbc66 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/index.html

--===============5273010293600157475==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Detect AuxCCS support via display parent interface</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158691/">https://patchwork.freedesktop.org/series/158691/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17649 -&gt; Patchwork_158691v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158691v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158691v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/index.html</p>
<h2>Participating hosts (38 -&gt; 4)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_158691v1 prevented too many machines from booting.</p>
<p>Missing    (34): fi-rkl-11600 bat-adlp-6 bat-mtlp-9 fi-bsw-n3050 bat-dg2-8 bat-dg2-9 fi-hsw-4770 fi-ivb-3770 bat-rplp-1 bat-rpls-4 bat-apl-1 bat-dg2-11 bat-arls-5 bat-arlh-2 bat-twl-2 fi-kbl-7567u bat-dg1-7 bat-kbl-2 bat-arlh-3 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-dg1-6 bat-arls-6 bat-jsl-1 bat-mtlp-8 bat-adlp-11 fi-tgl-1115g4 fi-cfl-guc bat-jsl-5 fi-kbl-x1275 fi-kbl-8809g bat-dg2-14 bat-dg2-13 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158691v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17649/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17649/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158691v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17649 -&gt; Patchwork_158691v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17649: 55b19373186bc09befbc0068ee82a67ed9cfbc66 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8659: 8659<br />
  Patchwork_158691v1: 55b19373186bc09befbc0068ee82a67ed9cfbc66 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5273010293600157475==--
