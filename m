Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t2eTJdtMMWoggQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 15:17:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B87E168FD35
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 15:17:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A03910EAD0;
	Tue, 16 Jun 2026 13:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4128910E76C;
 Tue, 16 Jun 2026 13:17:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8655162601856919790=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_All_p?=
 =?utf-8?q?atches_to_make_PREEMPT=5FRT_work_on_i915_+_xe=2E_=28rev16=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2026 13:17:11 -0000
Message-ID: <178161583125.85068.1079589773083129132@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260615201846.307297-1-dev@lankhorst.se>
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [8.89 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,gitlab.freedesktop.org:url,patchwork.freedesktop.org:url,01.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B87E168FD35
X-Spam: Yes

--===============8655162601856919790==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev16)
URL   : https://patchwork.freedesktop.org/series/159035/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18682 -> Patchwork_159035v16
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_159035v16 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_159035v16, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/index.html

Participating hosts (42 -> 33)
------------------------------

  Missing    (9): bat-mtlp-8 bat-mtlp-9 bat-arlh-3 fi-snb-2520m fi-pnv-d510 bat-dg2-13 bat-arls-6 bat-arls-5 bat-arlh-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_159035v16:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live:
    - fi-cfl-8109u:       [DMESG-WARN][1] ([i915#13735]) -> [DMESG-FAIL][2] +2 other tests dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-cfl-8109u/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-cfl-8109u/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_159035v16 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - bat-atsm-1:         [PASS][3] -> [TIMEOUT][4] ([i915#16443]) +1 other test timeout
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-atsm-1/igt@gem_lmem_swapping@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-atsm-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_render_tiled_blits@basic:
    - fi-bsw-n3050:       [PASS][5] -> [ABORT][6] ([i915#16444])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live:
    - fi-kbl-8809g:       [PASS][7] -> [DMESG-FAIL][8] ([i915#16445]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-kbl-8809g/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-kbl-8809g/igt@i915_selftest@live.html
    - bat-adls-6:         [PASS][9] -> [ABORT][10] ([i915#16447]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-adls-6/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-adls-6/igt@i915_selftest@live.html
    - bat-apl-1:          [PASS][11] -> [INCOMPLETE][12] ([i915#16446])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - fi-bsw-nick:        [PASS][13] -> [INCOMPLETE][14] ([i915#16448]) +1 other test incomplete
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-bsw-nick/igt@i915_selftest@live@active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-bsw-nick/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - bat-apl-1:          [PASS][15] -> [INCOMPLETE][16] ([i915#16448])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@i915_selftest@live@execlists.html
    - bat-kbl-2:          [PASS][17] -> [DMESG-FAIL][18] ([i915#16445]) +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-kbl-2/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-kbl-2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_migrate:
    - bat-atsm-1:         [PASS][19] -> [INCOMPLETE][20] ([i915#16448]) +1 other test incomplete
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@migrate:
    - bat-apl-1:          [PASS][21] -> [DMESG-FAIL][22] ([i915#16446])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@i915_selftest@live@migrate.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@i915_selftest@live@migrate.html
    - fi-bsw-nick:        [PASS][23] -> [DMESG-FAIL][24] ([i915#16318])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-bsw-nick/igt@i915_selftest@live@migrate.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-bsw-nick/igt@i915_selftest@live@migrate.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-apl-1:          [PASS][25] -> [FAIL][26] ([i915#16140])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#16140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16140
  [i915#16318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16318
  [i915#16443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16443
  [i915#16444]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16444
  [i915#16445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16445
  [i915#16446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16446
  [i915#16447]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16447
  [i915#16448]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16448


Build changes
-------------

  * Linux: CI_DRM_18682 -> Patchwork_159035v16

  CI-20190529: 20190529
  CI_DRM_18682: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8963: b19a1c7c50adbf0e090be48d9cbc90596a3434bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_159035v16: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/index.html

--===============8655162601856919790==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: All patches to make PREEMPT_RT work on i915 + xe. (rev16)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159035/">https://patchwork.freedesktop.org/series/159035/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18682 -&gt; Patchwork_159035v16</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_159035v16 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_159035v16, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/index.html</p>
<h2>Participating hosts (42 -&gt; 33)</h2>
<p>Missing    (9): bat-mtlp-8 bat-mtlp-9 bat-arlh-3 fi-snb-2520m fi-pnv-d510 bat-dg2-13 bat-arls-6 bat-arls-5 bat-arlh-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_159035v16:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-cfl-8109u/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-cfl-8109u/igt@i915_selftest@live.html">DMESG-FAIL</a> +2 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159035v16 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-atsm-1/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-atsm-1/igt@gem_lmem_swapping@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16443">i915#16443</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16444">i915#16444</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-kbl-8809g/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-kbl-8809g/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16445">i915#16445</a>) +1 other test dmesg-fail</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-adls-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-adls-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16447">i915#16447</a>) +1 other test abort</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16446">i915#16446</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-bsw-nick/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-bsw-nick/igt@i915_selftest@live@active.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16448">i915#16448</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16448">i915#16448</a>)</li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-kbl-2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-kbl-2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16445">i915#16445</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-atsm-1/igt@i915_selftest@live@gem_migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16448">i915#16448</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16446">i915#16446</a>)</li>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/fi-bsw-nick/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/fi-bsw-nick/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16318">i915#16318</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18682/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159035v16/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16140">i915#16140</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18682 -&gt; Patchwork_159035v16</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18682: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8963: b19a1c7c50adbf0e090be48d9cbc90596a3434bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_159035v16: 0984dfdee2a4f9e1922fe919a6b469e115e23360 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8655162601856919790==--
