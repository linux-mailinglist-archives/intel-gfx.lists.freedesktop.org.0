Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AFB83215C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 23:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768B810E925;
	Thu, 18 Jan 2024 22:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB1510E911;
 Thu, 18 Jan 2024 22:06:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2933653259814898708=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Reflect_the_?=
 =?utf-8?q?true_and_current_status_of_rc6=5Fenable_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juan Escamilla" <jcescami@wasd.net>
Date: Thu, 18 Jan 2024 22:06:04 -0000
Message-ID: <170561556471.558567.989873700753536309@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240116172922.3460695-1-jcescami@wasd.net>
In-Reply-To: <20240116172922.3460695-1-jcescami@wasd.net>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2933653259814898708==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Reflect the true and current status of rc6_enable (rev2)
URL   : https://patchwork.freedesktop.org/series/128839/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14139 -> Patchwork_128839v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): bat-rpls-2 bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_128839v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-pnv-d510:        [SKIP][1] ([fdo#109271]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/fi-pnv-d510/igt@gem_linear_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/fi-pnv-d510/igt@gem_linear_blits@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Build changes
-------------

  * Linux: CI_DRM_14139 -> Patchwork_128839v2

  CI-20190529: 20190529
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7683: 7683
  Patchwork_128839v2: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bdeca0c22cf8 drm/i915/gt: Reflect the true and current status of rc6_enable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/index.html

--===============2933653259814898708==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Reflect the true and current status of rc6_enable (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128839/">https://patchwork.freedesktop.org/series/128839/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14139 -&gt; Patchwork_128839v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): bat-rpls-2 bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128839v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_linear_blits@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/fi-pnv-d510/igt@gem_linear_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/fi-pnv-d510/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14139 -&gt; Patchwork_128839v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7683: 7683<br />
  Patchwork_128839v2: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bdeca0c22cf8 drm/i915/gt: Reflect the true and current status of rc6_enable</p>

</body>
</html>

--===============2933653259814898708==--
