Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBA345C933
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 16:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36FAD6E20F;
	Wed, 24 Nov 2021 15:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C249B6E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 15:52:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="216009365"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; 
 d="scan'208,217";a="216009365"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 07:52:00 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; 
 d="scan'208,217";a="571516971"
Received: from huynhhai-mobl1.ccr.corp.intel.com (HELO [10.249.254.137])
 ([10.249.254.137])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 07:51:59 -0800
Message-ID: <cd61dbd4e09a5f7abfd7784613df64e5a03f787b.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, ", Lakshminarayana Vudum"
 <lakshminarayana.vudum@intel.com>
Date: Wed, 24 Nov 2021 16:51:50 +0100
In-Reply-To: <a93c6a57-0c13-b6f6-6188-58e83f85d491@linux.intel.com>
References: <20211122214554.371864-1-thomas.hellstrom@linux.intel.com>
 <163774693406.25295.4750352332692397734@emeril.freedesktop.org>
 <a93c6a57-0c13-b6f6-6188-58e83f85d491@linux.intel.com>
Content-Type: multipart/alternative; boundary="=-mWHGeSKxp7KiQADL4KKh"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Async_migration_=28rev11=29?=
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


--=-mWHGeSKxp7KiQADL4KKh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-11-24 at 11:56 +0100, Thomas Hellström wrote:
> 
> On 11/24/21 10:42, Patchwork wrote:
> 
> > Project List - Patchwork Patch Details Series: drm/i915/ttm: Async
> > migration (rev11) URL:
> > https://patchwork.freedesktop.org/series/96798/ State: failure
> > Details:
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/index.html
> > CI Bug Log - changes from CI_DRM_10921_full -> Patchwork_21672_fullSummaryFAILURE
> > Serious unknown changes coming with Patchwork_21672_full absolutely
> > need to be
> > verified manually.
> > If you think the reported changes have nothing to do with the
> > changes
> > introduced in Patchwork_21672_full, please notify your bug team to
> > allow them
> > to document this new failure mode, which will reduce false
> > positives in CI.
> > Participating hosts (11 -> 11)No changes in participating hosts
> > Possible new issuesHere are the unknown changes that may have been introduced in
> > Patchwork_21672_full:
> > IGT changesPossible regressions * igt@gem_exec_capture@pi@rcs0: shard-skl: PASS -> INCOMPLETE
> >  * igt@gem_exec_create@forked@smem: shard-kbl: NOTRUN -> INCOMPLETE
> >  * igt@kms_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a:
> >    shard-kbl: PASS -> INCOMPLETE +2 similar issues
> Lakshmi,
> These failures are unrelated. The first one appears also elsewhere,
> The other two appears to be a general problem with shard-kbl. Lots of
> random hangs from that one.
> /Thomas
> 
Lakshmi, Those shard-kbl failures appear to be machine related. (Not
the first skl failure, though), so no need to file issues for the two
last ones. I'll trigger a rerun.

/Thomas


--=-mWHGeSKxp7KiQADL4KKh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
   =20
  </head>
  <body><div>On Wed, 2021-11-24 at 11:56 +0100, Thomas Hellstr=C3=B6m wrote=
:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2p=
x #729fcf solid;padding-left:1ex"><p><br></p><div class=3D"moz-cite-prefix"=
>On 11/24/21 10:42, Patchwork wrote:<br></div><div> <br></div><blockquote t=
ype=3D"cite" cite=3D"mid:163774693406.25295.4750352332692397734@emeril.free=
desktop.org" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padd=
ing-left:1ex"><div> <meta http-equiv=3D"Content-Type" content=3D"text/html;=
 charset=3DUTF-8"> <title>Project List - Patchwork</title> <style id=3D"css=
-table-select" type=3D"text/css">td { padding: 2pt; }</style> <b>Patch Deta=
ils</b> <table> <tbody> <tr> <td><b>Series:</b></td> <td>drm/i915/ttm: Asyn=
c migration (rev11)</td></tr> <tr> <td><b>URL:</b></td> <td><a href=3D"http=
s://patchwork.freedesktop.org/series/96798/" moz-do-not-send=3D"true" class=
=3D"moz-txt-link-freetext">https://patchwork.freedesktop.org/series/96798/<=
/a></td></tr> <tr> <td><b>State:</b></td> <td>failure</td></tr> <tr> <td><b=
>Details:</b></td> <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21672/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-=
freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/index.ht=
ml</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from CI_DRM=
_10921_full -&gt; Patchwork_21672_full</h1><div> </div><h2>Summary</h2><p><=
strong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwork=
_21672_full absolutely need to be<br> verified manually.</p><p>If you think=
 the reported changes have nothing to do with the changes<br> introduced in=
 Patchwork_21672_full, please notify your bug team to allow them<br> to doc=
ument this new failure mode, which will reduce false positives in CI.</p><d=
iv> </div><h2>Participating hosts (11 -&gt; 11)</h2><p>No changes in partic=
ipating hosts</p><div> </div><h2>Possible new issues</h2><p>Here are the un=
known changes that may have been introduced in Patchwork_21672_full:</p><di=
v> </div><h3>IGT changes</h3><div> </div><h4>Possible regressions</h4><div>=
 </div><ul> <li><p>igt@gem_exec_capture@pi@rcs0:</p> <ul> <li>shard-skl: <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-skl7/i=
gt@gem_exec_capture@pi@rcs0.html" moz-do-not-send=3D"true">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21672/shard-sk=
l2/igt@gem_exec_capture@pi@rcs0.html" moz-do-not-send=3D"true">INCOMPLETE</=
a></li></ul></li> <li><p>igt@gem_exec_create@forked@smem:</p> <ul> <li>shar=
d-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21672/shard-kbl7/igt@gem_exec_create@forked@smem.html" moz-do-not-se=
nd=3D"true">INCOMPLETE</a></li></ul></li> <li><p>igt@kms_atomic_interruptib=
le@universal-setplane-cursor@dp-1-pipe-a:</p> <ul> <li>shard-kbl: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10921/shard-kbl1/igt@km=
s_atomic_interruptible@universal-setplane-cursor@dp-1-pipe-a.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21672/shard-kbl7/igt@kms_atomic_interruptible@universal-=
setplane-cursor@dp-1-pipe-a.html" moz-do-not-send=3D"true">INCOMPLETE</a> +=
2 similar issues</li></ul></li></ul></blockquote><p>Lakshmi,</p><p>These fa=
ilures are unrelated. The first one appears also elsewhere, The other two a=
ppears to be a general problem with shard-kbl. Lots of random hangs from th=
at one.</p><p>/Thomas</p><p><br></p><div> </div></blockquote><div>Lakshmi, =
Those shard-kbl failures appear to be machine related. (Not the first skl f=
ailure, though), so no need to file issues for the two last ones. I'll trig=
ger a rerun.</div><div><br></div><div>/Thomas</div><div><br></div><div><spa=
n></span></div></body></html>

--=-mWHGeSKxp7KiQADL4KKh--

