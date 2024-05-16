Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB4C8C7A54
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 18:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CE010E18C;
	Thu, 16 May 2024 16:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABE410E18C;
 Thu, 16 May 2024 16:27:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9153191816167425556=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Panel_Replay_eDP_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2024 16:27:55 -0000
Message-ID: <171587687589.2122196.18150073648366249722@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

--===============9153191816167425556==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Panel Replay eDP support
URL   : https://patchwork.freedesktop.org/series/133684/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14775 -> Patchwork_133684v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/index.html

Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-snb-2520m fi-glk-j4005 fi-cfl-8109u fi-kbl-8809g bat-arls-1 

Known issues
------------

  Here are the changes found in Patchwork_133684v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - {bat-apl-1}:        [DMESG-WARN][3] ([i915#1982]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-apl-1/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/bat-apl-1/igt@core_auth@basic-auth.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_14775 -> Patchwork_133684v1

  CI-20190529: 20190529
  CI_DRM_14775: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133684v1: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/index.html

--===============9153191816167425556==
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
<tr><td><b>Series:</b></td><td>Panel Replay eDP support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133684/">https://patchwork.freedesktop.org/series/133684/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14775 -&gt; Patchwork_133684v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/index.html</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-snb-2520m fi-glk-j4005 fi-cfl-8109u fi-kbl-8809g bat-arls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133684v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/fi-bsw-nick/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/bat-apl-1/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133684v1/bat-apl-1/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14775 -&gt; Patchwork_133684v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14775: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133684v1: 3b6a503228b84c010794599203ac3e1e3d349bab @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9153191816167425556==--
