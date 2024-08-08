Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F340F94C6C4
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 00:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7DAA10E824;
	Thu,  8 Aug 2024 22:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B6B10E824;
 Thu,  8 Aug 2024 22:08:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5064764228307984615=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Change_GEM?=
 =?utf-8?q?=5FWARN=5FON_to_guc=5Ferr_to_prevent_taints_in_CI?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jesus Narvaez" <jesus.narvaez@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 Aug 2024 22:08:44 -0000
Message-ID: <172315492420.551301.2464279284048643461@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240808204943.911727-1-jesus.narvaez@intel.com>
In-Reply-To: <20240808204943.911727-1-jesus.narvaez@intel.com>
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

--===============5064764228307984615==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent taints in CI
URL   : https://patchwork.freedesktop.org/series/137064/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15202 -> Patchwork_137064v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-snb-2520m fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_137064v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@dmabuf:
    - bat-arls-5:         [PASS][1] -> [INCOMPLETE][2] ([i915#11378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15202/bat-arls-5/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/bat-arls-5/igt@i915_selftest@live@dmabuf.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [INCOMPLETE][3] ([i915#9413]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15202/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html

  
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15202 -> Patchwork_137064v1

  CI-20190529: 20190529
  CI_DRM_15202: 26337128da9b0df8c914cb7cd04fb4535e63d6c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7962: 7962
  Patchwork_137064v1: 26337128da9b0df8c914cb7cd04fb4535e63d6c9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/index.html

--===============5064764228307984615==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent taints in CI</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137064/">https://patchwork.freedesktop.org/series/137064/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15202 -&gt; Patchwork_137064v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-snb-2520m fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137064v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@dmabuf:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15202/bat-arls-5/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/bat-arls-5/igt@i915_selftest@live@dmabuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15202/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137064v1/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15202 -&gt; Patchwork_137064v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15202: 26337128da9b0df8c914cb7cd04fb4535e63d6c9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7962: 7962<br />
  Patchwork_137064v1: 26337128da9b0df8c914cb7cd04fb4535e63d6c9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5064764228307984615==--
