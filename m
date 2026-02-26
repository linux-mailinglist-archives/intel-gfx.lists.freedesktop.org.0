Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOsyDh5hoGk0jAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:05:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2AB1A8342
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 16:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0269710E05D;
	Thu, 26 Feb 2026 15:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F12610E05D;
 Thu, 26 Feb 2026 15:04:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7193807771243389498=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Fix_potential?=
 =?utf-8?q?_overflow_of_shmem_scatterlist_length_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Feb 2026 15:04:54 -0000
Message-ID: <177211829423.292161.7584866608063533767@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260224094944.2447913-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260224094944.2447913-2-janusz.krzysztofik@linux.intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.102];
	RSPAMD_EMAILBL_FAIL(0.00)[live.memory_region:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CB2AB1A8342
X-Rspamd-Action: no action

--===============7193807771243389498==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix potential overflow of shmem scatterlist length (rev3)
URL   : https://patchwork.freedesktop.org/series/162053/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18052 -> Patchwork_162053v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_162053v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_162053v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_162053v3:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-dg2-9:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_162053v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] +4 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-atsm-1:         [PASS][4] -> [ABORT][5] ([i915#15759]) +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
    - bat-dg2-9:          [PASS][6] -> [ABORT][7] ([i915#15759])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][8] -> [DMESG-FAIL][9] ([i915#12061]) +1 other test dmesg-fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][10] ([i915#15707]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-arlh-2/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-arlh-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@memory_region:
    - bat-arlh-2:         [INCOMPLETE][12] ([i915#15630]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-arlh-2/igt@i915_selftest@live@memory_region.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-arlh-2/igt@i915_selftest@live@memory_region.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][14] ([i915#12061]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [FAIL][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-nick:        [ABORT][18] -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#15630]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15630
  [i915#15707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15707
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759


Build changes
-------------

  * Linux: CI_DRM_18052 -> Patchwork_162053v3

  CI-20190529: 20190529
  CI_DRM_18052: 50b03c02e68b265fb85f3844a4c24e57c5ad3b4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8773: 8773
  Patchwork_162053v3: 50b03c02e68b265fb85f3844a4c24e57c5ad3b4f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/index.html

--===============7193807771243389498==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix potential overflow of shmem scatterlist length (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/162053/">https://patchwork.freedesktop.org/series/162053/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18052 -&gt; Patchwork_162053v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_162053v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_162053v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_162053v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_lmem_swapping@parallel-random-engines:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162053v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +4 other tests skip</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-atsm-1/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15707">i915#15707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-arlh-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@memory_region:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-arlh-2/igt@i915_selftest@live@memory_region.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15630">i915#15630</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-arlh-2/igt@i915_selftest@live@memory_region.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18052/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162053v3/fi-bsw-nick/igt@prime_vgem@basic-fence-read.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18052 -&gt; Patchwork_162053v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18052: 50b03c02e68b265fb85f3844a4c24e57c5ad3b4f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8773: 8773<br />
  Patchwork_162053v3: 50b03c02e68b265fb85f3844a4c24e57c5ad3b4f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7193807771243389498==--
