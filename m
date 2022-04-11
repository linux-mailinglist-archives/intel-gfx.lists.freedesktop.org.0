Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA30B4FC3B5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 19:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B098710E03B;
	Mon, 11 Apr 2022 17:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9430010E03B;
 Mon, 11 Apr 2022 17:54:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90159A0078;
 Mon, 11 Apr 2022 17:54:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0115691313711912390=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 11 Apr 2022 17:54:08 -0000
Message-ID: <164969964855.2972.16383658564965743641@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649685475.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649685475.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_low_level_EDID_block_read_refactoring_etc=2E_=28rev5?=
 =?utf-8?q?=29?=
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

--===============0115691313711912390==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: low level EDID block read refactoring etc. (rev5)
URL   : https://patchwork.freedesktop.org/series/102329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11482 -> Patchwork_102329v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/index.html

Participating hosts (53 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (18): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-adlm-1 fi-icl-u2 bat-dg2-9 bat-adlp-6 fi-bsw-cyan bat-adlp-4 bat-hsw-1 fi-hsw-4770 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_102329v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +39 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][2] -> [INCOMPLETE][3] ([i915#3921])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - fi-tgl-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-tgl-u2/igt@kms_busy@basic@modeset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-tgl-u2/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#5341])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [INCOMPLETE][7] ([i915#2373] / [i915#4983]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][9] ([i915#3303] / [i915#4785]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][11] ([i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-tgl-u2/igt@kms_busy@basic@flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341


Build changes
-------------

  * Linux: CI_DRM_11482 -> Patchwork_102329v5

  CI-20190529: 20190529
  CI_DRM_11482: 1745c71775af931726ab18afcd95f73ea8699e49 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6419: 33a5adf20dc435cc2c6dd584caa3674c89032762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_102329v5: 102329v5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b98e5b2f7f7a drm/edid: add EDID block count and size helpers
bfd304726831 drm/edid: add single point of return to drm_do_get_edid()
e97dd84bf6aa drm/edid: drop extra local var
5c93dad479c5 drm/edid: convert extension block read to EDID block read helper
980c66c6bc38 drm/edid: use EDID block read helper in drm_do_get_edid()
999e727d99b6 drm/edid: abstract an EDID block read helper
e17d66455d34 drm/edid: add typedef for block read function
c1b8e0e1d4da drm/edid: pass struct edid to connector_bad_edid()
d0399e6539bd drm/edid: add a helper to log dump an EDID block
7583233f5a43 drm/edid: refactor EDID block status printing
0d23358670a9 drm/edid: have edid_block_check() detect blocks that are all zero
4ccd25f176f2 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/index.html

--===============0115691313711912390==
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
<tr><td><b>Series:</b></td><td>drm/edid: low level EDID block read refactoring etc. (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102329/">https://patchwork.freedesktop.org/series/102329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11482 -&gt; Patchwork_102329v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/index.html</p>
<h2>Participating hosts (53 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (18): fi-bdw-samus shard-tglu bat-dg1-6 bat-dg2-8 shard-rkl bat-adlm-1 fi-icl-u2 bat-dg2-9 bat-adlp-6 fi-bsw-cyan bat-adlp-4 bat-hsw-1 fi-hsw-4770 bat-rpls-1 bat-rpls-2 shard-dg1 bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_102329v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-tgl-u2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-tgl-u2/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11482/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102329v5/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11482 -&gt; Patchwork_102329v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11482: 1745c71775af931726ab18afcd95f73ea8699e49 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6419: 33a5adf20dc435cc2c6dd584caa3674c89032762 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_102329v5: 102329v5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b98e5b2f7f7a drm/edid: add EDID block count and size helpers<br />
bfd304726831 drm/edid: add single point of return to drm_do_get_edid()<br />
e97dd84bf6aa drm/edid: drop extra local var<br />
5c93dad479c5 drm/edid: convert extension block read to EDID block read helper<br />
980c66c6bc38 drm/edid: use EDID block read helper in drm_do_get_edid()<br />
999e727d99b6 drm/edid: abstract an EDID block read helper<br />
e17d66455d34 drm/edid: add typedef for block read function<br />
c1b8e0e1d4da drm/edid: pass struct edid to connector_bad_edid()<br />
d0399e6539bd drm/edid: add a helper to log dump an EDID block<br />
7583233f5a43 drm/edid: refactor EDID block status printing<br />
0d23358670a9 drm/edid: have edid_block_check() detect blocks that are all zero<br />
4ccd25f176f2 drm/edid: convert edid_is_zero() to edid_block_is_zero() for blocks</p>

</body>
</html>

--===============0115691313711912390==--
