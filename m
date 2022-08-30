Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CFE5A6146
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 13:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028BE10E02E;
	Tue, 30 Aug 2022 10:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B964F10E02E;
 Tue, 30 Aug 2022 10:59:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D3C4A7DFB;
 Tue, 30 Aug 2022 10:59:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2916874468756802581=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 30 Aug 2022 10:59:54 -0000
Message-ID: <166185719434.27287.10211386396927866873@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1661855191.git.jani.nikula@intel.com>
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gmbus=3A_stop_using_implicit_dev=5Fpriv?=
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

--===============2916874468756802581==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gmbus: stop using implicit dev_priv
URL   : https://patchwork.freedesktop.org/series/107930/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12048 -> Patchwork_107930v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/index.html

Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-ctg-p8600 bat-dg2-8 bat-adln-1 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_107930v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][1] ([i915#6298]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12048/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:
    - fi-bdw-5557u:       [INCOMPLETE][3] ([i915#146]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12048/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6579]: https://gitlab.freedesktop.org/drm/intel/issues/6579


Build changes
-------------

  * Linux: CI_DRM_12048 -> Patchwork_107930v1

  CI-20190529: 20190529
  CI_DRM_12048: 7662d7a73e30619a337c4486f85f7fce046524d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107930v1: 7662d7a73e30619a337c4486f85f7fce046524d6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

24ac71aef6c6 drm/i915/gmbus: mass dev_priv -> i915 rename
bfed02a1f0de drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D
39aef0a32249 drm/i915/gmbus: stop using implicit dev_priv in register definitions
2170ddc0a90d drm/i915/gmbus: add wrapper for gmbus mmio base
9e41fecd59e1 drm/i915/gmbus: whitespace cleanup in reg definitions
3febf782d0a9 drm/i915/gmbus: split out gmbus regs in a separate file

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/index.html

--===============2916874468756802581==
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
<tr><td><b>Series:</b></td><td>drm/i915/gmbus: stop using implicit dev_priv</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107930/">https://patchwork.freedesktop.org/series/107930/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12048 -&gt; Patchwork_107930v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-ctg-p8600 bat-dg2-8 bat-adln-1 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107930v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12048/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12048/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107930v1/fi-bdw-5557u/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12048 -&gt; Patchwork_107930v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12048: 7662d7a73e30619a337c4486f85f7fce046524d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107930v1: 7662d7a73e30619a337c4486f85f7fce046524d6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>24ac71aef6c6 drm/i915/gmbus: mass dev_priv -&gt; i915 rename<br />
bfed02a1f0de drm/i915/reg: stop using implicit dev_priv in DSPCLK_GATE_D<br />
39aef0a32249 drm/i915/gmbus: stop using implicit dev_priv in register definitions<br />
2170ddc0a90d drm/i915/gmbus: add wrapper for gmbus mmio base<br />
9e41fecd59e1 drm/i915/gmbus: whitespace cleanup in reg definitions<br />
3febf782d0a9 drm/i915/gmbus: split out gmbus regs in a separate file</p>

</body>
</html>

--===============2916874468756802581==--
