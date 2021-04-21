Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A066036720C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 19:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B1889B46;
	Wed, 21 Apr 2021 17:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-oln040092253019.outbound.protection.outlook.com [40.92.253.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 496E989B46
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 17:53:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5wlMx+qOjAgCjygjBO/ExHqHRARP16DDs9dPEWUU3iNeCeuGXz7ZHs6cIgLJ6YKmCgxMPlEHxIvyyBWQIkIEA+2G74YOjKYnVbQueTTnTlFLZx2VrzgdchTqBgq+pxZyOsjfWLIrWEk/xpgAiD0BZyO4vSqj8/OuKBJeyBf+x8GvqeGub7QKbkpN1t57oLI5i9td0WdXzrr89JSjGuyw/ueA4mLMklaDBXtEOipn4uLreS7zVQTEb8aaZIlO78JpQfeA7u+Oqx/nK+oFA86D8gtCjrNH4AsOjSrAXILgmvUG1PHQGv/n5z+ErRqaN550PkQelDejSt42b4NoiYhwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ot+VNgCWYqPGxlQuUkQ5LLxsqr3I9M9SfxgXjwitllY=;
 b=Lvux7P4qprmxqyCldX4RE9ENN5Il91Pp1ChtecqY6BgjLjrhUFcBtaGzvXlSk88dfSuwJ2K0SYQV9MJsuDOBbWN6WPRudn9N80RnTlJ/9ZLGMoa+OiFdr8uATfxlCOxzoU5CkjfP0W5Ht8h1cmwsKxNBKFXavkgHoQWxBR5l8FvEaBYy+02sE3Ma4VI/1lxmmAKAVRU9s2SLKvENyWihMEPi2u1kwQnlft3jIiJJ3JSsZqYXgUikUe1ezN/ilqv+I4sxVhHSlkkRkG2qRTTTFp3PwoRP4/iqCvQKe1GpITZqtMpiUmoV0QjoYmErENcE2XQkvaVw/io/VsQot+/NHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SI2PR04MB4363.apcprd04.prod.outlook.com (2603:1096:4:f9::8) by
 SI2PR04MB4137.apcprd04.prod.outlook.com (2603:1096:4:f8::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.21; Wed, 21 Apr 2021 17:53:40 +0000
Received: from SI2PR04MB4363.apcprd04.prod.outlook.com
 ([fe80::8568:35be:a87f:4782]) by SI2PR04MB4363.apcprd04.prod.outlook.com
 ([fe80::8568:35be:a87f:4782%7]) with mapi id 15.20.4065.021; Wed, 21 Apr 2021
 17:53:40 +0000
From: Timbo Hidayat Siregar <whereistimbo@outlook.co.il>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: How to adjust gamma & brightness for individual colors using
 intel_gpu_write?
Thread-Index: AQHXNdX7aRJFb0EvHkCTMegVcmQGb6q/QsV3
Date: Wed, 21 Apr 2021 17:53:40 +0000
Message-ID: <SI2PR04MB436387E104810443FC5656FB90479@SI2PR04MB4363.apcprd04.prod.outlook.com>
References: <SI2PR04MB4363C535D347EE2B19C991C190489@SI2PR04MB4363.apcprd04.prod.outlook.com>
In-Reply-To: <SI2PR04MB4363C535D347EE2B19C991C190489@SI2PR04MB4363.apcprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [3KsyfODqPes2bSVCeZGMeRaFf1B0jVPvyp4iR1YGjfQ=]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 163dd2ca-74e7-4597-764b-08d904ee6598
x-ms-traffictypediagnostic: SI2PR04MB4137:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mh7RgD31qNOp7df0IjVLrQ19eo4NgdboTIS/1rJgddtsMbq2wbwG84FAxjml4n2oEnPK/uO6KJhsXvwF7bje+R25EXBlKXhhaEftVI5tD/OVz0p5OD7/XJ0Vfi0/myGX0p4x7vdxUcCaQaB+TXaAYOi9wBQohHdG5iISf6m2CiDkwkq+BgOckbr6g5sjE5LwL6FJh+1Wxf9DHgWKGW9yetfKkrj8Ry11IBuq6ltA4Y5SA2xRWYcgTA3jFPh656sEwIJ/0bVCadW+Fns5MazerNHSML3SCFSoTJgn5K/kh4Y47eECfHoKfzIKbMawxiO6nCVKkgf8I/G+ZbyVbYnMrhmgO7u5MhcNmr0e1YJkKHPK//ff69ATWh18VCo17lRRr0aCggUPx8Fon5yWVWWsYA==
x-ms-exchange-antispam-messagedata: cJaRW4qz9kRgDsGidbqYTHdiXLOr82vMXgJrfFPDu46ygva+QlsFggMi2J5RO6sVkhBoup+fqPv8cF5ccA9UY9P9X+AxQ+Qy4iFdBKsM3RinJ7GYkAcNpxGvToNNau3qPusN+KK84eetqfrDvZl0Jw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-99b28.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR04MB4363.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 163dd2ca-74e7-4597-764b-08d904ee6598
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 17:53:40.2236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR04MB4137
Subject: [Intel-gfx] How to adjust gamma & brightness for individual colors
 using intel_gpu_write?
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
Content-Type: multipart/mixed; boundary="===============2105652809=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2105652809==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SI2PR04MB436387E104810443FC5656FB90479SI2PR04MB4363apcp_"

--_000_SI2PR04MB436387E104810443FC5656FB90479SI2PR04MB4363apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



Dear all,

I'm looking to adjust gamma & brightness for individual colors in Linux.
Windows had Intel HD graphic Control Panel which allow to adjust gamma & br=
ightness for individual colors directly using the driver.
Since there is no Intel Graphic Control Panel on Linux, after some searches=
 on the web, I found out that writing value directly to the GPU register mi=
ght be the answer.
But the best I can come up with is address 3C6h - 3C9h.
Any help is appreciated.

--_000_SI2PR04MB436387E104810443FC5656FB90479SI2PR04MB4363apcp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div><br>
</div>
<div id=3D"divRplyFwdMsg" dir=3D"ltr">
<div>&nbsp;</div>
</div>
<div>
<div>Dear all,</div>
<div><br>
</div>
<div>I'm looking to&nbsp;adjust gamma &amp; brightness for individual color=
s in Linux.</div>
Windows had Intel HD graphic Control Panel which allow to adjust gamma &amp=
; brightness for individual colors directly using the driver.
<div>Since there is no Intel Graphic Control Panel on Linux, after some sea=
rches on the web, I found out that writing value directly to the GPU regist=
er might be the answer.</div>
<div>But the best I can come up with is address 3C6h - 3C9h.</div>
<div>Any help is appreciated.</div>
</div>
</body>
</html>

--_000_SI2PR04MB436387E104810443FC5656FB90479SI2PR04MB4363apcp_--

--===============2105652809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2105652809==--
