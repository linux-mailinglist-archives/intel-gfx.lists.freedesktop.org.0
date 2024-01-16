Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D82082FA97
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 22:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8C910E5F2;
	Tue, 16 Jan 2024 21:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF85610E5F2;
 Tue, 16 Jan 2024 21:36:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2479555278388229963=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Cursor_vblank_e?=
 =?utf-8?q?vasion_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 16 Jan 2024 21:36:23 -0000
Message-ID: <170544098384.519235.3205037745455082721@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

--===============2479555278388229963==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Cursor vblank evasion (rev3)
URL   : https://patchwork.freedesktop.org/series/127744/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14129 -> Patchwork_127744v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127744v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127744v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127744v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {bat-adls-6}:       [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adls-6/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/bat-adls-6/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_127744v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-adlp-6:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
    - bat-dg2-8:          [PASS][7] -> [INCOMPLETE][8] ([i915#9280])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#9280]: https://gitlab.freedesktop.org/drm/intel/issues/9280
  [i915#9943]: https://gitlab.freedesktop.org/drm/intel/issues/9943


Build changes
-------------

  * Linux: CI_DRM_14129 -> Patchwork_127744v3

  CI-20190529: 20190529
  CI_DRM_14129: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7675: ffde49e0583ee5053f25a065356bce6bce91047a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127744v3: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5540e8a678ff Revert "drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation"
629c34748213 drm/i915: Perform vblank evasion around legacy cursor updates
18df1fe0b300 drm/i915: Move intel_vblank_evade() & co. into intel_vblank.c
1a40377765af drm/i915: Move the min/max scanline sanity check into intel_vblank_evade()
03003b9bdff4 drm/i915: Extract intel_vblank_evade()
fb121f57f07d drm/i915: Include need_vlv_dsi_wa in intel_vblank_evade_ctx
6a323300dd09 drm/i915: Introduce struct intel_vblank_evade_ctx
d8be1b741b18 drm/i915: Reorder drm_vblank_put() vs. need_vlv_dsi_wa
49c2682be890 drm/i915: Decouple intel_crtc_vblank_evade_scanlines() from atomic commits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/index.html

--===============2479555278388229963==
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
<tr><td><b>Series:</b></td><td>drm/i915: Cursor vblank evasion (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127744/">https://patchwork.freedesktop.org/series/127744/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14129 -&gt; Patchwork_127744v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127744v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127744v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127744v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adls-6/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/bat-adls-6/igt@i915_selftest@live@execlists.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127744v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14129/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v3/bat-dg2-8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9280">i915#9280</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14129 -&gt; Patchwork_127744v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14129: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7675: ffde49e0583ee5053f25a065356bce6bce91047a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127744v3: b6b50ad4c8d61b14de0ffcf0d52ae2adc0ef39cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5540e8a678ff Revert "drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation"<br />
629c34748213 drm/i915: Perform vblank evasion around legacy cursor updates<br />
18df1fe0b300 drm/i915: Move intel_vblank_evade() &amp; co. into intel_vblank.c<br />
1a40377765af drm/i915: Move the min/max scanline sanity check into intel_vblank_evade()<br />
03003b9bdff4 drm/i915: Extract intel_vblank_evade()<br />
fb121f57f07d drm/i915: Include need_vlv_dsi_wa in intel_vblank_evade_ctx<br />
6a323300dd09 drm/i915: Introduce struct intel_vblank_evade_ctx<br />
d8be1b741b18 drm/i915: Reorder drm_vblank_put() vs. need_vlv_dsi_wa<br />
49c2682be890 drm/i915: Decouple intel_crtc_vblank_evade_scanlines() from atomic commits</p>

</body>
</html>

--===============2479555278388229963==--
