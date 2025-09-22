Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAEAB910B2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 14:05:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2275510E1A0;
	Mon, 22 Sep 2025 12:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FB8110E1A0;
 Mon, 22 Sep 2025 12:04:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0998097678079719930=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/psr=3A_Deactivat?=
 =?utf-8?q?e_PSR_only_on_LNL_and_when_selective_fetch_enabled?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Sep 2025 12:04:58 -0000
Message-ID: <175854269812.353633.10595091935723734382@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250922102725.2752742-1-jouni.hogander@intel.com>
In-Reply-To: <20250922102725.2752742-1-jouni.hogander@intel.com>
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

--===============0998097678079719930==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Deactivate PSR only on LNL and when selective fetch enabled
URL   : https://patchwork.freedesktop.org/series/154835/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17252 -> Patchwork_154835v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_154835v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154835v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/index.html

Participating hosts (39 -> 39)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154835v1:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@load:
    - fi-ivb-3770:        [ABORT][1] ([i915#15020]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17252/fi-ivb-3770/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/fi-ivb-3770/igt@i915_module_load@load.html

  
  [i915#15020]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020


Build changes
-------------

  * Linux: CI_DRM_17252 -> Patchwork_154835v1

  CI-20190529: 20190529
  CI_DRM_17252: 07f928e6921093fc1341f7024f0bf72bcebc8842 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8546: 8546
  Patchwork_154835v1: 07f928e6921093fc1341f7024f0bf72bcebc8842 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/index.html

--===============0998097678079719930==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Deactivate PSR only on LNL and when selective fetch enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154835/">https://patchwork.freedesktop.org/series/154835/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17252 -&gt; Patchwork_154835v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_154835v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_154835v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_154835v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17252/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15020">i915#15020</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154835v1/fi-ivb-3770/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17252 -&gt; Patchwork_154835v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17252: 07f928e6921093fc1341f7024f0bf72bcebc8842 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8546: 8546<br />
  Patchwork_154835v1: 07f928e6921093fc1341f7024f0bf72bcebc8842 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0998097678079719930==--
