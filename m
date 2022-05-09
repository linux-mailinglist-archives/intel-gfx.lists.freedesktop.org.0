Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA8152055C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 21:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1549C10EE0F;
	Mon,  9 May 2022 19:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46E3910F2FD;
 Mon,  9 May 2022 19:37:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34FC2A3C0D;
 Mon,  9 May 2022 19:37:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3135199208871783639=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 09 May 2022 19:37:34 -0000
Message-ID: <165212505418.22807.15133837710927785825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1652097712.git.jani.nikula@intel.com>
In-Reply-To: <cover.1652097712.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_introduce_struct_drm=5Fedid_=28rev3=29?=
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

--===============3135199208871783639==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: introduce struct drm_edid (rev3)
URL   : https://patchwork.freedesktop.org/series/103665/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11626 -> Patchwork_103665v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/index.html

Participating hosts (33 -> 32)
------------------------------

  Missing    (1): fi-bsw-cyan 

Known issues
------------

  Here are the changes found in Patchwork_103665v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][1] ([i915#3921])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][2] -> [DMESG-FAIL][3] ([i915#4528])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11626/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-snb-2600:        NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bdw-5557u:       [INCOMPLETE][5] ([i915#5502] / [i915#5801]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11626/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][7] ([i915#3921]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11626/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5502]: https://gitlab.freedesktop.org/drm/intel/issues/5502
  [i915#5801]: https://gitlab.freedesktop.org/drm/intel/issues/5801


Build changes
-------------

  * Linux: CI_DRM_11626 -> Patchwork_103665v3

  CI-20190529: 20190529
  CI_DRM_11626: 1672d1c43e4377628b445ab011343fe2496a41ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103665v3: 1672d1c43e4377628b445ab011343fe2496a41ce @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

14c24a76c8dd drm/edid: convert version_greater() to drm_edid
887eca31dc58 drm/displayid: convert to drm_edid
d6e929318a25 drm/edid: add drm_edid helper for drm_update_tile_info()
84b5cd1db29d drm/edid: convert drm_edid_iter_begin() to drm_edid
75cc7874459a drm/edid: convert cea_db_iter_edid_begin() to drm_edid
d61752a8edee drm/edid: add drm_edid helper for drm_detect_monitor_audio()
9f0a74cfecbd drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()
ee4fd62329cb drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()
4579200a29a1 drm/edid: add drm_edid helper for drm_edid_to_sad()
75b960772f0a drm/edid: convert drm_for_each_detailed_block() to drm_edid
1608ab19116c drm/edid: convert get_monitor_name() to drm_edid
8b147f679720 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid
b2f7cbcd7045 drm/edid: convert drm_mode_std() and children to drm_edid
42889319da3c drm/edid: convert drm_cvt_modes_for_range() to drm_edid
2ede3f02a1d3 drm/edid: convert drm_gtf_modes_for_range() to drm_edid
fa8b8f9695da drm/edid: convert drm_dmt_modes_for_range() to drm_edid
799fb65cdeab drm/edid: convert drm_mode_detailed() to drm_edid
cf3fb96f4cc7 drm/edid: convert struct detailed_mode_closure to drm_edid
cda106e80205 drm/edid: convert drm_edid_connector_update() to drm_edid fully
26423badbb3b drm/edid: propagate drm_edid to drm_edid_to_eld()
b0bec2262156 drm/edid: keep propagating drm_edid to display info
7c3f00428d82 drm/edid: start propagating drm_edid to lower levels
8fd46f0d7c21 drm/edid: add struct drm_edid container
9a102d3c908b drm/edid: convert drm_for_each_detailed_block() to edid iter
b996c6b39294 drm/edid: use else-if in CTA extension parsing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/index.html

--===============3135199208871783639==
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
<tr><td><b>Series:</b></td><td>drm/edid: introduce struct drm_edid (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103665/">https://patchwork.freedesktop.org/series/103665/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11626 -&gt; Patchwork_103665v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/index.html</p>
<h2>Participating hosts (33 -&gt; 32)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103665v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11626/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11626/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5502">i915#5502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5801">i915#5801</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11626/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103665v3/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11626 -&gt; Patchwork_103665v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11626: 1672d1c43e4377628b445ab011343fe2496a41ce @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6468: cffa5fffe9acddf49565b4caeeb5e3355ff2ea44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103665v3: 1672d1c43e4377628b445ab011343fe2496a41ce @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>14c24a76c8dd drm/edid: convert version_greater() to drm_edid<br />
887eca31dc58 drm/displayid: convert to drm_edid<br />
d6e929318a25 drm/edid: add drm_edid helper for drm_update_tile_info()<br />
84b5cd1db29d drm/edid: convert drm_edid_iter_begin() to drm_edid<br />
75cc7874459a drm/edid: convert cea_db_iter_edid_begin() to drm_edid<br />
d61752a8edee drm/edid: add drm_edid helper for drm_detect_monitor_audio()<br />
9f0a74cfecbd drm/edid: add drm_edid helper for drm_detect_hdmi_monitor()<br />
ee4fd62329cb drm/edid: add drm_edid helper for drm_edid_to_speaker_allocation()<br />
4579200a29a1 drm/edid: add drm_edid helper for drm_edid_to_sad()<br />
75b960772f0a drm/edid: convert drm_for_each_detailed_block() to drm_edid<br />
1608ab19116c drm/edid: convert get_monitor_name() to drm_edid<br />
8b147f679720 drm/edid: convert mode_in_range() and drm_monitor_supports_rb() to drm_edid<br />
b2f7cbcd7045 drm/edid: convert drm_mode_std() and children to drm_edid<br />
42889319da3c drm/edid: convert drm_cvt_modes_for_range() to drm_edid<br />
2ede3f02a1d3 drm/edid: convert drm_gtf_modes_for_range() to drm_edid<br />
fa8b8f9695da drm/edid: convert drm_dmt_modes_for_range() to drm_edid<br />
799fb65cdeab drm/edid: convert drm_mode_detailed() to drm_edid<br />
cf3fb96f4cc7 drm/edid: convert struct detailed_mode_closure to drm_edid<br />
cda106e80205 drm/edid: convert drm_edid_connector_update() to drm_edid fully<br />
26423badbb3b drm/edid: propagate drm_edid to drm_edid_to_eld()<br />
b0bec2262156 drm/edid: keep propagating drm_edid to display info<br />
7c3f00428d82 drm/edid: start propagating drm_edid to lower levels<br />
8fd46f0d7c21 drm/edid: add struct drm_edid container<br />
9a102d3c908b drm/edid: convert drm_for_each_detailed_block() to edid iter<br />
b996c6b39294 drm/edid: use else-if in CTA extension parsing</p>

</body>
</html>

--===============3135199208871783639==--
