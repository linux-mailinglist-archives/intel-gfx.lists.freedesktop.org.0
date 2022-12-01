Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A2B63E733
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 02:46:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB3B10E00E;
	Thu,  1 Dec 2022 01:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AEDC10E528;
 Thu,  1 Dec 2022 01:46:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94B65A77A5;
 Thu,  1 Dec 2022 01:46:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3479824684466433768=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 01 Dec 2022 01:46:33 -0000
Message-ID: <166985919358.14637.3077898249879911541@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20221201010535.1097741-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_OAG_32_bit_format_support_for_MTL_=28rev2=29?=
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

--===============3479824684466433768==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add OAG 32 bit format support for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/111512/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12457 -> Patchwork_111512v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/index.html

Participating hosts (38 -> 32)
------------------------------

  Missing    (6): fi-ilk-m540 bat-dg1-7 bat-adlm-1 fi-kbl-x1275 fi-kbl-8809g bat-rpls-1 

Known issues
------------

  Here are the changes found in Patchwork_111512v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#7073])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-guc:         NOTRUN -> [SKIP][3] ([fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-2}:         [INCOMPLETE][4] ([i915#2940]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-ehl-2/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-ehl-2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [INCOMPLETE][6] ([i915#4983]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][8] ([i915#4983]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/bat-rpls-2/igt@i915_selftest@live@reset.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
  [i915#7125]: https://gitlab.freedesktop.org/drm/intel/issues/7125


Build changes
-------------

  * IGT: IGT_7076 -> IGTPW_8166
  * Linux: CI_DRM_12457 -> Patchwork_111512v2

  CI-20190529: 20190529
  CI_DRM_12457: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8166: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8166/index.html
  IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111512v2: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

68907d893a9c drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL
4b69c78ee8bb drm/i915/mtl: Update OA mux whitelist for MTL
17595f238fd9 drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
ef9ae95211b2 drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/index.html

--===============3479824684466433768==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add OAG 32 bit format support for MTL (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111512/">https://patchwork.freedesktop.org/series/111512/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12457 -&gt; Patchwork_111512v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/index.html</p>
<h2>Participating hosts (38 -&gt; 32)</h2>
<p>Missing    (6): fi-ilk-m540 bat-dg1-7 bat-adlm-1 fi-kbl-x1275 fi-kbl-8809g bat-rpls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111512v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-ehl-2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-ehl-2/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111512v2/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7076 -&gt; IGTPW_8166</li>
<li>Linux: CI_DRM_12457 -&gt; Patchwork_111512v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12457: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8166: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8166/index.html<br />
  IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111512v2: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>68907d893a9c drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL<br />
4b69c78ee8bb drm/i915/mtl: Update OA mux whitelist for MTL<br />
17595f238fd9 drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch<br />
ef9ae95211b2 drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs</p>

</body>
</html>

--===============3479824684466433768==--
