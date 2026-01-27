Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBK5IZ6jeGmGrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 12:38:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8B693AEF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 12:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D26B10E18A;
	Tue, 27 Jan 2026 11:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F6010E18A;
 Tue, 27 Jan 2026 11:38:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2600923022162383398=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/ci=3A_add_new_jobs=2C?=
 =?utf-8?q?_uprev_IGT_and_mesa_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vignesh Raman" <vignesh.raman@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jan 2026 11:38:03 -0000
Message-ID: <176951388365.196152.13369701538880448989@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
In-Reply-To: <20260127104406.200505-1-vignesh.raman@collabora.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[live:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url,i915_selftest:email,lists.freedesktop.org:replyto,unbind-rebind:email,workarounds:email,core_hotunplug:email]
X-Rspamd-Queue-Id: EB8B693AEF
X-Rspamd-Action: no action

--===============2600923022162383398==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/ci: add new jobs, uprev IGT and mesa (rev2)
URL   : https://patchwork.freedesktop.org/series/151801/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17893 -> Patchwork_151801v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_151801v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-rpls-4:         [PASS][1] -> [DMESG-WARN][2] ([i915#13400])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17893/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][3] -> [ABORT][4] ([i915#14365]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17893/bat-twl-1/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17893/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365


Build changes
-------------

  * Linux: CI_DRM_17893 -> Patchwork_151801v2

  CI-20190529: 20190529
  CI_DRM_17893: 786060d864f2e568a6ff216c63b927f80da2c043 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8719: 399f1e1cd9d38f0d0ab2c55a9ade415cc8248959 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_151801v2: 786060d864f2e568a6ff216c63b927f80da2c043 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/index.html

--===============2600923022162383398==
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
<tr><td><b>Series:</b></td><td>drm/ci: add new jobs, uprev IGT and mesa (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/151801/">https://patchwork.freedesktop.org/series/151801/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17893 -&gt; Patchwork_151801v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_151801v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17893/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17893/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17893/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151801v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17893 -&gt; Patchwork_151801v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17893: 786060d864f2e568a6ff216c63b927f80da2c043 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8719: 399f1e1cd9d38f0d0ab2c55a9ade415cc8248959 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_151801v2: 786060d864f2e568a6ff216c63b927f80da2c043 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2600923022162383398==--
