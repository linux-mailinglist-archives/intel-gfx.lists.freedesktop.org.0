Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKGGDVe8nGlSKAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 21:45:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 942C517D18B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 21:45:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E40410E310;
	Mon, 23 Feb 2026 20:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 430E310E310;
 Mon, 23 Feb 2026 20:45:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7791479052373242636=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_dma-buf=3A_revert_=22use_?=
 =?utf-8?q?inline_lock_for_the_dma-fence-chain=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Feb 2026 20:45:08 -0000
Message-ID: <177187950824.277322.6028211961024553197@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260223195705.206226-1-christian.koenig@amd.com>
In-Reply-To: <20260223195705.206226-1-christian.koenig@amd.com>
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
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.542];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 942C517D18B
X-Rspamd-Action: no action

--===============7791479052373242636==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-buf: revert "use inline lock for the dma-fence-chain"
URL   : https://patchwork.freedesktop.org/series/162008/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18022 -> Patchwork_162008v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_162008v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_162008v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_162008v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [PASS][1] -> [TIMEOUT][2] +1 other test timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:
    - bat-arls-5:         [PASS][3] -> [DMESG-WARN][4] +3 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] +48 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  
Known issues
------------

  Here are the changes found in Patchwork_162008v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - bat-arls-6:         [PASS][7] -> [DMESG-WARN][8] ([i915#15738]) +36 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@evict:
    - bat-arls-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#15738])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@evict.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-6:         [PASS][11] -> [INCOMPLETE][12] ([i915#15738])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arls-5:         [PASS][13] -> [DMESG-WARN][14] ([i915#15738]) +17 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@sanitycheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [PASS][15] -> [DMESG-FAIL][16] ([i915#12061]) +1 other test dmesg-fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][17] -> [SKIP][18] ([i915#13030])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-6:         [DMESG-FAIL][19] ([i915#12061]) -> [INCOMPLETE][20] ([i915#15738])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-6:         [DMESG-FAIL][21] ([i915#12061]) -> [DMESG-WARN][22] ([i915#15738])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
  [i915#15738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738


Build changes
-------------

  * Linux: CI_DRM_18022 -> Patchwork_162008v1

  CI-20190529: 20190529
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8765: 8765
  Patchwork_162008v1: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/index.html

--===============7791479052373242636==
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
<tr><td><b>Series:</b></td><td>dma-buf: revert &quot;use inline lock for the dma-fence-chain&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/162008/">https://patchwork.freedesktop.org/series/162008/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18022 -&gt; Patchwork_162008v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_162008v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_162008v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_162008v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-5/igt@i915_selftest@live.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">DMESG-WARN</a> +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> +48 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162008v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) +36 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live@evict.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-5/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) +17 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030">i915#13030</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162008v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18022 -&gt; Patchwork_162008v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8765: 8765<br />
  Patchwork_162008v1: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7791479052373242636==--
