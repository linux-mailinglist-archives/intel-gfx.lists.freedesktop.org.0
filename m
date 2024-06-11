Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2180904164
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 18:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1019C897F6;
	Tue, 11 Jun 2024 16:33:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9239897F6;
 Tue, 11 Jun 2024 16:33:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3310813744801545946=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=5Fmst=3A_Fix_DS?=
 =?utf-8?q?C_input_BPP_computation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2024 16:33:49 -0000
Message-ID: <171812362994.67160.3136651319857950032@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240611153351.3013235-1-imre.deak@intel.com>
In-Reply-To: <20240611153351.3013235-1-imre.deak@intel.com>
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

--===============3310813744801545946==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Fix DSC input BPP computation
URL   : https://patchwork.freedesktop.org/series/134726/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14920 -> Patchwork_134726v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-kbl-7567u bat-adlp-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_134726v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - {bat-mtlp-9}:       [DMESG-WARN][1] ([i915#11009]) -> [PASS][2] +4 other tests pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [ABORT][3] ([i915#10594]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - {bat-apl-1}:        [ABORT][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-apl-1/igt@kms_addfb_basic@invalid-get-prop-any.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-apl-1/igt@kms_addfb_basic@invalid-get-prop-any.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - {bat-mtlp-9}:       [SKIP][9] ([i915#10580]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp6:
    - {bat-mtlp-9}:       [FAIL][11] ([i915#6121]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
  [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
  [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
  [i915#11060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11060
  [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121


Build changes
-------------

  * Linux: CI_DRM_14920 -> Patchwork_134726v1

  CI-20190529: 20190529
  CI_DRM_14920: 950ce28fe0b31a24c5bddcc337aba9554a41cbb3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7881: 7881
  Patchwork_134726v1: 950ce28fe0b31a24c5bddcc337aba9554a41cbb3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html

--===============3310813744801545946==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Fix DSC input BPP computation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134726/">https://patchwork.freedesktop.org/series/134726/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14920 -&gt; Patchwork_134726v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-kbl-7567u bat-adlp-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134726v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009">i915#11009</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594">i915#10594</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>{bat-apl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-apl-1/igt@kms_addfb_basic@invalid-get-prop-any.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-apl-1/igt@kms_addfb_basic@invalid-get-prop-any.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580">i915#10580</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp6:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14920/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134726v1/bat-mtlp-9/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14920 -&gt; Patchwork_134726v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14920: 950ce28fe0b31a24c5bddcc337aba9554a41cbb3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7881: 7881<br />
  Patchwork_134726v1: 950ce28fe0b31a24c5bddcc337aba9554a41cbb3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3310813744801545946==--
