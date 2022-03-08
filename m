Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3454D148D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 11:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B1C10E577;
	Tue,  8 Mar 2022 10:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C900310E324
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 10:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646734643; x=1678270643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=7zXTgcwCqfXcUZa/f4Hx5SrUtuuC7VsT4RlWriam//c=;
 b=jJpw8UugOb31J1a2h2RXW/CMDYJXGmIAFIJDpZBP3R14QuRCeAIDyJAU
 OJt4zGk0dVFUQpA73GNfCRPLrMJuVocDZJ2bgx0Ha5jkDkZb2wmBQkHtz
 CWc3yVaHGT5Ycfwt7MdPshyoKK4dKslzRmL1dYtTPJw6dYObz1dVELnmZ
 GvI6Gn6j3MqTi3xHMwFADYoAtlChnPOIPoGEI1VpDGmPrYERdp2NHIAbs
 h3l2OpMK843aDGo/Lex3DTZuacx+OW1Q+6U8W2z5ZUwBxMRlWCJtYV4FM
 v0iBIgIHzEgIpYn4IqN719RfZVfFaQKHGm9xeGRJOWQFhGG25/gf+EIji w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="235257299"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; 
 d="scan'208,217";a="235257299"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 02:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; 
 d="scan'208,217";a="595840227"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 08 Mar 2022 02:17:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 02:17:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 02:17:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 02:17:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GH4J/B5btY1BZ9cLYOWTSnxq+xhMV6ZC2PdVe81hDoGJ3bEJEYh4o84MNNKW8unq5Le4/XJy7lR3IOjYh6tELCaWG6RIy0jwq83kRFX5os2lC2UTmj2CA1w2Fe4B9EUVTHRQd3RalCx/P1FuaVUZ0vZ7sFKjRDt8IZOQMLegtujbIPBa/datsP/gisniKHdae/8d8OBUpeZl0/X7qUImFGqSetdF/0iEifDMcvjRtUs+1Q1zsVVoNJpu8QqkDjwl1MeH8qNdWQDeNViUYoi/9rEFTPjoXjDmTSpbhswNuavPu9nX4xBeTUU+z16j0H4svoJZaysWfV2hJ71SqaFa1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CbVPpIo0u7X/KAvM/kH7bia3wdCnO5WfvMGtzeH+AVA=;
 b=LVtksh0J4J+p6tLmI0rztMzs+cTSf7Gg/Bls6GZJaPiUX4uzXW+id9E2iPdPUSe/cDu/NAEE4I7XFr0vpnTRabQYXk4H2n4m4whwlQNsr3B5twRGTuukc2ibLFPDQL4CnLxnvFT8LalGXMDINvNT3yLAtaU2UCrtHz5VfzuOAcQMpJS+rjCzsGOCHEGDmVKTzSlvrxBs1bSCAMZRp8FjQX7pbmFxNII3kASZrJ66W8rGAYqK4RaLcmrex+fg4f9i8rOrKYS6Oniuhz5lwDzl8ZR79NmpZ2RhFxRxeet06RCZr47Wyf3Ce/twELSMNPxOc9BmSCYQuXDoa6WKtNJfww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5637.namprd11.prod.outlook.com (2603:10b6:8:33::5) by
 MN2PR11MB4255.namprd11.prod.outlook.com (2603:10b6:208:18a::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.15; Tue, 8 Mar
 2022 10:17:21 +0000
Received: from DM8PR11MB5637.namprd11.prod.outlook.com
 ([fe80::256e:ba1f:39bf:49f1]) by DM8PR11MB5637.namprd11.prod.outlook.com
 ([fe80::256e:ba1f:39bf:49f1%4]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 10:17:21 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: Intel-GFX-CI is halted due to power issue
Thread-Index: Adgyzj1MXdBkDmVJR2qnqQGEJusS2wAByzxQ
Date: Tue, 8 Mar 2022 10:17:21 +0000
Message-ID: <DM8PR11MB5637653CDDBA478E5DE50C06DE099@DM8PR11MB5637.namprd11.prod.outlook.com>
References: <DM8PR11MB5637F73BC1D708F91A244951DE099@DM8PR11MB5637.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5637F73BC1D708F91A244951DE099@DM8PR11MB5637.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7f66263-e5b1-4ee2-08c4-08da00ecd501
x-ms-traffictypediagnostic: MN2PR11MB4255:EE_
x-microsoft-antispam-prvs: <MN2PR11MB425567A3FAFFDBC09AD1658EDE099@MN2PR11MB4255.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1k72TJqCrkDv7lf9kJq08jjIjxzByfp79FxVKMm37CNwelcs0QlduR5wPncbN8On2vKlGgHCAVCzqZu9hdActPAcBH/4ocjCLXr1y3R9vxx95e+aoGDsweMLXsZuT7A+0pMvH80yIUXStcxi+uIg/NQlJ60il0tAMhXEgPkh8HFYWyeUZ8sj03uB2gPrutbdvWxqj/yOesrd10hWbznxGRgCMwbTRb8em8+QhKitkAJEsPrVd1CwtrrAFrWWYpTf5qB0vDYEbi0LA8bLzlsrWZ8PlspI/q3eDNZVEFbRxyoBLVgUjxfy6yFgGM0S8l98KtH9eqAtR7GxyS3Dbr634om3tfr1ULU2glVT/VyWJoNebgd2/eKjoRTqWkZIcTpSjG6V1GBY1A/DJ/6HW0DnafBIGIT8oBa2py6Y/e0KKfCPpdVH9Du9vfAc872DXc5X5Tm5LKmi79n0Nw7/cxfjzAxfZKBo9TIO9PiHUGiQhdwWwTJOxP+L2Jw9W5zAjdqRLd+jsg8CMMHFSyjx1c7Hc5ZzwI5ywAh+aP7OM5oCtg44I0Zw9TgMUABCClyhtjKGoB9yiPVVYYvF9cJnKXVc2G1VcwybBadL4+71Rdcs5dnNeRr+1cXZEJQDjBf27dkdFUkCMueR/CBEiXl0cHG8MY2pX6bADIH6PxsAWzYDLSSjaXWxEzFN3aKYCvHkjszuL9pGWKx1SK3HPF02smoOzw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5637.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(33656002)(7696005)(6506007)(38100700002)(186003)(26005)(71200400001)(54906003)(2906002)(6916009)(107886003)(316002)(83380400001)(9686003)(53546011)(2940100002)(82960400001)(86362001)(4744005)(122000001)(55016003)(8676002)(66476007)(64756008)(66556008)(66446008)(4326008)(76116006)(5660300002)(66946007)(52536014)(8936002)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lj77Qe3/Vqb5xJRobV98/n+Z4cF3V8kews0wor8WNxZiu2a5HDR+90xQB0Jl?=
 =?us-ascii?Q?OxHP2pOyF4q7kZ7vR0hPsH7Tu4FKZ6N6374fgPnwQAkmyphEnkZbL2UEMu2I?=
 =?us-ascii?Q?NKc6NeIqVc3k95MFXObKogQ+dCybTmqjxR9dDonc+g1RyGLQhmADLCILRZ/t?=
 =?us-ascii?Q?O0bHgbexT+kCMSNUG7AqfRYMFBI2vtzvNG76fxkKVi3+tvs22IBoYom7yGPz?=
 =?us-ascii?Q?GnyN35NRDZl0GxcWB0QoVPaxGv1IptyB8L0RmDxy3xoDApmJWENp7iDPMES1?=
 =?us-ascii?Q?oSBUMPKWJJX3ol3v/1CUESJ6qlXOd0VAFnmrzEwqMbblKixXa0Ybp0edU8l9?=
 =?us-ascii?Q?mIyUWdhLTPOV+wQpAVbHv3qRKoDtvwhljlLxn3IuJmv+h9B5wNDOPwH0GcZO?=
 =?us-ascii?Q?qb4EiCEubyC7F5Om7UmTBozagAEskUEyUY87ds2EtV4NbsZPGqoUdvYwqtwC?=
 =?us-ascii?Q?/yjMwQzytDZFKJKzMr2/7NF1Y1yqOP1VlFIQy7Cg+kNvi84v5MfJZBD01O9X?=
 =?us-ascii?Q?ZhHMW3hxVWqDytSznHdd9KwwXP3QzEP/af6csFQcACmb4iuGdcfpOdAeL7wf?=
 =?us-ascii?Q?UHgh4vjoPzH5yyjEuQLFNnVinpX+t2P3PDN25hVtdnYv8L2ZiscqxfUuJ0N8?=
 =?us-ascii?Q?5qdy3k6F1RxUA+z7xnf0K2tJ26EBxCrj8wYKQiS+LwkFRiokCHf3A5/R726u?=
 =?us-ascii?Q?0kj2fQFyulG5+p6/GuRjRIxdrMq8toZAukY9JYRMx2LLpCl949DZSvTgt8AC?=
 =?us-ascii?Q?ajWWP3/pg8mYC17NQ+Uq32lXCIjxMR1cq//7tjfvlXLwVemFQH7OPiEf+qpp?=
 =?us-ascii?Q?qkJNVSlEVkhaiRpsGpZJJGVmVmmiS6zU+Grx2uX/DBhXu094a/Mf9iX6zOaT?=
 =?us-ascii?Q?P/OHZnDWN5qTxoIM5nRH/oqa9yTiC1zbaNifvaYfOT4ntXyO79AR6d2w4fiI?=
 =?us-ascii?Q?RLjHtUPHrPvO4Jx9pWPSG+KAQb32C38XhsujdgxcpVlMsSPILNTGuMXnu9Ci?=
 =?us-ascii?Q?ptT33+vmYryF+bKyW3cCLEcyHbgOZZGHqsnjxmv1xM0hjSVHlU3KIyzrtmPB?=
 =?us-ascii?Q?lfOLec0CNcsPhZXxMRx+jR3lolRMOfD5yFsD7qs4VP7esSNKFTxRH3PeaEt/?=
 =?us-ascii?Q?Fb/wQzOr14rzJNlnnJXCDe5nsJhDWYlgnOs90+cg8iVJl6xPzgeYLurBfjYi?=
 =?us-ascii?Q?J/K+5wbKncoetH7e5JJW+bFFIOoSzOf5LGun7YyzlU5j1bp6J3Uyr3hbULG3?=
 =?us-ascii?Q?v0nK4uIaS35dBe49qpEm92geb7txTvaXqKru3Hh3O9CcnZnw/8RhP9vpyJHt?=
 =?us-ascii?Q?hbxYnkN+PppGdXN/IHYnv3jQrswM1Oy0yaTj8yQ0Z1j7T36oMbaA/V/mTls4?=
 =?us-ascii?Q?TFeOoWCwNaX+17bhPTxUX66wz3O2bLGC9l5aXdm5WLEJiR+q6k/7dOHKgBG0?=
 =?us-ascii?Q?KdrmdiUATLMTWUWAREDPp6RFl1XyeuQfeefVywsHPKpybXSCVpjZY3VMiBBr?=
 =?us-ascii?Q?8Kw/75Qsw4PdDOjm3TgecUra0Xkq6o/8uZAlb4B7hCbsZQU+CIGsxgos5OOa?=
 =?us-ascii?Q?FkRbLnHhwBzEkDfr9q2kQ+5XMoeMtuUT+/b5R0TGbYe1Rx2878S30iZjiFyp?=
 =?us-ascii?Q?CD0KOSfAWr8lgfAnhTybEjHHFLD8IiMQo02EIDA9EQ6B4yoF0aGbhaSzTaiy?=
 =?us-ascii?Q?9RVnhw=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_DM8PR11MB5637653CDDBA478E5DE50C06DE099DM8PR11MB5637namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5637.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7f66263-e5b1-4ee2-08c4-08da00ecd501
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 10:17:21.1774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3QTLk1Gh4QAt25N+1dBVqHtxy5lkNlJ4p8BfhbowsOa4JZJGbihwEEsZuH8/Ce4RzGGYjskVHB3iiSSqck4YQ4KYLUQ7piJ+nw0QnWbiL+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4255
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Intel-GFX-CI is halted due to power issue
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

--_000_DM8PR11MB5637653CDDBA478E5DE50C06DE099DM8PR11MB5637namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The incident is over: power has been restored, but CI is still quiet.

I'll check up the affected hosts and start re-testing the missed
Patchwork series.

Best Regards,

Tomi Sarvela

From: Sarvela, Tomi P
Sent: Tuesday, March 8, 2022 11:26 AM
To: intel-gfx@lists.freedesktop.org

Intel-GFX-CI has ongoing issue, assumed AC power delivery.

At around 21:00 EET yesterday, the power was lost to several parts
of our CI lab, most notably to PDUs that control testhosts. As the PDUs
cannot be reached or controlled, testhosts by and large are without power.

There has been builds but no results after the incident.

I'll inform more with ETA when I know more about the situation

Best Regards,

Tomi Sarvela

--
Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo


--_000_DM8PR11MB5637653CDDBA478E5DE50C06DE099DM8PR11MB5637namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">The incident is over: power has=
 been restored, but CI is still quiet.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ll check up the affecte=
d hosts and start re-testing the missed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Patchwork series.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tomi Sarvela<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:FI">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language:FI=
"> Sarvela, Tomi P
<br>
<b>Sent:</b> Tuesday, March 8, 2022 11:26 AM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org<br>
<br>
</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Intel-GFX-CI has ongoing issue,=
 assumed AC power delivery.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At around 21:00 EET yesterday, =
the power was lost to several parts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">of our CI lab, most notably to =
PDUs that control testhosts. As the PDUs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">cannot be reached or controlled=
, testhosts by and large are without power.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">There has been builds but no re=
sults after the incident.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ll inform more with ETA=
 when I know more about the situation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tomi Sarvela<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:F=
I">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-IE" style=3D"font-size:9.5pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:black;background:white;mso-fareast=
-language:EN-IE">Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 =
Espoo</span><span lang=3D"EN-IE" style=3D"mso-fareast-language:EN-IE"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_DM8PR11MB5637653CDDBA478E5DE50C06DE099DM8PR11MB5637namp_--
