Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B914F6964
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 20:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56DF410E099;
	Wed,  6 Apr 2022 18:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 024AA10E099;
 Wed,  6 Apr 2022 18:50:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F370BA01BB;
 Wed,  6 Apr 2022 18:50:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5434187332327026554=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 06 Apr 2022 18:50:00 -0000
Message-ID: <164927100096.5451.10222104918856519025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/bios=3A_Rework_BDB_block_handling_and_PNPID-=3Epanel=5Fty?=
 =?utf-8?q?pe_matching_=28rev4=29?=
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

--===============5434187332327026554==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Rework BDB block handling and PNPID->panel_type matching (rev4)
URL   : https://patchwork.freedesktop.org/series/102213/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11465 -> Patchwork_22797
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_22797 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22797, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/index.html

Participating hosts (50 -> 43)
------------------------------

  Missing    (7): shard-tglu fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-pnv-d510 bat-rpls-1 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22797:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-bxt-dsi:         [FAIL][1] ([i915#4312] / [i915#5257]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-bxt-dsi/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-bxt-dsi/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@verify-random:
    - {bat-dg2-9}:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_ringfill@basic-all:
    - {bat-dg2-8}:        [PASS][4] -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/bat-dg2-8/igt@gem_ringfill@basic-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-dg2-8/igt@gem_ringfill@basic-all.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - {bat-adlp-6}:       [DMESG-WARN][6] ([i915#3576]) -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_22797 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [PASS][8] -> [INCOMPLETE][9] ([i915#146])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][10] -> [INCOMPLETE][11] ([i915#3921])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][12] ([i915#3576]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7567u:       [DMESG-WARN][14] -> [DMESG-WARN][15] ([i915#5437])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5195]: https://gitlab.freedesktop.org/drm/intel/issues/5195
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
  [i915#5437]: https://gitlab.freedesktop.org/drm/intel/issues/5437


Build changes
-------------

  * Linux: CI_DRM_11465 -> Patchwork_22797

  CI-20190529: 20190529
  CI_DRM_11465: ffe5d6a4b92fb26e9067efb1278fb58c9af68628 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6413: 7506029428b3740395ce086daf86b9498fbbeb77 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22797: 41cadc9f81e3e56772cead934324d861d1bc6c61 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

41cadc9f81e3 drm/i915/bios: Dump PNPID and panel name
3b81ff885960 drm/edid: Extract drm_edid_decode_mfg_id()
f661fdbb6c91 drm/i915: Respect VBT seamless DRRS min refresh rate
f21af8606c61 drm/i915/bios: Parse the seamless DRRS min refresh rate
5569057d6965 drm/i915/bios: Determine panel type via PNPID match
7106a9b6a6d5 drm/i915/bios: Refactor panel_type code
082d08598bc3 drm/i915/bios: Extract get_panel_type()
3afee78fe4c6 drm/i915/bios: Do panel specific VBT parsing later
135bb305bf0d drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
987ad104edba drm/i915/pps: Split PPS init+sanitize in two
511de072181d drm/i915/bios: Split VBT parsing to global vs. panel specific parts
16cec422aefa drm/i915/bios: Split parse_driver_features() into two parts
718fdbd4b349 drm/i915/bios: Assume panel_type==0 if the VBT has bogus data
e54cf3e16a29 drm/i915/bios: Get access to the tail end of the LFP data block
6797181190b9 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them
4b1cfd666e42 drm/i915/bios: Reorder panel DTD parsing
2e9070604964 drm/i915/bios: Validate the panel_name table
bed8bb53d49d drm/i915/bios: Trust the LFP data pointers
30d47b4d1757 drm/i915/bios: Validate LFP data table pointers
f84bede3e81c drm/i915/bios: Use the copy of the LFP data table always
91a6a31d6e40 drm/i915/bios: Make copies of VBT data blocks
b4e5171b664d drm/i915/bios: Use the cached BDB version

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/index.html

--===============5434187332327026554==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Rework BDB block handling and PNPID-&gt;panel_type matching (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102213/">https://patchwork.freedesktop.org/series/102213/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11465 -&gt; Patchwork_22797</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_22797 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22797, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/index.html</p>
<h2>Participating hosts (50 -&gt; 43)</h2>
<p>Missing    (7): shard-tglu fi-bsw-cyan fi-ctg-p8600 fi-hsw-4770 fi-pnv-d510 bat-rpls-1 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22797:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-dg2-9/igt@gem_lmem_swapping@verify-random.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/bat-dg2-8/igt@gem_ringfill@basic-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-dg2-8/igt@gem_ringfill@basic-all.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-adlp-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22797 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset@a-edp1:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11465/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22797/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5437">i915#5437</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11465 -&gt; Patchwork_22797</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11465: ffe5d6a4b92fb26e9067efb1278fb58c9af68628 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6413: 7506029428b3740395ce086daf86b9498fbbeb77 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22797: 41cadc9f81e3e56772cead934324d861d1bc6c61 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>41cadc9f81e3 drm/i915/bios: Dump PNPID and panel name<br />
3b81ff885960 drm/edid: Extract drm_edid_decode_mfg_id()<br />
f661fdbb6c91 drm/i915: Respect VBT seamless DRRS min refresh rate<br />
f21af8606c61 drm/i915/bios: Parse the seamless DRRS min refresh rate<br />
5569057d6965 drm/i915/bios: Determine panel type via PNPID match<br />
7106a9b6a6d5 drm/i915/bios: Refactor panel_type code<br />
082d08598bc3 drm/i915/bios: Extract get_panel_type()<br />
3afee78fe4c6 drm/i915/bios: Do panel specific VBT parsing later<br />
135bb305bf0d drm/i915/pps: Reinit PPS delays after VBT has been fully parsed<br />
987ad104edba drm/i915/pps: Split PPS init+sanitize in two<br />
511de072181d drm/i915/bios: Split VBT parsing to global vs. panel specific parts<br />
16cec422aefa drm/i915/bios: Split parse_driver_features() into two parts<br />
718fdbd4b349 drm/i915/bios: Assume panel_type==0 if the VBT has bogus data<br />
e54cf3e16a29 drm/i915/bios: Get access to the tail end of the LFP data block<br />
6797181190b9 drm/i915/bios: Generate LFP data table pointers if the VBT lacks them<br />
4b1cfd666e42 drm/i915/bios: Reorder panel DTD parsing<br />
2e9070604964 drm/i915/bios: Validate the panel_name table<br />
bed8bb53d49d drm/i915/bios: Trust the LFP data pointers<br />
30d47b4d1757 drm/i915/bios: Validate LFP data table pointers<br />
f84bede3e81c drm/i915/bios: Use the copy of the LFP data table always<br />
91a6a31d6e40 drm/i915/bios: Make copies of VBT data blocks<br />
b4e5171b664d drm/i915/bios: Use the cached BDB version</p>

</body>
</html>

--===============5434187332327026554==--
