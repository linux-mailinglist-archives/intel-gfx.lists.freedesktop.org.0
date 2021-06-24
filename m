Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295743B29B1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 09:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 862B16EA44;
	Thu, 24 Jun 2021 07:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 731536EA44;
 Thu, 24 Jun 2021 07:47:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6837AA7DFB;
 Thu, 24 Jun 2021 07:47:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 24 Jun 2021 07:47:01 -0000
Message-ID: <162452082141.1853.3980770163697243119@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624070516.21893-1-matthew.brost@intel.com>
In-Reply-To: <20210624070516.21893-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgR3VD?=
 =?utf-8?q?_submission_support?=
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
Content-Type: multipart/mixed; boundary="===============1343725363=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1343725363==
Content-Type: multipart/alternative;
 boundary="===============6470316270556623564=="

--===============6470316270556623564==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GuC submission support
URL   : https://patchwork.freedesktop.org/series/91840/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10271 -> Patchwork_20449
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20449 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20449, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20449:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10271/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@workarounds:
    - fi-snb-2520m:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10271/fi-snb-2520m/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-snb-2520m/igt@i915_selftest@live@workarounds.html
    - fi-snb-2600:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10271/fi-snb-2600/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-snb-2600/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_20449 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +15 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][9] ([fdo#109271]) +63 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][10] ([i915#3363])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363


Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10271 -> Patchwork_20449

  CI-20190529: 20190529
  CI_DRM_10271: 7a4a01d6716339c418394dbeb9a20d55bbb9a9ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20449: 8a320e973471dadebf185470543bfff31807af3f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8a320e973471 drm/i915/guc: Unblock GuC submission on Gen11+
b49edbcc9280 drm/i915/guc: Add golden context to GuC ADS
9bedfd84c9e8 drm/i915/guc: Include scheduling policies in the debugfs state dump
055c438902ea drm/i915/guc: Connect reset modparam updates to GuC policy flags
2529cfc15930 drm/i915/guc: Hook GuC scheduling policies up
c24a302b3409 drm/i915/guc: Fix for error capture after full GPU reset with GuC
d43f902c9f69 drm/i915/guc: Capture error state on context reset
cf156af71348 drm/i915/guc: Enable GuC engine reset
b7f2c290b8da drm/i915/guc: Don't complain about reset races
adcd1418b513 drm/i915/guc: Provide mmio list to be saved/restored on engine reset
ee41dea700c0 drm/i915/guc: Enable the timer expired interrupt for GuC
5560a36d3f00 drm/i915/guc: Handle engine reset failure notification
a921fc062048 drm/i915/guc: Handle context reset notification
345f1eca0a86 drm/i915/guc: Suspend/resume implementation for new interface
17b20c0c8bd7 drm/i915/guc: Add disable interrupts to guc sanitize
848ca056fc3e drm/i915: Reset GPU immediately if submission is disabled
3c79abc34b26 drm/i915/guc: Reset implementation for new GuC interface
7ae740c21ec4 drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
2fca6597dcd8 drm/i915/guc: Disable bonding extension with GuC submission
81e0788642e7 drm/i915: Hold reference to intel_context over life of i915_request
5ca8f1a503a8 drm/i915: Track 'serial' counts for virtual engines
351767d30288 drm/i915/guc: GuC virtual engines
37ebee77b9c2 drm/i915: Add intel_context tracing
4adb7ce61e5f drm/i915/guc: Add several request trace points
c84dc5dbebea drm/i915/guc: Update GuC debugfs to support new GuC
a03438ead8d3 drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC
588df5bce44c drm/i915/guc: Ensure G2H response has space in buffer
59c796b965e6 drm/i915/guc: Disable semaphores when using GuC scheduling
e53180c87b60 drm/i915/guc: Ensure request ordering via completion fences
195129a34fbe drm/i915: Disable preempt busywait when using GuC scheduling
e7452c180185 drm/i915/guc: Extend deregistration fence to schedule disable
9e9fc047e7c1 drm/i915/guc: Disable engine barriers with GuC during unpin
53890c0d5072 drm/i915/guc: Defer context unpin until scheduling is disabled
0ddf4a0e5ead drm/i915/guc: Insert fence on context when deregistering
b9faec389671 drm/i915/guc: Implement GuC context operations for new inteface
86db42bdbf1a drm/i915/guc: Add bypass tasklet submission path to GuC
0478ac5fcc47 drm/i915/guc: Implement GuC submission tasklet
dbd8df00f28f drm/i915/guc: Add lrc descriptor context lookup array
9cc26b390c65 drm/i915/guc: Remove GuC stage descriptor, add lrc descriptor
071d7fa76a91 drm/i915/guc: Add new GuC interface defines and structures
28324246d8aa drm/i915/guc: Module load failure test for CT buffer creation
2c9efd827987 drm/i915/guc: Optimize CTB writes and reads
c0779d6fc3b7 drm/i915/guc: Add stall timer to non blocking CTB send function
3d4dab7e7c81 drm/i915/guc: Add non blocking CTB send function
beb15fc92c92 drm/i915/guc: Increase size of CTB buffers
743d703ec315 drm/i915/guc: Improve error message for unsolicited CT response
a582e9c666ff drm/i915/guc: Relax CTB response timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/index.html

--===============6470316270556623564==
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
<tr><td><b>Series:</b></td><td>GuC submission support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91840/">https://patchwork.freedesktop.org/series/91840/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10271 -&gt; Patchwork_20449</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20449 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20449, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20449:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10271/fi-kbl-8809g/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-kbl-8809g/igt@core_auth@basic-auth.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10271/fi-snb-2520m/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-snb-2520m/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10271/fi-snb-2600/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-snb-2600/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20449 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20449/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10271 -&gt; Patchwork_20449</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10271: 7a4a01d6716339c418394dbeb9a20d55bbb9a9ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20449: 8a320e973471dadebf185470543bfff31807af3f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8a320e973471 drm/i915/guc: Unblock GuC submission on Gen11+<br />
b49edbcc9280 drm/i915/guc: Add golden context to GuC ADS<br />
9bedfd84c9e8 drm/i915/guc: Include scheduling policies in the debugfs state dump<br />
055c438902ea drm/i915/guc: Connect reset modparam updates to GuC policy flags<br />
2529cfc15930 drm/i915/guc: Hook GuC scheduling policies up<br />
c24a302b3409 drm/i915/guc: Fix for error capture after full GPU reset with GuC<br />
d43f902c9f69 drm/i915/guc: Capture error state on context reset<br />
cf156af71348 drm/i915/guc: Enable GuC engine reset<br />
b7f2c290b8da drm/i915/guc: Don't complain about reset races<br />
adcd1418b513 drm/i915/guc: Provide mmio list to be saved/restored on engine reset<br />
ee41dea700c0 drm/i915/guc: Enable the timer expired interrupt for GuC<br />
5560a36d3f00 drm/i915/guc: Handle engine reset failure notification<br />
a921fc062048 drm/i915/guc: Handle context reset notification<br />
345f1eca0a86 drm/i915/guc: Suspend/resume implementation for new interface<br />
17b20c0c8bd7 drm/i915/guc: Add disable interrupts to guc sanitize<br />
848ca056fc3e drm/i915: Reset GPU immediately if submission is disabled<br />
3c79abc34b26 drm/i915/guc: Reset implementation for new GuC interface<br />
7ae740c21ec4 drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs<br />
2fca6597dcd8 drm/i915/guc: Disable bonding extension with GuC submission<br />
81e0788642e7 drm/i915: Hold reference to intel_context over life of i915_request<br />
5ca8f1a503a8 drm/i915: Track 'serial' counts for virtual engines<br />
351767d30288 drm/i915/guc: GuC virtual engines<br />
37ebee77b9c2 drm/i915: Add intel_context tracing<br />
4adb7ce61e5f drm/i915/guc: Add several request trace points<br />
c84dc5dbebea drm/i915/guc: Update GuC debugfs to support new GuC<br />
a03438ead8d3 drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC<br />
588df5bce44c drm/i915/guc: Ensure G2H response has space in buffer<br />
59c796b965e6 drm/i915/guc: Disable semaphores when using GuC scheduling<br />
e53180c87b60 drm/i915/guc: Ensure request ordering via completion fences<br />
195129a34fbe drm/i915: Disable preempt busywait when using GuC scheduling<br />
e7452c180185 drm/i915/guc: Extend deregistration fence to schedule disable<br />
9e9fc047e7c1 drm/i915/guc: Disable engine barriers with GuC during unpin<br />
53890c0d5072 drm/i915/guc: Defer context unpin until scheduling is disabled<br />
0ddf4a0e5ead drm/i915/guc: Insert fence on context when deregistering<br />
b9faec389671 drm/i915/guc: Implement GuC context operations for new inteface<br />
86db42bdbf1a drm/i915/guc: Add bypass tasklet submission path to GuC<br />
0478ac5fcc47 drm/i915/guc: Implement GuC submission tasklet<br />
dbd8df00f28f drm/i915/guc: Add lrc descriptor context lookup array<br />
9cc26b390c65 drm/i915/guc: Remove GuC stage descriptor, add lrc descriptor<br />
071d7fa76a91 drm/i915/guc: Add new GuC interface defines and structures<br />
28324246d8aa drm/i915/guc: Module load failure test for CT buffer creation<br />
2c9efd827987 drm/i915/guc: Optimize CTB writes and reads<br />
c0779d6fc3b7 drm/i915/guc: Add stall timer to non blocking CTB send function<br />
3d4dab7e7c81 drm/i915/guc: Add non blocking CTB send function<br />
beb15fc92c92 drm/i915/guc: Increase size of CTB buffers<br />
743d703ec315 drm/i915/guc: Improve error message for unsolicited CT response<br />
a582e9c666ff drm/i915/guc: Relax CTB response timeout</p>

</body>
</html>

--===============6470316270556623564==--

--===============1343725363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1343725363==--
