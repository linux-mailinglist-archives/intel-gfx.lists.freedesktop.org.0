Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D94827CD0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 03:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7326310E35A;
	Tue,  9 Jan 2024 02:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E39910E359;
 Tue,  9 Jan 2024 02:17:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4924711504726204693=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_VBT_read_Cleanup?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Tue, 09 Jan 2024 02:17:24 -0000
Message-ID: <170476664464.197000.13818920118497138555@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
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

--===============4924711504726204693==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: VBT read Cleanup
URL   : https://patchwork.freedesktop.org/series/128341/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14098 -> Patchwork_128341v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/index.html

Participating hosts (35 -> 34)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128341v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
    - {bat-dg2-14}:       [PASS][1] -> [FAIL][2] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14098/bat-dg2-14/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-dg2-14/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_128341v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][3] ([fdo#109271]) +31 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-6:         NOTRUN -> [SKIP][4] ([i915#6645])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-mtlp-6:         NOTRUN -> [SKIP][5] ([i915#9792])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@ring_submission:
    - bat-mtlp-6:         [INCOMPLETE][6] ([i915#10036]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14098/bat-mtlp-6/igt@i915_selftest@live@ring_submission.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-mtlp-6/igt@i915_selftest@live@ring_submission.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10036]: https://gitlab.freedesktop.org/drm/intel/issues/10036
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792


Build changes
-------------

  * Linux: CI_DRM_14098 -> Patchwork_128341v1

  CI-20190529: 20190529
  CI_DRM_14098: 33069fe3dece485caa21cc0870afec427877b105 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7663: b5eca7b97430309e320874594feaeaa8e770e25e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_128341v1: 33069fe3dece485caa21cc0870afec427877b105 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

57b127808526 drm/i915: Use vbt type to determine its validity
d157c2531ee3 drm/i915: Kill reduntant vbt_firmware from intel_vbt
63da8ed54264 drm/i915: Make intel_load_vbt_firmware operate on intel_vbt
2e2b5a3e48cc drm/i915: Make spi_oprom_get_vbt operate on intel_vbt
f3c33f622902 drm/i915: Make oprom_get_vbt operate on intel_vbt
592e9d12ed49 drm/i915: Move vbt firmware load into intel_bios_init
c54a8068a6f0 drm/i915: Move vbt load from opregion to bios init
66ac0be54be4 drm/i915: Make intel_bios_init operate on intel_vbt
df822f8b1b87 drm/i915: Collate vbt cleanup for different types
460fb513a3b3 drm/i915: Classify vbt type based on its residence
9c2264a82760 drm/i915: Init vbt fields when read from oprom/spi
0e5e07ba3d4b drm/i915: Extract opregion vbt capture to its own function
8a2ca9604fb4 drm/i915: Cache opregion asls pointer
83e8e5de9d45 drm/i915: Move vbt fields from opregion to its own structure
cfd9df25ec72 drm/i915: Extract display->vbt_data to a new vbt structure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/index.html

--===============4924711504726204693==
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
<tr><td><b>Series:</b></td><td>VBT read Cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128341/">https://patchwork.freedesktop.org/series/128341/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14098 -&gt; Patchwork_128341v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128341v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:<ul>
<li>{bat-dg2-14}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14098/bat-dg2-14/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-dg2-14/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128341v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-mtlp-6/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-mtlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-mtlp-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14098/bat-mtlp-6/igt@i915_selftest@live@ring_submission.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10036">i915#10036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128341v1/bat-mtlp-6/igt@i915_selftest@live@ring_submission.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14098 -&gt; Patchwork_128341v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14098: 33069fe3dece485caa21cc0870afec427877b105 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7663: b5eca7b97430309e320874594feaeaa8e770e25e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_128341v1: 33069fe3dece485caa21cc0870afec427877b105 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>57b127808526 drm/i915: Use vbt type to determine its validity<br />
d157c2531ee3 drm/i915: Kill reduntant vbt_firmware from intel_vbt<br />
63da8ed54264 drm/i915: Make intel_load_vbt_firmware operate on intel_vbt<br />
2e2b5a3e48cc drm/i915: Make spi_oprom_get_vbt operate on intel_vbt<br />
f3c33f622902 drm/i915: Make oprom_get_vbt operate on intel_vbt<br />
592e9d12ed49 drm/i915: Move vbt firmware load into intel_bios_init<br />
c54a8068a6f0 drm/i915: Move vbt load from opregion to bios init<br />
66ac0be54be4 drm/i915: Make intel_bios_init operate on intel_vbt<br />
df822f8b1b87 drm/i915: Collate vbt cleanup for different types<br />
460fb513a3b3 drm/i915: Classify vbt type based on its residence<br />
9c2264a82760 drm/i915: Init vbt fields when read from oprom/spi<br />
0e5e07ba3d4b drm/i915: Extract opregion vbt capture to its own function<br />
8a2ca9604fb4 drm/i915: Cache opregion asls pointer<br />
83e8e5de9d45 drm/i915: Move vbt fields from opregion to its own structure<br />
cfd9df25ec72 drm/i915: Extract display-&gt;vbt_data to a new vbt structure</p>

</body>
</html>

--===============4924711504726204693==--
