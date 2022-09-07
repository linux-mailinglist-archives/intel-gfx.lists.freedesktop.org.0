Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD365B0386
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 14:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FFF10E665;
	Wed,  7 Sep 2022 12:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E0F210E665;
 Wed,  7 Sep 2022 12:01:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77AF4AAA91;
 Wed,  7 Sep 2022 12:01:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6503481314489049993=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 07 Sep 2022 12:01:08 -0000
Message-ID: <166255206846.19839.7395974443987803810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_changes_?=
 =?utf-8?b?KHJldjcp?=
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

--===============6503481314489049993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev7)
URL   : https://patchwork.freedesktop.org/series/103491/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12087 -> Patchwork_103491v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_103491v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][4] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][5] -> [FAIL][6] ([i915#6298])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][7] ([i915#2867]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][11] ([i915#4528]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-blb-e6850/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12087 -> Patchwork_103491v7

  CI-20190529: 20190529
  CI_DRM_12087: 8bdb74fa246bca022b7a5c814ce5a93fe4614402 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6647: 0bf58300f0287d2f83ac02d1201b0d0a229b637c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103491v7: 8bdb74fa246bca022b7a5c814ce5a93fe4614402 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

42d7afdd90d4 drm/i915: Round TMDS clock to nearest
3341c8c62857 drm/i915: Use a fixed N value always
9c1462b636c4 drm/i915: Allow M/N change during fastset on bdw+
72ca3da4bd22 drm/i915: Add intel_panel_highest_mode()
6b52e2480931 drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
ca809f4d5343 drm/i915: Nuke fastet state copy hacks
34abfd1e33de drm/i915: Set active dpll early for icl+
bcae3d7e9556 drm/i915: Make all clock checks non-fuzzy
3e65290d26c0 drm/i915: Make M/N checks non-fuzzy
8ef0ca492820 drm/i915: Compute clocks earlier
0c6a5c0436ec drm/i915: Feed the DPLL output freq back into crtc_state
111b646797ea drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
ed1d7716d0ce drm/i915: Do .crtc_compute_clock() earlier
14ef589fc01e drm/i915/dsi: Extract {vlv, bxt}_get_pclk()
bc37ac1162ae drm/i915: Extract HAS_DOUBLE_BUFFERED_M_N()
0b73f089af82 drm/i915: Shuffle some PLL code around
296860fbab7d drm/i915: Relocate intel_crtc_dotclock()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/index.html

--===============6503481314489049993==
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
<tr><td><b>Series:</b></td><td>drm/i915: Make fastset not suck and allow seamless M/N changes (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103491/">https://patchwork.freedesktop.org/series/103491/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12087 -&gt; Patchwork_103491v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103491v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12087/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v7/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12087 -&gt; Patchwork_103491v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12087: 8bdb74fa246bca022b7a5c814ce5a93fe4614402 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6647: 0bf58300f0287d2f83ac02d1201b0d0a229b637c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103491v7: 8bdb74fa246bca022b7a5c814ce5a93fe4614402 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>42d7afdd90d4 drm/i915: Round TMDS clock to nearest<br />
3341c8c62857 drm/i915: Use a fixed N value always<br />
9c1462b636c4 drm/i915: Allow M/N change during fastset on bdw+<br />
72ca3da4bd22 drm/i915: Add intel_panel_highest_mode()<br />
6b52e2480931 drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled<br />
ca809f4d5343 drm/i915: Nuke fastet state copy hacks<br />
34abfd1e33de drm/i915: Set active dpll early for icl+<br />
bcae3d7e9556 drm/i915: Make all clock checks non-fuzzy<br />
3e65290d26c0 drm/i915: Make M/N checks non-fuzzy<br />
8ef0ca492820 drm/i915: Compute clocks earlier<br />
0c6a5c0436ec drm/i915: Feed the DPLL output freq back into crtc_state<br />
111b646797ea drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()<br />
ed1d7716d0ce drm/i915: Do .crtc_compute_clock() earlier<br />
14ef589fc01e drm/i915/dsi: Extract {vlv, bxt}_get_pclk()<br />
bc37ac1162ae drm/i915: Extract HAS_DOUBLE_BUFFERED_M_N()<br />
0b73f089af82 drm/i915: Shuffle some PLL code around<br />
296860fbab7d drm/i915: Relocate intel_crtc_dotclock()</p>

</body>
</html>

--===============6503481314489049993==--
