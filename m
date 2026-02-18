Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOavD1SClWlrSAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 10:11:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 327CA154911
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 10:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7286510E2F0;
	Wed, 18 Feb 2026 09:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B06A10E2F0;
 Wed, 18 Feb 2026 09:11:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0002695952587437651=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/colorop=3A_Keep_color?=
 =?utf-8?q?op_state_consistent_across_atomic_commits?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Feb 2026 09:11:44 -0000
Message-ID: <177140590428.261925.13357553967786673470@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260218065713.326417-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260218065713.326417-1-chaitanya.kumar.borah@intel.com>
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
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 327CA154911
X-Rspamd-Action: no action

--===============0002695952587437651==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/colorop: Keep colorop state consistent across atomic commits
URL   : https://patchwork.freedesktop.org/series/161743/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18003 -> Patchwork_161743v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_161743v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6600u:       NOTRUN -> [SKIP][1] ([i915#4613]) +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][2] -> [DMESG-FAIL][3] ([i915#12061]) +1 other test dmesg-fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-mtlp-8/igt@i915_selftest@live.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][4] -> [DMESG-FAIL][5] ([i915#12061]) +1 other test dmesg-fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-6600u:       NOTRUN -> [SKIP][6] +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-arlh-2:         [INCOMPLETE][7] ([i915#15631]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arlh-2/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arlh-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-jsl-1:          [DMESG-FAIL][9] ([i915#14808] / [i915#15394]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-jsl-1/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-jsl-1/igt@i915_selftest@live.html
    - bat-rpls-4:         [INCOMPLETE][11] ([i915#15697]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-rpls-4/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-rpls-4/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-jsl-1:          [DMESG-FAIL][13] ([i915#14808]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-jsl-1/igt@i915_selftest@live@active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-jsl-1/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          [DMESG-FAIL][15] ([i915#15394]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hugepages:
    - bat-arls-5:         [INCOMPLETE][17] ([i915#15696]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arls-5/igt@i915_selftest@live@hugepages.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arls-5/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-6:         [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-skl-6600u:       [INCOMPLETE][21] ([i915#10056]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1:
    - fi-skl-6600u:       [INCOMPLETE][23] ([i915#15698]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808
  [i915#15394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15394
  [i915#15631]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15631
  [i915#15696]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15696
  [i915#15697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15697
  [i915#15698]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15698
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613


Build changes
-------------

  * Linux: CI_DRM_18003 -> Patchwork_161743v1

  CI-20190529: 20190529
  CI_DRM_18003: fc9512d31fa2c190f58c85dbdf7313d2d0ad4b0d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8757: 8757
  Patchwork_161743v1: fc9512d31fa2c190f58c85dbdf7313d2d0ad4b0d @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/index.html

--===============0002695952587437651==
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
<tr><td><b>Series:</b></td><td>drm/colorop: Keep colorop state consistent across atomic commits</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/161743/">https://patchwork.freedesktop.org/series/161743/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18003 -&gt; Patchwork_161743v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161743v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arlh-2/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15631">i915#15631</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arlh-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15394">i915#15394</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-jsl-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-rpls-4/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15697">i915#15697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-rpls-4/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-jsl-1/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-jsl-1/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15394">i915#15394</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arls-5/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15696">i915#15696</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arls-5/igt@i915_selftest@live@hugepages.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18003/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15698">i915#15698</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161743v1/fi-skl-6600u/igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18003 -&gt; Patchwork_161743v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18003: fc9512d31fa2c190f58c85dbdf7313d2d0ad4b0d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8757: 8757<br />
  Patchwork_161743v1: fc9512d31fa2c190f58c85dbdf7313d2d0ad4b0d @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0002695952587437651==--
