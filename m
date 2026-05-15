Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMFUAkI1B2rftQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:01:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A316A551CFF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1623010F558;
	Fri, 15 May 2026 15:01:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hvreU/B0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CF110E14C;
 Fri, 15 May 2026 15:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778857274; x=1810393274;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version;
 bh=DdswOqZIqFl98x9FMScBUsYMDn0/tVcCuuVbKnrlKsM=;
 b=hvreU/B0fUIcN3+++X7ihjIVwJA6xOokUVwceU63w62OUYqhPFu40sV4
 DLXsbthKiinPkFEVfEtXKeV9fsDLYkI8q8agGvDJqMP2rg+mypcrqQX/F
 +3BVOCrEKGKnlpD79tbBFbs3zX2NBk0gckGYjiQM1Ky+EythkTO0Qgsns
 k8QyOIdv5h3QLt8f7B24HlggtkaYKRq4okM//CxQKfk4/ck4x9U5E3LBb
 2xipPm/H9cE7y36qo87e0iBv1xCbrJo983w/dAKq6e2MWgQxR5Vzsu/p1
 3eKu1uBfv+XwpdG1vxMcjpUShzmr0FvsXcgAkTC6jSkQf+P+rebLdt6aL g==;
X-CSE-ConnectionGUID: JuxhqnyAQZm8prJ0CXw5jg==
X-CSE-MsgGUID: GdtFNbv9TJa8KFQeddNYEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="97242782"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208,217";a="97242782"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:01:14 -0700
X-CSE-ConnectionGUID: G4fDqgjRQaeU4yykISkzRw==
X-CSE-MsgGUID: 9XIAC38fSdSngGTi3C895w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; 
 d="scan'208,217";a="262232676"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:01:11 -0700
Message-ID: <72c3b6fcbf28be7891904e034108e78b6b90c8d0.camel@linux.intel.com>
Subject: Re: =?UTF-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915: Skip
 deprecated selftest
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 May 2026 17:01:08 +0200
In-Reply-To: <177885596476.74821.6211564672230056113@5ab824fced77>
References: <20260515133052.1628281-2-janusz.krzysztofik@linux.intel.com>
 <177885596476.74821.6211564672230056113@5ab824fced77>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Type: multipart/alternative; boundary="=-I5vJ40TKnopoue4z84Ru"
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: A316A551CFF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[lists.freedesktop.org:query timed out,live:query timed out,intel.com:query timed out,workarounds:query timed out];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[i915-ci-infra.lists.freedesktop.org:query timed out,igt.core_hotunplug:query timed out,igt.i915_selftest:query timed out,core_hotunplug.unbind-rebind:query timed out];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[workarounds:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,i915_selftest:email,lists.freedesktop.org:email,live:email,01.org:url,patchwork.freedesktop.org:url,gitlab.freedesktop.org:url,intel.com:dkim,core_hotunplug:email,linux.intel.com:mid,unbind-rebind:email]
X-Rspamd-Action: no action

--=-I5vJ40TKnopoue4z84Ru
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi=C2=A0I915-ci-infra@lists.freedesktop.org,

