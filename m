Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A454155A9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 04:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3E66E0CF;
	Thu, 23 Sep 2021 02:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C53CC6E0CF;
 Thu, 23 Sep 2021 02:56:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEE1CA47EB;
 Thu, 23 Sep 2021 02:56:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3705571577612798388=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 02:56:38 -0000
Message-ID: <163236579874.31049.3999467181549402855@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_Intel_PXP_=28rev10=29?=
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

--===============3705571577612798388==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Introduce Intel PXP (rev10)
URL   : https://patchwork.freedesktop.org/series/90503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10629 -> Patchwork_21138
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/index.html

Known issues
------------

  Here are the changes found in Patchwork_21138 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-r:           [DMESG-FAIL][5] ([i915#2291] / [i915#541]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (42 -> 34)
------------------------------

  Missing    (8): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10629 -> Patchwork_21138

  CI-20190529: 20190529
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21138: 4728e4ee5b2daab9744d047be8443fee7efe7ef8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4728e4ee5b2d drm/i915/pxp: enable PXP for integrated Gen12
0ff702586cf9 drm/i915/pxp: add PXP documentation
3c1965c6e3ef drm/i915/pxp: add pxp debugfs
6faffa9df265 drm/i915/pxp: black pixels on pxp disabled
e58d9b52e0f0 drm/i915/pxp: Add plane decryption support
54fbc154318a drm/i915/pxp: Enable PXP power management
c4ff99595b46 drm/i915/pxp: start the arb session on demand
f6b4768e1fa2 drm/i915/pxp: interfaces for using protected objects
2b49864b5bed drm/i915/pxp: Implement PXP irq handler
1975d3f5fda6 drm/i915/pxp: Implement arb session teardown
d401356a6ad5 drm/i915/pxp: Create the arbitrary session after boot
d242815536ca drm/i915/pxp: set KCR reg init
8a35249b2073 drm/i915/pxp: Implement funcs to create the TEE channel
1b5cc61a686b drm/i915/pxp: allocate a vcs context for pxp usage
9f5fd3d81cf3 drm/i915/pxp: define PXP device flag and kconfig
a6f0b119f74f mei: pxp: export pavp client to me client bus
05e1ec3f284d drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/index.html

--===============3705571577612798388==
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
<tr><td><b>Series:</b></td><td>drm/i915: Introduce Intel PXP (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90503/">https://patchwork.freedesktop.org/series/90503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10629 -&gt; Patchwork_21138</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21138 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10629/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21138/fi-kbl-r/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Missing    (8): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10629 -&gt; Patchwork_21138</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10629: ce6974ec90355ddef78e6bc2221cb2296e5ba349 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21138: 4728e4ee5b2daab9744d047be8443fee7efe7ef8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4728e4ee5b2d drm/i915/pxp: enable PXP for integrated Gen12<br />
0ff702586cf9 drm/i915/pxp: add PXP documentation<br />
3c1965c6e3ef drm/i915/pxp: add pxp debugfs<br />
6faffa9df265 drm/i915/pxp: black pixels on pxp disabled<br />
e58d9b52e0f0 drm/i915/pxp: Add plane decryption support<br />
54fbc154318a drm/i915/pxp: Enable PXP power management<br />
c4ff99595b46 drm/i915/pxp: start the arb session on demand<br />
f6b4768e1fa2 drm/i915/pxp: interfaces for using protected objects<br />
2b49864b5bed drm/i915/pxp: Implement PXP irq handler<br />
1975d3f5fda6 drm/i915/pxp: Implement arb session teardown<br />
d401356a6ad5 drm/i915/pxp: Create the arbitrary session after boot<br />
d242815536ca drm/i915/pxp: set KCR reg init<br />
8a35249b2073 drm/i915/pxp: Implement funcs to create the TEE channel<br />
1b5cc61a686b drm/i915/pxp: allocate a vcs context for pxp usage<br />
9f5fd3d81cf3 drm/i915/pxp: define PXP device flag and kconfig<br />
a6f0b119f74f mei: pxp: export pavp client to me client bus<br />
05e1ec3f284d drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============3705571577612798388==--
