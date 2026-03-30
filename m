Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEObNoOUymnF+AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 17:19:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 421C635DA9C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 17:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C190D10E1B6;
	Mon, 30 Mar 2026 15:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CBC10E20A;
 Mon, 30 Mar 2026 15:19:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4106703224211130365=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/selftests=3A_Use?=
 =?utf-8?q?_safe_userspace_memory_for_mappings?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2026 15:19:28 -0000
Message-ID: <177488396864.413124.3143971895319873569@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260330102916.1158786-1-krzysztof.karas@intel.com>
In-Reply-To: <20260330102916.1158786-1-krzysztof.karas@intel.com>
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
	NEURAL_HAM(-0.00)[-0.984];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 421C635DA9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============4106703224211130365==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Use safe userspace memory for mappings
URL   : https://patchwork.freedesktop.org/series/164076/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18248 -> Patchwork_164076v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_164076v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - bat-apl-1:          NOTRUN -> [SKIP][1] +25 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-apl-1/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [PASS][2] -> [DMESG-FAIL][3] ([i915#12061]) +1 other test dmesg-fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - bat-apl-1:          [ABORT][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-apl-1/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-apl-1/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [INCOMPLETE][6] ([i915#15622]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-arlh-3/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem:
    - bat-arlh-3:         [INCOMPLETE][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-arlh-3/igt@i915_selftest@live@gem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-arlh-3/igt@i915_selftest@live@gem.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#15622]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15622


Build changes
-------------

  * Linux: CI_DRM_18248 -> Patchwork_164076v1

  CI-20190529: 20190529
  CI_DRM_18248: 8c24b61314434b46cbe4da73f10bce90b0ea45d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8835: 8835
  Patchwork_164076v1: 8c24b61314434b46cbe4da73f10bce90b0ea45d6 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/index.html

--===============4106703224211130365==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Use safe userspace memory for mappings</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/164076/">https://patchwork.freedesktop.org/series/164076/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18248 -&gt; Patchwork_164076v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_164076v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-apl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-apl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-apl-1/igt@gem_exec_gttfill@basic.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-apl-1/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15622">i915#15622</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-arlh-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18248/bat-arlh-3/igt@i915_selftest@live@gem.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164076v1/bat-arlh-3/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18248 -&gt; Patchwork_164076v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18248: 8c24b61314434b46cbe4da73f10bce90b0ea45d6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8835: 8835<br />
  Patchwork_164076v1: 8c24b61314434b46cbe4da73f10bce90b0ea45d6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4106703224211130365==--
