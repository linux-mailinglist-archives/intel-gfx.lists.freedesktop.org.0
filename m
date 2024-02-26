Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BE28669C3
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 06:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EC910EE8B;
	Mon, 26 Feb 2024 05:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B64110EE8B;
 Mon, 26 Feb 2024 05:56:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7255358846671661767=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_HDCP_MST_Type1_fixes_=28rev?=
 =?utf-8?q?6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Feb 2024 05:56:01 -0000
Message-ID: <170892696111.299097.1402886314611539974@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240223081453.1576918-2-suraj.kandpal@intel.com>
In-Reply-To: <20240223081453.1576918-2-suraj.kandpal@intel.com>
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

--===============7255358846671661767==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP MST Type1 fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/129925/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14331 -> Patchwork_129925v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/index.html

Participating hosts (34 -> 34)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_129925v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14331/fi-skl-6600u/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/fi-skl-6600u/igt@i915_module_load@reload.html

  
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982


Build changes
-------------

  * Linux: CI_DRM_14331 -> Patchwork_129925v6

  CI-20190529: 20190529
  CI_DRM_14331: 78f49af27723a8c6d63d6d43c12d74255123d276 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7729: 7729
  Patchwork_129925v6: 78f49af27723a8c6d63d6d43c12d74255123d276 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

26f38ce97c22 drm/i915/hdcp: Read Rxcaps for robustibility
3e734b76065b drm/i915/hdcp: Allocate stream id after HDCP AKE stage
a096958e2fd0 drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link
77ace8e357aa drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link
dc6329c30582 drm/i915/hdcp: Extract hdcp structure from correct connector
e79085d01ea7 drm/i915/hdcp: Remove additional timing for reading mst hdcp message
964c83f7c3bd drm/i915/hdcp: HDCP Capability for the downstream device
bc6995d0f801 drm/i915/hdcp: Add new remote capability check shim function
9b6bf88ed4c7 drm/i915/hdcp: Rename hdcp capable functions
d7c0ad199e55 drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
59b70709a4c3 drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
ae922fb492b3 drm/i915/hdcp: Move source hdcp2 checks into its own function
af70d9872680 drm/i915/hdcp: Move to direct reads for HDCP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/index.html

--===============7255358846671661767==
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
<tr><td><b>Series:</b></td><td>HDCP MST Type1 fixes (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129925/">https://patchwork.freedesktop.org/series/129925/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14331 -&gt; Patchwork_129925v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/index.html</p>
<h2>Participating hosts (34 -&gt; 34)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129925v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14331/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129925v6/fi-skl-6600u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14331 -&gt; Patchwork_129925v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14331: 78f49af27723a8c6d63d6d43c12d74255123d276 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7729: 7729<br />
  Patchwork_129925v6: 78f49af27723a8c6d63d6d43c12d74255123d276 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>26f38ce97c22 drm/i915/hdcp: Read Rxcaps for robustibility<br />
3e734b76065b drm/i915/hdcp: Allocate stream id after HDCP AKE stage<br />
a096958e2fd0 drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link<br />
77ace8e357aa drm/i915/hdcp: Don't enable HDCP2.2 directly from check_link<br />
dc6329c30582 drm/i915/hdcp: Extract hdcp structure from correct connector<br />
e79085d01ea7 drm/i915/hdcp: Remove additional timing for reading mst hdcp message<br />
964c83f7c3bd drm/i915/hdcp: HDCP Capability for the downstream device<br />
bc6995d0f801 drm/i915/hdcp: Add new remote capability check shim function<br />
9b6bf88ed4c7 drm/i915/hdcp: Rename hdcp capable functions<br />
d7c0ad199e55 drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function<br />
59b70709a4c3 drm/i915/hdcp: Refactor intel_dp_hdcp2_capable<br />
ae922fb492b3 drm/i915/hdcp: Move source hdcp2 checks into its own function<br />
af70d9872680 drm/i915/hdcp: Move to direct reads for HDCP</p>

</body>
</html>

--===============7255358846671661767==--
