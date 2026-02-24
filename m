Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMmJKl3lnWlDSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 18:52:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA8518AC37
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 18:52:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34FC10E5FD;
	Tue, 24 Feb 2026 17:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC99310E5FD;
 Tue, 24 Feb 2026 17:52:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4582602408349249616=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gem=3A_Explicitl?=
 =?utf-8?q?y_return_error_value_from_eb=5Frelocate_helpers_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Feb 2026 17:52:25 -0000
Message-ID: <177195554594.281933.16300640511877183974@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260224170024.10514-2-jonathan.cavitt@intel.com>
In-Reply-To: <20260224170024.10514-2-jonathan.cavitt@intel.com>
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
	NEURAL_HAM(-0.00)[-0.206];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BCA8518AC37
X-Rspamd-Action: no action

--===============4582602408349249616==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Explicitly return error value from eb_relocate helpers (rev3)
URL   : https://patchwork.freedesktop.org/series/161167/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18022 -> Patchwork_161167v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_161167v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_161167v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_161167v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:
    - bat-arls-5:         [PASS][1] -> [DMESG-WARN][2] +4 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_161167v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@evict:
    - bat-arls-5:         [PASS][3] -> [DMESG-FAIL][4] ([i915#15738])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@evict.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-5:         [PASS][5] -> [INCOMPLETE][6] ([i915#15738]) +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arls-5:         [PASS][7] -> [DMESG-WARN][8] ([i915#15738]) +35 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@i915_selftest@live@sanitycheck.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - bat-jsl-5:          [SKIP][9] ([i915#15755]) -> [PASS][10] +3 other tests pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@fbdev@eof.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@fbdev@eof.html

  * igt@fbdev@info:
    - bat-jsl-5:          [SKIP][11] ([i915#1849]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@fbdev@info.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@fbdev@info.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-6:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - bat-jsl-5:          [SKIP][15] ([i915#15754]) -> [PASS][16] +3 other tests pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-jsl-5:          [SKIP][17] ([i915#15756]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-jsl-5:          [SKIP][19] ([i915#11190]) -> [PASS][20] +13 other tests pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-jsl-5:          [SKIP][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@prime_vgem@basic-fence-flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@prime_vgem@basic-fence-flip.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-5:          [SKIP][23] ([i915#11190]) -> [SKIP][24] ([i915#4103]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-jsl-5:          [SKIP][25] ([i915#11190]) -> [SKIP][26] ([i915#3555] / [i915#9886])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_dsc@dsc-basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_dsc@dsc-basic.html

  
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#15738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738
  [i915#15754]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15754
  [i915#15755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15755
  [i915#15756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15756
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_18022 -> Patchwork_161167v3

  CI-20190529: 20190529
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8765: 8765
  Patchwork_161167v3: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/index.html

--===============4582602408349249616==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Explicitly return error value from eb_relocate helpers (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/161167/">https://patchwork.freedesktop.org/series/161167/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18022 -&gt; Patchwork_161167v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_161167v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_161167v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_161167v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">DMESG-WARN</a> +4 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161167v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@i915_selftest@live@evict.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) +35 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@fbdev@eof.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15755">i915#15755</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@fbdev@eof.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15754">i915#15754</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15756">i915#15756</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> +13 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-jsl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161167v3/bat-jsl-5/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18022 -&gt; Patchwork_161167v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8765: 8765<br />
  Patchwork_161167v3: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4582602408349249616==--
