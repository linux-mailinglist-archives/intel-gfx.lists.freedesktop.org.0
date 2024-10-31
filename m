Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4661C9B7A47
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B5F10E2F3;
	Thu, 31 Oct 2024 12:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379A610E2F3;
 Thu, 31 Oct 2024 12:10:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1191138831335970159=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm=3A_i915=3A_do_not_NULL_?=
 =?utf-8?q?deref_hdmi_attached=5Fconnector?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sergey Senozhatsky" <senozhatsky@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 12:10:20 -0000
Message-ID: <173037662022.1378613.11779772751579968564@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241031105145.2140590-1-senozhatsky@chromium.org>
In-Reply-To: <20241031105145.2140590-1-senozhatsky@chromium.org>
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

--===============1191138831335970159==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: i915: do not NULL deref hdmi attached_connector
URL   : https://patchwork.freedesktop.org/series/140761/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15618 -> Patchwork_140761v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_140761v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-arls-2:         [PASS][1] -> [DMESG-FAIL][2] ([i915#10262] / [i915#10341] / [i915#12133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15618/bat-arls-2/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/bat-arls-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-arls-2:         [PASS][3] -> [DMESG-FAIL][4] ([i915#10262]) +21 other tests dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15618/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@objects:
    - bat-arls-2:         [PASS][5] -> [DMESG-WARN][6] ([i915#10341])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15618/bat-arls-2/igt@i915_selftest@live@objects.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/bat-arls-2/igt@i915_selftest@live@objects.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133


Build changes
-------------

  * Linux: CI_DRM_15618 -> Patchwork_140761v1

  CI-20190529: 20190529
  CI_DRM_15618: d9e9e1b912c1ade4d9a46403c691ff3a13d8caaf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8091: 8091
  Patchwork_140761v1: d9e9e1b912c1ade4d9a46403c691ff3a13d8caaf @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/index.html

--===============1191138831335970159==
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
<tr><td><b>Series:</b></td><td>drm: i915: do not NULL deref hdmi attached_connector</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140761/">https://patchwork.freedesktop.org/series/140761/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15618 -&gt; Patchwork_140761v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140761v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15618/bat-arls-2/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/bat-arls-2/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15618/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) +21 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15618/bat-arls-2/igt@i915_selftest@live@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140761v1/bat-arls-2/igt@i915_selftest@live@objects.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15618 -&gt; Patchwork_140761v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15618: d9e9e1b912c1ade4d9a46403c691ff3a13d8caaf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8091: 8091<br />
  Patchwork_140761v1: d9e9e1b912c1ade4d9a46403c691ff3a13d8caaf @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1191138831335970159==--
