Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0FC406FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 18:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364076EA41;
	Fri, 10 Sep 2021 16:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7896C6EA40;
 Fri, 10 Sep 2021 16:43:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EF62A00CC;
 Fri, 10 Sep 2021 16:43:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7858467986706991821=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Sep 2021 16:43:16 -0000
Message-ID: <163129219641.14828.2391040563310464332@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210910153627.1060858-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210910153627.1060858-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_Intel_PXP_=28rev7=29?=
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

--===============7858467986706991821==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Introduce Intel PXP (rev7)
URL   : https://patchwork.freedesktop.org/series/90503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10570 -> Patchwork_21015
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/index.html

Known issues
------------

  Here are the changes found in Patchwork_21015 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][3] ([i915#1814] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][4] ([i915#2426] / [i915#3363])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-bxt-dsi/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {fi-hsw-gt1}:       [INCOMPLETE][5] ([i915#151]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - fi-bwr-2160:        [FAIL][7] ([i915#2122]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (44 -> 39)
------------------------------

  Additional (1): fi-kbl-7500u 
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-2 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10570 -> Patchwork_21015

  CI-20190529: 20190529
  CI_DRM_10570: 8ba36ce2437426b91de6f03d30e75629108ea22b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21015: 50cec025ee1e5d83f589f672d6742082d9fcb6d4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

50cec025ee1e drm/i915/pxp: enable PXP for integrated Gen12
ea3db8b84f54 drm/i915/pxp: add PXP documentation
532984887729 drm/i915/pxp: add pxp debugfs
412b34271bc4 drm/i915/pxp: black pixels on pxp disabled
b484522dff15 drm/i915/pxp: Add plane decryption support
364ebbf31c66 drm/i915/pxp: Enable PXP power management
6e6968e1d8e4 drm/i915/pxp: start the arb session on demand
608300cbc8c8 drm/i915/pxp: interfaces for using protected objects
700c9843a244 drm/i915/pxp: Implement PXP irq handler
6cf87904fe49 drm/i915/pxp: Implement arb session teardown
70ecc48a203b drm/i915/pxp: Create the arbitrary session after boot
47a04376fa10 drm/i915/pxp: set KCR reg init
509975d900b9 drm/i915/pxp: Implement funcs to create the TEE channel
982500708e1e drm/i915/pxp: allocate a vcs context for pxp usage
51a1e3c6309a drm/i915/pxp: define PXP device flag and kconfig
d05b3a701fa5 mei: pxp: export pavp client to me client bus
78a14c39c962 drm/i915/pxp: Define PXP component interface

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/index.html

--===============7858467986706991821==
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
<tr><td><b>Series:</b></td><td>drm/i915: Introduce Intel PXP (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90503/">https://patchwork.freedesktop.org/series/90503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10570 -&gt; Patchwork_21015</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21015 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-hsw-gt1/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10570/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21015/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Additional (1): fi-kbl-7500u <br />
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 bat-jsl-2 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10570 -&gt; Patchwork_21015</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10570: 8ba36ce2437426b91de6f03d30e75629108ea22b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21015: 50cec025ee1e5d83f589f672d6742082d9fcb6d4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>50cec025ee1e drm/i915/pxp: enable PXP for integrated Gen12<br />
ea3db8b84f54 drm/i915/pxp: add PXP documentation<br />
532984887729 drm/i915/pxp: add pxp debugfs<br />
412b34271bc4 drm/i915/pxp: black pixels on pxp disabled<br />
b484522dff15 drm/i915/pxp: Add plane decryption support<br />
364ebbf31c66 drm/i915/pxp: Enable PXP power management<br />
6e6968e1d8e4 drm/i915/pxp: start the arb session on demand<br />
608300cbc8c8 drm/i915/pxp: interfaces for using protected objects<br />
700c9843a244 drm/i915/pxp: Implement PXP irq handler<br />
6cf87904fe49 drm/i915/pxp: Implement arb session teardown<br />
70ecc48a203b drm/i915/pxp: Create the arbitrary session after boot<br />
47a04376fa10 drm/i915/pxp: set KCR reg init<br />
509975d900b9 drm/i915/pxp: Implement funcs to create the TEE channel<br />
982500708e1e drm/i915/pxp: allocate a vcs context for pxp usage<br />
51a1e3c6309a drm/i915/pxp: define PXP device flag and kconfig<br />
d05b3a701fa5 mei: pxp: export pavp client to me client bus<br />
78a14c39c962 drm/i915/pxp: Define PXP component interface</p>

</body>
</html>

--===============7858467986706991821==--
