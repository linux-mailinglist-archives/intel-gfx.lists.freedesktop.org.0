Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D058D17F4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 12:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463B51120BE;
	Tue, 28 May 2024 10:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38B71120BF;
 Tue, 28 May 2024 10:02:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1760873498535506326=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Fix_cursor_FB_unpinning=2E_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2024 10:02:17 -0000
Message-ID: <171689053792.2215486.6689359403484192892@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240522053341.137592-1-maarten.lankhorst@linux.intel.com>
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

--===============1760873498535506326==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix cursor FB unpinning. (rev2)
URL   : https://patchwork.freedesktop.org/series/133896/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14829 -> Patchwork_133896v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/index.html

Participating hosts (40 -> 34)
------------------------------

  Missing    (6): bat-kbl-2 fi-glk-j4005 fi-cfl-8109u fi-elk-e7500 bat-dg2-11 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_133896v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][1] ([i915#10594]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14829/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594


Build changes
-------------

  * Linux: CI_DRM_14829 -> Patchwork_133896v2

  CI-20190529: 20190529
  CI_DRM_14829: 37c66dc55bdd7959ff2b52240d1f805f7cc6c272 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133896v2: 37c66dc55bdd7959ff2b52240d1f805f7cc6c272 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/index.html

--===============1760873498535506326==
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
<tr><td><b>Series:</b></td><td>Fix cursor FB unpinning. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133896/">https://patchwork.freedesktop.org/series/133896/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14829 -&gt; Patchwork_133896v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/index.html</p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Missing    (6): bat-kbl-2 fi-glk-j4005 fi-cfl-8109u fi-elk-e7500 bat-dg2-11 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133896v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14829/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133896v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14829 -&gt; Patchwork_133896v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14829: 37c66dc55bdd7959ff2b52240d1f805f7cc6c272 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133896v2: 37c66dc55bdd7959ff2b52240d1f805f7cc6c272 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1760873498535506326==--
