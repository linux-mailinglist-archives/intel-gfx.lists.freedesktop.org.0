Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77F8144325
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:27:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C338A6EDF3;
	Tue, 21 Jan 2020 17:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E921A6EDF3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 17:27:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:27:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; 
 d="scan'208,217";a="215609007"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga007.jf.intel.com with ESMTP; 21 Jan 2020 09:27:35 -0800
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jan 2020 09:27:35 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.111]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.143]) with mapi id 14.03.0439.000;
 Tue, 21 Jan 2020 09:27:35 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: drop alpha_support for good in favour of
 force_probe
Thread-Index: AQHV0EXOkZULZQDQF0uZyX225SXzkqf1iqqAgABbB4A=
Date: Tue, 21 Jan 2020 17:27:34 +0000
Message-ID: <BBD667F4-13F1-48BA-9F3D-BA8A3CA548FC@intel.com>
References: <20200121103020.26494-1-jani.nikula@intel.com>
 <157960810578.23235.12006380676824156361@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <157960810578.23235.12006380676824156361@jlahtine-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.134.244.72]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: drop alpha_support for good in
 favour of force_probe
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0763883570=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0763883570==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BBD667F413F148BA9F3DBA8A3CA548FCintelcom_"

--_000_BBD667F413F148BA9F3DBA8A3CA548FCintelcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



On Jan 21, 2020, at 4:01 AM, Joonas Lahtinen <joonas.lahtinen@linux.intel.c=
om<mailto:joonas.lahtinen@linux.intel.com>> wrote:

Quoting Jani Nikula (2020-01-21 12:30:20)
It's been a long enough transition period since the DRM_I915_FORCE_PROBE
config and i915.force_probe module parameter were introduced in commit
7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace
alpha_support"). Remove alpha support.

Cc: Arkadiusz Hiler <arkadiusz.hiler@intel.com<mailto:arkadiusz.hiler@intel=
.com>>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com<mailto:joonas.lahtinen=
@linux.intel.com>>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com<mailto:rodrigo.vivi@intel.com>>
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com<mailto:tomi.p.sarvela@intel.com>=
>
Signed-off-by: Jani Nikula <jani.nikula@intel.com<mailto:jani.nikula@intel.=
com>>

Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com<mailto:joonas=
.lahtinen@linux.intel.com>>

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com<mailto:rodrigo.vivi@intel.co=
m>>


Regards, Joonas


--_000_BBD667F413F148BA9F3DBA8A3CA548FCintelcom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <E75BD760E2BC4045B22819A7016B3E5F@intel.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
<br class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Jan 21, 2020, at 4:01 AM, Joonas Lahtinen &lt;<a href=3D=
"mailto:joonas.lahtinen@linux.intel.com" class=3D"">joonas.lahtinen@linux.i=
ntel.com</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div class=3D"">Quoting Jani Nikula (2020-01-21 12:30:20)<br class=3D"">
<blockquote type=3D"cite" class=3D"">It's been a long enough transition per=
iod since the DRM_I915_FORCE_PROBE<br class=3D"">
config and i915.force_probe module parameter were introduced in commit<br c=
lass=3D"">
7ef5ef5cdead (&quot;drm/i915: add force_probe module parameter to replace<b=
r class=3D"">
alpha_support&quot;). Remove alpha support.<br class=3D"">
<br class=3D"">
Cc: Arkadiusz Hiler &lt;<a href=3D"mailto:arkadiusz.hiler@intel.com" class=
=3D"">arkadiusz.hiler@intel.com</a>&gt;<br class=3D"">
Cc: Joonas Lahtinen &lt;<a href=3D"mailto:joonas.lahtinen@linux.intel.com" =
class=3D"">joonas.lahtinen@linux.intel.com</a>&gt;<br class=3D"">
Cc: Rodrigo Vivi &lt;<a href=3D"mailto:rodrigo.vivi@intel.com" class=3D"">r=
odrigo.vivi@intel.com</a>&gt;<br class=3D"">
Cc: Tomi Sarvela &lt;<a href=3D"mailto:tomi.p.sarvela@intel.com" class=3D""=
>tomi.p.sarvela@intel.com</a>&gt;<br class=3D"">
Signed-off-by: Jani Nikula &lt;<a href=3D"mailto:jani.nikula@intel.com" cla=
ss=3D"">jani.nikula@intel.com</a>&gt;<br class=3D"">
</blockquote>
<br class=3D"">
Reviewed-by: Joonas Lahtinen &lt;<a href=3D"mailto:joonas.lahtinen@linux.in=
tel.com" class=3D"">joonas.lahtinen@linux.intel.com</a>&gt;<br class=3D"">
</div>
</div>
</blockquote>
<div><br class=3D"">
</div>
<div>Acked-by: Rodrigo Vivi &lt;<a href=3D"mailto:rodrigo.vivi@intel.com" c=
lass=3D"">rodrigo.vivi@intel.com</a>&gt;</div>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div class=3D""><br class=3D"">
Regards, Joonas<br class=3D"">
</div>
</div>
</blockquote>
</div>
<br class=3D"">
</body>
</html>

--_000_BBD667F413F148BA9F3DBA8A3CA548FCintelcom_--

--===============0763883570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0763883570==--
