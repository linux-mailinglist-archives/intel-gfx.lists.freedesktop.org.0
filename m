Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8497EAD6CBB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 11:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC90610E16A;
	Thu, 12 Jun 2025 09:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9115E10E144;
 Thu, 12 Jun 2025 09:57:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3052359566621003723=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_Add_drm=5Fpan?=
 =?utf-8?q?ic_support_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jocelyn Falempe" <jfalempe@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jun 2025 09:57:19 -0000
Message-ID: <174972223958.70603.9160451237974572188@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250612081344.225200-1-jfalempe@redhat.com>
In-Reply-To: <20250612081344.225200-1-jfalempe@redhat.com>
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

--===============3052359566621003723==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add drm_panic support (rev9)
URL   : https://patchwork.freedesktop.org/series/141935/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16688 -> Patchwork_141935v9
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/index.html

Participating hosts (41 -> 40)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_141935v9 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][1] -> [DMESG-FAIL][2] ([i915#12061]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@ring_submission:
    - bat-arlh-3:         [INCOMPLETE][5] ([i915#14393]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-arlh-3/igt@i915_selftest@live@ring_submission.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/bat-arlh-3/igt@i915_selftest@live@ring_submission.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393


Build changes
-------------

  * Linux: CI_DRM_16688 -> Patchwork_141935v9

  CI-20190529: 20190529
  CI_DRM_16688: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8405: 8405
  Patchwork_141935v9: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/index.html

--===============3052359566621003723==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add drm_panic support (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/141935/">https://patchwork.freedesktop.org/series/141935/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16688 -&gt; Patchwork_141935v9</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_141935v9 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16688/bat-arlh-3/igt@i915_selftest@live@ring_submission.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14393">i915#14393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141935v9/bat-arlh-3/igt@i915_selftest@live@ring_submission.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16688 -&gt; Patchwork_141935v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16688: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8405: 8405<br />
  Patchwork_141935v9: 75238c32deae15ee4120b42a5be556ec36807a84 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3052359566621003723==--
