Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D62564F6F4B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 02:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4834510E1B5;
	Thu,  7 Apr 2022 00:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B056E10E155;
 Thu,  7 Apr 2022 00:44:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB724AADD7;
 Thu,  7 Apr 2022 00:44:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7516386119961498053=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 00:44:21 -0000
Message-ID: <164929226166.14673.6959254599764750582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epanel=5Fty?=
 =?utf-8?q?pe_matching_=28rev6=29?=
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

--===============7516386119961498053==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching (rev6)
URL   : https://patchwork.freedesktop.org/series/102213/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11467 -> Patchwork_22801
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_22801 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22801, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/index.html

Participating hosts (51 -> 44)
------------------------------

  Missing    (7): shard-tglu fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-hsw-4770 shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22801:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-bxt-dsi:         [FAIL][1] ([i915#4312] / [i915#5257]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-bxt-dsi/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22801 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][3] ([i915#3921])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-snb-2600:        NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-snb-2600/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-6:          [FAIL][7] ([i915#4032]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-dg1-6/igt@i915_pm_rps@basic-api.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-soraka:      [DMESG-WARN][9] ([i915#5437]) -> [DMESG-WARN][10] ([i915#1982] / [i915#5437])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5437]: https://gitlab.freedesktop.org/drm/intel/issues/5437


Build changes
-------------

  * Linux: CI_DRM_11467 -> Patchwork_22801

  CI-20190529: 20190529
  CI_DRM_11467: 9620d9a4dee7a4c418de2683f3a7f544042c1a4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6414: b4d8d30a4ec8dae5c1c403f41348c073a9591d9f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22801: 9f80bf52f53a59940c439d4f636489e6ae56a127 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9f80bf52f53a drm/i915/bios: Dump PNPID and panel name
b05a19342dcb drm/edid: Extract drm_edid_decode_mfg_id()
1ec0c835042e drm/i915: Respect VBT seamless DRRS min refresh rate
409a939b51b8 drm/i915/bios: Parse the seamless DRRS min refresh rate
98e3b7bd98d0 drm/i915/bios: Determine panel type via PNPID match
bdb3831d1ec8 drm/i915/bios: Refactor panel_type code
99290a9ac023 drm/i915/bios: Extract get_panel_type()
1f699fc7080d drm/i915/bios: Do panel specific VBT parsing later
ee0b015fb8b5 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
f3f6fd93b1d9 drm/i915/pps: Split PPS init+sanitize in two
d2557a522b00 drm/i915/bios: Split VBT parsing to global vs. panel specific parts
d09cde4bafdd drm/i915/bios: Split parse_driver_features() into two parts
77fbdc1340cb drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
88f348858b05 drm/i915/bios: Get access to the tail end of the LFP data block
cf38814a8c6c drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
352847c0e8b3 drm/i915/bios: Reorder panel DTD parsing
e7a5932867a6 drm/i915/bios: Validate the panel_name table
9d8c9b4008e5 drm/i915/bios: Trust the LFP data pointers
4cfe7896f554 drm/i915/bios: Validate LFP data table pointers
672b309530c4 drm/i915/bios: Use the copy of the LFP data table always
8dc5af439d5d drm/i915/bios: Make copies of VBT data blocks
fdfc2be08fd7 drm/i915/bios: Use the cached BDB version

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/index.html

--===============7516386119961498053==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling and PNPID-&gt;panel_type matching (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102213/">https://patchwork.freedesktop.org/series/102213/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11467 -&gt; Patchwork_22801</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_22801 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22801, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/index.html</p>
<h2>Participating hosts (51 -&gt; 44)</h2>
<p>Missing    (7): shard-tglu fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-hsw-4770 shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22801:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22801 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-snb-2600/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rps@basic-api:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/bat-dg1-6/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4032">i915#4032</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/bat-dg1-6/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22801/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11467 -&gt; Patchwork_22801</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11467: 9620d9a4dee7a4c418de2683f3a7f544042c1a4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6414: b4d8d30a4ec8dae5c1c403f41348c073a9591d9f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22801: 9f80bf52f53a59940c439d4f636489e6ae56a127 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9f80bf52f53a drm/i915/bios: Dump PNPID and panel name<br />
b05a19342dcb drm/edid: Extract drm_edid_decode_mfg_id()<br />
1ec0c835042e drm/i915: Respect VBT seamless DRRS min refresh rate<br />
409a939b51b8 drm/i915/bios: Parse the seamless DRRS min refresh rate<br />
98e3b7bd98d0 drm/i915/bios: Determine panel type via PNPID match<br />
bdb3831d1ec8 drm/i915/bios: Refactor panel_type code<br />
99290a9ac023 drm/i915/bios: Extract get_panel_type()<br />
1f699fc7080d drm/i915/bios: Do panel specific VBT parsing later<br />
ee0b015fb8b5 drm/i915/pps: Reinit PPS delays after VBT has been fully parsed<br />
f3f6fd93b1d9 drm/i915/pps: Split PPS init+sanitize in two<br />
d2557a522b00 drm/i915/bios: Split VBT parsing to global vs. panel specific parts<br />
d09cde4bafdd drm/i915/bios: Split parse_driver_features() into two parts<br />
77fbdc1340cb drm/i915/bios: Assume panel_type==0 if the VBT has bogus data<br />
88f348858b05 drm/i915/bios: Get access to the tail end of the LFP data block<br />
cf38814a8c6c drm/i915/bios: Generate LFP data table pointers if the VBT lacks them<br />
352847c0e8b3 drm/i915/bios: Reorder panel DTD parsing<br />
e7a5932867a6 drm/i915/bios: Validate the panel_name table<br />
9d8c9b4008e5 drm/i915/bios: Trust the LFP data pointers<br />
4cfe7896f554 drm/i915/bios: Validate LFP data table pointers<br />
672b309530c4 drm/i915/bios: Use the copy of the LFP data table always<br />
8dc5af439d5d drm/i915/bios: Make copies of VBT data blocks<br />
fdfc2be08fd7 drm/i915/bios: Use the cached BDB version</p>

</body>
</html>

--===============7516386119961498053==--
