Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7911D8B7FA1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 20:21:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC92C112E28;
	Tue, 30 Apr 2024 18:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03674112E1E;
 Tue, 30 Apr 2024 18:21:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3114379803259366029=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_avoid_FIELD?=
 =?utf-8?q?=5FPREP_warning_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 18:21:55 -0000
Message-ID: <171450131501.1793102.8713899604994787434@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240430164809.482131-1-julia.filipchuk@intel.com>
In-Reply-To: <20240430164809.482131-1-julia.filipchuk@intel.com>
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

--===============3114379803259366029==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: avoid FIELD_PREP warning (rev2)
URL   : https://patchwork.freedesktop.org/series/114145/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14684 -> Patchwork_114145v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/index.html

Participating hosts (40 -> 36)
------------------------------

  Missing    (4): fi-kbl-7567u bat-dg1-7 fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_114145v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-8:          [PASS][1] -> [DMESG-FAIL][2] ([i915#9500])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14684/bat-dg2-8/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/bat-dg2-8/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10911]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10911
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_14684 -> Patchwork_114145v2

  CI-20190529: 20190529
  CI_DRM_14684: 8aebdf15c4291ea17c810781d54a16f7d12c19fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7826: ce6ce0f60dd1a6c0df93a01ad71a31964158a2cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114145v2: 8aebdf15c4291ea17c810781d54a16f7d12c19fb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/index.html

--===============3114379803259366029==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: avoid FIELD_PREP warning (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114145/">https://patchwork.freedesktop.org/series/114145/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14684 -&gt; Patchwork_114145v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/index.html</p>
<h2>Participating hosts (40 -&gt; 36)</h2>
<p>Missing    (4): fi-kbl-7567u bat-dg1-7 fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114145v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14684/bat-dg2-8/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114145v2/bat-dg2-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14684 -&gt; Patchwork_114145v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14684: 8aebdf15c4291ea17c810781d54a16f7d12c19fb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7826: ce6ce0f60dd1a6c0df93a01ad71a31964158a2cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114145v2: 8aebdf15c4291ea17c810781d54a16f7d12c19fb @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3114379803259366029==--