On Fri, 2026-05-15 at 14:39 +0000, Patchwork wrote:
> Patch Details
>=20
> Series:drm/i915: Skip deprecated selftest
>=20
> URL:https://patchwork.freedesktop.org/series/166658/
>=20
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/index.html
> CI Bug Log - changes from CI_DRM_18494 -> Patchwork_166658v1SummaryFAILUR=
E
> Serious unknown changes coming with Patchwork_166658v1 absolutely need to
> be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_166658v1, please notify your bug team (I915-ci-
> infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in
> CI.
> External URL: https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_166658v1/index.html
> Participating hosts (42 -> 40)Missing (2): bat-dg2-13 fi-snb-2520m=20
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_166658v1:
> IGT changesPossible regressions * igt@core_hotunplug@unbind-rebind:
>     - bat-mtlp-8:         PASS [17] -> DMESG-WARN [16]

The change only disables a part of a selftest on selected platforms, then
the above failure is not related.
Please update CBL filters and re-report.

Thanks,
Janusz


> Known issuesHere are the changes found in Patchwork_166658v1 that come fr=
om known
> issues:
> IGT changesPossible fixes *=20
>    igt@i915_selftest@live:bat-mtlp-8: DMESG-FAIL [13] (i915#12061 [2]) ->
>    PASS [12] +1 other test passbat-dg2-8: DMESG-FAIL [15] (i915#12061 [2]=
)
>    -> PASS [14] +1 other test pass
>  *=20
>    igt@i915_selftest@live@workarounds:bat-arlh-3: DMESG-FAIL [3]
>    (i915#12061 [2]) -> PASS [1] +1 other test passbat-dg2-9: DMESG-FAIL [=
5]
>    (i915#12061 [2]) -> PASS [4] +1 other test passbat-dg2-14: DMESG-FAIL
>    [7] (i915#12061 [2]) -> PASS [6] +1 other test passbat-atsm-1:
>    DMESG-FAIL [9] (i915#12061 [2]) -> PASS [8] +1 other test passbat-mtlp=
-
>    9: DMESG-FAIL [11] (i915#12061 [2]) -> PASS [10] +1 other test pass
> Build changes * Linux: CI_DRM_18494 -> Patchwork_166658v1
> CI-20190529: 20190529
> CI_DRM_18494: 25de7fb53bca724e7864b6bd8280aa1ec59429e3 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8916: cd3b0cdd9e11ee80d89f40ffd5e5ac916d041ffb @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_166658v1: 25de7fb53bca724e7864b6bd8280aa1ec59429e3 @
> git://anongit.freedesktop.org/gfx-ci/linux


[1] PASS
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-arlh-3/=
igt@i915_selftest@live@workarounds.html
[2] i915#12061
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
[3] DMESG-FAIL
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-arlh-3/igt@i9=
15_selftest@live@workarounds.html
[4] PASS
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-dg2-9/i=
gt@i915_selftest@live@workarounds.html
[5] DMESG-FAIL
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-dg2-9/igt@i91=
5_selftest@live@workarounds.html
[6] PASS
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-dg2-14/=
igt@i915_selftest@live@workarounds.html
[7] DMESG-FAIL
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-dg2-14/igt@i9=
15_selftest@live@workarounds.html
[8] PASS
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-atsm-1/=
igt@i915_selftest@live@workarounds.html
[9] DMESG-FAIL
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-atsm-1/igt@i9=
15_selftest@live@workarounds.html
[10] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-mtlp-9=
/igt@i915_selftest@live@workarounds.html
[11] DMESG-FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-mtlp-9/igt@i=
915_selftest@live@workarounds.html
[12] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-mtlp-8=
/igt@i915_selftest@live.html
[13] DMESG-FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-mtlp-8/igt@i=
915_selftest@live.html
[14] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-dg2-8/=
igt@i915_selftest@live.html
[15] DMESG-FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-dg2-8/igt@i9=
15_selftest@live.html
[16] DMESG-WARN
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/bat-mtlp-8=
/igt@core_hotunplug@unbind-rebind.html
[17] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18494/bat-mtlp-8/igt@c=
ore_hotunplug@unbind-rebind.html

--=-I5vJ40TKnopoue4z84Ru
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
<style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head>
<body><div>Hi&nbsp;<a href=3D"mailto:I915-ci-infra@lists.freedesktop.org">I=
915-ci-infra@lists.freedesktop.org,</a></div><div><br></div><div>On Fri, 20=
26-05-15 at 14:39 +0000, Patchwork wrote:</div><blockquote type=3D"cite" st=
yle=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><=
div><b>Patch Details</b></div>
<div><table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: Skip deprecated selftest</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/166658/">https://patchwork.freedesktop.org/series/166658/</a></td></tr=
>
<tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td=
><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1=
/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/in=
dex.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from =
CI_DRM_18494 -&gt; Patchwork_166658v1</h1><h2>Summary</h2><p><strong>FAILUR=
E</strong></p><p>Serious unknown changes coming with Patchwork_166658v1 abs=
olutely need to be<br> verified manually.</p><p>If you think the reported c=
hanges have nothing to do with the changes<br> introduced in Patchwork_1666=
58v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to =
allow them<br> to document this new failure mode, which will reduce false p=
ositives in CI.</p><p>External URL: https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_166658v1/index.html</p><h2>Participating hosts (42 -&gt; 40)</h=
2><p>Missing    (2): bat-dg2-13 fi-snb-2520m </p><h2>Possible new issues</h=
2><p>Here are the unknown changes that may have been introduced in Patchwor=
k_166658v1:</p><h3>IGT changes</h3><h4>Possible regressions</h4><ul>
<li>igt@core_hotunplug@unbind-rebind:</li><ul>
<li>bat-mtlp-8:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166658v1/=
bat-mtlp-8/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</ul></blockquote><div><br></div><div>The change only disables a part of a =
selftest on selected platforms, then the above failure is not related.</div=
><div>Please update CBL filters and re-report.</div><div><br></div><div>Tha=
nks,<br>Janusz</div><div><br></div><div><br></div><blockquote type=3D"cite"=
 style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex=
"><h2>Known issues</h2><p>Here are the changes found in Patchwork_166658v1 =
that come from known issues:</p><h3>IGT changes</h3><h4>Possible fixes</h4>=
<ul>
<li>
<p>igt@i915_selftest@live:</p><ul>
<li>bat-mtlp-8:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#1=
2061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_166658v1/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test =
pass</li>
<li>bat-dg2-8:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12=
061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_166658v1/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pa=
ss</li>
</ul></li>
<li>
<p>igt@i915_selftest@live@workarounds:</p><ul>
<li>bat-arlh-3:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166658v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html"=
>PASS</a> +1 other test pass</li>
<li>bat-dg2-9:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_166658v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">P=
ASS</a> +1 other test pass</li>
<li>bat-dg2-14:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166658v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html"=
>PASS</a> +1 other test pass</li>
<li>bat-atsm-1:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-atsm-1/igt@i915_selftest@live@workarounds.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166658v1/bat-atsm-1/igt@i915_selftest@live@workarounds.html"=
>PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18494/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166658v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html"=
>PASS</a> +1 other test pass</li>
</ul></li>
</ul><h2>Build changes</h2><ul>
<li>Linux: CI_DRM_18494 -&gt; Patchwork_166658v1</li>
</ul><p>CI-20190529: 20190529<br> CI_DRM_18494: 25de7fb53bca724e7864b6bd828=
0aa1ec59429e3 @ git://anongit.freedesktop.org/gfx-ci/linux<br> IGT_8916: cd=
3b0cdd9e11ee80d89f40ffd5e5ac916d041ffb @ https://gitlab.freedesktop.org/drm=
/igt-gpu-tools.git<br> Patchwork_166658v1: 25de7fb53bca724e7864b6bd8280aa1e=
c59429e3 @ git://anongit.freedesktop.org/gfx-ci/linux</p></blockquote><div>=
<br></div><div><span></span></div></body></html>

--=-I5vJ40TKnopoue4z84Ru--
